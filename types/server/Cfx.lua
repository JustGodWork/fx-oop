---@meta
---@diagnostic disable
-- fx.Cfx (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Cfx
---@field allObjects table (read-only) [GET_ALL_OBJECTS] Returns all object handles known to the server. The data returned adheres to the following layout:
---@field allPeds table (read-only) [GET_ALL_PEDS] Returns all peds handles known to the server. The data returned adheres to the following layout:
---@field allVehicles table (read-only) [GET_ALL_VEHICLES] Returns all vehicle handles known to the server. The data returned adheres to the following layout:
---@field consoleBuffer string (read-only) [GET_CONSOLE_BUFFER] Returns the current console output buffer.
---@field currentResourceName string (read-only) [GET_CURRENT_RESOURCE_NAME] Returns the name of the currently executing resource.
---@field gameBuildNumber integer (read-only) [GET_GAME_BUILD_NUMBER] Returns the internal build number of the current game being executed. Possible values: * FiveM * 1604 * 2060 * 2189 * 2372 * 2545 * 2612 * 2699 * 2802 * 2944 *…
---@field gameName string (read-only) [GET_GAME_NAME] Returns the current game being executed. Possible values: | Return value | Meaning | | ------------ | ------------------------------ | | `fxserver` | Server-si…
---@field gameTimer integer (read-only) [GET_GAME_TIMER] Gets the current game timer in milliseconds.
---@field hostId string (read-only) [GET_HOST_ID]
---@field instanceId integer (read-only) [GET_INSTANCE_ID]
---@field invokingResource? string (read-only) [GET_INVOKING_RESOURCE]
---@field isDuplicityVersion boolean (read-only) [IS_DUPLICITY_VERSION] Gets whether or not this is the CitizenFX server.
---@field numPlayerIndices integer (read-only) [GET_NUM_PLAYER_INDICES]
---@field numResources integer (read-only) [GET_NUM_RESOURCES]
---@field registeredCommands table (read-only) [GET_REGISTERED_COMMANDS] Returns all commands that are registered in the command system. The data returned adheres to the following layout:
---@field wasEventCanceled boolean (read-only) [WAS_EVENT_CANCELED] Returns whether or not the currently executing event was canceled.
local CfxStatic = {}

--- Adds a listener for Console Variable changes.
---
--- The function called expects to match the following signature:
---
--- ```ts
--- function ConVarChangeListener(conVarName: string, reserved: any);
--- ```
---
--- *   **conVarName**: The ConVar that changed.
--- *   **reserved**: Currently unused.
--- **Native**: `ADD_CONVAR_CHANGE_LISTENER` (`0xAB7F7241`)
---@param conVarFilter string The Console Variable to listen for, this can be a pattern like "test:\*", or null for any
---@param handler function The handler function.
---@return integer result A cookie to remove the change handler.
function CfxStatic.addConvarChangeListener(conVarFilter, handler) end

--- Adds a handler for changes to a state bag.
---
--- The function called expects to match the following signature:
---
--- ```ts
--- function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
--- ```
---
--- *   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`
---     or `localEntity:Handle`.
--- *   **key**: The changed key.
--- *   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
--- *   **reserved**: Currently unused.
--- *   **replicated**: Whether the set is meant to be replicated.
---
--- At this time, the change handler can't opt to reject changes.
---
--- If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](#\_0x4BDF1867) to get the entity handle
--- If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](#\_0xA56135E0) to get the player handle
--- **Native**: `ADD_STATE_BAG_CHANGE_HANDLER` (`0x5BA35AAF`)
---@param keyFilter string The key to check for, or null for no filter.
---@param bagFilter string The bag ID to check for such as `entity:65535`, or null for no filter.
---@param handler function The handler function.
---@return integer result A cookie to remove the change handler.
function CfxStatic.addStateBagChangeHandler(keyFilter, bagFilter, handler) end

--- Cancels the currently executing event.
--- **Native**: `CANCEL_EVENT` (`0xFA29D35D`)
function CfxStatic.cancelEvent() end

--- **Native**: `DELETE_FUNCTION_REFERENCE` (`0x1E86F206`)
---@param referenceIdentity string
function CfxStatic.deleteFunctionReference(referenceIdentity) end

--- **Native**: `DELETE_RESOURCE_KVP` (`0x7389B5DF`)
---@param key string The key to delete
function CfxStatic.deleteResourceKvp(key) end

--- Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- **Native**: `DELETE_RESOURCE_KVP_NO_SYNC` (`0x4152C90`)
---@param key string The key to delete
function CfxStatic.deleteResourceKvpNoSync(key) end

--- **Native**: `DUPLICATE_FUNCTION_REFERENCE` (`0xF4E2079D`)
---@param referenceIdentity string
---@return string result
function CfxStatic.duplicateFunctionReference(referenceIdentity) end

--- **Native**: `ENABLE_ENHANCED_HOST_SUPPORT` (`0xF97B1C93`)
---@param enabled boolean
function CfxStatic.enableEnhancedHostSupport(enabled) end

--- **Native**: `END_FIND_KVP` (`0xB3210203`)
---@param handle integer The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
function CfxStatic.endFindKvp(handle) end

--- Depending on your use case you may need to use `add_acl resource.<your_resource_name> command.<command_name> allow` to use this native in your resource.
--- **Native**: `EXECUTE_COMMAND` (`0x561C060B`)
---@param commandString string
function CfxStatic.executeCommand(commandString) end

--- **Native**: `FIND_KVP` (`0xBD7BEBC5`)
---@param handle integer The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
---@return string result None.
function CfxStatic.findKvp(handle) end

--- **Native**: `FLAG_SERVER_AS_PRIVATE` (`0x13B6855D`)
---@param private_ boolean
function CfxStatic.flagServerAsPrivate(private_) end

--- Nonsynchronous operations will not wait for a disk/filesystem flush before returning from a write or delete call. They will be much faster than their synchronous counterparts (e.g., bulk operations), however, a system crash may lose the data to some recent operations.
---
--- This native ensures all `_NO_SYNC` operations are synchronized with the disk/filesystem.
--- **Native**: `FLUSH_RESOURCE_KVP` (`0xE27C97A0`)
function CfxStatic.flushResourceKvp() end

--- An internal function for converting a stack trace object to a string.
--- **Native**: `FORMAT_STACK_TRACE` (`0xD70C3BCA`)
---@param traceData table
---@return string result
function CfxStatic.formatStackTrace(traceData) end

--- Can be used to get a console variable of type `char*`, for example a string.
--- **Native**: `GET_CONVAR` (`0x6CCD2564`)
---@param varName string The console variable to look up.
---@param default_ string The default value to set if none is found.
---@return string result Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function CfxStatic.getConvar(varName, default_) end

--- Can be used to get a console variable casted back to `bool`.
--- **Native**: `GET_CONVAR_BOOL` (`0x7E8EBFE5`)
---@param varName string The console variable to look up.
---@param defaultValue boolean The default value to set if none is found.
---@return boolean result Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function CfxStatic.getConvarBool(varName, defaultValue) end

--- This will have floating point inaccuracy.
--- **Native**: `GET_CONVAR_FLOAT` (`0x9E666D`)
---@param varName string The console variable to get
---@param defaultValue number The default value to set, if none are found.
---@return number result Returns the value set in varName, or `default` if none are specified
function CfxStatic.getConvarFloat(varName, defaultValue) end

--- Can be used to get a console variable casted back to `int` (an integer value).
--- **Native**: `GET_CONVAR_INT` (`0x935C0AB2`)
---@param varName string The console variable to look up.
---@param default_ integer The default value to set if none is found (variable not set using [SET_CONVAR](#\_0x341B16D2), or not accessible).
---@return integer result Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function CfxStatic.getConvarInt(varName, default_) end

--- ### Supported types
---
--- *   \[1] : Peds (including animals) and players.
--- *   \[2] : Vehicles.
--- *   \[3] : Objects (props), doors, and projectiles.
---
--- ### Coordinates need to be send unpacked (x,y,z)
---
--- ```lua
---
--- -- Define the allowed model hashes
--- local allowedModelHashes = { GetHashKey("p_crate03x"), GetHashKey("p_crate22x") }
---
--- -- Get the player's current coordinates
--- local playerCoords = GetEntityCoords(PlayerPedId())
---
--- -- Retrieve all entities of type Object (type 3) within a radius of 10.0 units
--- -- that match the allowed model hashes
--- -- and sort output entities by distance
--- local entities = GetEntitiesInRadius(playerCoords.x, playerCoords.y, playerCoords.z, 10.0, 3, true, allowedModelHashes)
---
--- -- Iterate through the list of entities and print their ids
--- for i = 1, #entities do
---     local entity = entities[i]
---     print(entity)
--- end
---
--- ```
--- **Native**: `GET_ENTITIES_IN_RADIUS` (`0xDFFBA12F`)
---@param coords vector3 The coordinate.
---@param radius number Max distance from coordinate to entity
---@param entityType integer Entity types see list below
---@param sortByDistance boolean Sort output entites by distance from nearest to farthest
---@param models table List of allowed models its also optional
---@return table result An array containing entity handles for each entity.
function CfxStatic.getEntitiesInRadius(coords, radius, entityType, sortByDistance, models) end

--- Returns a list of entity handles (script GUID) for all entities in the specified pool - the data returned is an array as
--- follows:
---
--- ```json
--- [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
--- ```
---
--- ### Supported pools
---
--- *   `CPed`: Peds (including animals) and players.
--- *   `CObject`: Objects (props), doors, and projectiles.
--- *   `CNetObject`: Networked objects
--- *   `CVehicle`: Vehicles.
--- *   `CPickup`: Pickups.
--- **Native**: `GET_GAME_POOL` (`0x2B9D4F50`)
---@param poolName string The pool name to get a list of entities from.
---@return table result An array containing entity handles for each entity in the named pool.
function CfxStatic.getGamePool(poolName) end

--- This native converts the passed string to a hash.
--- **Native**: `GET_HASH_KEY` (`0x98EFF6F1`)
---@param model string
---@return integer result
function CfxStatic.getHashKey(model) end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
--- **Native**: `GET_NUM_RESOURCE_METADATA` (`0x776E864`)
---@param resourceName string The resource name.
---@param metadataKey string The key to look up in the resource manifest.
---@return integer result
function CfxStatic.getNumResourceMetadata(resourceName, metadataKey) end

--- **Native**: `GET_PASSWORD_HASH` (`0x23473EA4`)
---@param password string
---@return string result
function CfxStatic.getPasswordHash(password) end

--- **Native**: `GET_PLAYER_FROM_INDEX` (`0xC8A9CE08`)
---@param index integer
---@return string result
function CfxStatic.getPlayerFromIndex(index) end

--- On the server this will return the players source, on the client it will return the player handle.
--- **Native**: `GET_PLAYER_FROM_STATE_BAG_NAME` (`0xA56135E0`)
---@param bagName string An internal state bag ID from the argument to a state bag change handler.
---@return integer result The player handle or 0 if the state bag name did not refer to a player, or the player does not exist.
function CfxStatic.getPlayerFromStateBagName(bagName) end

--- **Native**: `GET_RESOURCE_BY_FIND_INDEX` (`0x387246B7`)
---@param findIndex integer The index of the resource (starting at 0)
---@return string result The resource name as a `string`
function CfxStatic.getResourceByFindIndex(findIndex) end

--- Returns all commands registered by the specified resource.
--- The data returned adheres to the following layout:
---
--- ```
--- [
--- {
--- "name": "cmdlist",
--- "resource": "example_resource",
--- "arity" = -1,
--- },
--- {
--- "name": "command1"
--- "resource": "example_resource2",
--- "arity" = -1,
--- }
--- ]
--- ```
--- **Native**: `GET_RESOURCE_COMMANDS` (`0x97628584`)
---@param resource string
---@return table result An object containing registered commands.
function CfxStatic.getResourceCommands(resource) end

--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
--- **Native**: `GET_RESOURCE_KVP_FLOAT` (`0x35BDCEEA`)
---@param key string The key to fetch
---@return number result The floating-point value stored under the specified key, or 0.0 if not found.
function CfxStatic.getResourceKvpFloat(key) end

--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
--- **Native**: `GET_RESOURCE_KVP_INT` (`0x557B586A`)
---@param key string The key to fetch
---@return integer result The integer value stored under the specified key, or 0 if not found.
function CfxStatic.getResourceKvpInt(key) end

--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
--- **Native**: `GET_RESOURCE_KVP_STRING` (`0x5240DA5A`)
---@param key string The key to fetch
---@return string result The string value stored under the specified key, or nil/null if not found.
function CfxStatic.getResourceKvpString(key) end

--- Gets the metadata value at a specified key/index from a resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
--- **Native**: `GET_RESOURCE_METADATA` (`0x964BAB1D`)
---@param resourceName string The resource name.
---@param metadataKey string The key in the resource manifest.
---@param index integer The value index, in a range from \[0..GET_NUM_RESOURCE_METDATA-1].
---@return string result
function CfxStatic.getResourceMetadata(resourceName, metadataKey, index) end

--- Returns the physical on-disk path of the specified resource.
--- **Native**: `GET_RESOURCE_PATH` (`0x61DCF017`)
---@param resourceName string The name of the resource.
---@return string result The resource directory name, possibly without trailing slash.
function CfxStatic.getResourcePath(resourceName) end

--- Returns the current state of the specified resource.
--- **Native**: `GET_RESOURCE_STATE` (`0x4039B485`)
---@param resourceName string The name of the resource.
---@return string result The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function CfxStatic.getResourceState(resourceName) end

--- **Native**: `GET_STATE_BAG_KEYS` (`0x78D864C7`)
---@param bagName string The name of the bag.
---@return table result Returns an array containing all keys for which the state bag has associated values.
function CfxStatic.getStateBagKeys(bagName) end

--- Returns the value of a state bag key.
--- **Native**: `GET_STATE_BAG_VALUE` (`0x637F4C75`)
---@param bagName string
---@param key string
---@return table result Value.
function CfxStatic.getStateBagValue(bagName, key) end

--- **Native**: `IS_ACE_ALLOWED` (`0x7EBB9929`)
---@param object string
---@return boolean result
function CfxStatic.isAceAllowed(object) end

--- **Native**: `IS_PRINCIPAL_ACE_ALLOWED` (`0x37CF52CE`)
---@param principal string
---@param object string
---@return boolean result
function CfxStatic.isPrincipalAceAllowed(principal, object) end

--- Reads the contents of a text file in a specified resource.
--- If executed on the client, this file has to be included in `files` in the resource manifest.
--- Example: `local data = LoadResourceFile("devtools", "data.json")`
--- **Native**: `LOAD_RESOURCE_FILE` (`0x76A9EE1F`)
---@param resourceName string The resource name.
---@param fileName string The file in the resource.
---@return string result The file contents
function CfxStatic.loadResourceFile(resourceName, fileName) end

--- **Native**: `PERFORM_HTTP_REQUEST_INTERNAL` (`0x8E8CC653`)
---@param requestData string
---@param requestDataLength integer
---@return integer result
function CfxStatic.performHttpRequestInternal(requestData, requestDataLength) end

--- **Native**: `PERFORM_HTTP_REQUEST_INTERNAL_EX` (`0x6B171E87`)
---@param requestData table
---@return integer result
function CfxStatic.performHttpRequestInternalEx(requestData) end

--- Prints 'structured trace' data to the server `file descriptor 3` channel. This is not generally useful outside of
--- server monitoring utilities.
--- **Native**: `PRINT_STRUCTURED_TRACE` (`0x90892DED`)
---@param jsonString string JSON data to submit as `payload` in the `script_structured_trace` event.
function CfxStatic.printStructuredTrace(jsonString) end

--- Scope entry for profiler.
--- **Native**: `PROFILER_ENTER_SCOPE` (`0xC795A4A9`)
---@param scopeName string Scope name.
function CfxStatic.profilerEnterScope(scopeName) end

--- Scope exit for profiler.
--- **Native**: `PROFILER_EXIT_SCOPE` (`0xB39CA35C`)
function CfxStatic.profilerExitScope() end

--- Returns true if the profiler is active.
--- **Native**: `PROFILER_IS_RECORDING` (`0xF8B7D7BB`)
---@return boolean result True or false.
function CfxStatic.profilerIsRecording() end

--- Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
---
--- Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
---
--- The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
---
--- **Example result**:
---
--- ![](https://i.imgur.com/TaCnG09.png)
--- **Native**: `REGISTER_COMMAND` (`0x5FA79B0F`)
---@param commandName string The command you want to register.
---@param handler function A handler function that gets called whenever the command is executed.
---@param restricted boolean If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
function CfxStatic.registerCommand(commandName, handler, restricted) end

--- Registers a listener for console output messages.
--- **Native**: `REGISTER_CONSOLE_LISTENER` (`0x281B5448`)
---@param listener function A function of `(channel: string, message: string) => void`. The message might contain `\n`.
function CfxStatic.registerConsoleListener(listener) end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
--- **Native**: `REGISTER_RESOURCE_AS_EVENT_HANDLER` (`0xD233A168`)
---@param eventName string An event name, or "\*" to disable HLL event filtering for this resource.
function CfxStatic.registerResourceAsEventHandler(eventName) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
--- **Native**: `REGISTER_RESOURCE_ASSET` (`0x9862B266`)
---@param resourceName string The resource to add the asset to.
---@param fileName string A file name in the resource.
---@return string result A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.
function CfxStatic.registerResourceAsset(resourceName, fileName) end

--- Registers a build task factory for resources.
--- The function should return an object (msgpack map) with the following fields:
---
--- ```
--- {
--- // returns whether the specific resource should be built
--- shouldBuild = func(resourceName: string): bool,
---
--- // asynchronously start building the specific resource.
--- // call cb when completed
--- build = func(resourceName: string, cb: func(success: bool, status: string): void): void
--- }
--- ```
--- **Native**: `REGISTER_RESOURCE_BUILD_TASK_FACTORY` (`0x285B43CA`)
---@param factoryId string The identifier for the build task.
---@param factoryFn function The factory function.
function CfxStatic.registerResourceBuildTaskFactory(factoryId, factoryFn) end

--- **Native**: `REMOVE_CONVAR_CHANGE_LISTENER` (`0xEAC49841`)
---@param cookie integer The cookie returned from [ADD_CONVAR_CHANGE_LISTENER](#\_0xAB7F7241)
function CfxStatic.removeConvarChangeListener(cookie) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Removes a handler for changes to a state bag.
--- **Native**: `REMOVE_STATE_BAG_CHANGE_HANDLER` (`0xD36BE661`)
---@param cookie integer The cookie.
function CfxStatic.removeStateBagChangeHandler(cookie) end

--- Writes the specified data to a file in the specified resource.
--- Using a length of `-1` will automatically detect the length assuming the data is a C string.
--- **Native**: `SAVE_RESOURCE_FILE` (`0xA09E7E7B`)
---@param resourceName string The name of the resource.
---@param fileName string The name of the file.
---@param data string The data to write to the file.
---@param dataLength integer The length of the written data.
---@return boolean result A value indicating if the write succeeded.
function CfxStatic.saveResourceFile(resourceName, fileName, data, dataLength) end

--- Scans the resources in the specified resource root. This function is only available in the 'monitor mode' process and is
--- not available for user resources.
--- **Native**: `SCAN_RESOURCE_ROOT` (`0x636F097F`)
---@param rootPath string The resource directory to scan.
---@param callback function A callback that will receive an object with results.
function CfxStatic.scanResourceRoot(rootPath, callback) end

--- Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
--- **Native**: `SCHEDULE_RESOURCE_TICK` (`0xB88A73AD`)
---@param resourceName string The resource to tick.
function CfxStatic.scheduleResourceTick(resourceName) end

--- **Native**: `SET_CONVAR` (`0x341B16D2`)
---@param varName string
---@param value string
function CfxStatic.setConvar(varName, value) end

--- Used to replicate a server variable onto clients.
--- **Native**: `SET_CONVAR_REPLICATED` (`0xF292858C`)
---@param varName string The console variable name.
---@param value string The value to set for the given console variable.
function CfxStatic.setConvarReplicated(varName, value) end

--- **Native**: `SET_CONVAR_SERVER_INFO` (`0x9338D547`)
---@param varName string
---@param value string
function CfxStatic.setConvarServerInfo(varName, value) end

--- **Native**: `SET_GAME_TYPE` (`0xF90B7469`)
---@param gametypeName string
function CfxStatic.setGameType(gametypeName) end

--- Sets the handler for HTTP requests made to the executing resource.
---
--- Example request URL: `http://localhost:30120/http-test/ping` - this request will be sent to the `http-test` resource with the `/ping` path.
---
--- The handler function assumes the following signature:
---
--- ```ts
--- function HttpHandler(
---   request: {
---     address: string;
---     headers: Record<string, string>;
---     method: string;
---     path: string;
---     setDataHandler(handler: (data: string) => void): void;
---     setDataHandler(handler: (data: ArrayBuffer) => void, binary: 'binary'): void;
---     setCancelHandler(handler: () => void): void;
---   },
---   response: {
---     writeHead(code: number, headers?: Record<string, string | string[]>): void;
---     write(data: string): void;
---     send(data?: string): void;
---   }
--- ): void;
--- ```
---
--- *   **request**: The request object.
---     *   **address**: The IP address of the request sender.
---     *   **path**: The path to where the request was sent.
---     *   **headers**: The headers sent with the request.
---     *   **method**: The request method.
---     *   **setDataHandler**: Sets the handler for when a data body is passed with the request. Additionally you can pass the `'binary'` argument to receive a `BufferArray` in JavaScript or `System.Byte[]` in C# (has no effect in Lua).
---     *   **setCancelHandler**: Sets the handler for when the request is cancelled.
--- *   **response**: An object to control the response.
---     *   **writeHead**: Sets the status code & headers of the response. Can be only called once and won't work if called after running other response functions.
---     *   **write**: Writes to the response body without sending it. Can be called multiple times.
---     *   **send**: Writes to the response body and then sends it along with the status code & headers, finishing the request.
--- **Native**: `SET_HTTP_HANDLER` (`0xF5C6330C`)
---@param handler function The handler function.
function CfxStatic.setHttpHandler(handler) end

--- **Native**: `SET_MAP_NAME` (`0xB7BA82DC`)
---@param mapName string
function CfxStatic.setMapName(mapName) end

--- A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
--- **Native**: `SET_RESOURCE_KVP` (`0x21C7A35B`)
---@param key string The key to set
---@param value string The value to write
function CfxStatic.setResourceKvp(key, value) end

--- A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
--- **Native**: `SET_RESOURCE_KVP_FLOAT` (`0x9ADD2938`)
---@param key string The key to set
---@param value number The value to write
function CfxStatic.setResourceKvpFloat(key, value) end

--- Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- **Native**: `SET_RESOURCE_KVP_FLOAT_NO_SYNC` (`0x3517BFBE`)
---@param key string The key to set
---@param value number The value to write
function CfxStatic.setResourceKvpFloatNoSync(key, value) end

--- A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
--- **Native**: `SET_RESOURCE_KVP_INT` (`0x6A2B1E8`)
---@param key string The key to set
---@param value integer The value to write
function CfxStatic.setResourceKvpInt(key, value) end

--- Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- **Native**: `SET_RESOURCE_KVP_INT_NO_SYNC` (`0x26AEB707`)
---@param key string The key to set
---@param value integer The value to write
function CfxStatic.setResourceKvpIntNoSync(key, value) end

--- Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
--- **Native**: `SET_RESOURCE_KVP_NO_SYNC` (`0xCF9A2FF`)
---@param key string The key to set
---@param value string The value to write
function CfxStatic.setResourceKvpNoSync(key, value) end

--- Sets the entity lockdown mode for a specific routing bucket.
---
--- Lockdown modes are:
---
--- | Mode       | Meaning                                                    |
--- | ---------- | ---------------------------------------------------------- |
--- | `strict`   | No entities can be created by clients at all.              |
--- | `relaxed`  | Only script-owned entities created by clients are blocked. |
--- | `inactive` | Clients can create any entity they want.                   |
--- **Native**: `SET_ROUTING_BUCKET_ENTITY_LOCKDOWN_MODE` (`0xA0F2201F`)
---@param bucketId integer The routing bucket ID to adjust.
---@param mode string One of aforementioned modes.
function CfxStatic.setRoutingBucketEntityLockdownMode(bucketId, mode) end

--- Sets whether or not the specified routing bucket has automatically-created population enabled.
--- **Native**: `SET_ROUTING_BUCKET_POPULATION_ENABLED` (`0xCE51AC2C`)
---@param bucketId integer The routing bucket ID to adjust.
---@param mode boolean `true` to enable population, `false` to disable population.
function CfxStatic.setRoutingBucketPopulationEnabled(bucketId, mode) end

--- Internal function for setting a state bag value.
--- **Native**: `SET_STATE_BAG_VALUE` (`0x8D50E33A`)
---@param bagName string
---@param keyName string
---@param valueData string
---@param valueLength integer
---@param replicated boolean
function CfxStatic.setStateBagValue(bagName, keyName, valueData, valueLength, replicated) end

--- **Native**: `START_FIND_KVP` (`0xDD379006`)
---@param prefix string A prefix match
---@return integer result A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function CfxStatic.startFindKvp(prefix) end

--- **Native**: `START_RESOURCE` (`0x29B440DC`)
---@param resourceName string
---@return boolean result
function CfxStatic.startResource(resourceName) end

--- **Native**: `STATE_BAG_HAS_KEY` (`0x12A330`)
---@param bagName string The name of the bag.
---@param key string The key used to check data existence.
---@return boolean result Returns true if the data associated with the specified key exists; otherwise, returns false.
function CfxStatic.stateBagHasKey(bagName, key) end

--- **Native**: `STOP_RESOURCE` (`0x21783161`)
---@param resourceName string
---@return boolean result
function CfxStatic.stopResource(resourceName) end

--- The backing function for TriggerClientEvent.
--- **Native**: `TRIGGER_CLIENT_EVENT_INTERNAL` (`0x2F7A49E6`)
---@param eventName string
---@param eventTarget string
---@param eventPayload string
---@param payloadLength integer
function CfxStatic.triggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength) end

--- The backing function for TriggerEvent.
--- **Native**: `TRIGGER_EVENT_INTERNAL` (`0x91310870`)
---@param eventName string
---@param eventPayload string
---@param payloadLength integer
function CfxStatic.triggerEventInternal(eventName, eventPayload, payloadLength) end

--- The backing function for TriggerLatentClientEvent.
--- **Native**: `TRIGGER_LATENT_CLIENT_EVENT_INTERNAL` (`0x70B35890`)
---@param eventName string
---@param eventTarget string
---@param eventPayload string
---@param payloadLength integer
---@param bps integer
function CfxStatic.triggerLatentClientEventInternal(eventName, eventTarget, eventPayload, payloadLength, bps) end

--- **Native**: `VERIFY_PASSWORD_HASH` (`0x2E310ACD`)
---@param password string
---@param hash string
---@return boolean result
function CfxStatic.verifyPasswordHash(password, hash) end

