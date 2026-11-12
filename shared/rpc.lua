---@diagnostic disable
---@class fx.RpcState : fx.Rpc
---@field request fx.ChannelState Channel of the requests
---@field check fx.ArgsCheck
---@field returns? fx.ArgsCheck
---@field timeout integer
---@field handled? boolean

---A call waiting for its response.
---@class fx.RpcPending
---@field p fx.Promise
---@field name string
---@field target? integer Server id of the client asked (server -> client)
---@field returns? fx.ArgsCheck

---@type fx.SharedDeps
local deps = ...
local fx, rt, config, isServer = deps.fx, deps.rt, deps.config, deps.isServer

local type, tostring, select, error, pcall, setmetatable, getmetatable = type, tostring, select, error, pcall, setmetatable, getmetatable
local table_pack, table_unpack = table.pack, table.unpack
local TriggerEvent, TriggerServerEvent, TriggerClientEvent = TriggerEvent, TriggerServerEvent, TriggerClientEvent
local GetCurrentResourceName, SetTimeout = GetCurrentResourceName, Citizen.SetTimeout

local Channel = fx.Channel
local C = Channel._internal
local P = rt.Promise
local Pi = P._internal
local newPending, resolve, reject, newError = Pi.newPending, Pi.resolve, Pi.reject, Pi.newError

local RES = GetCurrentResourceName()
local DEFAULT_TIMEOUT = 10000
-- typed by fx.RpcLib (shared/annot/core.d.lua)
local Rpc = {}

---@type table<integer, fx.RpcPending>
local pending = {}
-- ids start at a random point: after a restart, a late answer to an old request must not match a new one
local nextId = math.random(1, 0x3FFFFFFF)

-- the side that answers a request coming from `from` sends its response back the other way
local RESPONSE_FROM = { client = "server", server = "client", ["local"] = "local" }

-- Requests travel on "__fxrpc:<name>" with (caller resource, request id, args...); each resource receives its
-- responses on its own "__fxrpc:res:<resource>" event (network) or "__fxrpc:lres:<resource>" (local), so callers in
-- several resources never see each other's answers.
---@type table<string, fx.ChannelState>
local responseChannels = {}

---@param from "client"|"server"|"local" Origin of the requests
---@return fx.ChannelState
local function responseChannel(from)
  local rfrom = RESPONSE_FROM[from]
  local ch = responseChannels[rfrom]
  if ch then return ch end
  local event = (rfrom == "local" and "__fxrpc:lres:" or "__fxrpc:res:") .. RES
  ch = C.new(event, { from = rfrom, args = { "string:128", "integer", "boolean", "..." } }, "Rpc", "response")
  ---@param ctx fx.ChannelContext
  ---@param name string
  ---@param id integer
  ---@param ok boolean
  ---@param ... any The values, or the error message
  ch:on(function(ctx, name, id, ok, ...)
    local req = pending[id]
    if not req or req.name ~= name then return end
    -- a client answering a server request must be the client that was asked
    if req.target and ctx.source ~= req.target then
      return C.reject("Rpc", name, ctx.from, ctx.source, "response from another client")
    end
    pending[id] = nil
    if not ok then return reject(req.p, newError("RpcError", tostring((...)) or "remote error")) end
    if req.returns then
      local valid, why = req.returns(select("#", ...), ...)
      if not valid then
        C.reject("Rpc", name, ctx.from, ctx.source, "invalid response: " .. why)
        return reject(req.p, newError("RpcError", name .. ": invalid response (" .. why .. ")"))
      end
    end
    resolve(req.p, ...)
  end)
  responseChannels[rfrom] = ch
  return ch
end

---@type table<string, function>
local methods = {}
local mt = { __index = methods, __name = "fx.Rpc" }
---@param self fx.RpcState
---@return string
mt.__tostring = function(self) return "fx.Rpc(" .. self.name .. ")" end

---@param self fx.RpcState
---@param ctx fx.ChannelContext
---@param caller string Resource of the caller
---@param id integer
---@param ok boolean
---@param ... any The values, or the error message
local function respond(self, ctx, caller, id, ok, ...)
  if self.from == "client" then return TriggerClientEvent("__fxrpc:res:" .. caller, ctx.source, self.name, id, ok, ...) end
  if self.from == "server" then return TriggerServerEvent("__fxrpc:res:" .. caller, self.name, id, ok, ...) end
  return TriggerEvent("__fxrpc:lres:" .. caller, self.name, id, ok, ...)
end

---@type fx.Logger?
local log

---@param self fx.RpcState
---@param err any
---@return string message Sent to the caller
local function failure(self, err)
  -- never send internal error details to a client
  if self.from == "client" then
    log = log or fx.Logger("fx"):child("Rpc")
    log:error("%s handler failed: %s", self.name, tostring(err))
    return config.debug and tostring(err) or "internal error"
  end
  return tostring(err)
end

--- Registers the handler fn(ctx, ...) -> values (or an fx.Promise of values). One handler per RPC on the whole server.
---@param self fx.RpcState
---@param fn fun(ctx: fx.ChannelContext, ...): ...
---@return fun() off
function methods.handle(self, fn)
  if type(fn) ~= "function" then error(tostring(self) .. ":handle: expected a function", 2) end
  -- two handlers would both answer, and the caller would take whichever arrives first
  if self.handled then error(tostring(self) .. ":handle: this RPC already has a handler in this resource", 2) end
  self.handled = true
  local check, name = self.check, self.name
  ---@param ctx fx.ChannelContext
  ---@param caller string Resource of the caller
  ---@param id integer
  ---@param ... any
  local off = self.request:on(function(ctx, caller, id, ...)
    local ok, why = check(select("#", ...), ...)
    if not ok then
      C.reject("Rpc", name, ctx.from, ctx.source, why --[[@as string]])
      return respond(self, ctx, caller, id, false, "invalid arguments: " .. why)
    end
    local r = table_pack(pcall(fn, ctx, ...))
    if r[1] and r.n == 2 and type(r[2]) == "table" and getmetatable(r[2]) == Pi.PromiseMT then
      r = table_pack(pcall(fx.await, r[2]))
    end
    if not r[1] then return respond(self, ctx, caller, id, false, failure(self, r[2])) end
    return respond(self, ctx, caller, id, true, table_unpack(r, 2, r.n))
  end)
  return function()
    if not self.handled then return end
    self.handled = false
    off()
  end
end

---@param self fx.RpcState
---@param fnName string
---@param target? integer Server id of the client asked
---@param ... any
---@return fx.Promise
local function send(self, fnName, target, ...)
  local ok, why = self.check(select("#", ...), ...)
  if not ok then error(("%s:%s: %s"):format(tostring(self), fnName, why), 3) end
  responseChannel(self.from)
  nextId = nextId + 1
  local id = nextId
  local p = newPending()
  pending[id] = { p = p, name = self.name, target = target, returns = self.returns }
  local timeout = self.timeout
  SetTimeout(timeout, function()
    if pending[id] then
      pending[id] = nil
      reject(p, newError("TimeoutError", ("%s: no response after %d ms"):format(self.name, timeout), { timeout = timeout }))
    end
  end)
  local event = "__fxrpc:" .. self.name
  if self.from == "client" then TriggerServerEvent(event, RES, id, ...)
  elseif self.from == "server" then TriggerClientEvent(event, target --[[@as integer]], RES, id, ...)
  else TriggerEvent(event, RES, id, ...) end
  return p
end

--- Calls the RPC (client -> server, or local). Returns an fx.Promise of the handler's return values.
---@param self fx.RpcState
---@param ... any
---@return fx.Promise
function methods.callAsync(self, ...)
  if self.from == "server" then error(tostring(self) .. ":callAsync: a server -> client RPC is called with callOnAsync(player, ...)", 2) end
  if self.from == "client" and isServer then error(tostring(self) .. ":callAsync: a client -> server RPC is called from the client", 2) end
  return send(self, "callAsync", nil, ...)
end

--- Server -> one client. Returns an fx.Promise of the client's return values (checked against `returns`).
---@param self fx.RpcState
---@param player fx.Player|integer|{ source: integer }
---@param ... any
---@return fx.Promise
function methods.callOnAsync(self, player, ...)
  if self.from ~= "server" or not isServer then error(tostring(self) .. ":callOnAsync: only for an RPC from 'server', on the server", 2) end
  local id = C.targetId(player)
  if type(id) ~= "number" then error(tostring(self) .. ":callOnAsync: invalid target " .. tostring(player), 2) end
  return send(self, "callOnAsync", id, ...)
end

setmetatable(Rpc, {
  ---@param name string
  ---@param opts? fx.RpcOptions
  ---@return fx.RpcState
  __call = function(_, name, opts)
    if type(name) ~= "string" or name == "" or #name > 128 then
      error("fx.Rpc: name must be a non-empty string of at most 128 characters", 2)
    end
    opts = opts or {}
    local request = C.new("__fxrpc:" .. tostring(name), { from = opts.from, rate = opts.rate, args = { "string:128", "integer:1..", "..." } }, "Rpc", tostring(name))
    return setmetatable({
      name = name, from = request.from, request = request,
      check = C.compileArgs(opts.args or { "..." }, "Rpc", name, 2),
      returns = opts.returns and C.compileArgs(opts.returns, "Rpc", name, 2) or nil,
      timeout = opts.timeout or DEFAULT_TIMEOUT,
    }, mt)
  end,
  ---@return string
  __tostring = function() return "fx.Rpc" end,

})

return Rpc
