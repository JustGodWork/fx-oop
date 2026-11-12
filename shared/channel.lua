---@diagnostic disable
---@class fx.ChannelState : fx.Channel
---@field label string Name shown in rejects
---@field kind "Channel"|"Rpc"
---@field check fx.ArgsCheck
---@field allow? fun(src: integer): boolean Rate limit of events from clients
---@field handlers? fun(ctx: fx.ChannelContext, ...)[]
---@field token? CitizenEventData

---@type fx.SharedDeps
local deps = ...
local fx, config, isServer = deps.fx, deps.config, deps.isServer

local type, tostring, select, error, pcall, setmetatable, rawget = type, tostring, select, error, pcall, setmetatable, rawget
local AddEventHandler, RemoveEventHandler, RegisterNetEvent = AddEventHandler, RemoveEventHandler, RegisterNetEvent
local TriggerEvent, TriggerServerEvent, TriggerClientEvent = TriggerEvent, TriggerServerEvent, TriggerClientEvent
local TriggerClientEventInternal, pack_args = TriggerClientEventInternal, msgpack.pack_args
local GetInvokingResource, GetGameTimer = GetInvokingResource, GetGameTimer
local table_pack, table_unpack = table.pack, table.unpack

local Schema = fx.Schema
-- typed by fx.ChannelLib (shared/annot/core.d.lua): a ---@class here would declare its members twice
local Channel = {}
local FROM = { client = true, server = true, ["local"] = true }

-- origin of the event being handled
-- In a handler, `source` is a number for a net event (the client on the server, 65535 on the client) and "" for a
-- local one. It is a global: read it on entry, it can change after a Wait.
---@return "client"|"server"|"local" from
---@return integer? source Server id of the sending client (server side)
local function origin()
  local s = source
  if type(s) == "number" and s > 0 then
    if isServer then return "client", s end
    return "server", nil
  end
  return "local", nil
end

---@type fun(src: integer): any
local resolvePlayer = isServer and function(src) return fx.Player(src) end or function() return nil end

--- Replaces how ctx.player is built from the sender's server id (a framework's own player object).
---@param fn fun(source: integer): any
function Channel.setPlayerResolver(fn)
  if type(fn) ~= "function" then error("fx.Channel.setPlayerResolver: expected a function", 2) end
  resolvePlayer = fn
end

-- rejects: hooks + a throttled log line per channel
---@type fun(info: fx.RejectInfo)[]
local rejectHooks = {}
---@type table<string, integer>
local lastLog = {}
---@type table<string, integer>
local suppressed = {}

---@param fn fun(info: fx.RejectInfo)
---@return fun() off
function Channel.onReject(fn)
  if type(fn) ~= "function" then error("fx.Channel.onReject: expected a function", 2) end
  rejectHooks[#rejectHooks + 1] = fn
  return function()
    for i = #rejectHooks, 1, -1 do if rejectHooks[i] == fn then table.remove(rejectHooks, i) end end
  end
end

---@param kind "Channel"|"Rpc"
---@param name string
---@param from "client"|"server"|"local"
---@param src? integer
---@param reason string
local function reject(kind, name, from, src, reason)
  local now = GetGameTimer()
  if config.debug or not lastLog[name] or now - lastLog[name] > 2000 then
    local log = fx.Logger("fx"):child(kind)
    local extra = suppressed[name] and (" (+%d more)"):format(suppressed[name]) or ""
    log:warn("%s rejected from %s%s: %s%s", name, from, src and (" " .. src) or "", reason, extra)
    lastLog[name], suppressed[name] = now, nil
  else
    suppressed[name] = (suppressed[name] or 0) + 1
  end
  if #rejectHooks > 0 then
    ---@type fx.RejectInfo
    local info = { kind = kind, name = name, from = from, source = src, reason = reason, player = src and resolvePlayer(src) or nil }
    for i = 1, #rejectHooks do
      local ok, err = pcall(rejectHooks[i], info)
      if not ok then print("^1[fx] onReject hook error: " .. tostring(err) .. "^0") end
    end
  end
end

-- per player rate limit: { count, windowMs }
---@type table<integer, { [1]: integer, [2]: integer }>[]
local limiters = {}

---@param rate { [1]: integer, [2]: number? }
---@return fun(src: integer): boolean
local function limiter(rate)
  local max, window = rate[1], rate[2] or 1000
  ---@type table<integer, { [1]: integer, [2]: integer }> server id -> { window start, hits }
  local hits = {}
  limiters[#limiters + 1] = hits
  return function(src)
    local now = GetGameTimer()
    local h = hits[src]
    if not h or now - h[1] >= window then hits[src] = { now, 1 }; return true end
    h[2] = h[2] + 1
    return h[2] <= max
  end
end
if isServer then
  AddEventHandler("playerDropped", function()
    local src = source
    for i = 1, #limiters do limiters[i][src] = nil end
  end)
end

---@type table<string, function>
local methods = {}
local mt = { __index = methods, __name = "fx.Channel" }
---@param self fx.ChannelState
---@return string
mt.__tostring = function(self) return "fx.Channel(" .. self.name .. ")" end

-- Compiles an argument list; a bad spec raises at the caller's declaration, without schema.lua's position.
---@param list (fx.SchemaSpec|"...")[]
---@param kind string "Channel" or "Rpc"
---@param name any
---@param level integer Stack level of the user's call, seen from this function
---@return fx.ArgsCheck
local function compileArgs(list, kind, name, level)
  local ok, res = pcall(Schema.args, list)
  if ok then return res end
  error(("fx.%s(%s): %s"):format(kind, tostring(name), tostring(res):gsub("^.-:%d+: ", "", 1)), level + 1)
end

-- The event name is global: every resource that loads the same declaration validates on receive.
---@param name string
---@param opts? fx.ChannelOptions
---@param kind "Channel"|"Rpc"
---@param label? string Name shown in rejects (an RPC shows its own name, not its internal event)
---@return fx.ChannelState
local function newChannel(name, opts, kind, label)
  if type(name) ~= "string" or name == "" then error("fx." .. kind .. ": name must be a non-empty string", 3) end
  opts = opts or {}
  local from = opts.from or "local"
  if not FROM[from] then error(("fx.%s(%s): from must be 'client', 'server' or 'local'"):format(kind, name), 3) end
  local rate = opts.rate
  if rate ~= nil and (type(rate) ~= "table" or math.type(rate[1]) ~= "integer" or rate[1] < 1
    or (rate[2] ~= nil and (type(rate[2]) ~= "number" or rate[2] <= 0))) then
    error(("fx.%s(%s): rate must be { count, windowMs } (count an integer above 0)"):format(kind, label or name), 3)
  end
  return setmetatable({
    name = name, label = label or name, from = from, kind = kind,
    check = compileArgs(opts.args or { "..." }, kind, label or name, 3),
    allow = opts.rate and limiter(opts.rate) or nil,
  }, mt)
end

--- The receiving side of a channel: where its handlers may be registered.
---@param ch fx.ChannelState
---@return boolean
local function receives(ch)
  if ch.from == "local" then return true end
  if ch.from == "client" then return isServer end
  return not isServer
end

-- Wraps a handler: origin, rate limit and arguments are checked before fn(ctx, ...) is called.
---@param ch fx.ChannelState
---@param fn fun(ctx: fx.ChannelContext, ...)
---@return fun(...)
local function guard(ch, fn)
  local name, expected, check, allow, kind = ch.label, ch.from, ch.check, ch.allow, ch.kind
  return function(...)
    local from, src = origin()
    if from ~= expected then return reject(kind, name, from, src, "not allowed from " .. from) end
    if allow and src and not allow(src) then return reject(kind, name, from, src, "rate limit") end
    local ok, why = check(select("#", ...), ...)
    if not ok then return reject(kind, name, from, src, why --[[@as string]]) end
    ---@type fx.ChannelContext
    local ctx = {
      name = name, from = from, source = src,
      player = src and resolvePlayer(src) or nil,
      resource = from == "local" and GetInvokingResource() or nil,
    }
    return fn(ctx, ...)
  end
end

--- Registers a handler fn(ctx, ...). Returns a function that removes it.
---@param self fx.ChannelState
---@param fn fun(ctx: fx.ChannelContext, ...)
---@return fun() off
function methods.on(self, fn)
  if type(fn) ~= "function" then error(tostring(self) .. ":on: expected a function", 2) end
  if not receives(self) then
    error(("%s:on: a channel from '%s' is received on the %s"):format(tostring(self), self.from, self.from == "client" and "server" or "client"), 2)
  end
  -- one event handler per channel: origin, rate and arguments are checked once per event, whatever the handler count
  local list = self.handlers
  if not list then
    list = {}
    self.handlers = list
    local dispatch = guard(self, function(ctx, ...)
      local args, snapshot = table_pack(...), { table_unpack(list) }
      for i = 1, #snapshot do
        local h = snapshot[i]
        -- each handler in its own thread, as FiveM does: a Wait or an error in one does not hold the others
        Citizen.CreateThreadNow(function() h(ctx, table_unpack(args, 1, args.n)) end)
      end
    end)
    self.token = self.from == "local" and AddEventHandler(self.name, dispatch) or RegisterNetEvent(self.name, dispatch)
  end
  list[#list + 1] = fn
  return function()
    for i = #list, 1, -1 do
      if list[i] == fn then table.remove(list, i); break end
    end
    if #list == 0 and self.handlers == list then
      RemoveEventHandler(self.token)
      self.handlers, self.token = nil, nil
    end
  end
end

---@param self fx.ChannelState
---@param fnName string
---@param n integer
---@param ... any
local function checkOut(self, fnName, n, ...)
  local ok, why = self.check(n, ...)
  if not ok then error(("%s:%s: %s"):format(tostring(self), fnName, why), 3) end
end

--- Sends the event: local channel (same side, every resource), or client -> server.
---@param self fx.ChannelState
---@param ... any
function methods.emit(self, ...)
  checkOut(self, "emit", select("#", ...), ...)
  if self.from == "local" then return TriggerEvent(self.name, ...) end
  if self.from == "client" and not isServer then return TriggerServerEvent(self.name, ...) end
  error(("%s:emit: a channel from '%s' is sent with %s"):format(tostring(self), self.from, self.from == "server" and "emitTo / emitAll (server)" or "emit on the client"), 2)
end

-- A single client: a positive integer server id. -1 (everyone) goes through emitAll only.
---@param t any
---@return integer?
local function targetId(t)
  local id = t
  if type(t) == "table" then id = rawget(t, "serverId") or t.serverId or rawget(t, "source") end
  if math.type(id) == "integer" and id > 0 then return id end
  return nil
end

--- Server -> one client, or a list of clients (players or server ids).
---@param self fx.ChannelState
---@param target any
---@param ... any
function methods.emitTo(self, target, ...)
  if self.from ~= "server" or not isServer then error(tostring(self) .. ":emitTo: only for a channel from 'server', on the server", 2) end
  checkOut(self, "emitTo", select("#", ...), ...)
  local id = targetId(target)
  if id then return TriggerClientEvent(self.name, id, ...) end
  if type(target) == "table" and getmetatable(target) == nil
    and rawget(target, "serverId") == nil and rawget(target, "source") == nil then
    ---@type integer[]
    local ids = {}
    for i = 1, #target do
      ids[i] = targetId(target[i])
      if not ids[i] then error(("%s:emitTo: invalid target #%d (%s)"):format(tostring(self), i, tostring(target[i])), 2) end
    end
    -- packed once for every target (TriggerClientEvent would pack the arguments again per client)
    local payload = pack_args(...)
    local len = #payload
    for i = 1, #ids do TriggerClientEventInternal(self.name, ids[i], payload, len) end
    return
  end
  error(tostring(self) .. ":emitTo: invalid target " .. tostring(target) .. " (expected a player, a server id above 0 or a list)", 2)
end

--- Server -> every client.
---@param self fx.ChannelState
---@param ... any
function methods.emitAll(self, ...)
  if self.from ~= "server" or not isServer then error(tostring(self) .. ":emitAll: only for a channel from 'server', on the server", 2) end
  checkOut(self, "emitAll", select("#", ...), ...)
  return TriggerClientEvent(self.name, -1, ...)
end

setmetatable(Channel, {
  ---@param name string
  ---@param opts? fx.ChannelOptions
  ---@return fx.ChannelState
  __call = function(_, name, opts)
    local ch = newChannel(name, opts, "Channel") -- not a tail call: newChannel's error levels count this frame
    return ch
  end,
  ---@return string
  __tostring = function() return "fx.Channel" end,
})

-- used by fx.Rpc
---@type fx.ChannelInternal
Channel._internal = {
  new = newChannel, compileArgs = compileArgs, origin = origin, reject = reject, targetId = targetId,
  ---@param src integer
  ---@return any
  resolvePlayer = function(src) return resolvePlayer(src) end,
}


return Channel
