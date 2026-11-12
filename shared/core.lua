---@diagnostic disable
---@type fx.CoreDeps
local deps = ...
local fx, config, P = deps.fx, deps.config, deps.Promise
local isServer = deps.isServer

local type, error, tostring, rawget, rawset, setmetatable, getmetatable, pairs, select =
  type, error, tostring, rawget, rawset, setmetatable, getmetatable, pairs, select
local table_pack, table_unpack, table_remove = table.pack, table.unpack, table.remove
local Pi = P._internal
local newPending, resolve, reject, newError = Pi.newPending, Pi.resolve, Pi.reject, Pi.newError

local DoesEntityExist = DoesEntityExist
local GetEntityType = GetEntityType
local GetGameTimer = GetGameTimer
local Wait = Citizen.Wait
local CreateThread = Citizen.CreateThread

---Runtime helpers shared by the generated files and the mixins.
---@class fx.Rt
---@field fx fx
---@field config fx.Config
---@field isServer boolean
---@field Promise fx.PromiseLib
local rt = { fx = fx, config = config, isServer = isServer, Promise = P }
---@type table<string, fx.TypeDef>
local types = {}
---@type fx.TypeDef[]
local allTypes = {} -- in load order, for setDebug
---@type table<table, fx.TypeDef>
local byMT = {} -- instance metatable -> type

-- one wrapper per handle, shared by Entity / Ped / Vehicle / Object
---@type table<integer, fx.Wrapper>
local entityCache = setmetatable({}, { __mode = "v" })
rt.entityCache = entityCache
-- entities created as networked: readyAsync() waits for their network id
---@type table<fx.Wrapper, true>
rt.netIntent = setmetatable({}, { __mode = "k" })

---@class fx.TypeOptions
---@field parent? string
---@field entityType? integer GetEntityType value checked by wrap in debug mode
---@field kind? "entity"|"handle"|"player" Default "handle"
---@field nulls? table<integer, true> Handle values that mean "none" (wrap returns nil). Default { [0] = true }

---@param name string
---@param opts? fx.TypeOptions
---@return fx.TypeDef
function rt.defineType(name, opts)
  opts = opts or {}
  local parent = opts.parent and rt.require(opts.parent) and types[opts.parent] or nil
  ---@type fx.TypeDef
  local T = {
    name = name, parent = parent, entityType = opts.entityType, kind = opts.kind or "handle",
    methods = {}, getters = {}, setters = {},
    statics = {}, staticGetters = {}, staticSetters = {},
    mt = { __name = "fx." .. name },
  }
  T.cache = (T.kind == "entity") and entityCache or setmetatable({}, { __mode = "v" })
  T.nulls = opts.nulls or { [0] = true }
  types[name] = T
  allTypes[#allTypes + 1] = T
  byMT[T.mt] = T
  return T
end

--- True when v is an instance of the type `name` or of one of its subtypes (a Ped is an Entity).
---@param v any
---@param name string
---@return boolean
function rt.instanceOf(v, name)
  if type(v) ~= "table" then return false end
  local mt = getmetatable(v)
  local U = byMT[mt]
  if U == nil then
    -- the local player (client) is the static table itself
    local T = types[name]
    return T ~= nil and T.kind == "player" and T.staticMT == mt
  end
  while U do
    if U.name == name then return true end
    U = U.parent
  end
  return false
end

---@param name string
---@return fx.TypeDef
function rt.defineModule(name)
  ---@type fx.TypeDef
  local T = { name = name, kind = "module", statics = {}, staticGetters = {}, staticSetters = {}, methods = {}, getters = {}, setters = {} }
  types[name] = T
  return T
end

---Loads the module fx.<name> and returns its static table.
---@param name string
---@return any
function rt.require(name) return fx[name] end

---@param name string
---@return fx.TypeDef
function rt.typeOf(name) rt.require(name); return types[name] end

---@param level integer Stack level seen from the caller of errorf
---@param fmt string
---@param ... any
local function errorf(level, fmt, ...) error(fmt:format(...), level + 1) end

---@param T fx.TypeDef
local function buildInstanceMT(T)
  local name, methods, getters, setters, mt = T.name, T.methods, T.getters, T.setters, T.mt --[[@as table<string, any>]]
  ---@param self fx.Wrapper
  ---@param k any
  ---@return any
  local function index(self, k)
    local m = methods[k]
    if m ~= nil then return m end
    local g = getters[k]
    if g ~= nil then return g(self) end
    return nil
  end
  ---@param self fx.Wrapper
  ---@param k any
  ---@param v any
  local function newindex(self, k, v)
    local s = setters[k]
    if s ~= nil then s(self, v); return end
    if getters[k] ~= nil or methods[k] ~= nil then errorf(2, "%s.%s is read-only", name, tostring(k)) end
    errorf(2, "%s has no property '%s'", name, tostring(k))
  end
  -- debug mode: checks existence on every access (except safe members), unknown members raise
  local SAFE = T.safe or {}
  local isEntity = T.kind == "entity"
  ---@param self fx.Wrapper
  ---@param k any
  ---@return any
  local function dindex(self, k)
    -- promises read `next` to tell a thenable from a value: a deleted entity is still a plain value
    if k == "next" and methods.next == nil then return nil end
    if isEntity and not SAFE[k] and not DoesEntityExist(rawget(self, "handle") or 0) then
      errorf(2, "%s does not exist (accessing '%s')", tostring(self), tostring(k))
    end
    local m = methods[k]
    if m ~= nil then return m end
    local g = getters[k]
    if g ~= nil then return g(self) end
    errorf(2, "%s has no member '%s'", name, tostring(k))
  end
  ---@param self fx.Wrapper
  ---@param k any
  ---@param v any
  local function dnewindex(self, k, v)
    if isEntity and setters[k] ~= nil and not DoesEntityExist(rawget(self, "handle") or 0) then
      errorf(2, "%s does not exist (writing '%s')", tostring(self), tostring(k))
    end
    return newindex(self, k, v)
  end
  T.index, T.newindex, T.dindex, T.dnewindex = index, newindex, dindex, dnewindex
  mt.__index = config.debug and dindex or index
  mt.__newindex = config.debug and dnewindex or newindex
  ---@param a fx.Wrapper
  ---@param b fx.Wrapper
  ---@return boolean
  mt.__eq = T.eq or function(a, b) return rawget(a, "handle") == rawget(b, "handle") end
  ---@param self fx.Wrapper
  ---@return string
  mt.__tostring = T.tostring or function(self) return ("%s(%s)"):format(name, tostring(self.handle)) end
end

--- Flattens the parent into the child (the child wins), builds the metatables and the static table.
---@param T fx.TypeDef
---@return table<string, any> static
function rt.finalize(T)
  local p = T.parent
  if p then
    -- a name defined by the child (whatever its role) hides the parent's
    ---@type table<string, true>
    local own = {}
    for _, f in ipairs({ "methods", "getters", "setters" }) do
      for k in pairs(T[f]) do own[k] = true end
    end
    for _, f in ipairs({ "methods", "getters", "setters" }) do
      local dst = T[f]
      for k, v in pairs(p[f]) do
        if not own[k] then dst[k] = v end
      end
    end
    T.safe = T.safe or p.safe
  end
  buildInstanceMT(T)
  local mt, cache, entityType, name = T.mt, T.cache --[[@as table<any, fx.Wrapper>]], T.entityType, T.name
  local wrap = T.wrap
  if not wrap then
    if T.kind == "entity" then
      ---@param h any A handle, or a wrapper (returned as is)
      ---@return fx.Wrapper?
      wrap = function(h)
        if h == nil or h == 0 then return nil end
        if type(h) == "table" then return h end
        local o = cache[h]
        if o ~= nil and getmetatable(o) == mt then return o end
        if config.debug and entityType and DoesEntityExist(h) and GetEntityType(h) ~= entityType then
          errorf(3, "%s(%s): handle is not a %s (GetEntityType = %s)", name, tostring(h), name, tostring(GetEntityType(h)))
        end
        o = setmetatable({ handle = h }, mt)
        cache[h] = o
        return o
      end
    else
      local nulls = T.nulls --[[@as table<integer, true>]]
      ---@param h any A handle, or a wrapper (returned as is)
      ---@return fx.Wrapper?
      wrap = function(h)
        if h == nil or nulls[h] then return nil end
        if type(h) == "table" then return h end
        local o = cache[h]
        if o ~= nil then return o end
        o = setmetatable({ handle = h }, mt)
        cache[h] = o
        return o
      end
    end
    T.wrap = wrap
  end
  local statics, sget, sset = T.statics, T.staticGetters, T.staticSetters
  local smt = T.staticMT or {}
  ---@param h any
  ---@return any
  smt.__call = smt.__call or function(_, h) return wrap(h) end
  ---@param k any
  ---@return any
  smt.__index = smt.__index or function(_, k)
    local g = sget[k]
    if g ~= nil then return g() end
    return nil
  end
  ---@param k any
  ---@param v any
  smt.__newindex = smt.__newindex or function(_, k, v)
    local s = sset[k]
    if s ~= nil then s(v); return end
    if sget[k] ~= nil or statics[k] ~= nil then errorf(2, "%s.%s is read-only", name, tostring(k)) end
    errorf(2, "%s has no static property '%s'", name, tostring(k))
  end
  ---@return string
  smt.__tostring = smt.__tostring or function() return "fx." .. name end
  if statics.is == nil then
    ---@param v any
    ---@return boolean
    statics.is = function(v) return rt.instanceOf(v, name) end
  end
  T.staticMT = smt
  T.static = setmetatable(statics, smt)
  if T.afterFinalize then T.afterFinalize(T.static) end
  if rt.msgpackSetup then rt.msgpackSetup(T) end
  return T.static
end

---@param T fx.TypeDef
---@return table<string, any> static
function rt.finalizeModule(T)
  local name, statics, sget, sset = T.name, T.statics, T.staticGetters, T.staticSetters
  return setmetatable(statics, {
    ---@param k any
    ---@return any
    __index = function(_, k) local g = sget[k]; if g ~= nil then return g() end return nil end,
    ---@param k any
    ---@param v any
    __newindex = function(_, k, v)
      local s = sset[k]
      if s ~= nil then s(v); return end
      if sget[k] ~= nil or statics[k] ~= nil then errorf(2, "%s.%s is read-only", name, tostring(k)) end
      errorf(2, "%s has no property '%s'", name, tostring(k))
    end,
    ---@return string
    __tostring = function() return "fx." .. name end,
    -- a mixin may make the module callable (fx.Keybind(name, options))
    ---@param ... any
    ---@return any
    __call = T.call and function(_, ...) return T.call(...) end or nil,
  })
end

--- Enables / disables debug mode on every type already loaded.
---@param on any Truthy: on
function rt.setDebug(on)
  config.debug = not not on
  for i = 1, #allTypes do
    local T = allTypes[i]
    if T.mt and T.index then
      T.mt.__index = on and T.dindex or T.index
      T.mt.__newindex = on and T.dnewindex or T.newindex
    end
  end
end

--- Lazy wrapper: resolves the type on first call (avoids circular dependencies at load time).
---@param name string
---@return fun(h: any): any
function rt.lazyWrap(name)
  ---@type fun(h: any): any
  local w
  return function(h)
    if h == nil then return nil end
    if not w then w = rt.typeOf(name).wrap --[[@as fun(h: any): any]] end
    return w(h)
  end
end

--- Drops a destroyed wrapper from its cache.
---@param self fx.Wrapper
function rt.forget(self)
  local h = rawget(self, "handle")
  local T = types[(getmetatable(self).__name or ""):sub(4)]
  local cache = T and T.cache or entityCache
  if h and cache[h] == self then cache[h] = nil end
end

---@param x fx.Wrapper|integer
---@return integer
function rt.toHandle(x)
  if type(x) == "table" then return x.handle end
  return x
end

-- One polling thread for every wait (ready, loads, shape tests...): API functions never yield,
-- they register a task and return a Promise.
---@type (fun(): boolean?)[]
local tasks = {}
local ntasks, polling = 0, false

local function pollLoop()
  while ntasks > 0 do
    local i = 1
    while i <= ntasks do
      local ok, done = pcall(tasks[i])
      if not ok or done then
        if not ok then Citizen.Trace("^1[fx] poll task error: " .. tostring(done) .. "^7\n") end
        table_remove(tasks, i)
        ntasks = ntasks - 1
      else
        i = i + 1
      end
    end
    if ntasks > 0 then Wait(0) end
  end
  polling = false
end

---Adds a task to the polling thread: called every frame until it returns true (or raises).
---@param fn fun(): boolean?
function rt.addTask(fn)
  ntasks = ntasks + 1
  tasks[ntasks] = fn
  if not polling then
    polling = true
    CreateThread(pollLoop)
  end
end

local DEFAULT_TIMEOUT = 10000
rt.DEFAULT_TIMEOUT = DEFAULT_TIMEOUT

--- Promise resolved with `...` once cond() is true; TimeoutError rejection after timeoutMs.
---@param label string
---@param cond fun(): any
---@param timeoutMs? integer Default rt.DEFAULT_TIMEOUT
---@param ... any Resolution values
---@return fx.Promise
function rt.waitUntil(label, cond, timeoutMs, ...)
  local p = newPending()
  local n = select("#", ...)
  if cond() then resolve(p, ...); return p end
  local vals = n > 0 and table_pack(...) or nil
  local deadline = GetGameTimer() + (timeoutMs or DEFAULT_TIMEOUT)
  rt.addTask(function()
    local okc, done = pcall(cond)
    if not okc then reject(p, done); return true end -- a raising cond would otherwise leave p pending forever
    if done then
      if vals then resolve(p, table_unpack(vals, 1, vals.n)) else resolve(p) end
      return true
    end
    if GetGameTimer() > deadline then
      reject(p, newError("TimeoutError", label .. ": timed out after " .. tostring(timeoutMs or DEFAULT_TIMEOUT) .. " ms"))
      return true
    end
    return false
  end)
  return p
end

--- REQUEST_X / HAS_X_LOADED pair -> Promise resolved with the first argument (the hash for a model).
---@param label string
---@param argName string Shown in the invalid argument error
---@param request fun(...: any)
---@param loaded fun(...: any): boolean
---@param validate? fun(...: any): boolean
---@param timeoutMs? integer
---@param ... any Arguments of request and loaded
---@return fx.Promise
function rt.load(label, argName, request, loaded, validate, timeoutMs, ...)
  local first = ...
  if validate and not validate(...) then
    return P.reject(newError("Error", ("%s: invalid %s '%s'"):format(label, argName, tostring(first))))
  end
  local args = table_pack(...)
  -- requested even when loaded: the promise settles on a later tick, and an asset released in between (a previous
  -- creation calls SetModelAsNoLongerNeeded) can be unloaded before the caller uses it
  request(...)
  if loaded(...) then return P.resolve(first) end
  return rt.waitUntil(label, function() return loaded(table_unpack(args, 1, args.n)) end, timeoutMs, first)
end

--- Start + status polling (0 invalid / 1 pending / 2 done) -> Promise of all values.
---@param p fx.Promise
---@param label string
---@param status integer
---@param ... any Resolution values when done
---@return boolean settled
local function settleStatus(p, label, status, ...)
  if status == 1 then return false end
  if status == 2 then resolve(p, ...); return true end
  reject(p, newError("Error", label .. ": invalid handle (status " .. tostring(status) .. ")"))
  return true
end
---@param label string
---@param poll fun(): integer, ...
---@param timeoutMs? integer
---@return fx.Promise
function rt.pollStatus(label, poll, timeoutMs)
  local p = newPending()
  local deadline = GetGameTimer() + (timeoutMs or DEFAULT_TIMEOUT)
  rt.addTask(function()
    local okp, done = pcall(function() return settleStatus(p, label, poll()) end)
    if not okp then reject(p, done); return true end
    if done then return true end
    if GetGameTimer() > deadline then
      reject(p, newError("TimeoutError", label .. ": timed out"))
      return true
    end
    return false
  end)
  return p
end

--- Wraps a native declared as returning a BOOL: some of them return 0 / 1 in CfxLua (IS_TOGGLE_MOD_ON), and
--- `not 0` is false in Lua. nil stays nil (a native missing from the game build).
---@generic F: function
---@param native F A BOOL native: the wrapper keeps its signature
---@return F
function rt.bool(native)
  if native == nil then return nil end
  return function(...)
    local r = native(...)
    return r ~= false and r ~= 0 and r ~= nil
  end
end

--- For an int parameter: a float would reach the native as its raw bits. Truncates like a C cast.
---@generic T
---@param x T
---@return T|integer
function rt.int(x)
  if math.type(x) == "float" then return math.tointeger((math.modf(x))) or 0 end
  return x
end

--- Promise rejected with an Error carrying `message`.
---@param message string
---@return fx.Promise
function rt.fail(message)
  return P.reject(newError("Error", message))
end

local GetHashKey = GetHashKey
---@param model fx.Model|integer|string
---@return integer
function rt.hash(model)
  local t = type(model)
  if t == "string" then return GetHashKey(model) end
  if t == "table" then return model.handle end
  return model --[[@as integer]]
end

local OWNER = {} -- private key of the wrapper inside a proxy

---@param p table A proxy made by rt.proxy
---@return integer
function rt.proxyHandle(p) return rawget(p, OWNER).handle end

--- Proxy over a wrapper, such as vehicle.mods. Errors raised without a position (error(msg, 0)) are raised again
--- at the caller line.
---@param name string
---@param api table<string, fun(...): any> Methods of the proxy
---@param get fun(handle: integer, key: string): any
---@param set fun(handle: integer, key: string, value: any)
---@return fun(self: fx.Wrapper): table getter One proxy per wrapper
function rt.proxy(name, api, get, set)
  ---@type table<fx.Wrapper, table>
  local cache = setmetatable({}, { __mode = "k" })
  ---@type table<string, fun(...): any>
  local guarded = {}
  for k, fn in pairs(api) do
    ---@param ... any
    ---@return any
    guarded[k] = function(...)
      local ok, r = pcall(fn, ...)
      if not ok then error(r, 2) end
      return r
    end
  end
  local mt = {
    ---@param p table
    ---@param k string
    ---@return any
    __index = function(p, k)
      local m = guarded[k]
      if m then return m end
      local ok, r = pcall(get, rawget(p, OWNER).handle, k)
      if not ok then error(r, 2) end
      return r
    end,
    ---@param p table
    ---@param k string
    ---@param v any
    __newindex = function(p, k, v)
      local ok, r = pcall(set, rawget(p, OWNER).handle, k, v)
      if not ok then error(r, 2) end
    end,
    ---@param p table
    ---@return string
    __tostring = function(p) return tostring(rawget(p, OWNER)) .. "." .. name end,
  }
  ---@param self fx.Wrapper
  ---@return table
  return function(self)

    local p = cache[self]
    if not p then p = setmetatable({ [OWNER] = self }, mt); cache[self] = p end
    return p
  end
end

return rt
