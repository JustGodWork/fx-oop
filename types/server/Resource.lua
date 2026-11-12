---@meta
---@diagnostic disable
-- fx.Resource (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.ResourceRef
---@field path? string (read-only) Folder of the resource on the server's disk
local ServerResourceRef = {}

---Writes a file of the resource (created or replaced). A resource writes only its own files: writing into another one
---needs `add_filesystem_permission <this resource> write <that resource>` in server.cfg (read at startup only), false
---without it.
---@param path string Relative to the resource folder
---@param data string
---@return boolean ok
function ServerResourceRef:saveFile(path, data) end

---Starts the resource. Raises when called on the current resource: a resource does not run its own lifecycle.
---@return boolean ok
function ServerResourceRef:start() end

---Stops the resource. Raises when called on the current resource.
---@return boolean ok
function ServerResourceRef:stop() end

---Stops the resource when it is started, then starts it. Raises when called on the current resource.
---@return boolean ok Whether it started again
function ServerResourceRef:restart() end


---A command registered by a resource (`GET_RESOURCE_COMMANDS`).
---@class fx.ResourceCommand
---@field name string
---@field resource string The resource that registered it
---@field arity integer Number of arguments, -1 when not fixed

---Another resource, seen from this one: its state, its manifest, its files, its exports, its starts and stops. On the
---client, only the resources the client downloaded are seen: a server-only resource has no metadata and no file.
---@class fx.ResourceRef
---@field name string
---@field state string (read-only) GET_RESOURCE_STATE: "started", "starting", "stopped", "stopping", "missing", "uninitialized" or "unknown"
---@field started boolean (read-only) The resource is started: its exports can be called
---@field exists boolean (read-only) The resource is known here (state neither "missing" nor "unknown")
---@field version? string (read-only) `version` of the manifest
---@field author? string (read-only) `author` of the manifest
---@field description? string (read-only) `description` of the manifest
---@field fxVersion? string (read-only) `fx_version` of the manifest
---@field dependencies string[] (read-only) Resources named by `dependency` / `dependencies`, without the `/server:...` and `/onesync` requirements
---@field commands fx.ResourceCommand[] (read-only) Commands the resource registered
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

---First value of a manifest key, nil when absent. The singular and the plural directive read the same entries.
---@param key string `version`, `ui_page`, or any custom key
---@return string?
function ResourceRef:getMetadata(key) end

---Every value of a manifest key, in order. The singular and the plural directive read the same entries: FiveM stores
---`client_scripts { ... }` under `client_script`.
---```lua
---for _, file in ipairs(fx.Resource("my_shop"):getMetadataList("client_scripts")) do print(file) end
---```
---@param key string
---@return string[]
function ResourceRef:getMetadataList(key) end

---Content of a file of the resource, nil when it does not exist. On the client, only the files the client downloaded
---(`files`, client scripts).
---@param path string Relative to the resource folder
---@return string?
function ResourceRef:loadFile(path) end

---A JSON file of the resource, decoded. `nil, message` when the file does not exist or is not valid JSON.
---```lua
---local config <const>, err <const> = fx.Resource.current:loadJson("data/config.json")
---if not config then error(err) end
---```
---@param path string Relative to the resource folder
---@return any? value
---@return string? err
function ResourceRef:loadJson(path) end

---Whether the `version` of the manifest is `min` or newer, compared number by number (`1.10.0` is newer than
---`1.9.0`). Pre-release and build suffixes are ignored; false without a version.
---```lua
---if not fx.Resource("fx"):isVersionAtLeast("0.2.0") then error("this resource needs fx 0.2.0 or newer") end
---```
---@param min string
---@return boolean
function ResourceRef:isVersionAtLeast(min) end

---Resolves with the resource once it is started (right away when it already is).
---@param timeoutMs? integer Default 10000; TimeoutError rejection after it
---@return fx.Promise<fx.ResourceRef>
function ResourceRef:waitForStartAsync(timeoutMs) end

---`fx.Resource(name)`: the resource of that name (one object per name, the resource does not have to exist yet).
---@class fx.Resource
---@overload fun(name: string): fx.ResourceRef
---@field current fx.ResourceRef (read-only) This resource
---@field invoking? fx.ResourceRef (read-only) The resource calling the export or the event being handled, nil when none
local ResourceStatic = {}

---Every resource known here (on the client: the resources the client downloaded).
---@return fx.ResourceRef[]
function ResourceStatic.all() end

