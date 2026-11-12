---@diagnostic disable
---@type { rt: fx.Rt }
local deps = ...
local rt = deps.rt
local AddEventHandler, RemoveEventHandler, CancelEvent = AddEventHandler, RemoveEventHandler, CancelEvent
local NetworkGetEntityFromNetworkId = NetworkGetEntityFromNetworkId
local type, tostring, tonumber, pcall, error = type, tostring, tonumber, pcall, error
local pack, unpack = table.pack, table.unpack
local math_tointeger, vector3 = math.tointeger, vector3
local log ---@type fx.Logger?

---Helpers of the fx.Events namespaces (rt.events).
---@class fx.EventsKit
local K = {}

---@param label string
---@param err any
function K.logError(label, err)
  log = log or rt.fx.Logger("fx"):child("Events")
  log:error("%s: %s", label, tostring(err))
end

---Raises at the caller of the `on*` function when `fn` is not a function.
---@param label string
---@param fn any
function K.checkFn(label, fn)
  if type(fn) ~= "function" then error("fx.Events." .. label .. ": fn must be a function", 3) end
end

---Runs `fn`, logs its error.
---@param label string
---@param fn function
---@param ... any
---@return boolean ok
function K.call(label, fn, ...)
  local ok, err = pcall(fn, ...)
  if not ok then K.logError(label, err) end
  return ok
end

---@param event string
---@param handler fun(...: any)
---@return fun() off Removes the handler; calling it again does nothing
function K.listen(event, handler)
  local token = AddEventHandler(event, handler)
  local removed = false
  return function()
    if removed then return end
    removed = true
    RemoveEventHandler(token)
  end
end

---`on*` function of an event: checks `fn`, decodes the arguments and calls `fn` with the decoded values. An event
---for which `decode` returns nothing is skipped.
---```lua
---Ns.onFoo = K.on("Ns.onFoo", "foo", function(name, id) return K.player(id), tostring(name) end)
---```
---@param label string
---@param event string
---@param decode? fun(...: any): ...
---@return fun(fn: function): fun()
function K.on(label, event, decode)
  return function(fn)
    K.checkFn(label, fn)
    if not decode then
      return K.listen(event, function(...) K.call(label, fn, ...) end)
    end
    return K.listen(event, function(...)
      local r = pack(pcall(decode, ...))
      if not r[1] then return K.logError(label, r[2]) end
      if r[2] == nil then return end
      K.call(label, fn, unpack(r, 2, r.n))
    end)
  end
end

---A resource name, an fx.ResourceRef or nil (every resource), as a name.
---@param label string
---@param filter? string|fx.ResourceRef
---@return string?
function K.resourceFilter(label, filter)
  if filter == nil then return nil end
  if type(filter) == "string" then return filter end
  if type(filter) == "table" and type(filter.name) == "string" then return filter.name end
  error("fx.Events." .. label .. ": resource must be a name or an fx.Resource", 3)
end

---@param name string
---@return fx.ResourceRef
function K.resource(name) return rt.fx.Resource(name) end

---`on*` function of a resource event: `fn(resource)` for every resource or only `filter`. With `cancelable`, `fn`
---also gets a function that cancels the event.
---@param label string
---@param event string
---@param cancelable? boolean
---@return fun(fn: fun(resource: fx.ResourceRef, cancel?: fun()), filter?: string|fx.ResourceRef): fun()
function K.onResource(label, event, cancelable)
  return function(fn, filter)
    K.checkFn(label, fn)
    local only = K.resourceFilter(label, filter)
    ---@param name string
    return K.listen(event, function(name)
      if only ~= nil and name ~= only then return end
      if cancelable then K.call(label, fn, K.resource(name), CancelEvent)
      else K.call(label, fn, K.resource(name)) end
    end)
  end
end

---@param v any
---@return integer?
function K.int(v)
  v = tonumber(v)
  return v and math_tointeger(v) or nil
end

---A hash as GetHashKey returns it: signed 32 bits (the server sends some of them unsigned).
---@param v any
---@return integer
function K.hash(v)
  local h = K.int(v) or 0
  if h >= 0x80000000 then h = h - 0x100000000 end
  return h
end

---The player of a server id (also one who left or is out of scope), nil for nil, 0 or a negative id.
---@param id any
---@return fx.Player?
function K.player(id)
  id = K.int(id)
  if not id or id <= 0 then return nil end
  local decode = rt.typeOf("Player").decode --[[@as fun(id: integer): fx.Player?]]
  return decode(id)
end

---The entity of a network id, nil when it is 0 or not known here.
---@param netId any
---@return fx.Entity?
function K.entityOfNetId(netId)
  netId = K.int(netId)
  if not netId or netId <= 0 then return nil end
  local h = NetworkGetEntityFromNetworkId(netId)
  if not h or h == 0 then return nil end
  local wrap = rt.typeOf("Entity").wrap --[[@as fun(h: integer): fx.Entity?]]
  return wrap(h)
end

---The entity of a script handle, nil for 0 or -1.
---@param h any
---@return fx.Entity?
function K.entity(h)
  h = K.int(h)
  if not h or h == 0 or h == -1 then return nil end
  local wrap = rt.typeOf("Entity").wrap --[[@as fun(h: integer): fx.Entity?]]
  return wrap(h)
end

---@param x any
---@param y any
---@param z any
---@return vector3
function K.vec(x, y, z)
  return vector3(tonumber(x) or 0.0, tonumber(y) or 0.0, tonumber(z) or 0.0)
end

---@param v any
---@return table<any, any>
function K.tbl(v) return type(v) == "table" and v or {} end

---@param v any
---@return string?
function K.str(v)
  if v == nil then return nil end
  return tostring(v)
end

return K
