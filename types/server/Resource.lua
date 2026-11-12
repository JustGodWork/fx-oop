---@meta
---@diagnostic disable
-- fx.Resource (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---Another resource, seen from this one: its state, its exports, its starts and stops.
---@class fx.ResourceRef
---@field name string
---@field state string (read-only) GET_RESOURCE_STATE: "started", "starting", "stopped", "stopping", "missing", "uninitialized" or "unknown"
---@field started boolean (read-only) The resource is started: its exports can be called
local ResourceRef = {}

---Calls an export of the resource, protected. Never raises: `false, message` when the resource is not started, the
---export does not exist or it raised. FiveM does not pass the message of an error raised in another resource: the
---caller only gets "An error occurred while calling export ...".
---```lua
---local garage <const> = fx.Resource("my_garage")
---local ok, id = garage:call("registerGarage", "pillbox", { slots = 10 })
---if not ok then log:warn("garage not registered: %s", id) end
---```
---@param export string
---@param ... any
---@return boolean ok
---@return any ... The export results, or the error message
function ResourceRef:call(export, ...) end

---Runs `fn(resource)` in a new thread each time the resource is started (its exports can be called), and right away
---when it is already started: the place to register things into another resource, so they come back after its restart.
---```lua
---fx.Resource("my_garage"):onStart(function(garage)
---  local ok, err = garage:call("registerGarage", "pillbox", { slots = 10 })
---  if not ok then log:warn("garage not registered: %s", err) end
---end)
---```
---@param fn fun(resource: fx.ResourceRef)
---@return fun() off
function ResourceRef:onStart(fn) end

---Runs `fn(resource)` each time the resource stops.
---@param fn fun(resource: fx.ResourceRef)
---@return fun() off
function ResourceRef:onStop(fn) end

---`fx.Resource(name)`: the resource of that name (one object per name, the resource does not have to exist yet).
---@class fx.Resource
---@overload fun(name: string): fx.ResourceRef

local ResourceStatic = {}

