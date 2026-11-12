---@diagnostic disable
---@type fx.StatesDeps
local deps = ...
local rt, config = deps.rt, deps.config
local NativeEntity, NativePlayer, NativeGlobalState = deps.NativeEntity, deps.NativePlayer, deps.NativeGlobalState
local isServer = rt.isServer
local P = rt.Promise
local Pi = P._internal

local setmetatable, type, tostring, error = setmetatable, type, tostring, error
local msgpack_pack = msgpack.pack
local GetStateBagValue, SetStateBagValue = GetStateBagValue, SetStateBagValue
local AddStateBagChangeHandler, RemoveStateBagChangeHandler = AddStateBagChangeHandler, RemoveStateBagChangeHandler
local NetworkGetEntityIsNetworked, NetworkGetNetworkIdFromEntity = NetworkGetEntityIsNetworked, NetworkGetNetworkIdFromEntity
local NetworkGetEntityOwner = NetworkGetEntityOwner
local PlayerId = PlayerId
local SetTimeout, ClearTimeout, Wait = Citizen.SetTimeout, Citizen.ClearTimeout, Citizen.Wait

---@class fx.StateBagInfo
---@field bag string State bag name
---@field native CitizenStateBag The native state bag proxy
---@field kind "entity"|"player"|"global"
---@field handle? integer Entity handle
---@field isLocal? boolean The local player's bag (client)

---@type table<fx.StateBag, fx.StateBagInfo>
local info = setmetatable({}, { __mode = "k" })

---@type table<string, function>
local methods = {}
local StatesMT = {
  __name = "fx.StateBag",
  ---@param self fx.StateBag
  ---@param k string
  ---@return any
  __index = function(self, k)
    local m = methods[k]
    if m ~= nil then return m end
    return info[self].native[k]
  end,
  --- Write: native FiveM behavior (replicated on the server, local on the client).
  ---@param self fx.StateBag
  ---@param k string
  ---@param v any
  __newindex = function(self, k, v)
    info[self].native[k] = v
  end,
  ---@param self fx.StateBag
  ---@return string
  __tostring = function(self) return "StateBag(" .. tostring(info[self].bag) .. ")" end,
}

---@param i fx.StateBagInfo
---@param replicated? boolean
local function warnIfRejected(i, replicated)
  if isServer or not replicated or not config.debug then return end
  local why
  if i.kind == "global" then why = "the global bag is server-only"
  elseif i.kind == "player" and not i.isLocal then why = "only the player itself can write its player bag"
  elseif i.kind == "entity" then
    local owner = NetworkGetEntityOwner(i.handle)
    if owner ~= PlayerId() then why = "this client is not the network owner of the entity" end
  end
  if why then
    Citizen.Trace(("^3[fx] states:set on %s will be rejected by the server: %s^7\n"):format(i.bag, why))
  end
end

-- SetStateBagValue directly: the native `set` allocates a closure on every access. On the client, the server drops
-- a replicated write silently unless this client owns the bag and sv_stateBagStrictMode is off (StateBagComponent.cpp).
---@param self fx.StateBag
---@param key string
---@param value any
---@param replicated? boolean
---@return fx.StateBag
function methods.set(self, key, value, replicated)
  local i = info[self]
  warnIfRejected(i, replicated)
  local payload = msgpack_pack(value)
  SetStateBagValue(i.bag, key, payload, #payload, not not replicated)
  return self
end

---@param self fx.StateBag
---@param key string
---@return any
function methods.get(self, key)
  return GetStateBagValue(info[self].bag, key)
end

--- The handler runs before the native stores the value: `deferred` waits for the store (citizenfx/fivem#1304).
---@param self fx.StateBag
---@param key string
---@param fn fun(value: any, old: any, replicated: boolean)
---@param opts? { deferred?: boolean }
---@return fun() off
function methods.on(self, key, fn, opts)
  local bag = info[self].bag
  local deferred = opts ~= nil and opts.deferred == true
  local active = true
  ---@param bagName string
  ---@param k string
  ---@param value any
  ---@param replicated boolean
  local cookie = AddStateBagChangeHandler(key, bag, function(bagName, k, value, _, replicated)
    local old = GetStateBagValue(bagName, k) -- before the store, so before any yield
    if deferred then
      -- the handler already runs in its own coroutine: yielding lets the native store the value
      Wait(0)
      if not active then return end
    end
    fn(value, old, replicated)
  end)
  return function()
    if not active then return end
    active = false
    RemoveStateBagChangeHandler(cookie)
  end
end

--- Promise resolved with the value of `key` as soon as it exists (or as soon as predicate(value) is true).
---@param self fx.StateBag
---@param key string
---@param timeoutMs? integer
---@param predicate? fun(value: any): boolean
---@return fx.Promise
function methods.waitForAsync(self, key, timeoutMs, predicate)
  local bag = info[self].bag
  ---@type fun(value: any): boolean
  local pass = predicate or function(v) return v ~= nil end
  local current = GetStateBagValue(bag, key)
  if pass(current) then return P.resolve(current) end
  local p = Pi.newPending()
  ---@type fun()
  local off
  ---@type integer?
  local timer
  off = self:on(key, function(value)
    if pass(value) then
      off()
      if timer then ClearTimeout(timer) end
      Pi.resolve(p, value)
    end
  end)
  local ms = timeoutMs or rt.DEFAULT_TIMEOUT
  timer = SetTimeout(ms, function()
    off()
    Pi.reject(p, Pi.newError("TimeoutError", ("states:waitForAsync('%s') on %s: timed out after %d ms"):format(tostring(key), bag, ms)))
  end)
  return p
end

--- Same name as GetEntityStateBagId in scheduler.lua.
---@param h integer
---@return string
local function entityBagName(h)
  if isServer or NetworkGetEntityIsNetworked(h) then
    return "entity:" .. NetworkGetNetworkIdFromEntity(h)
  end
  return "localEntity:" .. h
end

---State bag proxies (rt.states).
---@class fx.StatesLib
local S = {}

---@param wrapper fx.Wrapper
---@return fx.StateBag
function S.entity(wrapper)
  local h = wrapper.handle
  if config.debug and not isServer and not NetworkGetEntityIsNetworked(h) then
    error(("%s.states: entity is not networked (state bags require a networked entity)"):format(tostring(wrapper)), 3)
  end
  local native = NativeEntity(h).state -- also calls EnsureEntityStateBag
  local proxy = setmetatable({}, StatesMT)
  info[proxy] = { bag = entityBagName(h), native = native, kind = "entity", handle = h }
  return proxy
end

---@param serverId integer
---@param isLocal? boolean The local player (client)
---@return fx.StateBag
function S.player(serverId, isLocal)
  local native = NativePlayer(isLocal and -1 or serverId).state
  local proxy = setmetatable({}, StatesMT)
  info[proxy] = { bag = "player:" .. tostring(serverId), native = native, kind = "player", isLocal = isLocal }
  return proxy
end

---@return fx.StateBag
function S.global()
  local proxy = setmetatable({}, StatesMT)
  info[proxy] = { bag = "global", native = NativeGlobalState, kind = "global" }
  return proxy
end

---@type table<string, function>
S.methods = methods
S.entityBagName = entityBagName
---@param proxy fx.StateBag
---@return string
function S.bagOf(proxy) return info[proxy].bag end

return S
