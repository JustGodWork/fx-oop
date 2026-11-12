---@meta
---@diagnostic disable
-- fx.Cfx (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Cfx
---@field activePlayers table (read-only) [GET_ACTIVE_PLAYERS] Returns all player indices for 'active' physical players known to the client. The data returned adheres to the following layout:
---@field allRopes table (read-only) [GET_ALL_ROPES] Returns all rope handles. The data returned adheres to the following layout:
---@field allTrackJunctions table (read-only) [GET_ALL_TRACK_JUNCTIONS] Returns all track junctions on the client The data returned adheres to the following structure:
---@field allVehicleModels table (read-only) [GET_ALL_VEHICLE_MODELS] Returns all registered vehicle model names, including non-dlc vehicles and custom vehicles in no particular order. **Example output** This native will not retu…
---@field ambientPedRangeMultiplier number (read-only) [GET_AMBIENT_PED_RANGE_MULTIPLIER] A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
---@field ambientVehicleRangeMultiplier number (read-only) [GET_AMBIENT_VEHICLE_RANGE_MULTIPLIER] A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
---@field calmingQuadCount integer (read-only) [GET_CALMING_QUAD_COUNT]
---@field currentGameName string (read-only) [GET_CURRENT_GAME_NAME] This native returns the currently used game's name.
---@field currentResourceName string (read-only) [GET_CURRENT_RESOURCE_NAME] Returns the name of the currently executing resource.
---@field currentServerEndpoint string (read-only) [GET_CURRENT_SERVER_ENDPOINT] Returns the peer address of the remote game server that the user is currently connected to.
---@field fallDamageLandOnFootMultiplier number [GET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER / SET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER] A getter for [SET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER](#\_0x164A08C9).
---@field fallDamageMultiplier number [GET_FALL_DAMAGE_MULTIPLIER / SET_FALL_DAMAGE_MULTIPLIER] A getter for [SET_FALL_DAMAGE_MULTIPLIER](#\_0xF2E1A531).
---@field fuelConsumptionRateMultiplier number [GET_FUEL_CONSUMPTION_RATE_MULTIPLIER / SET_FUEL_CONSUMPTION_RATE_MULTIPLIER]
---@field fuelConsumptionState boolean [GET_FUEL_CONSUMPTION_STATE / SET_FUEL_CONSUMPTION_STATE]
---@field gameBuildNumber integer (read-only) [GET_GAME_BUILD_NUMBER] Returns the internal build number of the current game being executed. Possible values: * FiveM * 1604 * 2060 * 2189 * 2372 * 2545 * 2612 * 2699 * 2802 * 2944 *…
---@field gameName string (read-only) [GET_GAME_NAME] Returns the current game being executed. Possible values: | Return value | Meaning | | ------------ | ------------------------------ | | `fxserver` | Server-si…
---@field globalPassengerMassMultiplier number [GET_GLOBAL_PASSENGER_MASS_MULTIPLIER / SET_GLOBAL_PASSENGER_MASS_MULTIPLIER] A getter for [SET_GLOBAL_PASSENGER_MASS_MULTIPLIER](#\_0x3422291C).
---@field instanceId integer (read-only) [GET_INSTANCE_ID]
---@field invokingResource? string (read-only) [GET_INVOKING_RESOURCE]
---@field isBigmapActive boolean (read-only) [IS_BIGMAP_ACTIVE] Returns true if the minimap is currently expanded. False if it's the normal minimap state. Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is curr…
---@field isBigmapFull boolean (read-only) [IS_BIGMAP_FULL]
---@field isDuplicityVersion boolean (read-only) [IS_DUPLICITY_VERSION] Gets whether or not this is the CitizenFX server.
---@field isGameEnhancedVersion boolean (read-only) [IS_GAME_ENHANCED_VERSION]
---@field isNuiFocused boolean (read-only) [IS_NUI_FOCUSED] Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
---@field isNuiFocusKeepingInput boolean (read-only) [IS_NUI_FOCUS_KEEPING_INPUT] Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
---@field killFallHeight number [GET_KILL_FALL_HEIGHT / SET_KILL_FALL_HEIGHT] A getter for [SET_KILL_FALL_HEIGHT](#\_0x7E8D83E4).
---@field numResources integer (read-only) [GET_NUM_RESOURCES]
---@field parkedVehicleDensityMultiplier number (read-only) [GET_PARKED_VEHICLE_DENSITY_MULTIPLIER] A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
---@field pauseMapPointerWorldPosition vector3 (read-only) [GET_PAUSE_MAP_POINTER_WORLD_POSITION] Returns the world position the pointer is hovering on the pause map.
---@field pedDensityMultiplier number (read-only) [GET_PED_DENSITY_MULTIPLIER] A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
---@field playerKillFallHeight number [GET_PLAYER_KILL_FALL_HEIGHT / SET_PLAYER_KILL_FALL_HEIGHT] A getter for [SET_PLAYER_KILL_FALL_HEIGHT](#\_0xAEF2C6A4).
---@field randomVehicleDensityMultiplier number (read-only) [GET_RANDOM_VEHICLE_DENSITY_MULTIPLIER] A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3). Same as vehicle density multiplier.
---@field registeredCommands table (read-only) [GET_REGISTERED_COMMANDS] Returns all commands that are registered in the command system. The data returned adheres to the following layout:
---@field scenarioPedDensityMultiplier number (read-only) [GET_SCENARIO_PED_DENSITY_MULTIPLIER] A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
---@field timecycleModifierCount integer (read-only) [GET_TIMECYCLE_MODIFIER_COUNT]
---@field timecycleModifierStrength number (read-only) [GET_TIMECYCLE_MODIFIER_STRENGTH] A getter for [SET_TIMECYCLE_MODIFIER_STRENGTH](#\_0x82E7FFCD5B2326B3).
---@field timecycleVarCount integer (read-only) [GET_TIMECYCLE_VAR_COUNT] Returns the amount of variables available to be applied on timecycle modifiers.
---@field vehicleDashboardBoost number (read-only) [GET_VEHICLE_DASHBOARD_BOOST]
---@field vehicleDashboardCurrentGear number (read-only) [GET_VEHICLE_DASHBOARD_CURRENT_GEAR] Retrieves the current gear displayed on the dashboard of the vehicle the player is in, returned as a float. This value represents the gear shown in the instrum…
---@field vehicleDashboardFuel number (read-only) [GET_VEHICLE_DASHBOARD_FUEL]
---@field vehicleDashboardLights integer (read-only) [GET_VEHICLE_DASHBOARD_LIGHTS] Gets the state of the player vehicle's dashboard lights as a bit set indicator_left = 1 indicator_right = 2 handbrakeLight = 4 engineLight = 8 ABSLight = 16 ga…
---@field vehicleDashboardOilPressure number (read-only) [GET_VEHICLE_DASHBOARD_OIL_PRESSURE]
---@field vehicleDashboardOilTemp number (read-only) [GET_VEHICLE_DASHBOARD_OIL_TEMP]
---@field vehicleDashboardRpm number (read-only) [GET_VEHICLE_DASHBOARD_RPM]
---@field vehicleDashboardTemp number (read-only) [GET_VEHICLE_DASHBOARD_TEMP]
---@field vehicleDashboardVacuum number (read-only) [GET_VEHICLE_DASHBOARD_VACUUM]
---@field vehicleDensityMultiplier number (read-only) [GET_VEHICLE_DENSITY_MULTIPLIER] A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
---@field vehicleXmasSnowFactor number [GET_VEHICLE_XMAS_SNOW_FACTOR / SET_VEHICLE_XMAS_SNOW_FACTOR] A getter for [SET_VEHICLE_XMAS_SNOW_FACTOR](#\_0x80CC4C9E).
---@field wasEventCanceled boolean (read-only) [WAS_EVENT_CANCELED] Returns whether or not the currently executing event was canceled.
---@field waterQuadCount integer (read-only) [GET_WATER_QUAD_COUNT]
---@field waveQuadCount integer (read-only) [GET_WAVE_QUAD_COUNT]
local CfxStatic = {}

--- Activates built-in timecycle editing tool.
--- **Native**: `ACTIVATE_TIMECYCLE_EDITOR` (`0xEEB9B76A`)
function CfxStatic.activateTimecycleEditor() end

--- Adds an output for the specified audio submix.
--- **Native**: `ADD_AUDIO_SUBMIX_OUTPUT` (`0xAC6E290D`)
---@param submixId integer The input submix.
---@param outputSubmixId integer The output submix. Use `0` for the master game submix.
function CfxStatic.addAudioSubmixOutput(submixId, outputSubmixId) end

--- Adds the given model name hash to the list of valid models for the player ped's parachute.
--- **Native**: `ADD_AUTHORIZED_PARACHUTE_MODEL` (`0x8AC7AE9`)
---@param modelNameHash integer Name hash of the model to allow to be used for the player ped's parachute
function CfxStatic.addAuthorizedParachuteModel(modelNameHash) end

--- Adds the given model name hash to the list of valid models for the player ped's parachute pack.
--- **Native**: `ADD_AUTHORIZED_PARACHUTE_PACK_MODEL` (`0x2E86DEA5`)
---@param modelNameHash integer Name hash of the model to allow to be used for the player ped's parachute pack
function CfxStatic.addAuthorizedParachutePackModel(modelNameHash) end

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

--- Adds new health config.
--- **Native**: `ADD_HEALTH_CONFIG` (`0x9CBFD5C1`)
---@param configName string Name of health config. Cannot be default game health config name.
---@param defaultHealth number Default health value.
---@param defaultArmor number Default armor value.
---@param defaultEndurance number
---@param fatiguedHealthThreshold number Fatigued health threshold value.
---@param injuredHealthThreshold number Injured health threshold value.
---@param dyingHealthThreshold number Dying health threshold value.
---@param hurtHealthThreshold number Hurt health threshold value.
---@param dogTakedownThreshold number Dog takedown threshold value.
---@param writheFromBulletThreshold number Writhe from bulled threshold value.
---@param meleeCardinalFatalAttack boolean Melee cardinal fatal attack check value.
---@param invincible boolean Invincible value.
function CfxStatic.addHealthConfig(configName, defaultHealth, defaultArmor, defaultEndurance, fatiguedHealthThreshold, injuredHealthThreshold, dyingHealthThreshold, hurtHealthThreshold, dogTakedownThreshold, writheFromBulletThreshold, meleeCardinalFatalAttack, invincible) end

--- Loads a minimap overlay from a GFx file in the current resource.
---
--- If you need to control the depth of overlay use [`ADD_MINIMAP_OVERLAY_WITH_DEPTH`](#\_0xED0935B5).
--- **Native**: `ADD_MINIMAP_OVERLAY` (`0x4AFD2499`)
---@param name string The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
---@return integer result A minimap overlay ID.
function CfxStatic.addMinimapOverlay(name) end

--- Loads a minimap overlay from a GFx file in the current resource.
--- **Native**: `ADD_MINIMAP_OVERLAY_WITH_DEPTH` (`0xED0935B5`)
---@param name string The path to a `.gfx` file in the current resource. It has to be specified as a `file`.
---@param depth integer The depth of new overlay on the minimap. Pass `-1` for game to figure out the highest depth itself. Should not be greater than `0x7EFFFFFD`.
---@return integer result A minimap overlay ID.
function CfxStatic.addMinimapOverlayWithDepth(name, depth) end

--- Experimental natives, please do not use in a live environment.
--- **Native**: `ADD_REPLACE_TEXTURE` (`0xA66F8F75`)
---@param origTxd string
---@param origTxn string
---@param newTxd string
---@param newTxn string
function CfxStatic.addReplaceTexture(origTxd, origTxn, newTxd, newTxn) end

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

--- **Native**: `ADD_TEXT_ENTRY` (`0x32CA01C3`)
---@param entryKey string
---@param entryText string
function CfxStatic.addTextEntry(entryKey, entryText) end

--- **Native**: `ADD_TEXT_ENTRY_BY_HASH` (`0x289DA860`)
---@param entryKey integer|string
---@param entryText string
function CfxStatic.addTextEntryByHash(entryKey, entryText) end

--- **Native**: `APPLY_WEATHER_CYCLES` (`0x3422291C`)
---@param numEntries integer The number of cycle entries. Must be between 1 and 256
---@param msPerCycle integer The duration in milliseconds of each cycle. Must be between 1000 and 86400000 (24 hours)
---@return boolean result Returns true if all parameters were valid, otherwise false.
function CfxStatic.applyWeatherCycles(numEntries, msPerCycle) end

--- This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
--- **Native**: `CALL_MINIMAP_SCALEFORM_FUNCTION` (`0x4C89C0ED`)
---@param miniMap integer The minimap overlay ID.
---@param fnName string A function in the overlay's TIMELINE.
---@return boolean result
function CfxStatic.callMinimapScaleformFunction(miniMap, fnName) end

--- Cancels the currently executing event.
--- **Native**: `CANCEL_EVENT` (`0xFA29D35D`)
function CfxStatic.cancelEvent() end

--- **Native**: `CLONE_TIMECYCLE_MODIFIER` (`0x54D636B3`)
---@param sourceModifierName string The source timecycle name.
---@param clonedModifierName string The clone timecycle name, must be unique.
---@return integer result The cloned timecycle modifier index, or -1 if failed.
function CfxStatic.cloneTimecycleModifier(sourceModifierName, clonedModifierName) end

--- Commits the backing pixels to the specified runtime texture.
--- **Native**: `COMMIT_RUNTIME_TEXTURE` (`0x19D81F4E`)
---@param tex integer The runtime texture handle.
function CfxStatic.commitRuntimeTexture(tex) end

--- Creates an audio submix with the specified name, or gets the existing audio submix by that name.
--- **Native**: `CREATE_AUDIO_SUBMIX` (`0x658D2BC8`)
---@param name string The audio submix name.
---@return integer result A submix ID, or -1 if the submix could not be created.
function CfxStatic.createAudioSubmix(name) end

--- Creates a volume where water effects do not apply.
--- Useful for preventing water collisions from flooding areas underneath them.
--- This has no effect on waterquads, only water created from drawables and collisions.
--- Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
--- **Native**: `CREATE_DRY_VOLUME` (`0xEB1C6DD`)
---@param min vector3 The min X component of the AABB volume where water does not affect the player. / The min Y component for the AABB volume. / The min Z component for the AABB volume.
---@param max vector3 The max component for the AABB volume.
---@return integer result
function CfxStatic.createDryVolume(min, max) end

--- Creates a blank runtime texture.
--- **Native**: `CREATE_RUNTIME_TEXTURE` (`0xFEC3766D`)
---@param txd integer A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param width integer The width of the new texture.
---@param height integer The height of the new texture.
---@return integer result A runtime texture handle.
function CfxStatic.createRuntimeTexture(txd, txn, width, height) end

--- Creates a runtime texture from a DUI handle.
--- **Native**: `CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE` (`0xB135472B`)
---@param txd integer A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param duiHandle string The DUI handle returned from GET_DUI_HANDLE.
---@return integer result The runtime texture handle.
function CfxStatic.createRuntimeTextureFromDuiHandle(txd, txn, duiHandle) end

--- Creates a runtime texture from the specified file in the current resource or a base64 data URL.
--- **Native**: `CREATE_RUNTIME_TEXTURE_FROM_IMAGE` (`0x786D8BC3`)
---@param txd integer A handle to the runtime TXD to create the runtime texture in.
---@param txn string The name for the texture in the runtime texture dictionary.
---@param fileName string The file name of an image to load or a base64 data URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
---@return integer result A runtime texture handle.
function CfxStatic.createRuntimeTextureFromImage(txd, txn, fileName) end

--- Creates a runtime texture dictionary with the specified name.
--- Example:
---
--- ```lua
--- local txd = CreateRuntimeTxd('meow')
--- ```
--- **Native**: `CREATE_RUNTIME_TXD` (`0x1F3AC778`)
---@param name string The name for the runtime TXD.
---@return integer result A handle to the runtime TXD.
function CfxStatic.createRuntimeTxd(name) end

--- Create a clean timecycle modifier. See [`SET_TIMECYCLE_MODIFIER_VAR`](#\_0x6E0A422B) to add variables.
--- **Native**: `CREATE_TIMECYCLE_MODIFIER` (`0x70FA2AFA`)
---@param modifierName string The new timecycle name, must be unique.
---@return integer result The created timecycle modifier index, or -1 if failed.
function CfxStatic.createTimecycleModifier(modifierName) end

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

--- Disables the editor runtime mode, changing game behavior to not track entity metadata.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `DISABLE_EDITOR_RUNTIME` (`0xB1622B17`)
function CfxStatic.disableEditorRuntime() end

--- Disables the game's afk camera that starts panning around after 30 seconds of inactivity.
--- **Native**: `DISABLE_IDLE_CAMERA` (`0x3D5AB7F0`)
---@param state boolean On/Off
function CfxStatic.disableIdleCamera(state) end

--- Disables the specified `rawKeyIndex`, making it not trigger the regular `IS_RAW_KEY_*` natives.
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `DISABLE_RAW_KEY_THIS_FRAME` (`0x8BCF0014`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of down state.
function CfxStatic.disableRawKeyThisFrame(rawKeyIndex) end

--- Disables the game's afk camera that starts panning around after 30 seconds of inactivity(While riding in a car as a passenger)
--- **Native**: `DISABLE_VEHICLE_PASSENGER_IDLE_CAMERA` (`0x5C140555`)
---@param state boolean On/Off
function CfxStatic.disableVehiclePassengerIdleCamera(state) end

--- Disables the game's world horizon lods rendering (see `farlods.#dd`).
--- Using the island hopper natives might also affect this state.
--- **Native**: `DISABLE_WORLDHORIZON_RENDERING` (`0xA9C92CDC`)
---@param state boolean On/Off
function CfxStatic.disableWorldhorizonRendering(state) end

--- **Native**: `DOES_TIMECYCLE_MODIFIER_HAS_VAR` (`0xC53BB6D3`)
---@param modifierName string The name of timecycle modifier.
---@param varName string The name of timecycle variable.
---@return boolean result Whether or not variable by name was found on the specified timecycle modifier.
function CfxStatic.doesTimecycleModifierHasVar(modifierName, varName) end

--- Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.
---
--- The data returned adheres to the following layout:
---
--- ```
--- [{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
--- ```
--- **Native**: `DOOR_SYSTEM_GET_ACTIVE` (`0xF65BBA4B`)
---@return table result An object containing a list of door system entries.
function CfxStatic.doorSystemGetActive() end

--- **Native**: `DOOR_SYSTEM_GET_SIZE` (`0x237613B3`)
---@return integer result The number of doors registered in the system
function CfxStatic.doorSystemGetSize() end

--- Allows drawing advanced light effects, known as coronas, which support flares, volumetric lighting, and customizable glow properties.
--- **Native**: `DRAW_CORONA` (`0xFF44780E`)
---@param pos vector3 The position of the corona origin.
---@param size number The size of the corona.
---@param alpha integer The alpha component of the marker color, on a scale from 0-255.
---@param red integer The red component of the marker color, on a scale from 0-255.
---@param green integer The green component of the marker color, on a scale from 0-255.
---@param blue integer The blue component of the marker color, on a scale from 0-255.
---@param intensity number The intensity of the corona.
---@param zBias number zBias slightly shifts the depth of surfaces to make sure they don’t overlap or cause visual glitches when they are very close together. The zBias value are usually in the range of 0.0 to 1.0.
---@param dir vector3 The direction of the corona.
---@param viewThreshold number The view threshold is to determine the fading of the corona based on the distance.
---@param innerAngle number The inner angle of the corona.
---@param outerAngle number The outer angle of the corona.
---@param flags integer The corona flags.
function CfxStatic.drawCorona(pos, size, alpha, red, green, blue, intensity, zBias, dir, viewThreshold, innerAngle, outerAngle, flags) end

--- Draws a gizmo. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
--- This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
---
--- Matrix layout is as follows:
---
--- *   Element \[0], \[1] and \[2] should represent the right vector.
--- *   Element \[4], \[5] and \[6] should represent the forward vector.
--- *   Element \[8], \[9] and \[10] should represent the up vector.
--- *   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
--- *   All other elements should be \[0, 0, 0, 1].
--- **Native**: `DRAW_GIZMO` (`0xEB2EDCA2`)
---@param matrixPtr integer A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
---@param id string A unique identifier of what the gizmo is affecting.
---@return boolean result Whether or not the matrix was modified.
function CfxStatic.drawGizmo(matrixPtr, id) end

--- Draw a glow sphere this frame. Up to 256 per single frame.
--- **Native**: `DRAW_GLOW_SPHERE` (`0xBD25EC89`)
---@param pos vector3 Position .
---@param radius number Sphere radius.
---@param colorR integer Red.
---@param colorG integer Green.
---@param colorB integer Blue.
---@param intensity number Intensity.
---@param invert boolean Invert rendering.
---@param marker boolean Draw as a marker, otherwise as an overlay.
function CfxStatic.drawGlowSphere(pos, radius, colorR, colorG, colorB, intensity, invert, marker) end

--- Draw the prepared light.
--- **Native**: `DRAW_LIGHT` (`0x374E5298`)
function CfxStatic.drawLight() end

--- Like DRAW_RECT, but it's a line.
--- **Native**: `DRAW_LINE_2D` (`0xB856A90`)
---@param x1 number First x.
---@param y1 number First y.
---@param x2 number Second x.
---@param y2 number Second y.
---@param width number Width of line.
---@param r integer Red.
---@param g integer Green.
---@param b integer Blue.
---@param a integer Alpha.
function CfxStatic.drawLine2d(x1, y1, x2, y2, width, r, g, b, a) end

--- DRAW_RECT, but with a rotation. Seems to be broken.
--- **Native**: `DRAW_RECT_ROTATED` (`0xEC37C168`)
---@param x number
---@param y number
---@param width number
---@param height number
---@param rotation number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function CfxStatic.drawRectRotated(x, y, width, height, rotation, r, g, b, a) end

--- **Native**: `DUPLICATE_FUNCTION_REFERENCE` (`0xF4E2079D`)
---@param referenceIdentity string
---@return string result
function CfxStatic.duplicateFunctionReference(referenceIdentity) end

--- Enables the editor runtime mode, changing game behavior to track entity metadata.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `ENABLE_EDITOR_RUNTIME` (`0xC383871D`)
function CfxStatic.enableEditorRuntime() end

--- **Native**: `END_FIND_KVP` (`0xB3210203`)
---@param handle integer The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
function CfxStatic.endFindKvp(handle) end

--- **Native**: `END_FIND_OBJECT` (`0xDEDA4E50`)
---@param findHandle integer
function CfxStatic.endFindObject(findHandle) end

--- **Native**: `END_FIND_PED` (`0x9615C2AD`)
---@param findHandle integer
function CfxStatic.endFindPed(findHandle) end

--- **Native**: `END_FIND_PICKUP` (`0x3C407D53`)
---@param findHandle integer
function CfxStatic.endFindPickup(findHandle) end

--- **Native**: `END_FIND_VEHICLE` (`0x9227415A`)
---@param findHandle integer
function CfxStatic.endFindVehicle(findHandle) end

--- Enters cursor mode, suppressing mouse movement to the game and displaying a mouse cursor instead. This function supports
--- SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `ENTER_CURSOR_MODE` (`0x780DA86`)
function CfxStatic.enterCursorMode() end

--- Depending on your use case you may need to use `add_acl resource.<your_resource_name> command.<command_name> allow` to use this native in your resource.
--- **Native**: `EXECUTE_COMMAND` (`0x561C060B`)
---@param commandString string
function CfxStatic.executeCommand(commandString) end

--- **Native**: `FIND_KVP` (`0xBD7BEBC5`)
---@param handle integer The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
---@return string result None.
function CfxStatic.findKvp(handle) end

--- **Native**: `FIND_NEXT_OBJECT` (`0x4E129DBF`)
---@param findHandle integer
---@param outEntity fx.Entity|integer
---@return boolean result
---@return fx.Entity? outEntity
function CfxStatic.findNextObject(findHandle, outEntity) end

--- **Native**: `FIND_NEXT_PED` (`0xAB09B548`)
---@param findHandle integer
---@param outEntity fx.Entity|integer
---@return boolean result
---@return fx.Entity? outEntity
function CfxStatic.findNextPed(findHandle, outEntity) end

--- **Native**: `FIND_NEXT_PICKUP` (`0x4107EF0F`)
---@param findHandle integer
---@param outEntity fx.Entity|integer
---@return boolean result
---@return fx.Entity? outEntity
function CfxStatic.findNextPickup(findHandle, outEntity) end

--- **Native**: `FIND_NEXT_VEHICLE` (`0x8839120D`)
---@param findHandle integer
---@param outEntity fx.Entity|integer
---@return boolean result
---@return fx.Entity? outEntity
function CfxStatic.findNextVehicle(findHandle, outEntity) end

--- Forces the game snow pass to render.
--- **Native**: `FORCE_SNOW_PASS` (`0xE6E16170`)
---@param enabled boolean Whether or not to force rendering to use a snow pass.
function CfxStatic.forceSnowPass(enabled) end

--- An internal function for converting a stack trace object to a string.
--- **Native**: `FORMAT_STACK_TRACE` (`0xD70C3BCA`)
---@param traceData table
---@return string result
function CfxStatic.formatStackTrace(traceData) end

--- This native returns the index of a calming quad if the given point is inside its bounds.
--- **Native**: `GET_CALMING_QUAD_AT_COORDS` (`0x870E8B40`)
---@param x number The X coordinate
---@param y number The Y coordinate
---@return integer result The calming quad index at the given position. Returns -1 if there isn't any there.
function CfxStatic.getCalmingQuadAtCoords(x, y) end

--- **Native**: `GET_CALMING_QUAD_BOUNDS` (`0xFF60E63`)
---@param waterQuad integer The calming quad index
---@return boolean result Returns true on success. Bounds are undefined on failure
---@return integer minX The minX coordinate
---@return integer minY The minY coordinate
---@return integer maxX The maxX coordinate
---@return integer maxY The maxY coordinate
function CfxStatic.getCalmingQuadBounds(waterQuad) end

--- **Native**: `GET_CALMING_QUAD_DAMPENING` (`0xB0E3A058`)
---@param waterQuad integer The calming quad index
---@param calmingQuadDampening number
---@return boolean result Returns true on success. Dampening value is undefined on failure
---@return number calmingQuadDampening
function CfxStatic.getCalmingQuadDampening(waterQuad, calmingQuadDampening) end

--- Get all track nodes and their track ids within the radius of the specified coordinates.
--- **Native**: `GET_CLOSEST_TRACK_NODES` (`0x59FC24A7`)
---@param position vector3 Get track nodes at position
---@param radius number Get track nodes within radius
---@return table result Returns a list of tracks and node entries: a trackNode and a trackIdThe data returned adheres to the following layout: [{trackNode1, trackId1}, ..., {trackNodeN, trackIdN}]
function CfxStatic.getClosestTrackNodes(position, radius) end

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

--- Returns the transient entity index for a specified mapdata/entity pair.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `GET_ENTITY_INDEX_FROM_MAPDATA` (`0xEE43540D`)
---@param mapdata integer The input map data index from GET_MAPDATA_FROM_HASH_KEY.
---@param entity integer The input entity handle from GET_ENTITY_MAPDATA_OWNER.
---@return integer result A transient (non-persistable) index to the requested entity, or -1.
function CfxStatic.getEntityIndexFromMapdata(mapdata, entity) end

--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
--- **Native**: `GET_EXTERNAL_KVP_FLOAT` (`0x3CC98B25`)
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return number result A float that contains the value stored in the Kvp or nil/null if none.
function CfxStatic.getExternalKvpFloat(resource, key) end

--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
--- **Native**: `GET_EXTERNAL_KVP_INT` (`0x12B8D689`)
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return integer result A int that contains the value stored in the Kvp or nil/null if none.
function CfxStatic.getExternalKvpInt(resource, key) end

--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
--- **Native**: `GET_EXTERNAL_KVP_STRING` (`0x9080363A`)
---@param resource string The resource to fetch from.
---@param key string The key to fetch
---@return string result A string that contains the value stored in the Kvp or nil/null if none.
function CfxStatic.getExternalKvpString(resource, key) end

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

--- See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
--- **Native**: `GET_HUD_COMPONENT_ALIGN` (`0xCD949E20`)
---@param id integer The hud component id.
---@return integer horizontalAlign
---@return integer verticalAlign
function CfxStatic.getHudComponentAlign(id) end

--- **Native**: `GET_HUD_COMPONENT_NAME` (`0xA91866BC`)
---@param id integer The hud component id.
---@return string result The hud component name.
function CfxStatic.getHudComponentName(id) end

--- **Native**: `GET_HUD_COMPONENT_SIZE` (`0x12217D33`)
---@param id integer The hud component id.
---@return vector3 result A Vector3 with the hud component size X and size Y values.
function CfxStatic.getHudComponentSize(id) end

--- Retrieves the map data entity handle.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `GET_MAPDATA_ENTITY_HANDLE` (`0x30AA6911`)
---@param mapDataHash integer A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx integer An internal entity's index.
---@param entityHandle integer The output entity handle.
---@return boolean result True if successful, false if not.
---@return integer entityHandle The output entity handle.
function CfxStatic.getMapdataEntityHandle(mapDataHash, entityInternalIdx, entityHandle) end

--- Returns mapdata's entity matrix. This function supports SDK infrastructure and is not intended to be used directly from your code.
---
--- This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
---
--- Matrix layout is as follows:
---
--- *   Element \[0], \[1] and \[2] should represent the right vector.
--- *   Element \[4], \[5] and \[6] should represent the forward vector.
--- *   Element \[8], \[9] and \[10] should represent the up vector.
--- *   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
--- *   All other elements should be \[0, 0, 0, 1].
--- **Native**: `GET_MAPDATA_ENTITY_MATRIX` (`0x2C3CDA93`)
---@param mapDataHash integer A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx integer An internal entity's index.
---@param matrixPtr integer A mutable pointer to a 64-byte buffer of floating-point values, representing an XMFLOAT4X4 in layout.
---@return boolean result Whether or not the matrix was retrieved.
function CfxStatic.getMapdataEntityMatrix(mapDataHash, entityInternalIdx, matrixPtr) end

--- Returns the transient map data index for a specified hash.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `GET_MAPDATA_FROM_HASH_KEY` (`0xD29D8EDD`)
---@param mapdataHandle integer|string The input map data handle.
---@return integer result A transient (non-persistable) index to the requested mapdata, or -1.
function CfxStatic.getMapdataFromHashKey(mapdataHandle) end

--- Returns the zoom level data by index from mapzoomdata.meta file.
--- **Native**: `GET_MAP_ZOOM_DATA_LEVEL` (`0x1363A998`)
---@param index integer Zoom level index.
---@return boolean result A boolean indicating TRUE if the data was received successfully.
---@return number zoomScale fZoomScale value.
---@return number zoomSpeed fZoomSpeed value.
---@return number scrollSpeed fScrollSpeed value.
---@return number tilesX vTiles X.
---@return number tilesY vTiles Y.
function CfxStatic.getMapZoomDataLevel(index) end

--- **Native**: `GET_NUI_CURSOR_POSITION` (`0xBDBA226F`)
---@return integer x
---@return integer y
function CfxStatic.getNuiCursorPosition() end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
--- See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
--- **Native**: `GET_NUM_RESOURCE_METADATA` (`0x776E864`)
---@param resourceName string The resource name.
---@param metadataKey string The key to look up in the resource manifest.
---@return integer result
function CfxStatic.getNumResourceMetadata(resourceName, metadataKey) end

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

--- Returns the current state of the specified resource.
--- **Native**: `GET_RESOURCE_STATE` (`0x4039B485`)
---@param resourceName string The name of the resource.
---@return string result The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function CfxStatic.getResourceState(resourceName) end

--- Gets the height of the specified runtime texture.
--- **Native**: `GET_RUNTIME_TEXTURE_HEIGHT` (`0x3574AACE`)
---@param tex integer A handle to the runtime texture.
---@return integer result The height in pixels.
function CfxStatic.getRuntimeTextureHeight(tex) end

--- Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
--- **Native**: `GET_RUNTIME_TEXTURE_PITCH` (`0xCA0A085F`)
---@param tex integer A handle to the runtime texture.
---@return integer result The row pitch in bytes.
function CfxStatic.getRuntimeTexturePitch(tex) end

--- Gets the width of the specified runtime texture.
--- **Native**: `GET_RUNTIME_TEXTURE_WIDTH` (`0xC9F55558`)
---@param tex integer A handle to the runtime texture.
---@return integer result The width in pixels.
function CfxStatic.getRuntimeTextureWidth(tex) end

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

--- **Native**: `GET_TIMECYCLE_MODIFIER_INDEX_BY_NAME` (`0x5F4CD0E2`)
---@param modifierName string The timecycle modifier name.
---@return integer result The timecycle modifier index.
function CfxStatic.getTimecycleModifierIndexByName(modifierName) end

--- **Native**: `GET_TIMECYCLE_MODIFIER_NAME_BY_INDEX` (`0x28CB8608`)
---@param modifierIndex integer The timecycle modifier index.
---@return string result The timecycle modifier name.
function CfxStatic.getTimecycleModifierNameByIndex(modifierIndex) end

--- **Native**: `GET_TIMECYCLE_MODIFIER_VAR` (`0xA7109E12`)
---@param modifierName string The name of timecycle modifier.
---@param varName string The name of timecycle variable.
---@return boolean result Whether or not variable by name was found on the specified timecycle modifier.
---@return number value1
---@return number value2
function CfxStatic.getTimecycleModifierVar(modifierName, varName) end

--- **Native**: `GET_TIMECYCLE_MODIFIER_VAR_COUNT` (`0x60FB60FE`)
---@param modifierName string The timecycle modifier name.
---@return integer result The amount of variables used on a specified timecycle modifier.
function CfxStatic.getTimecycleModifierVarCount(modifierName) end

--- **Native**: `GET_TIMECYCLE_MODIFIER_VAR_NAME_BY_INDEX` (`0xE874AB1D`)
---@param modifierName string The name of timecycle modifier.
---@param modifierVarIndex integer The index of a variable on the specified timecycle modifier.
---@return string result The name of a variable by index.
function CfxStatic.getTimecycleModifierVarNameByIndex(modifierName, modifierVarIndex) end

--- See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
--- **Native**: `GET_TIMECYCLE_VAR_DEFAULT_VALUE_BY_INDEX` (`0x3B90238`)
---@param varIndex integer The index of variable.
---@return number result The default value of a timecycle variable.
function CfxStatic.getTimecycleVarDefaultValueByIndex(varIndex) end

--- See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
--- **Native**: `GET_TIMECYCLE_VAR_NAME_BY_INDEX` (`0xC6C55AAF`)
---@param varIndex integer The index of variable.
---@return string result The name of a timecycle variable.
function CfxStatic.getTimecycleVarNameByIndex(varIndex) end

--- **Native**: `GET_TRACK_BRAKING_DISTANCE` (`0xBF482A5E`)
---@param track integer The track id (between 0 - 27)
---@return number result The braking distance of the track. Used by trains to determine the point to slow down at when entering a station.
function CfxStatic.getTrackBrakingDistance(track) end

--- **Native**: `GET_TRACK_MAX_SPEED` (`0x34EE2BF3`)
---@param track integer The track id (between 0 - 27)
---@return number result The max speed of the track
function CfxStatic.getTrackMaxSpeed(track) end

--- Gets the coordinates of a specific track node.
--- **Native**: `GET_TRACK_NODE_COORDS` (`0x1628548E`)
---@param trackIndex integer The track index
---@param trackNode integer The track node
---@param coords vector3 The resulting track node coords
---@return boolean result Returns if it succeeds in getting coords or not
---@return vector3 coords The resulting track node coords
function CfxStatic.getTrackNodeCoords(trackIndex, trackNode, coords) end

--- Gets the specified tracks node count.
--- **Native**: `GET_TRACK_NODE_COUNT` (`0x896A0C11`)
---@param trackIndex integer The track index
---@return integer result The amount of track nodes on the specified track
function CfxStatic.getTrackNodeCount(trackIndex) end

--- A getter for [SET_VISUAL_SETTING_FLOAT](#\_0xD1D31681).
--- **Native**: `GET_VISUAL_SETTING_FLOAT` (`0x15346B4D`)
---@param name string The name of the value to get, such as `pedLight.color.red`.
---@return number result Returns the floating point value of the specified visual setting on success.
function CfxStatic.getVisualSettingFloat(name) end

--- **Native**: `GET_WATER_QUAD_ALPHA` (`0x14088095`)
---@param waterQuad integer The water quad index
---@return boolean result Returns true on success. Alpha values are undefined on failure
---@return integer a0 The a0 level
---@return integer a1 The a1 level
---@return integer a2 The a2 level
---@return integer a3 The a3 level
function CfxStatic.getWaterQuadAlpha(waterQuad) end

--- This native returns the index of a water quad if the given point is inside its bounds.
---
--- *If you also want to check for water level, check out [`GetWaterQuadAtCoords_3d`](#\_0xF8E03DB8)*
--- **Native**: `GET_WATER_QUAD_AT_COORDS` (`0x17321452`)
---@param x number The X coordinate
---@param y number The Y coordinate
---@return integer result The water quad index at the given position. Returns -1 if there isn't any there.
function CfxStatic.getWaterQuadAtCoords(x, y) end

--- This alternative implementation of [`GetWaterQuadAtCoords`](#\_0x17321452) also checks the height of the water level.
--- **Native**: `GET_WATER_QUAD_AT_COORDS_3D` (`0xF8E03DB8`)
---@param coords vector3 The X coordinate / The Y coordinate / The water level inside the water quad
---@return integer result The water quad index at the given position. Returns -1 if there isn't any there. Also returns -1 if the given point is above the water level.
function CfxStatic.getWaterQuadAtCoords3d(coords) end

--- **Native**: `GET_WATER_QUAD_BOUNDS` (`0x42E9A06A`)
---@param waterQuad integer The water quad index
---@return boolean result Returns true on success. Bounds are undefined on failure
---@return integer minX The minX coordinate
---@return integer minY The minY coordinate
---@return integer maxX The maxX coordinate
---@return integer maxY The maxY coordinate
function CfxStatic.getWaterQuadBounds(waterQuad) end

--- **Native**: `GET_WATER_QUAD_HAS_LIMITED_DEPTH` (`0x22EA3BD8`)
---@param waterQuad integer The water quad index
---@param hasLimitedDepth integer
---@return boolean result Returns if the given water quad has a limited depth.
---@return integer hasLimitedDepth
function CfxStatic.getWaterQuadHasLimitedDepth(waterQuad, hasLimitedDepth) end

--- **Native**: `GET_WATER_QUAD_IS_INVISIBLE` (`0x1DEDBD77`)
---@param waterQuad integer The water quad index
---@param isInvisible integer
---@return boolean result Returns if the given water quad is invisible
---@return integer isInvisible
function CfxStatic.getWaterQuadIsInvisible(waterQuad, isInvisible) end

--- *level is defined as "z" in water.xml*
--- **Native**: `GET_WATER_QUAD_LEVEL` (`0x6523816B`)
---@param waterQuad integer The returned water quad level
---@param waterQuadLevel number
---@return boolean result Returns true on success. Level is undefined on failure
---@return number waterQuadLevel
function CfxStatic.getWaterQuadLevel(waterQuad, waterQuadLevel) end

--- **Native**: `GET_WATER_QUAD_NO_STENCIL` (`0x6F4ACBA`)
---@param waterQuad integer The water quad index
---@param noStencil integer
---@return boolean result Returns if the given water quad has no stencil.
---@return integer noStencil
function CfxStatic.getWaterQuadNoStencil(waterQuad, noStencil) end

--- Valid type definitions:
---
--- *   **0** Square
--- *   **1** Right triangle where the 90 degree angle is at maxX, minY
--- *   **2** Right triangle where the 90 degree angle is at minX, minY
--- *   **3** Right triangle where the 90 degree angle is at minX, maxY
--- *   **4** Right triangle where the 90 degree angle is at maxY, maxY
--- **Native**: `GET_WATER_QUAD_TYPE` (`0xE2501B8B`)
---@param waterQuad integer The water quad index
---@param waterType integer
---@return boolean result Returns true on success. Type is undefined on failure
---@return integer waterType
function CfxStatic.getWaterQuadType(waterQuad, waterType) end

--- **Native**: `GET_WAVE_QUAD_AMPLITUDE` (`0x865139A3`)
---@param waveQuad integer The wave quad index
---@param waveQuadAmplitude number
---@return boolean result Returns true on success. Amplitude is undefined on failure
---@return number waveQuadAmplitude
function CfxStatic.getWaveQuadAmplitude(waveQuad, waveQuadAmplitude) end

--- This native returns the index of a wave quad if the given point is inside its bounds.
--- **Native**: `GET_WAVE_QUAD_AT_COORDS` (`0x3F5A61A7`)
---@param x number The X coordinate
---@param y number The Y coordinate
---@return integer result The wave quad index at the given position. Returns -1 if there isn't any there.
function CfxStatic.getWaveQuadAtCoords(x, y) end

--- **Native**: `GET_WAVE_QUAD_BOUNDS` (`0xF86136DB`)
---@param waveQuad integer The wave quad index
---@return boolean result Returns true on success. Bounds are undefined on failure
---@return integer minX The minX coordinate
---@return integer minY The minY coordinate
---@return integer maxX The maxX coordinate
---@return integer maxY The maxY coordinate
function CfxStatic.getWaveQuadBounds(waveQuad) end

--- **Native**: `GET_WAVE_QUAD_DIRECTION` (`0xCCE49A1C`)
---@param waveQuad integer The wave quad index
---@return boolean result Returns true on success. Direction values are undefined on failure
---@return number directionX The wave quad X direction
---@return number directionY The wave quad Y direction
function CfxStatic.getWaveQuadDirection(waveQuad) end

--- A getter for the accuracy spread of a weapon.
--- **Native**: `GET_WEAPON_ACCURACY_SPREAD` (`0x5343721`)
---@param weaponHash integer|string Weapon name hash.
---@return number result The accuracy spread of a weapon.
function CfxStatic.getWeaponAccuracySpread(weaponHash) end

--- A getter for `CWeaponAccuracyModifier` in a weapon component.
--- **Native**: `GET_WEAPON_COMPONENT_ACCURACY_MODIFIER` (`0xC693E278`)
---@param componentHash integer|string Weapon component name hash.
---@return number result A weapon component accuracy modifier.
function CfxStatic.getWeaponComponentAccuracyModifier(componentHash) end

--- A getter for `CameraHash` in a weapon scope component.
--- **Native**: `GET_WEAPON_COMPONENT_CAMERA_HASH` (`0xACB7E68F`)
---@param componentHash integer|string Weapon component name hash.
---@return integer result The hash of the scope camera.
function CfxStatic.getWeaponComponentCameraHash(componentHash) end

--- A getter for `ClipSize` in a weapon component.
--- **Native**: `GET_WEAPON_COMPONENT_CLIP_SIZE` (`0xE14CF665`)
---@param componentHash integer|string Weapon component name hash.
---@return integer result A weapon component clip size.
function CfxStatic.getWeaponComponentClipSize(componentHash) end

--- A getter for `CWeaponDamageModifier` in a weapon component.
--- **Native**: `GET_WEAPON_COMPONENT_DAMAGE_MODIFIER` (`0x4A0E3855`)
---@param componentHash integer|string Weapon component name hash.
---@return number result A weapon component damage modifier.
function CfxStatic.getWeaponComponentDamageModifier(componentHash) end

--- A getter for `CWeaponFallOffModifier` damage modifier value in a weapon component.
--- **Native**: `GET_WEAPON_COMPONENT_RANGE_DAMAGE_MODIFIER` (`0xE134FB8D`)
---@param componentHash integer|string Weapon component name hash.
---@return number result A weapon component damage modifier.
function CfxStatic.getWeaponComponentRangeDamageModifier(componentHash) end

--- A getter for `CWeaponFallOffModifier` range modifier value in a weapon component.
--- **Native**: `GET_WEAPON_COMPONENT_RANGE_MODIFIER` (`0x2FD0BC1B`)
---@param componentHash integer|string Weapon component name hash.
---@return number result A weapon component range modifier.
function CfxStatic.getWeaponComponentRangeModifier(componentHash) end

--- A getter for `ReticuleHash` in a weapon scope component.
--- **Native**: `GET_WEAPON_COMPONENT_RETICULE_HASH` (`0xF9AB9297`)
---@param componentHash integer|string Weapon component name hash.
---@return integer result The hash of the reticule camera.
function CfxStatic.getWeaponComponentReticuleHash(componentHash) end

--- A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
--- **Native**: `GET_WEAPON_DAMAGE_MODIFIER` (`0xD979143`)
---@param weaponHash integer|string Weapon name hash.
---@return number result A weapon damage modifier.
function CfxStatic.getWeaponDamageModifier(weaponHash) end

--- A getter for the recoil shake amplitude of a weapon.
--- **Native**: `GET_WEAPON_RECOIL_SHAKE_AMPLITUDE` (`0x5E1AF5F`)
---@param weaponHash integer|string Weapon name hash.
---@return number result The recoil shake amplitude of a weapon.
function CfxStatic.getWeaponRecoilShakeAmplitude(weaponHash) end

--- Converts a screen coordinate into its relative world coordinate.
--- **Native**: `GET_WORLD_COORD_FROM_SCREEN_COORD` (`0xC81D0659`)
---@param screenX number A screen horizontal axis coordinate (0.0 - 1.0).
---@param screenY number A screen vertical axis coordinate (0.0 - 1.0).
---@return vector3 worldVector The world coord vector pointer.
---@return vector3 normalVector The screen normal vector pointer.
function CfxStatic.getWorldCoordFromScreenCoord(screenX, screenY) end

--- Returns whether or not the specific minimap overlay has loaded.
--- **Native**: `HAS_MINIMAP_OVERLAY_LOADED` (`0xF7535F32`)
---@param id integer A minimap overlay ID.
---@return boolean result A boolean indicating load status.
function CfxStatic.hasMinimapOverlayLoaded(id) end

--- **Native**: `IS_ACE_ALLOWED` (`0x7EBB9929`)
---@param object string
---@return boolean result
function CfxStatic.isAceAllowed(object) end

--- Gets if the specified `rawKeyIndex` is pressed down, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_DISABLED_RAW_KEY_DOWN` (`0x36366EC3`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of down state.
function CfxStatic.isDisabledRawKeyDown(rawKeyIndex) end

--- Gets if the specified `rawKeyIndex` is pressed, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_DISABLED_RAW_KEY_PRESSED` (`0x1F7CBBAA`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of pressed state.
function CfxStatic.isDisabledRawKeyPressed(rawKeyIndex) end

--- Gets if the specified `rawKeyIndex` was released, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_DISABLED_RAW_KEY_RELEASED` (`0x72B66C09`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of released state.
function CfxStatic.isDisabledRawKeyReleased(rawKeyIndex) end

--- Gets if the specified `rawKeyIndex` is up, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_DISABLED_RAW_KEY_UP` (`0x2C033875`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of up state.
function CfxStatic.isDisabledRawKeyUp(rawKeyIndex) end

--- **Native**: `IS_PRINCIPAL_ACE_ALLOWED` (`0x37CF52CE`)
---@param principal string
---@param object string
---@return boolean result
function CfxStatic.isPrincipalAceAllowed(principal, object) end

--- Gets if the specified `rawKeyIndex` is pressed down on the keyboard.
---
--- This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_RAW_KEY_DOWN` (`0xD95A7387`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of down state.
function CfxStatic.isRawKeyDown(rawKeyIndex) end

--- Gets if the specified `rawKeyIndex` is pressed on the keyboard.
---
--- This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_RAW_KEY_PRESSED` (`0x69F7C29E`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of pressed state.
function CfxStatic.isRawKeyPressed(rawKeyIndex) end

--- Gets if the specified `rawKeyIndex` was just released on the keyboard.
---
--- This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_RAW_KEY_RELEASED` (`0xEAA50861`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of released state.
function CfxStatic.isRawKeyReleased(rawKeyIndex) end

--- Gets if the specified `rawKeyIndex` is up  on the keyboard.
---
--- This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
---
--- Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
--- **Native**: `IS_RAW_KEY_UP` (`0x36F4E505`)
---@param rawKeyIndex integer Index of raw key from keyboard.
---@return boolean result Returns bool value of up state.
function CfxStatic.isRawKeyUp(rawKeyIndex) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Returns whether an asynchronous streaming file registration completed.
--- **Native**: `IS_STREAMING_FILE_READY` (`0xA194934D`)
---@param registerAs string The file name to check, for example `asset.ydr`.
---@return boolean result Whether or not the streaming file has been registered.
function CfxStatic.isStreamingFileReady(registerAs) end

--- Getter for [SET_TRACK_ENABLED](#\_0x4B41E84C)
--- **Native**: `IS_TRACK_ENABLED` (`0x31E695CB`)
---@param track integer The track id (between 0 - 27)
---@return boolean result If this track is enabled.
function CfxStatic.isTrackEnabled(track) end

--- Getter for [SWITCH_TRAIN_TRACK](#\_0xFD813BB7DB977F20). Determines if ambient trains are able to spawn on this track.
--- **Native**: `IS_TRACK_SWITCHED_OFF` (`0xE0C53765`)
---@param track integer The track id (between 0 - 27)
---@return boolean result If this track allows ambient trains to spawn
function CfxStatic.isTrackSwitchedOff(track) end

--- Leaves cursor mode. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `LEAVE_CURSOR_MODE` (`0xADECF19E`)
function CfxStatic.leaveCursorMode() end

--- Reads the contents of a text file in a specified resource.
--- If executed on the client, this file has to be included in `files` in the resource manifest.
--- Example: `local data = LoadResourceFile("devtools", "data.json")`
--- **Native**: `LOAD_RESOURCE_FILE` (`0x76A9EE1F`)
---@param resourceName string The resource name.
---@param fileName string The file in the resource.
---@return string result The file contents
function CfxStatic.loadResourceFile(resourceName, fileName) end

--- Define the xml in a resources fxmanifest, under the file(s) section.
--- **Native**: `LOAD_WATER_FROM_PATH` (`0xF5102568`)
---@param resourceName string The name of the resource containing your modified water definition
---@param fileName string The name of the file
---@return boolean result Returns true on success.
function CfxStatic.loadWaterFromPath(resourceName, fileName) end

--- Toggles a check that prevents attaching (networked) entities to remotely owned peds. This is disabled by default.
--- **Native**: `ONESYNC_ENABLE_REMOTE_ATTACHMENT_SANITIZATION` (`0x30CE39D8`)
---@param enable boolean Whether to enable sanitization.
function CfxStatic.onesyncEnableRemoteAttachmentSanitization(enable) end

--- Sets whether peds can stand on top of *all* vehicles without falling off.
---
--- Note this flag is not replicated automatically, you will have to manually do so.
--- **Native**: `OVERRIDE_PEDS_CAN_STAND_ON_TOP_FLAG` (`0x90A9E0B2`)
---@param flag boolean true to override, false to use default game behavior.
function CfxStatic.overridePedsCanStandOnTopFlag(flag) end

--- Allows the bypassing of default game behavior that prevents the use of [SET_PED_DRIVE_BY_CLIPSET_OVERRIDE](#\_0xED34AB6C5CB36520) in certain scenarios to avoid clipping issues (e.g., when there is more than one Ped in a vehicle).
---
--- Note: This flag and the overridden clipset are not replicated values and require synchronization through user scripts. Additionally, current game behavior also restricts applying this clipset locally when in first-person mode and will require a temporary workaround.
--- **Native**: `OVERRIDE_PEDS_USE_DEFAULT_DRIVE_BY_CLIPSET` (`0xB14F8EAD`)
---@param flag boolean true to override, false to use default game behavior.
function CfxStatic.overridePedsUseDefaultDriveByClipset(flag) end

--- Replaces the `popgroups` (CPopGroupList) meta file with the file in the specified path.
--- **Native**: `OVERRIDE_POP_GROUPS` (`0xD3BC438F`)
---@param path string The file path to load (`popgroups`, `@resource/popgroups`), or `null` to reload the default population groups file.
function CfxStatic.overridePopGroups(path) end

--- Setting the state to true and a value between 0 and 2 will cause pedestrian vehicles to react accordingly to sirens.
---
--- ```cpp
--- enum Reactions {
---     Left = 0,
---     Right = 1,
---     Stop = 2
--- }
--- ```
--- **Native**: `OVERRIDE_REACTION_TO_VEHICLE_SIREN` (`0x3F3EB3F7`)
---@param state boolean Toggle on or off
---@param reaction fx.Enum.Reactions|integer Decide how they should react
function CfxStatic.overrideReactionToVehicleSiren(state, reaction) end

--- Create a new light with specified type, flags, position, color, and intensity.
--- **Native**: `PREPARE_LIGHT` (`0x584B4C99`)
---@param lightType integer The type of the light
---@param flags integer Light flags
---@param coords vector3 coordinate of the light position
---@param r integer Red component of the light color (0-255)
---@param g integer Green component of the light color (0-255)
---@param b integer Blue component of the light color (0-255)
---@param intensity number Intensity of the light
function CfxStatic.prepareLight(lightType, flags, coords, r, g, b, intensity) end

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

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
--- **Native**: `REGISTER_ARCHETYPES` (`0x3C2F9037`)
---@param factory function A function returning a list of archetypes.
function CfxStatic.registerArchetypes(factory) end

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

--- Registers a specified .gfx file as GFx font library.
--- The .gfx file has to be registered with the streamer already.
--- **Native**: `REGISTER_FONT_FILE` (`0x1B3A363`)
---@param fileName string The name of the .gfx file, without extension.
function CfxStatic.registerFontFile(fileName) end

--- Registers a specified font name for use with text draw commands.
--- **Native**: `REGISTER_FONT_ID` (`0xACF6D8EE`)
---@param fontName string The name of the font in the GFx font library.
---@return integer result An index to use with [SET_TEXT_FONT](#\_0x66E0276CC5F6B9DA) and similar natives.
function CfxStatic.registerFontId(fontName) end

--- Registers a key mapping for the current resource.
---
--- See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
---
--- Below you can find some examples on how to create these keybindings as well as the alternate keybinding syntax, which is preceded by `~!` to indicate that it's an alternate key.
--- **Native**: `REGISTER_KEY_MAPPING` (`0xD7664FD1`)
---@param commandString string The command to execute, and the identifier of the binding.
---@param description string A description for in the settings menu.
---@param defaultMapper string The [mapper ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `keyboard`.
---@param defaultParameter string The [IO parameter ID](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to use for the default binding, e.g. `f3`.
function CfxStatic.registerKeyMapping(commandString, description, defaultMapper, defaultParameter) end

--- **Native**: `REGISTER_NUI_CALLBACK` (`0xC59B980C`)
---@param callbackType string
---@param callback function
function CfxStatic.registerNuiCallback(callbackType, callback) end

--- **Native**: `REGISTER_NUI_CALLBACK_TYPE` (`0xCD03CDA9`)
---@param callbackType string
function CfxStatic.registerNuiCallbackType(callbackType) end

--- **Native**: `REGISTER_RAW_NUI_CALLBACK` (`0xA8AE9C2F`)
---@param callbackType string
---@param callback function
function CfxStatic.registerRawNuiCallback(callbackType, callback) end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
--- **Native**: `REGISTER_RESOURCE_AS_EVENT_HANDLER` (`0xD233A168`)
---@param eventName string An event name, or "\*" to disable HLL event filtering for this resource.
function CfxStatic.registerResourceAsEventHandler(eventName) end

--- Registers a custom rope data with the game. For guidance on what these values should be use common:/data/ropedata.xml as a reference.
--- Returns a rope type which can be passed into [ADD_ROPE](#\_0xE832D760399EB220) to use a custom rope design.
--- Once a rope data is registered it can be used indefinitely and you should take caution not too register too many as to exceed the games limit.
--- **Native**: `REGISTER_ROPE_DATA` (`0xF213AE8D`)
---@param numSections integer
---@param radius number
---@param diffuseTextureName string
---@param normalMapName string
---@param distanceMappingScale number
---@param uvScaleX number
---@param uvScaleY number
---@param specularFresnel number
---@param specularFalloff number
---@param specularIntensity number
---@param bumpiness number
---@param color integer
---@return integer result Returns a non-negative value on success, or -1 if the rope data could not be registered or an invalid argument is passed.
function CfxStatic.registerRopeData(numSections, radius, diffuseTextureName, normalMapName, distanceMappingScale, uvScaleX, uvScaleY, specularFresnel, specularFalloff, specularIntensity, bumpiness, color) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Registers a dynamic streaming asset from the server with the GTA streaming module system.
--- **Native**: `REGISTER_STREAMING_FILE_FROM_CACHE` (`0xCEAD2D4B`)
---@param resourceName string The resource to add the asset to.
---@param fileName string A file name in the resource.
---@param cacheString string The string returned from `REGISTER_RESOURCE_ASSET` on the server.
function CfxStatic.registerStreamingFileFromCache(resourceName, fileName, cacheString) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
--- **Native**: `REGISTER_STREAMING_FILE_FROM_KVS` (`0x1493DCC1`)
---@param kvsKey string The KVP key in the current resource to register as an asset.
function CfxStatic.registerStreamingFileFromKvs(kvsKey) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
---
--- Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
--- **Native**: `REGISTER_STREAMING_FILE_FROM_URL` (`0xF44BFB95`)
---@param registerAs string The file name to register as, for example `asset.ydr`.
---@param url string The URL to fetch the asset from.
function CfxStatic.registerStreamingFileFromUrl(registerAs, url) end

--- Registers a track junction that when enabled will cause a train on the defined trackIndex, node and direction to change its current track index and begin traveling on the new node
--- **Native**: `REGISTER_TRACK_JUNCTION` (`0x35F743B5`)
---@param trackIndex integer The track index a train should be on
---@param trackNode integer The node a train should be on
---@param newIndex integer The new track index for a train to be placed on
---@param newNode integer The new track node for a train to be placed on
---@param direction boolean The direction a train should be traveling for this junction
---@return integer result The track junction's handle or -1 if invalid.
function CfxStatic.registerTrackJunction(trackIndex, trackNode, newIndex, newNode, direction) end

--- **Native**: `REMOVE_CONVAR_CHANGE_LISTENER` (`0xEAC49841`)
---@param cookie integer The cookie returned from [ADD_CONVAR_CHANGE_LISTENER](#\_0xAB7F7241)
function CfxStatic.removeConvarChangeListener(cookie) end

--- Removes a dry volume from the game session.
--- See CREATE_DRY_VOLUME for more info
--- **Native**: `REMOVE_DRY_VOLUME` (`0x7BCAA6E7`)
---@param handle integer The handle of the dry volume that needs to be removed.
function CfxStatic.removeDryVolume(handle) end

--- Removes health config.
--- **Native**: `REMOVE_HEALTH_CONFIG` (`0xE0ED5FB`)
---@param configName string Removes config name. Cannot be default game health config name.
function CfxStatic.removeHealthConfig(configName) end

--- Experimental natives, please do not use in a live environment.
--- **Native**: `REMOVE_REPLACE_TEXTURE` (`0xA896B20A`)
---@param origTxd string
---@param origTxn string
function CfxStatic.removeReplaceTexture(origTxd, origTxn) end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
---
--- Removes a handler for changes to a state bag.
--- **Native**: `REMOVE_STATE_BAG_CHANGE_HANDLER` (`0xD36BE661`)
---@param cookie integer The cookie.
function CfxStatic.removeStateBagChangeHandler(cookie) end

--- **Native**: `REMOVE_TIMECYCLE_MODIFIER` (`0x36DF8612`)
---@param modifierName string The timecycle modifier name.
function CfxStatic.removeTimecycleModifier(modifierName) end

--- **Native**: `REMOVE_TIMECYCLE_MODIFIER_VAR` (`0x5A5E0D05`)
---@param modifierName string The name of timecycle modifier.
---@param varName string The name of timecycle variable.
function CfxStatic.removeTimecycleModifierVar(modifierName, varName) end

--- Removes the specified track junction.
--- **Native**: `REMOVE_TRACK_JUNCTION` (`0x4F3D2B2A`)
---@param junctionIndex integer The junctions index
---@return boolean result Returns if it succeeds in removing a junction or not
function CfxStatic.removeTrackJunction(junctionIndex) end

--- Requests a resource file set with the specified name to be downloaded and mounted on top of the current resource.
---
--- Resource file sets are specified in `fxmanifest.lua` with the following syntax:
---
--- ```lua
--- file_set 'addon_ui' {
---     'ui/addon/index.html',
---     'ui/addon/**.js',
--- }
--- ```
---
--- This command will trigger a script error if the request failed.
--- **Native**: `REQUEST_RESOURCE_FILE_SET` (`0xE7490533`)
---@param setName string The name of the file set as specified in `fxmanifest.lua`.
---@return boolean result `TRUE` if the set is mounted, `FALSE` if the request is still pending.
function CfxStatic.requestResourceFileSet(setName) end

--- This function undoes changes made by [`SET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE`](#\_0x68DFF2DD), restoring the original outline rendering behavior. The default render technique group is `unlit`.
--- **Native**: `RESET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE` (`0x8EB6EC38`)
function CfxStatic.resetEntityDrawOutlineRenderTechnique() end

--- Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
--- **Native**: `RESET_FLY_THROUGH_WINDSCREEN_PARAMS` (`0x6D712937`)
function CfxStatic.resetFlyThroughWindscreenParams() end

--- Resets mapdata entity transform matrix to its original state.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `RESET_MAPDATA_ENTITY_MATRIX` (`0x8143FA4F`)
---@param mapDataHash integer A mapdata hash from `mapDataLoaded` event.
---@param entityInternalIdx integer An internal entity's index.
---@return boolean result True if successful, false if not.
function CfxStatic.resetMapdataEntityMatrix(mapDataHash, entityInternalIdx) end

--- Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
--- **Native**: `RESET_MAP_ZOOM_DATA_LEVEL` (`0x11A5B7ED`)
---@param index integer Zoom level index.
function CfxStatic.resetMapZoomDataLevel(index) end

--- Resets the water to the games default water.xml.
--- **Native**: `RESET_WATER` (`0x1DA4791`)
function CfxStatic.resetWater() end

--- Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
--- **Native**: `SEND_LOADING_SCREEN_MESSAGE` (`0x8BBE6CC0`)
---@param jsonString string The JSON-encoded message.
---@return boolean result A success value.
function CfxStatic.sendLoadingScreenMessage(jsonString) end

--- **Native**: `SEND_NUI_MESSAGE` (`0x78608ACB`)
---@param jsonString string
---@return boolean result
function CfxStatic.sendNuiMessage(jsonString) end

--- Adds a cooldown between instances of moving and then aiming.
--- Can be optionally used to hinder 'speedboosting'
--- To turn off, set value to 0
--- **Native**: `SET_AIM_COOLDOWN` (`0xA42A3DBF`)
---@param value integer Number of milliseconds between allowed aiming
function CfxStatic.setAimCooldown(value) end

--- Sets a floating-point parameter for a submix effect.
--- **Native**: `SET_AUDIO_SUBMIX_EFFECT_PARAM_FLOAT` (`0x9A209B3C`)
---@param submixId integer The submix.
---@param effectSlot integer The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
---@param paramIndex integer The parameter index for the effect.
---@param paramValue number The parameter value to set.
function CfxStatic.setAudioSubmixEffectParamFloat(submixId, effectSlot, paramIndex, paramValue) end

--- Sets an integer parameter for a submix effect.
--- **Native**: `SET_AUDIO_SUBMIX_EFFECT_PARAM_INT` (`0x77FAE2B8`)
---@param submixId integer The submix.
---@param effectSlot integer The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
---@param paramIndex integer The parameter index for the effect.
---@param paramValue integer The parameter value to set.
function CfxStatic.setAudioSubmixEffectParamInt(submixId, effectSlot, paramIndex, paramValue) end

--- Assigns a RadioFX effect to a submix effect slot.
---
--- The parameter values for this effect are as follows (backticks are used to represent hashes):
---
--- | Index | Type | Description |
--- |-|-|-|
--- | \`enabled\` | int | Enables or disables RadioFX on this DSP. |
--- | \`default\` | int | Sets default parameters for the RadioFX DSP and enables it. |
--- | \`freq_low\` | float |  |
--- | \`freq_hi\` | float |  |
--- | \`fudge\` | float |  |
--- | \`rm_mod_freq\` | float |  |
--- | \`rm_mix\` | float |  |
--- | \`o_freq_lo\` | float |  |
--- | \`o_freq_hi\` | float |  |
--- **Native**: `SET_AUDIO_SUBMIX_EFFECT_RADIO_FX` (`0xAAA94D53`)
---@param submixId integer The submix.
---@param effectSlot integer The effect slot for the submix.
function CfxStatic.setAudioSubmixEffectRadioFx(submixId, effectSlot) end

--- Sets the volumes for the sound channels in a submix effect.
--- Values can be between 0.0 and 1.0.
--- Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.
--- Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
--- **Native**: `SET_AUDIO_SUBMIX_OUTPUT_VOLUMES` (`0x825DC0D1`)
---@param submixId integer The submix.
---@param outputSlot integer The output slot index.
---@param frontLeftVolume number The volume for the front left channel.
---@param frontRightVolume number The volume for the front right channel.
---@param rearLeftVolume number The volume for the rear left channel.
---@param rearRightVolume number The volume for the rear right channel.
---@param channel5Volume number The volume for channel 5.
---@param channel6Volume number The volume for channel 6.
function CfxStatic.setAudioSubmixOutputVolumes(submixId, outputSlot, frontLeftVolume, frontRightVolume, rearLeftVolume, rearRightVolume, channel5Volume, channel6Volume) end

--- **Native**: `SET_CALMING_QUAD_BOUNDS` (`0xC5945BD9`)
---@param waterQuad integer The calming quad index
---@param minX integer The minX coordinate
---@param minY integer The minY coordinate
---@param maxX integer The maxX coordinate
---@param maxY integer The maxY coordinate
---@return boolean result Returns true on success.
function CfxStatic.setCalmingQuadBounds(waterQuad, minX, minY, maxX, maxY) end

--- **Native**: `SET_CALMING_QUAD_DAMPENING` (`0x67977501`)
---@param calmingQuad integer The calming quad
---@param dampening number The dampening value
---@return boolean result Returns true on success.
function CfxStatic.setCalmingQuadDampening(calmingQuad, dampening) end

--- Sets the default number plate text pattern for vehicles seen on the local client with the specified plate index as their *default* index (`plateProbabilities` from carvariations).
---
--- For consistency, this should be used with the same value on all clients, since vehicles *without* custom text will use a seeded random number generator with this pattern to determine the default plate text.
---
--- The default value is `11AAA111`, and using this or a NULL string will revert to the default game RNG.
---
--- ### Pattern string format
---
--- *   `1` will lead to a random number from 0-9.
--- *   `A` will lead to a random letter from A-Z.
--- *   `.` will lead to a random letter *or* number, with 50% probability of being either.
--- *   `^1` will lead to a literal `1` being emitted.
--- *   `^A` will lead to a literal `A` being emitted.
--- *   Any other character will lead to said character being emitted.
--- *   A string shorter than 8 characters will be padded on the right.
--- **Native**: `SET_DEFAULT_VEHICLE_NUMBER_PLATE_TEXT_PATTERN` (`0x79780FD2`)
---@param plateIndex integer A plate index, or `-1` to set a default for any indices that do not have a specific value.
---@param pattern string A number plate pattern string, or a null value to reset to default.
function CfxStatic.setDefaultVehicleNumberPlateTextPattern(plateIndex, pattern) end

--- This native sets the app id for the discord rich presence implementation.
--- **Native**: `SET_DISCORD_APP_ID` (`0x6A02254D`)
---@param appId string A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/
function CfxStatic.setDiscordAppId(appId) end

--- Sets a clickable button to be displayed in a player's Discord rich presence.
--- **Native**: `SET_DISCORD_RICH_PRESENCE_ACTION` (`0xCBBC3FAC`)
---@param index integer The button index, either 0 or 1.
---@param label string The text to display on the button.
---@param url string The URL to open when clicking the button. This has to start with `fivem://connect/` or `https://`.
function CfxStatic.setDiscordRichPresenceAction(index, label, url) end

--- This native sets the image asset for the discord rich presence implementation.
--- **Native**: `SET_DISCORD_RICH_PRESENCE_ASSET` (`0x53DFD530`)
---@param assetName string The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function CfxStatic.setDiscordRichPresenceAsset(assetName) end

--- This native sets the small image asset for the discord rich presence implementation.
--- **Native**: `SET_DISCORD_RICH_PRESENCE_ASSET_SMALL` (`0xF61D04C4`)
---@param assetName string The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function CfxStatic.setDiscordRichPresenceAssetSmall(assetName) end

--- This native sets the hover text of the small image asset for the discord rich presence implementation.
--- **Native**: `SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT` (`0x35E62B6A`)
---@param text string Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
function CfxStatic.setDiscordRichPresenceAssetSmallText(text) end

--- This native sets the hover text of the image asset for the discord rich presence implementation.
--- **Native**: `SET_DISCORD_RICH_PRESENCE_ASSET_TEXT` (`0xB029D2FA`)
---@param text string Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
function CfxStatic.setDiscordRichPresenceAssetText(text) end

--- Allows StaticEmitter's without a linked entity to make use of environment features like occlusion and reverb even if they are located higher than 20.0 units above any static collision inside interiors.
---
--- This native allows you to extend the probe range up to 150.0 units.
--- **Native**: `SET_EMITTER_PROBE_LENGTH` (`0x8AA1F3C2`)
---@param probeLength number The desired probe length (20.0 - 150.0)
function CfxStatic.setEmitterProbeLength(probeLength) end

--- Sets color for entity outline. `255, 0, 255, 255` by default.
--- **Native**: `SET_ENTITY_DRAW_OUTLINE_COLOR` (`0xB41A56C2`)
---@param red integer Red component of color.
---@param green integer Green component of color.
---@param blue integer Blue component of color.
---@param alpha integer Alpha component of color, ignored for shader `0`.
function CfxStatic.setEntityDrawOutlineColor(red, green, blue, alpha) end

--- Sets the render technique for drawing an entity's outline. This function allows you to specify a technique group name to control how the entity's outline is rendered in the game.
---
--- List of known technique group's:
---
--- ```
--- alt0
--- alt1
--- alt2
--- alt3
--- alt4
--- alt5
--- alt6
--- alt7
--- alt8
--- blit
--- cube
--- default
--- geometry
--- imposter
--- imposterdeferred
--- lightweight0
--- lightweight0CutOut
--- lightweight0CutOutTint
--- lightweight0WaterRefractionAlpha
--- lightweight4
--- lightweight4CutOut
--- lightweight4CutOutTint
--- lightweight4WaterRefractionAlpha
--- lightweight8
--- lightweight8CutOut
--- lightweight8CutOutTint
--- lightweight8WaterRefractionAlpha
--- lightweightHighQuality0
--- lightweightHighQuality0CutOut
--- lightweightHighQuality0WaterRefractionAlpha
--- lightweightHighQuality4
--- lightweightHighQuality4CutOut
--- lightweightHighQuality4WaterRefractionAlpha
--- lightweightHighQuality8
--- lightweightHighQuality8CutOut
--- [...]
--- **Native**: `SET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE` (`0x68DFF2DD`)
---@param techniqueGroup string Technique group name.
function CfxStatic.setEntityDrawOutlineRenderTechnique(techniqueGroup) end

--- Sets variant of shader that will be used to draw entity outline.
---
--- Variants are:
---
--- *   **0**: Default value, gauss shader.
--- *   **1**: 2px wide solid color outline.
--- *   **2**: Fullscreen solid color except for entity.
--- **Native**: `SET_ENTITY_DRAW_OUTLINE_SHADER` (`0x5261A01A`)
---@param shader integer An outline shader variant.
function CfxStatic.setEntityDrawOutlineShader(shader) end

--- Allows Weapon-Flashlight beams to stay visible while moving. Normally it only stays on while aiming.
--- **Native**: `SET_FLASH_LIGHT_KEEP_ON_WHILE_MOVING` (`0x7635B349`)
---@param state boolean On/Off
function CfxStatic.setFlashLightKeepOnWhileMoving(state) end

--- Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
--- **Native**: `SET_FLY_THROUGH_WINDSCREEN_PARAMS` (`0x4D3118ED`)
---@param vehMinSpeed number Vehicle minimum speed (default 35.0).
---@param unkMinSpeed number Unknown minimum speed (default 40.0).
---@param unkModifier number Unknown modifier (default 17.0).
---@param minDamage number Minimum damage (default 2000.0).
---@return boolean result A bool indicating if parameters was set successfully.
function CfxStatic.setFlyThroughWindscreenParams(vehMinSpeed, unkMinSpeed, unkModifier, minDamage) end

--- This completely disables rendering of fog volumes (vfxfogvolumeinfo.ymt).
--- **Native**: `SET_FOG_VOLUME_RENDER_DISABLED` (`0xFBC64DA3`)
---@param state boolean Toggle on or off.
function CfxStatic.setFogVolumeRenderDisabled(state) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
--- **Native**: `SET_HANDLING_FIELD` (`0xFE8064E3`)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value any The value to set.
function CfxStatic.setHandlingField(vehicle, class_, fieldName, value) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
--- **Native**: `SET_HANDLING_FLOAT` (`0x90DD01C`)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The floating-point value to set.
function CfxStatic.setHandlingFloat(vehicle, class_, fieldName, value) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- **Native**: `SET_HANDLING_INT` (`0x8AB3F46C`)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value integer The integer value to set.
function CfxStatic.setHandlingInt(vehicle, class_, fieldName, value) end

--- Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
--- Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
--- **Native**: `SET_HANDLING_VECTOR` (`0x7F9D543`)
---@param vehicle string The vehicle class to set data for.
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value vector3 The Vector3 value to set.
function CfxStatic.setHandlingVector(vehicle, class_, fieldName, value) end

--- Sets default armor value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_DEFAULT_ARMOR` (`0x20A1E6A2`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigDefaultArmor(configName, newValue) end

--- Sets default endurance value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_DEFAULT_ENDURANCE` (`0x60F20B81`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigDefaultEndurance(configName, newValue) end

--- Sets default health value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_DEFAULT_HEALTH` (`0xC705C778`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigDefaultHealth(configName, newValue) end

--- Sets default dog takedown threshold value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_DOG_TAKEDOWN_THRESHOLD` (`0x9A995E96`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigDogTakedownThreshold(configName, newValue) end

--- Sets default dying health threshold value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_DYING_THRESHOLD` (`0x9B00FD77`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigDyingThreshold(configName, newValue) end

--- Sets default fatigued health threshold value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_FATIGUED_THRESHOLD` (`0xC58953FD`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigFatiguedThreshold(configName, newValue) end

--- Sets default hurt health threshold value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_HURT_THRESHOLD` (`0x98DF1A83`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigHurtThreshold(configName, newValue) end

--- Sets default injured health threshold value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_INJURED_THRESHOLD` (`0xF9D9B647`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigInjuredThreshold(configName, newValue) end

--- Sets default invincible value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_INVINCIBLE` (`0x4A9EEDE6`)
---@param configName string Name of health config.
---@param newValue boolean Value
function CfxStatic.setHealthConfigInvincible(configName, newValue) end

--- Sets default melee cardinal fatal attack value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_MELEE_FATAL_ATTACK` (`0xDD443E53`)
---@param configName string Name of health config.
---@param newValue boolean Value
function CfxStatic.setHealthConfigMeleeFatalAttack(configName, newValue) end

--- Sets default writhe from bullet threshold value for specific health config.
--- **Native**: `SET_HEALTH_CONFIG_WRITHE_FROM_BULLET_THRESHOLD` (`0xE97633CB`)
---@param configName string Name of health config.
---@param newValue number Value
function CfxStatic.setHealthConfigWritheFromBulletThreshold(configName, newValue) end

--- See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
--- **Native**: `SET_HUD_COMPONENT_ALIGN` (`0xEED219F2`)
---@param id integer The hud component id.
---@param horizontalAlign integer The horizontal alignment.
---@param verticalAlign integer The vertical alignment.
function CfxStatic.setHudComponentAlign(id, horizontalAlign, verticalAlign) end

--- **Native**: `SET_HUD_COMPONENT_SIZE` (`0x7644A9FA`)
---@param id integer The hud component id.
---@param x number New size X.
---@param y number New size Y.
function CfxStatic.setHudComponentSize(id, x, y) end

--- Overwrite the games default CPortalTracker interior detection range.
--- This fixes potentially unwanted behaviour in the base game and allows you to build custom interiors with larger ceiling heights without running into graphical glitches.
---
--- By default CPortalTracker will probe 4 units downward trying to reach collisions that are part of the interior the entity is in.
--- If no collision can be found 16 units are used in some circumstances.
---
--- There are 30+ hard coded special cases, only some of them exposed via script (for example `ENABLE_STADIUM_PROBES_THIS_FRAME`).
---
--- This native allows you to extend the probe range up to 150 units which is the same value the game uses for the `xs_arena_interior`
--- **Native**: `SET_INTERIOR_PROBE_LENGTH` (`0x423F7E39`)
---@param probeLength number The desired probe length (0.0 - 150.0)
function CfxStatic.setInteriorProbeLength(probeLength) end

--- Toggles the visibility of resource names in the FiveM key mapping page.
--- **Native**: `SET_KEY_MAPPING_HIDE_RESOURCES` (`0xCB0241B5`)
---@param hide boolean `true` will disable the display of resource names, and `false` will enable it.
function CfxStatic.setKeyMappingHideResources(hide) end

--- Set the alpha transparency of the light.
--- **Native**: `SET_LIGHT_ALPHA` (`0xC0EBC38`)
---@param alpha number The alpha transparency value (0.0 to 1.0)
function CfxStatic.setLightAlpha(alpha) end

--- Set ambient occlusion (AO) parameters for a specified light.
--- **Native**: `SET_LIGHT_AO` (`0xE155B53B`)
---@param intensity number The AO intensity
---@param radius number The AO radius
---@param bias number The AO bias
---@param intensity2 number Secondary AO intensity
function CfxStatic.setLightAo(intensity, radius, bias, intensity2) end

--- Set the capsule size of a specified light.
--- **Native**: `SET_LIGHT_CAPSULE_SIZE` (`0xA3881271`)
---@param size number The capsule size value
function CfxStatic.setLightCapsuleSize(size) end

--- Set the clip rectangle for a created light.
--- **Native**: `SET_LIGHT_CLIP_RECT` (`0xD9DD0717`)
---@param x integer The x-coordinate of the clip rectangle
---@param y integer The y-coordinate of the clip rectangle
---@param width integer The width of the clip rectangle
---@param height integer The height of the clip rectangle
function CfxStatic.setLightClipRect(x, y, width, height) end

--- Set the color of a specified light.
--- **Native**: `SET_LIGHT_COLOR` (`0x65FE5132`)
---@param r integer Red color component (0-255)
---@param g integer Green color component (0-255)
---@param b integer Blue color component (0-255)
function CfxStatic.setLightColor(r, g, b) end

--- Set the inner and outer cone angles of a specified light.
--- **Native**: `SET_LIGHT_CONE` (`0x9FE89EF5`)
---@param innerConeAngle number The inner cone angle in degrees
---@param outerConeAngle number The outer cone angle in degrees
function CfxStatic.setLightCone(innerConeAngle, outerConeAngle) end

--- Set the world coordinates of a specified light.
--- **Native**: `SET_LIGHT_COORDS` (`0x8950BD08`)
---@param coords vector3 The coordinate
function CfxStatic.setLightCoords(coords) end

--- Set the forward and tangent direction vectors for an existing light, allowing control over its orientation (useful for spotlights and directional lights).
--- **Native**: `SET_LIGHT_DIRECTION` (`0xA6FE1977`)
---@param dir vector3 , **yDir**, **zDir**: Components of the normalized forward (direction) vector
---@param tanDir vector3 , **yTanDir**, **zTanDir**: Components of the normalized tangent vector (defines rotation around the forward axis)
function CfxStatic.setLightDirection(dir, tanDir) end

--- Set additional configuration flags for an existing light
--- **Native**: `SET_LIGHT_EXTRAFLAGS` (`0xB2D37E97`)
---@param extraFlags integer Bitmask of extra flags
function CfxStatic.setLightExtraflags(extraFlags) end

--- Set the fade distance.
--- **Native**: `SET_LIGHT_FADE_DISTANCE` (`0xFA46714D`)
---@param fadeDistance integer Maximum distance
function CfxStatic.setLightFadeDistance(fadeDistance) end

--- Adjust the falloff parameter for an existing light, affecting how light intensity decreases over distance.
--- **Native**: `SET_LIGHT_FALLOFF` (`0x4D7F6E03`)
---@param falloff number A floating‑point value determining the rate at which light intensity diminishes with distance (must be > 0; values ≤ 0 will be clamped internally)
function CfxStatic.setLightFalloff(falloff) end

--- Set or update specific flags for a created light to control its behavior or properties.
--- **Native**: `SET_LIGHT_FLAGS` (`0x28B22733`)
---@param flags integer Bitmask of flags to apply to the light
function CfxStatic.setLightFlags(flags) end

--- Set the headlight properties of a created light, adjusting its intensity and range.
--- **Native**: `SET_LIGHT_HEADLIGHT` (`0xFF44D502`)
---@param intensity number The intensity level of the headlight
---@param range number The effective range of the headlight
function CfxStatic.setLightHeadlight(intensity, range) end

--- Set the intensity of an existing light.
--- **Native**: `SET_LIGHT_INTENSITY` (`0x2CC9A71C`)
---@param intensity number The intensity value to set
function CfxStatic.setLightIntensity(intensity) end

--- Set the plane parameters for a light.
--- **Native**: `SET_LIGHT_PLANE` (`0xE46E0CDF`)
---@param coords vector3 component of the plane
---@param w number W component of the plane
function CfxStatic.setLightPlane(coords, w) end

--- Set the radius of a created light.
--- **Native**: `SET_LIGHT_RADIUS` (`0x4A4B5CBE`)
---@param radius number The radius value to set
function CfxStatic.setLightRadius(radius) end

--- Set the shadow details for a created light.
--- **Native**: `SET_LIGHT_SHADOW_DETAILS` (`0xA40EAC1A`)
---@param shadowFlags integer Flags controlling shadow behavior
---@param shadowDistance number The distance at which shadows are rendered
---@param shadowFade number The fade distance for shadows
---@param shadowDepthBiasScale number The depth bias scale
function CfxStatic.setLightShadowDetails(shadowFlags, shadowDistance, shadowFade, shadowDepthBiasScale) end

--- Set the fade distance for the shadows of a created light.
--- **Native**: `SET_LIGHT_SHADOW_FADE_DISTANCE` (`0x3C54C2A8`)
---@param fadeDistance integer The distance at which the shadow fades
function CfxStatic.setLightShadowFadeDistance(fadeDistance) end

--- Set the specular fade distance for a created light.
--- **Native**: `SET_LIGHT_SPECULAR_FADE_DISTANCE` (`0xC3A35A50`)
---@param fadeDistance integer The distance at which specular highlights fade
function CfxStatic.setLightSpecularFadeDistance(fadeDistance) end

--- Assign a texture to an existing light source, allowing custom light shapes or patterns using textures from streaming assets.
--- **Native**: `SET_LIGHT_TEXTURE` (`0x55A50736`)
---@param textureDict string The name of the texture dictionary (TXD) containing the texture
---@param textureHash integer Hash of the texture
function CfxStatic.setLightTexture(textureDict, textureHash) end

--- Change the light type of a already created light.
--- Certain light type needs more configurations to work properly (Like direction, flags or size)
--- **Native**: `SET_LIGHT_TYPE` (`0xCB58679D`)
---@param lightType integer The type of light
function CfxStatic.setLightType(lightType) end

--- Set volumetric light properties for an existing light, enabling custom volumetric effects such as fog-like glow.
--- **Native**: `SET_LIGHT_VOLUME_DETAILS` (`0x2F731AE7`)
---@param volIntensity number Intensity of the volumetric effect
---@param volSizeScale number Scale of the volumetric volume
---@param r number Red channel for volumetric outer color (0–255)
---@param g number Green channel for volumetric outer color (0–255)
---@param b number Blue channel for volumetric outer color (0–255)
---@param i number Intensity (alpha) of the volumetric outer color
---@param outerExponent number Exponent controlling falloff of the volumetric outer glow
function CfxStatic.setLightVolumeDetails(volIntensity, volSizeScale, r, g, b, i, outerExponent) end

--- Set the fade distance for volumetric lightingn.
--- **Native**: `SET_LIGHT_VOLUMETRIC_FADE_DISTANCE` (`0xE1F41605`)
---@param volumetricFadeDistance integer The maximum distance
function CfxStatic.setLightVolumetricFadeDistance(volumetricFadeDistance) end

--- Sets values to the zoom level data by index.
--- **Native**: `SET_MAP_ZOOM_DATA_LEVEL` (`0x447C718E`)
---@param index integer Zoom level index.
---@param zoomScale number fZoomScale value.
---@param zoomSpeed number fZoomSpeed value.
---@param scrollSpeed number fScrollSpeed value.
---@param tilesX number vTiles X.
---@param tilesY number vTiles Y.
function CfxStatic.setMapZoomDataLevel(index, zoomScale, zoomSpeed, scrollSpeed, tilesX, tilesY) end

--- Overrides how many real ms are equal to one game minute.
--- A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
--- **Native**: `SET_MILLISECONDS_PER_GAME_MINUTE` (`0x36CA2554`)
---@param value integer Milliseconds.
function CfxStatic.setMillisecondsPerGameMinute(value) end

--- Sets the type for the minimap blip clipping object to be either rectangular or rounded.
--- **Native**: `SET_MINIMAP_CLIP_TYPE` (`0xB8B4490C`)
---@param type_ integer 0 for rectangular, 1 for rounded.
function CfxStatic.setMinimapClipType(type_) end

--- Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
--- **Native**: `SET_MINIMAP_COMPONENT_POSITION` (`0x3E882B23`)
---@param name string The name of the minimap component to override.
---@param alignX string Equivalent to the `alignX` field in `frontend.xml`.
---@param alignY string Equivalent to the `alignY` field in `frontend.xml`.
---@param posX number Equivalent to the `posX` field in `frontend.xml`.
---@param posY number Equivalent to the `posY` field in `frontend.xml`.
---@param sizeX number Equivalent to the `sizeX` field in `frontend.xml`.
---@param sizeY number Equivalent to the `sizeY` field in `frontend.xml`.
function CfxStatic.setMinimapComponentPosition(name, alignX, alignY, posX, posY, sizeX, sizeY) end

--- Sets the display info for a minimap overlay.
--- **Native**: `SET_MINIMAP_OVERLAY_DISPLAY` (`0x6A48B3CA`)
---@param miniMap integer The minimap overlay ID.
---@param x number The X position for the overlay. This is equivalent to a game coordinate X.
---@param y number The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).
---@param xScale number The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.
---@param yScale number The Y scale for the overlay. This is equivalent to the Flash \_yscale property.
---@param alpha number The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.
function CfxStatic.setMinimapOverlayDisplay(miniMap, x, y, xScale, yScale, alpha) end

--- Sets whether all tags should group (normal game behavior) or should remain independent and above each ped's respective head when in a vehicle.
--- **Native**: `SET_MP_GAMER_TAGS_USE_VEHICLE_BEHAVIOR` (`0x7A27BC93`)
---@param enabled boolean Whether tags should use normal game behavior. Default is true.
function CfxStatic.setMpGamerTagsUseVehicleBehavior(enabled) end

--- Sets the maximum distance at which all tags will be visible and which beyond will not be displayed. Distance is measured from the camera position.
--- **Native**: `SET_MP_GAMER_TAGS_VISIBLE_DISTANCE` (`0xD61676B3`)
---@param distance number The visible distance. Default is 100.0f.
function CfxStatic.setMpGamerTagsVisibleDistance(distance) end

--- **Native**: `SET_NUI_FOCUS` (`0x5B98AE30`)
---@param hasFocus boolean
---@param hasCursor boolean
function CfxStatic.setNuiFocus(hasFocus, hasCursor) end

--- **Native**: `SET_NUI_FOCUS_KEEP_INPUT` (`0x3FF5E5F8`)
---@param keepInput boolean
function CfxStatic.setNuiFocusKeepInput(keepInput) end

--- Set the z-index of the NUI resource.
--- **Native**: `SET_NUI_ZINDEX` (`0x3734AAFF`)
---@param zIndex integer New z-index value.
function CfxStatic.setNuiZindex(zIndex) end

--- Override the limits on the number and types of melee combatants. The game is limited to at most ten combatants among the three types: primary, secondary, and observers.
---
--- This native infers the number of observers based on the primary and secondary counts.
--- **Native**: `SET_PED_MELEE_COMBAT_LIMITS` (`0x8E51EC29`)
---@param primaryCount integer The number of peds that engage in combat (default: 1)
---@param secondaryCount integer The number of peds that engage in taunting (default: 3)
---@param populationPedCount integer The maximum number of population peds (ambient and scenario) that can engage in combat (default: 3)
function CfxStatic.setPedMeleeCombatLimits(primaryCount, secondaryCount, populationPedCount) end

--- Purpose: The game's default values for these make shooting while traveling Left quite a bit slower than shooting while traveling right (This could be a game-balance thing?)
---
--- Default Min: -45 Degrees
--- Default Max: 135 Degrees
---
--- ```
---    \ ,- ~ ||~ - ,
--- , ' \    x   x    ' ,
--- ```
---
--- ,      \    x    x   x  ,
--- ,         \  x     x      ,
--- ,            \     x    x  ,
--- ,              \      x    ,
--- ,                \   x     ,
--- ,                 \   x x ,
--- ,                  \  x ,
--- ,                 , '
--- ' - , \_ \_ \_ ,  '  \\
---
--- If the transition angle is within the shaded portion (x), there will be no transition(Quicker)
--- The angle corresponds to where you are looking(North on the circle) vs. the heading of your Ped.
--- Note: For some reason,
---
--- You can set these values to whatever you'd like with this native, but keep in mind that the transitional spin is only clockwise for some reason.
---
--- I'd personally recommend something like -135/135
--- **Native**: `SET_PED_TURNING_THRESHOLDS` (`0xB300F03`)
---@param min number Leftside angle on the above diagram
---@param max number Rightside angle on the above diagram
function CfxStatic.setPedTurningThresholds(min, max) end

--- This completely disables pedestrian vehicles from reacting to sirens. They will not try to do any maneuver to evade.
--- **Native**: `SET_REACTION_TO_VEHICLE_SIREN_DISABLED` (`0x8C3EC64F`)
---@param state boolean Toggle on or off.
function CfxStatic.setReactionToVehicleSirenDisabled(state) end

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

--- Sets the player's rich presence detail state for social platform providers to a specified string.
--- **Native**: `SET_RICH_PRESENCE` (`0x7BDCBD45`)
---@param presenceState string The rich presence string to set.
function CfxStatic.setRichPresence(presenceState) end

--- Toggles whether the usage of [ADD_ROPE](#\_0xE832D760399EB220) should create an underlying CNetworkRopeWorldStateData. By default this is set to false.
--- **Native**: `SET_ROPES_CREATE_NETWORK_WORLD_STATE` (`0xE62FC73`)
---@param shouldCreate boolean Whether to create an underlying network world state
function CfxStatic.setRopesCreateNetworkWorldState(shouldCreate) end

--- **Native**: `SET_RUNTIME_TEXTURE_ARGB_DATA` (`0x3963D527`)
---@param tex integer
---@param buffer string
---@param length integer
---@return boolean result
function CfxStatic.setRuntimeTextureArgbData(tex, buffer, length) end

--- Replaces the pixel data in a runtime texture with the image data from a file in the current resource, or a data URL.
---
--- If the bitmap is a different size compared to the existing texture, it will be resampled.
---
--- This command may end up executed asynchronously, and only update the texture data at a later time.
--- **Native**: `SET_RUNTIME_TEXTURE_IMAGE` (`0x28FC4ECB`)
---@param tex integer A runtime texture handle.
---@param fileName string The file name of an image to load, or a base64 "data:" URL. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.
---@return boolean result TRUE for success, FALSE for failure.
function CfxStatic.setRuntimeTextureImage(tex, fileName) end

--- Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
--- **Native**: `SET_RUNTIME_TEXTURE_PIXEL` (`0xAB65ACEE`)
---@param tex integer A handle to the runtime texture.
---@param x integer The X position of the pixel to change.
---@param y integer The Y position of the pixel to change.
---@param r integer The new R value (0-255).
---@param g integer The new G value (0-255).
---@param b integer The new B value (0-255).
---@param a integer The new A value (0-255).
function CfxStatic.setRuntimeTexturePixel(tex, x, y, r, g, b, a) end

--- **Native**: `SET_SNAKEOIL_FOR_ENTRY` (`0xA7DD3209`)
---@param name string
---@param path string
---@param data string
function CfxStatic.setSnakeoilForEntry(name, path, data) end

--- Internal function for setting a state bag value.
--- **Native**: `SET_STATE_BAG_VALUE` (`0x8D50E33A`)
---@param bagName string
---@param keyName string
---@param valueData string
---@param valueLength integer
---@param replicated boolean
function CfxStatic.setStateBagValue(bagName, keyName, valueData, valueLength, replicated) end

--- **Native**: `SET_TEXT_CHAT_ENABLED` (`0x97B2F9F8`)
---@param enabled boolean
---@return boolean result
function CfxStatic.setTextChatEnabled(enabled) end

--- **Native**: `SET_TIMECYCLE_MODIFIER_VAR` (`0x6E0A422B`)
---@param modifierName string The name of timecycle modifier.
---@param varName string The name of timecycle variable.
---@param value1 number The first value of variable.
---@param value2 number The second value of variable.
function CfxStatic.setTimecycleModifierVar(modifierName, varName, value1, value2) end

--- Sets the braking distance of the track. Used by trains to determine the point to slow down when entering a station.
--- **Native**: `SET_TRACK_BRAKING_DISTANCE` (`0x77EB78D0`)
---@param track integer The track id (between 0 - 27)
---@param brakingDistance number The new braking distance
function CfxStatic.setTrackBrakingDistance(track, brakingDistance) end

--- Toggles the track being active. If disabled mission trains will not be able to spawn on this track and will look for the next closest track to spawn
--- **Native**: `SET_TRACK_ENABLED` (`0x4B41E84C`)
---@param track integer The track id (between 0 - 27)
---@param enabled boolean Should this track be enabled
function CfxStatic.setTrackEnabled(track, enabled) end

--- Sets the state of a track junction.
--- **Native**: `SET_TRACK_JUNCTION_ACTIVE` (`0x537B449D`)
---@param junctionIndex integer The junctions index
---@param state boolean Toggles the state of the junction
---@return boolean result Returns if it succeeds setting the junctions state or not
function CfxStatic.setTrackJunctionActive(junctionIndex, state) end

--- Sets the max speed for the train tracks. Used by ambient trains and for station calculations
--- **Native**: `SET_TRACK_MAX_SPEED` (`0x37BFC732`)
---@param track integer The track id (between 0 - 27)
---@param newSpeed integer The tracks new speed
function CfxStatic.setTrackMaxSpeed(track, newSpeed) end

--- Enables or disables whether train doors should be forced open whilst a player is inside the train. This is enabled by default in multiplayer.
--- **Native**: `SET_TRAINS_FORCE_DOORS_OPEN` (`0xD4D1BA63`)
---@param forceOpen boolean Should force open.
function CfxStatic.setTrainsForceDoorsOpen(forceOpen) end

--- Sets the maximum distance in which [\_SET_VEHICLE_NITRO_ENABLED](#\_0xC8E9B6B71B8E660D) PTFX are rendered. Distance is measured from the camera position.
--- **Native**: `SET_VEHICLE_NITRO_PTFX_RANGE` (`0xA40CB822`)
---@param range number The visible distance. Default is 50.0f.
function CfxStatic.setVehicleNitroPtfxRange(range) end

--- Overrides a floating point value from `visualsettings.dat` temporarily.
--- **Native**: `SET_VISUAL_SETTING_FLOAT` (`0xD1D31681`)
---@param name string The name of the value to set, such as `pedLight.color.red`.
---@param value number The value to write.
function CfxStatic.setVisualSettingFloat(name, value) end

--- Sets world clip boundaries for water quads file (water.xml, water_heistisland.xml)
--- Used internally by LOAD_GLOBAL_WATER_FILE
--- **Native**: `SET_WATER_AREA_CLIP_RECT` (`0x9FCD2EE6`)
---@param minX integer
---@param minY integer
---@param maxX integer
---@param maxY integer
function CfxStatic.setWaterAreaClipRect(minX, minY, maxX, maxY) end

--- **Native**: `SET_WATER_QUAD_ALPHA` (`0xF49797EB`)
---@param waterQuad integer The water quad index
---@param a0 integer The a0 level
---@param a1 integer The a1 level
---@param a2 integer The a2 level
---@param a3 integer The a3 level
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadAlpha(waterQuad, a0, a1, a2, a3) end

--- This native allows you to update the bounds of a specified water quad index.
--- **Native**: `SET_WATER_QUAD_BOUNDS` (`0x80AD144C`)
---@param waterQuad integer The water quad index
---@param minX integer The minX coordinate
---@param minY integer The minY coordinate
---@param maxX integer The maxX coordinate
---@param maxY integer The maxY coordinate
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadBounds(waterQuad, minX, minY, maxX, maxY) end

--- **Native**: `SET_WATER_QUAD_HAS_LIMITED_DEPTH` (`0xD1FDCFC1`)
---@param waterQuad integer The water quad index
---@param hasLimitedDepth boolean Unknown effect
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadHasLimitedDepth(waterQuad, hasLimitedDepth) end

--- **Native**: `SET_WATER_QUAD_IS_INVISIBLE` (`0xA387D917`)
---@param waterQuad integer The water quad index
---@param isInvisible boolean Unknown effect
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadIsInvisible(waterQuad, isInvisible) end

--- **Native**: `SET_WATER_QUAD_LEVEL` (`0x6292F7A8`)
---@param waterQuad integer The water quad index
---@param level number The water level inside the water quad
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadLevel(waterQuad, level) end

--- **Native**: `SET_WATER_QUAD_NO_STENCIL` (`0xC3FF42FF`)
---@param waterQuad integer The water quad index
---@param noStencil boolean Unknown effect
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadNoStencil(waterQuad, noStencil) end

--- This native allows you to update the water quad type.
---
--- Valid type definitions:
---
--- *   **0** Square
--- *   **1** Right triangle where the 90 degree angle is at maxX, minY
--- *   **2** Right triangle where the 90 degree angle is at minX, minY
--- *   **3** Right triangle where the 90 degree angle is at minX, maxY
--- *   **4** Right triangle where the 90 degree angle is at maxY, maxY
--- **Native**: `SET_WATER_QUAD_TYPE` (`0x50131EB2`)
---@param waterQuad integer The water quad index
---@param type_ integer The water quad type
---@return boolean result Returns true on success.
function CfxStatic.setWaterQuadType(waterQuad, type_) end

--- **Native**: `SET_WAVE_QUAD_AMPLITUDE` (`0xE4174B7B`)
---@param waveQuad integer The wave quad index
---@param amplitude number The amplitude value
---@return boolean result Returns true on success.
function CfxStatic.setWaveQuadAmplitude(waveQuad, amplitude) end

--- This native allows you to update the bounds of a specified water quad index.
--- **Native**: `SET_WAVE_QUAD_BOUNDS` (`0x1FCC1FAF`)
---@param waveQuad integer The wave quad index
---@param minX integer The minX coordinate
---@param minY integer The minY coordinate
---@param maxX integer The maxX coordinate
---@param maxY integer The maxY coordinate
---@return boolean result Returns true on success.
function CfxStatic.setWaveQuadBounds(waveQuad, minX, minY, maxX, maxY) end

--- directionX/Y should be constrained between -1.0 and 1.0
--- A positive value will create the wave starting at min and rolling towards max
--- A negative value will create the wave starting at max and rolling towards min
--- Applying both values allows you to make diagonal waves
--- **Native**: `SET_WAVE_QUAD_DIRECTION` (`0xFC9341A3`)
---@param waveQuad integer The wave quad index
---@param directionX number The minX coordinate
---@param directionY number The minY coordinate
---@return boolean result Returns true on success.
function CfxStatic.setWaveQuadDirection(waveQuad, directionX, directionY) end

--- A setter for the accuracy spread of a weapon.
--- **Native**: `SET_WEAPON_ACCURACY_SPREAD` (`0x598DD6AE`)
---@param weaponHash integer|string Weapon name hash.
---@param spread number Accuracy spread
function CfxStatic.setWeaponAccuracySpread(weaponHash, spread) end

--- A setter for the recoil shake amplitude of a weapon.
--- **Native**: `SET_WEAPON_RECOIL_SHAKE_AMPLITUDE` (`0x9864312F`)
---@param weaponHash integer|string Weapon name hash.
---@param amplitude number Recoil shake amplitude
function CfxStatic.setWeaponRecoilShakeAmplitude(weaponHash, amplitude) end

--- Disables weapons aim blocking due to environment for local player.
--- For non-player peds [SET_PED_ENABLE_WEAPON_BLOCKING](#\_0x97A790315D3831FD) can be used.
--- **Native**: `SET_WEAPONS_NO_AIM_BLOCKING` (`0xDFD8F6DE`)
---@param state boolean On/Off
function CfxStatic.setWeaponsNoAimBlocking(state) end

--- Disables the game's built-in auto-reloading.
--- **Native**: `SET_WEAPONS_NO_AUTORELOAD` (`0x311150E5`)
---@param state boolean On/Off
function CfxStatic.setWeaponsNoAutoreload(state) end

--- Disables autoswapping to another weapon when the current weapon runs out of ammo.
--- **Native**: `SET_WEAPONS_NO_AUTOSWAP` (`0x2A7B50E`)
---@param state boolean On/Off
function CfxStatic.setWeaponsNoAutoswap(state) end

--- **Native**: `SET_WEATHER_CYCLE_ENTRY` (`0xD264D4E1`)
---@param index integer The index of the entry to set. Must be between 0 and 255
---@param typeName string The name of the weather type for this cycle
---@param timeMult integer The relative duration of this cycle, which is multiplied by `msPerCycle` during ['APPLY_WEATHER_CYCLES'](#\_0x3422291C). Must be between 1 and 255
---@return boolean result Returns true if all parameters were valid, otherwise false.
function CfxStatic.setWeatherCycleEntry(index, typeName, timeMult) end

--- Sets whether or not the weather should be owned by the network subsystem.
---
--- To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
--- **Native**: `SET_WEATHER_OWNED_BY_NETWORK` (`0x2703D582`)
---@param network boolean true to let the network control weather, false to not use network weather behavior.
function CfxStatic.setWeatherOwnedByNetwork(network) end

--- Modifies the radius scale used in the simulation of wet cloth physics.
--- This affects how cloth behaves when wet, changing how it sticks or reacts to movement.
--- **Native**: `SET_WET_CLOTH_PIN_RADIUS_SCALE` (`0xF1BD2CEF`)
---@param scale number A value that controls the wet cloth radius scale, default: 0.3, maximum: 1.0(used for dry cloth by default), lower values increase the adhesion effect of wet cloth, making it cling more tightly to th…
function CfxStatic.setWetClothPinRadiusScale(scale) end

--- Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
--- **Native**: `SHUTDOWN_LOADING_SCREEN_NUI` (`0xB9234AFB`)
function CfxStatic.shutdownLoadingScreenNui() end

--- Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
--- **Native**: `START_FIND_EXTERNAL_KVP` (`0x8F2EECC3`)
---@param resourceName string The resource to try finding the key/values for
---@param prefix string A prefix match
---@return integer result A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function CfxStatic.startFindExternalKvp(resourceName, prefix) end

--- **Native**: `START_FIND_KVP` (`0xDD379006`)
---@param prefix string A prefix match
---@return integer result A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function CfxStatic.startFindKvp(prefix) end

--- **Native**: `STATE_BAG_HAS_KEY` (`0x12A330`)
---@param bagName string The name of the bag.
---@param key string The key used to check data existence.
---@return boolean result Returns true if the data associated with the specified key exists; otherwise, returns false.
function CfxStatic.stateBagHasKey(bagName, key) end

--- The backing function for TriggerEvent.
--- **Native**: `TRIGGER_EVENT_INTERNAL` (`0x91310870`)
---@param eventName string
---@param eventPayload string
---@param payloadLength integer
function CfxStatic.triggerEventInternal(eventName, eventPayload, payloadLength) end

--- The backing function for TriggerLatentServerEvent.
--- **Native**: `TRIGGER_LATENT_SERVER_EVENT_INTERNAL` (`0x128737EA`)
---@param eventName string
---@param eventPayload string
---@param payloadLength integer
---@param bps integer
function CfxStatic.triggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps) end

--- The backing function for TriggerServerEvent.
--- **Native**: `TRIGGER_SERVER_EVENT_INTERNAL` (`0x7FDD1128`)
---@param eventName string
---@param eventPayload string
---@param payloadLength integer
function CfxStatic.triggerServerEventInternal(eventName, eventPayload, payloadLength) end

--- Will unregister and cleanup a registered NUI callback handler.
---
--- Use along side the REGISTER_RAW_NUI_CALLBACK native.
--- **Native**: `UNREGISTER_RAW_NUI_CALLBACK` (`0x7FB46432`)
---@param callbackType string The callback type to target
function CfxStatic.unregisterRawNuiCallback(callbackType) end

--- Transiently updates the entity with the specified mapdata index and entity index.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `UPDATE_MAPDATA_ENTITY` (`0xFC52CB91`)
---@param mapdata integer A fwMapData index from GET_MAPDATA_FROM_HASH_KEY.
---@param entity integer An entity index from GET_ENTITY_INDEX_FROM_MAPDATA.
---@param entityDef table The new entity definition in fwEntityDef format.
function CfxStatic.updateMapdataEntity(mapdata, entity, entityDef) end

