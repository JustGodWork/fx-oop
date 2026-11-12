---@meta
---@diagnostic disable
-- fx.Model (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Model
---@field handle integer Model hash.
---@field hash integer Model hash (same as `handle`).
---@field boatVehicleAgility number (read-only) [GET_BOAT_VEHICLE_MODEL_AGILITY] Retrieves the agility for a specific boat model, including any vehicle mods. Unlike other vehicles where Rockstar Games typically assess performance based on t…
---@field displayName string (read-only) [GET_DISPLAY_NAME_FROM_VEHICLE_MODEL] Returns the display name/text label (`gameName` in `vehicles.meta`) for the specified vehicle model.
---@field hasCollisionForLoaded boolean (read-only) [HAS_COLLISION_FOR_MODEL_LOADED]
---@field isAPed boolean (read-only) [IS_MODEL_A_PED]
---@field isAVehicle boolean (read-only) [IS_MODEL_A_VEHICLE]
---@field isInCdimage boolean (read-only) [IS_MODEL_IN_CDIMAGE]
---@field isLoaded boolean (read-only) [HAS_MODEL_LOADED] Returns whether the specified model (archetype) is currently loaded. Note that this will return 'true' even if the model has been requested and loaded by somet…
---@field isNamedRendertargetLinked boolean (read-only) [IS_NAMED_RENDERTARGET_LINKED]
---@field isThisABicycle boolean (read-only) [IS_THIS_MODEL_A_BICYCLE]
---@field isThisABike boolean (read-only) [IS_THIS_MODEL_A_BIKE]
---@field isThisABoat boolean (read-only) [IS_THIS_MODEL_A_BOAT]
---@field isThisACar boolean (read-only) [IS_THIS_MODEL_A_CAR]
---@field isThisAHeli boolean (read-only) [IS_THIS_MODEL_A_HELI]
---@field isThisAJetski boolean (read-only) [IS_THIS_MODEL_A_JETSKI]
---@field isThisAnAmphibiousCar boolean (read-only) [IS_THIS_MODEL_AN_AMPHIBIOUS_CAR]
---@field isThisAnAmphibiousQuadbike boolean (read-only) [IS_THIS_MODEL_AN_AMPHIBIOUS_QUADBIKE]
---@field isThisAPlane boolean (read-only) [IS_THIS_MODEL_A_PLANE]
---@field isThisAQuadbike boolean (read-only) [IS_THIS_MODEL_A_QUADBIKE]
---@field isThisATrain boolean (read-only) [IS_THIS_MODEL_A_TRAIN]
---@field isValid boolean (read-only) [IS_MODEL_VALID]
---@field isVehicleElectric boolean (read-only) [GET_IS_VEHICLE_ELECTRIC] Checks if the vehicle is electric.
---@field makeNameFromVehicle string (read-only) [GET_MAKE_NAME_FROM_VEHICLE_MODEL] Retrieves the manufacturer's name for a specified vehicle.
---@field pedHealthConfig integer (read-only) [GET_PED_MODEL_HEALTH_CONFIG] Gets a ped model's health config.
---@field pedPersonality integer|string [GET_PED_MODEL_PERSONALITY / SET_PED_MODEL_PERSONALITY] Gets a ped model's personality type.
---@field vehicleAcceleration number (read-only) [GET_VEHICLE_MODEL_ACCELERATION] Returns the acceleration of the specified model.
---@field vehicleClassFromName integer (read-only) [GET_VEHICLE_CLASS_FROM_NAME]
---@field vehicleDrivetrainType fx.Enum.VehicleDrivetrainType (read-only) [GET_VEHICLE_DRIVETRAIN_TYPE] **Note**: When using this native, the hash of the vehicle needs to be loaded into the client's memory. This can be done by requesting the model with [`REQUEST_…
---@field vehicleEstimatedAgility number (read-only) [GET_VEHICLE_MODEL_ESTIMATED_AGILITY]
---@field vehicleEstimatedMaxSpeed number (read-only) [GET_VEHICLE_MODEL_ESTIMATED_MAX_SPEED]
---@field vehicleMaxBraking number (read-only) [GET_VEHICLE_MODEL_MAX_BRAKING]
---@field vehicleMaxBrakingMaxMods number (read-only) [GET_VEHICLE_MODEL_MAX_BRAKING_MAX_MODS]
---@field vehicleMaxKnots number (read-only) [GET_VEHICLE_MODEL_MAX_KNOTS]
---@field vehicleMaxTraction number (read-only) [GET_VEHICLE_MODEL_MAX_TRACTION]
---@field vehicleNumberOfSeats integer (read-only) [GET_VEHICLE_MODEL_NUMBER_OF_SEATS]
---@field vehicleValue integer (read-only) [GET_VEHICLE_MODEL_VALUE]
local Model = {}

---Loads the model (REQUEST_MODEL / HAS_MODEL_LOADED). Promise resolved with the model; never yields.
---@param timeoutMs? integer
---@return fx.Promise<fx.Model>
function Model:loadAsync(timeoutMs) end

--- **Native**: `ADD_MODEL_TO_CREATOR_BUDGET` (`0x0BC3144DEB678666`)
---@return boolean result
function Model:addToCreatorBudget() end

--- Hardcoded not to work in multiplayer environments.
--- Native name between `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` & `SET_MAX_WANTED_LEVEL`.
---
--- ```
--- OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked
--- OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked
--- ```
--- **Native**: `DOOR_CONTROL` (`0x9B12F9A24FABEDB0`)
---@param coords vector3
---@param locked boolean tells the game whether or not the door is locked
---@param rotMult vector3 multiplier that specifies how fast the door/gate will rotate in degrees per second.
---@return fx.Model self
function Model:doorControl(coords, locked, rotMult) end

--- ```
--- Gets the dimensions of a model.
--- Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.
--- Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
--- ```
--- **Native**: `GET_MODEL_DIMENSIONS` (`0x03E8D3D5F549087A`)
---@return vector3 minimum
---@return vector3 maximum
function Model:getDimensions() end

--- **Native**: `LINK_NAMED_RENDERTARGET` (`0xF6C09E276AEB3F2D`)
---@return fx.Model self
function Model:linkNamedRendertarget() end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `PLAYSTATS_PEGASAIRCRAFT` (`0x9572BD4DD6B72122`)
---@return fx.Model self
function Model:playstatsPegasaircraft() end

--- Request that we preload the required audio bank for a given vehicle model.
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `PRELOAD_VEHICLE_AUDIO_BANK` (`0xCA4CEA6AE0000A7E`)
---@return fx.Model self
function Model:preloadVehicleAudioBank() end

--- **Native**: `REMOVE_MODEL_FROM_CREATOR_BUDGET` (`0xF086AD9354FAC3A3`)
---@return fx.Model self
function Model:removeFromCreatorBudget() end

--- Request a model (archetype) to be loaded for use by the current script. Use SET_MODEL_AS_NO_LONGER_NEEDED when done using the model in script.
--- **Native**: `REQUEST_MODEL` (`0x963D27A58DF860AC`)
---@return fx.Model self
function Model:request() end

--- **Native**: `REQUEST_COLLISION_FOR_MODEL` (`0x923CB32A3B874FCB`)
---@return fx.Model self
function Model:requestCollision() end

--- **Native**: `REQUEST_MENU_PED_MODEL` (`0xA0261AEF7ACFC51E`)
---@return fx.Model self
function Model:requestMenuPed() end

--- Restores an overridden ped model personality type to the default value.
--- **Native**: `RESET_PED_MODEL_PERSONALITY` (`0x79A12861`)
---@return fx.Model self
function Model:resetPedPersonality() end

--- Releases the script ownership assigned by REQUEST_MODEL. This command should be used when done using a specific model hash in script.
--- **Native**: `SET_MODEL_AS_NO_LONGER_NEEDED` (`0xE532F5D78798DAAB`)
---@return fx.Model self
function Model:setAsNoLongerNeeded() end

--- **Native**: `SET_GAMEPLAY_CAM_VEHICLE_CAMERA_NAME` (`0x11FA5D3479C7DD47`)
---@return fx.Model self
function Model:setGameplayCamVehicleCameraName() end

--- ```
--- Maximum amount of pickup models that can be disallowed is 30.
--- SET_LOCAL_PLAYER_*
--- ```
--- **Native**: `SET_LOCAL_PLAYER_CAN_USE_PICKUPS_WITH_THIS_MODEL` (`0x88EAEC617CD26926`)
---@param toggle boolean
---@return fx.Model self
function Model:setLocalPlayerCanUsePickupsWithThis(toggle) end

--- **Native**: `SET_MAX_NUM_PORTABLE_PICKUPS_CARRIED_BY_PLAYER` (`0x0BF3B3BD47D79C08`)
---@param p1 integer
---@return fx.Model self
function Model:setMaxNumPortablePickupsCarriedByPlayer(p1) end

--- Sets a ped model's health config.
--- Takes effect only after setting player model with `SET_PLAYER_MODEL`.
--- **Native**: `SET_PED_MODEL_HEALTH_CONFIG` (`0xAF12A05D`)
---@param configName string Name of health config.
---@return fx.Model self
function Model:setPedHealthConfig(configName) end

--- **Native**: `SET_PED_MODEL_IS_SUPPRESSED` (`0xE163A4BCE4DE6F11`)
---@param toggle boolean
---@return fx.Model self
function Model:setPedIsSuppressed(toggle) end

--- ```
--- seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:
--- VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);
--- ```
--- **Native**: `SET_VEHICLE_MODEL_IS_SUPPRESSED` (`0x0FC2D89AC25A5814`)
---@param suppressed boolean
---@return fx.Model self
function Model:setVehicleIsSuppressed(suppressed) end

---@class fx.ModelStatic
---@overload fun(model: fx.Model|integer|string): fx.Model Model from a name, a backtick hash or a hash (one cached object per hash).
local ModelStatic = {}

--- True when value is an fx.Model, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function ModelStatic.is(value) end

--- ```
--- dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()
--- ```
--- **Native**: `GET_DLC_VEHICLE_MODEL` (`0xECC01B7C5763333C`)
---@param dlcVehicleIndex integer
---@return fx.Model result
function ModelStatic.getDlcVehicle(dlcVehicleIndex) end

--- **Native**: `GET_WEAPON_COMPONENT_TYPE_MODEL` (`0x0DB57B41EC1DB083`)
---@param componentHash integer|string
---@return fx.Model result
function ModelStatic.getWeaponComponentType(componentHash) end

--- ```
--- Returns the model of any weapon.
--- Can also take an ammo hash?
--- sub_6663a(&l_115B, WEAPON::GET_WEAPONTYPE_MODEL(${ammo_rpg}));
--- ```
--- **Native**: `GET_WEAPONTYPE_MODEL` (`0xF46CDC33180FDA94`)
---@param weaponHash integer|string
---@return fx.Model result
function ModelStatic.getWeapontype(weaponHash) end

--- Loads the resource and returns a Promise (never yields). Resolves with `model` (as a hash).
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_COLLISION_FOR_MODEL` / `HAS_COLLISION_FOR_MODEL_LOADED`.
---@param model fx.Model|integer|string
---@param timeoutMs? integer
---@return fx.Promise<integer>
function ModelStatic.loadCollisionAsync(model, timeoutMs) end

