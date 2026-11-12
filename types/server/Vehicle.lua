---@meta
---@diagnostic disable
-- fx.Vehicle (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.ServerVehicleCreateOptions : fx.ServerCreateOptions
---@field type? "automobile"|"bike"|"boat"|"heli"|"plane"|"submarine"|"trailer"|"train" Vehicle type (the server cannot infer it from the model). Default "automobile".
---@class fx.Vehicle : fx.Entity
---@field handle integer Raw entity handle.
---@field exists boolean (read-only) DOES_ENTITY_EXIST. Never raises, even on a deleted entity or in debug mode.
---@field states fx.VehicleStates Entity state bag (`entity:<netId>`); `states.x = v` is replicated to every client.
---@field state fx.VehicleStates Alias of `states` (`Entity(h).state` compatibility).
---@field attachedTo? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO] Gets the entity that this entity is attached to.
---@field bodyHealth number [GET_VEHICLE_BODY_HEALTH / SET_VEHICLE_BODY_HEALTH]
---@field collisionDisabled boolean (read-only) [GET_ENTITY_COLLISION_DISABLED]
---@field dirtLevel number [GET_VEHICLE_DIRT_LEVEL / SET_VEHICLE_DIRT_LEVEL]
---@field doesBoatSinkWhenWrecked boolean (read-only) [DOES_BOAT_SINK_WHEN_WRECKED]
---@field doesTrainStopAtStations boolean (read-only) [DOES_TRAIN_STOP_AT_STATIONS]
---@field doorLockStatus integer (read-only) [GET_VEHICLE_DOOR_LOCK_STATUS] It should be [noted](https://forum.cfx.re/t/4863241) that while the [client-side command](#\_0x25BC98A59C2EA962) and its setter distinguish between states 0 (u…
---@field doorsLockedForPlayer integer (read-only) [GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER] Currently it only works when set to "all players".
---@field engineHealth number (read-only) [GET_VEHICLE_ENGINE_HEALTH]
---@field firstOwner integer (read-only) [NETWORK_GET_FIRST_ENTITY_OWNER] Returns the first owner ID of the specified entity.
---@field flightNozzlePosition number (read-only) [GET_VEHICLE_FLIGHT_NOZZLE_POSITION] Gets the flight nozzel position for the specified vehicle. See the client-side [\_GET_VEHICLE_FLIGHT_NOZZLE_POSITION](#\_0xDA62027C8BDB326E) native for usage e…
---@field handbrake boolean (read-only) [GET_VEHICLE_HANDBRAKE]
---@field hasBeenDamagedByBullets boolean (read-only) [HAS_VEHICLE_BEEN_DAMAGED_BY_BULLETS]
---@field hasBeenOwnedByPlayer boolean (read-only) [HAS_VEHICLE_BEEN_OWNED_BY_PLAYER]
---@field hasEntityBeenMarkedAsNoLongerNeeded boolean (read-only) [HAS_ENTITY_BEEN_MARKED_AS_NO_LONGER_NEEDED]
---@field heading number [GET_ENTITY_HEADING / SET_ENTITY_HEADING]
---@field headlightsColour integer (read-only) [GET_VEHICLE_HEADLIGHTS_COLOUR]
---@field health integer (read-only) [GET_ENTITY_HEALTH] Only works for vehicle and peds
---@field heliBodyHealth integer (read-only) [GET_HELI_BODY_HEALTH] **Note** This native will always return `1000.0` unless [SET_VEHICLE_BODY_HEALTH](#\_0xB77D05AC8C78AADB), [SET_VEHICLE_ENGINE_HEALTH](#\_0x45F6D8EEF34ABEF1), o…
---@field heliDisableExplodeFromBodyDamage boolean (read-only) [GET_HELI_DISABLE_EXPLODE_FROM_BODY_DAMAGE] This is a getter for [SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE](#\_0xEDBC8405B3895CC9)
---@field heliEngineHealth integer (read-only) [GET_HELI_ENGINE_HEALTH] **Note** This native will always return `1000.0` unless [SET_VEHICLE_BODY_HEALTH](#\_0xB77D05AC8C78AADB), [SET_VEHICLE_ENGINE_HEALTH](#\_0x45F6D8EEF34ABEF1), o…
---@field heliGasTankHealth integer (read-only) [GET_HELI_GAS_TANK_HEALTH] **Note** This native will always return `1000.0` unless [SET_VEHICLE_BODY_HEALTH](#\_0xB77D05AC8C78AADB), [SET_VEHICLE_ENGINE_HEALTH](#\_0x45F6D8EEF34ABEF1), o…
---@field heliMainRotorDamageScale number (read-only) [GET_HELI_MAIN_ROTOR_DAMAGE_SCALE]
---@field heliMainRotorHealth number (read-only) [GET_HELI_MAIN_ROTOR_HEALTH]
---@field heliPitchControl number (read-only) [GET_HELI_PITCH_CONTROL]
---@field heliRearRotorDamageScale number (read-only) [GET_HELI_REAR_ROTOR_DAMAGE_SCALE]
---@field heliRearRotorHealth number (read-only) [GET_HELI_REAR_ROTOR_HEALTH] This native is a getter for [SET_HELI_TAIL_ROTOR_HEALTH](#\_0xFE205F38AAA58E5B)
---@field heliRollControl number (read-only) [GET_HELI_ROLL_CONTROL]
---@field heliTailRotorDamageScale number (read-only) [GET_HELI_TAIL_ROTOR_DAMAGE_SCALE]
---@field heliThrottleControl number (read-only) [GET_HELI_THROTTLE_CONTROL]
---@field heliYawControl number (read-only) [GET_HELI_YAW_CONTROL]
---@field homingLockonState integer (read-only) [GET_VEHICLE_HOMING_LOCKON_STATE] Gets the lock on state for the specified vehicle. See the client-side [GET_VEHICLE_HOMING_LOCKON_STATE](#\_0xE6B0E8CFC3633BF0) native for a description of lock…
---@field hornType fx.Enum.HornTypes (read-only) [GET_VEHICLE_HORN_TYPE] This is a getter for the client-side native [`START_VEHICLE_HORN`](#\_0x9C8C6504B5B63D2C), which allows you to return the horn type of the vehicle. **Note**: T…
---@field isBoatAnchoredAndFrozen boolean (read-only) [IS_BOAT_ANCHORED_AND_FROZEN]
---@field isBoatWrecked boolean (read-only) [IS_BOAT_WRECKED]
---@field isEngineRunning boolean (read-only) [GET_IS_VEHICLE_ENGINE_RUNNING]
---@field isEngineStarting boolean (read-only) [IS_VEHICLE_ENGINE_STARTING]
---@field isHeliEngineRunning boolean (read-only) [GET_IS_HELI_ENGINE_RUNNING]
---@field isHeliTailBoomBreakable boolean (read-only) [IS_HELI_TAIL_BOOM_BREAKABLE] This is a getter for [SET_HELI_TAIL_EXPLODE_THROW_DASHBOARD](#\_0x3EC8BF18AA453FE9)
---@field isHeliTailBoomBroken boolean (read-only) [IS_HELI_TAIL_BOOM_BROKEN]
---@field isPositionFrozen boolean (read-only) [IS_ENTITY_POSITION_FROZEN] A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---@field isPrimaryColourCustom boolean (read-only) [GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM]
---@field isSecondaryColourCustom boolean (read-only) [GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM]
---@field isSirenOn boolean (read-only) [IS_VEHICLE_SIREN_ON]
---@field isTrainCaboose boolean (read-only) [IS_TRAIN_CABOOSE]
---@field isVisible boolean (read-only) [IS_ENTITY_VISIBLE] This native checks if the given entity is visible.
---@field landingGearState integer (read-only) [GET_LANDING_GEAR_STATE] See the client-side [GET_LANDING_GEAR_STATE](#\_0x9B0F3DCA3DB0F4CD) native for a description of landing gear states.
---@field livery integer (read-only) [GET_VEHICLE_LIVERY]
---@field lockOnTarget? fx.Vehicle (read-only) [GET_VEHICLE_LOCK_ON_TARGET] Gets the vehicle that is locked on to for the specified vehicle.
---@field maxHealth integer (read-only) [GET_ENTITY_MAX_HEALTH] Currently it only works with peds.
---@field model fx.Model (read-only) [GET_ENTITY_MODEL]
---@field netType fx.Enum.NetObjEntityType (read-only) [GET_NET_TYPE_FROM_ENTITY] Gets the specific entity type (as an integer), which can be one of the following defined down below: #### FiveM: #### RedM:
---@field networkId integer (read-only) [NETWORK_GET_NETWORK_ID_FROM_ENTITY]
---@field numberPlateText string [GET_VEHICLE_NUMBER_PLATE_TEXT / SET_VEHICLE_NUMBER_PLATE_TEXT]
---@field numberPlateTextIndex fx.Enum.VehiclePlateIndicies (read-only) [GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX]
---@field orphanMode integer [GET_ENTITY_ORPHAN_MODE / SET_ENTITY_ORPHAN_MODE]
---@field owner integer (read-only) [NETWORK_GET_ENTITY_OWNER] Returns the owner ID of the specified entity.
---@field petrolTankHealth number (read-only) [GET_VEHICLE_PETROL_TANK_HEALTH]
---@field populationType integer (read-only) [GET_ENTITY_POPULATION_TYPE] This native gets an entity's population type.
---@field position vector3 [GET_ENTITY_COORDS / SET_ENTITY_COORDS] Entity position. Assigning calls SET_ENTITY_COORDS without flags; use setCoords for the flags. Gets the current coordinates for a specified entity. This native…
---@field radioStationIndex integer (read-only) [GET_VEHICLE_RADIO_STATION_INDEX]
---@field remoteSyncedScenesAllowed boolean [GET_ENTITY_REMOTE_SYNCED_SCENES_ALLOWED / SET_ENTITY_REMOTE_SYNCED_SCENES_ALLOWED]
---@field roofLivery integer (read-only) [GET_VEHICLE_ROOF_LIVERY]
---@field rotation vector3 (read-only) [GET_ENTITY_ROTATION]
---@field rotationVelocity vector3 (read-only) [GET_ENTITY_ROTATION_VELOCITY]
---@field routingBucket integer [GET_ENTITY_ROUTING_BUCKET / SET_ENTITY_ROUTING_BUCKET] Gets the routing bucket for the specified entity. Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are populatio…
---@field script string (read-only) [GET_ENTITY_SCRIPT]
---@field speed number (read-only) [GET_ENTITY_SPEED] Gets the current speed of the entity in meters per second.
---@field steeringAngle number (read-only) [GET_VEHICLE_STEERING_ANGLE]
---@field thrusterSideRcsThrottle number (read-only) [GET_THRUSTER_SIDE_RCS_THROTTLE]
---@field thrusterThrottle number (read-only) [GET_THRUSTER_THROTTLE]
---@field totalRepairs integer (read-only) [GET_VEHICLE_TOTAL_REPAIRS]
---@field trainBackwardCarriage integer (read-only) [GET_TRAIN_BACKWARD_CARRIAGE]
---@field trainCarriageEngine integer (read-only) [GET_TRAIN_CARRIAGE_ENGINE]
---@field trainCarriageIndex integer (read-only) [GET_TRAIN_CARRIAGE_INDEX]
---@field trainCruiseSpeed number (read-only) [GET_TRAIN_CRUISE_SPEED] Gets the trains desired speed.
---@field trainDirection boolean (read-only) [GET_TRAIN_DIRECTION] Gets the direction the train is facing
---@field trainForwardCarriage integer (read-only) [GET_TRAIN_FORWARD_CARRIAGE]
---@field trainState integer (read-only) [GET_TRAIN_STATE]
---@field trainTrackIndex integer (read-only) [GET_TRAIN_TRACK_INDEX]
---@field type integer (read-only) [GET_ENTITY_TYPE] Gets the entity type (as an integer), which can be one of the following defined down below: **The following entities will return type `1`:** * Ped * Player * A…
---@field vehicleType string (read-only) [GET_VEHICLE_TYPE] Returns the type of the passed vehicle. For client scripts, reference the more detailed [GET_VEHICLE_TYPE_RAW](#\_0xDE73BC10) native. ### Vehicle types * autom…
---@field velocity vector3 [GET_ENTITY_VELOCITY / SET_ENTITY_VELOCITY]
---@field wheelType fx.Enum.VehicleWheelType (read-only) [GET_VEHICLE_WHEEL_TYPE]
---@field windowTint fx.Enum.WindowTints (read-only) [GET_VEHICLE_WINDOW_TINT]
local Vehicle = {}

---Promise resolved with the entity once it exists and, unless `waitOwner == false`, has a network owner
---(owner stays -1 until a player is in scope). Rejects with a TimeoutError after `timeoutMs` (default 10000).
---@param timeoutMs? integer
---@param waitOwner? boolean default true
---@return fx.Promise<fx.Vehicle>
function Vehicle:readyAsync(timeoutMs, waitOwner) end

---Escape hatch: calls any native with the handle as first argument.
---@param hash integer
---@param ... any
---@return any
function Vehicle:invoke(hash, ...) end

--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
--- Can be used for objects, vehicles and peds.
--- Example of enemy:
--- ![enemy](https://i.imgur.com/LIizV6S.png)
--- Example of friend:
--- ![friend](https://i.imgur.com/XrCuvZP.png)
---
--- **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_ENTITY](?\_0x5CDE92C702A8FCE7).**
--- **Native**: `ADD_BLIP_FOR_ENTITY` (`0x30822554`)
---@return fx.Blip? result A blip.
function Vehicle:addBlip() end

--- ```cpp
--- enum eApplyForceTypes {
--- APPLY_TYPE_FORCE = 0,
--- APPLY_TYPE_IMPULSE = 1,
--- APPLY_TYPE_EXTERNAL_FORCE = 2,
--- APPLY_TYPE_EXTERNAL_IMPULSE = 3,
--- APPLY_TYPE_TORQUE = 4,
--- APPLY_TYPE_ANGULAR_IMPULSE = 5
--- }
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [APPLY_FORCE_TO_ENTITY](?\_0xC5F68BE9613E2D18).**
--- **Native**: `APPLY_FORCE_TO_ENTITY` (`0xC1C0855A`)
---@param forceType fx.Enum.ApplyForceTypes|integer The force type
---@param coords vector3 The component of the force to apply
---@param off vector3 Offset from center of entity ()
---@param nComponent integer Component of the entity to apply the force too. Only matters for breakable or articulated (ragdoll) physics. 0 means the root or parent component
---@param bLocalForce boolean Specifies whether the force vector passed in is in local or world coordinates. `true` means the force will get automatically transformed into world space before being applied
---@param bLocalOffset boolean Specifies whether the offset passed in is in local or world coordinates
---@param bScaleByMass boolean Specifies whether to scale the force by mass
---@param bPlayAudio boolean Specifies whether to play audio events related to the force being applied. The audio will depend on the entity type. Currently vehicles are the only entity types supported, and will play a suspension…
---@param bScaleByTimeWarp boolean Specifies whether to scale the force by time warp. Default is `true`
---@return fx.Vehicle self
function Vehicle:applyForce(forceType, coords, off, nComponent, bLocalForce, bLocalOffset, bScaleByMass, bPlayAudio, bScaleByTimeWarp) end

--- CREATE_PED_INSIDE_VEHICLE
---
--- **This is the server-side RPC native equivalent of the client native [CREATE_PED_INSIDE_VEHICLE](?\_0x7DD959874C1FD534).**
--- **Native**: `CREATE_PED_INSIDE_VEHICLE` (`0x3000F092`)
---@param pedType integer See [`CREATE_PED`](#\_0xD49F9B0955C367DE)
---@param modelHash fx.Model|integer|string
---@param seat fx.Enum.SeatPosition|integer
---@param isNetwork boolean
---@param bScriptHostPed boolean
---@return fx.Ped? result
function Vehicle:createPedInside(pedType, modelHash, seat, isNetwork, bScriptHostPed) end

--- Deletes the specified entity.
---
--- **NOTE**: For trains this will only work if called on the train engine, it will not work on its carriages.
--- **Native**: `DELETE_ENTITY` (`0xFAA3D236`)
---@return nil
function Vehicle:delete() end

--- Deletes the specified `entity` and any carriage its attached to, or that is attached to it.
--- **Native**: `DELETE_TRAIN` (`0x523BA3DA`)
---@return fx.Vehicle self
function Vehicle:deleteTrain() end

--- Internal function for ensuring an entity has a state bag.
--- **Native**: `ENSURE_ENTITY_STATE_BAG` (`0x3BB78F05`)
---@return fx.Vehicle self
function Vehicle:ensureStateBag() end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
---
--- **This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](?\_0x428CA6DBD1094446).**
--- **Native**: `FREEZE_ENTITY_POSITION` (`0x65C16D57`)
---@param toggle boolean Freeze or unfreeze entity.
---@return fx.Vehicle self
function Vehicle:freeze(toggle) end

--- **Native**: `GET_VEHICLE_COLOURS` (`0x40D82D88`)
---@return integer colorPrimary
---@return integer colorSecondary
function Vehicle:getColours() end

--- **Native**: `GET_VEHICLE_CUSTOM_PRIMARY_COLOUR` (`0x1C2B9FEF`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getCustomPrimaryColour() end

--- **Native**: `GET_VEHICLE_CUSTOM_SECONDARY_COLOUR` (`0x3FF247A2`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getCustomSecondaryColour() end

--- **Native**: `GET_VEHICLE_DASHBOARD_COLOUR` (`0xA0DBD08D`)
---@param color integer
---@return integer color
function Vehicle:getDashboardColour(color) end

--- Returns the open position of the specified door on the target vehicle.
--- **Native**: `GET_VEHICLE_DOOR_STATUS` (`0x6E35C49C`)
---@param doorIndex integer Index of door to check (0-6).
---@return integer result A number from 0 to 7.
function Vehicle:getDoorStatus(doorIndex) end

--- **Native**: `GET_VEHICLE_EXTRA_COLOURS` (`0x80E4659B`)
---@return integer pearlescentColor
---@return integer wheelColor
function Vehicle:getExtraColours() end

--- **Native**: `GET_VEHICLE_INTERIOR_COLOUR` (`0xCCFF3B6E`)
---@param color integer
---@return integer color
function Vehicle:getInteriorColour(color) end

--- **Native**: `GET_LAST_PED_IN_VEHICLE_SEAT` (`0xF7C6792D`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return fx.Ped? result The last ped in the specified seat of the passed vehicle. Returns nil if the specified seat was never occupied or the last ped does not exist anymore.
function Vehicle:getLastPedInSeat(seatIndex) end

--- **Native**: `GET_VEHICLE_LIGHTS_STATE` (`0x7C278621`)
---@return boolean result
---@return boolean lightsOn
---@return boolean highbeamsOn
function Vehicle:getLightsState() end

--- Getter to check the neon colour of a vehicle. This native is the server side getter of [GET_VEHICLE_NEON_LIGHTS_COLOUR](#\_0x7619EEE8C886757F).
--- **Native**: `GET_VEHICLE_NEON_COLOUR` (`0xD9319DCB`)
---@return integer red Pointer to an integer where the red component of the neon color will be stored.
---@return integer green Pointer to an integer where the green component of the neon color will be stored.
---@return integer blue Pointer to an integer where the blue component of the neon color will be stored.
function Vehicle:getNeonColour() end

--- Getter to check if one of the neon lights of a vehicle is enabled. This native is the server side getter of [IS_VEHICLE_NEON_LIGHT_ENABLED](#\_0x8C4B92553E4766A5).
---
--- ```cpp
--- enum neonIndex
--- {
---     NEON_BACK = 0,   // Back neon
---     NEON_RIGHT = 1,  // Right neon
---     NEON_LEFT = 2,   // Left neon
---     NEON_FRONT = 3   // Front neon
--- };
--- ```
--- **Native**: `GET_VEHICLE_NEON_ENABLED` (`0x684BDBF2`)
---@param neonIndex fx.Enum.neonIndex|integer A value from the neonIndex enum representing the neon light to check.
---@return boolean result Returns `true` if the specified neon light is enabled, `false` otherwise.
function Vehicle:getNeonEnabled(neonIndex) end

--- **Native**: `GET_PED_IN_VEHICLE_SEAT` (`0x388FDE9A`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return fx.Ped? result The ped in the specified seat of the passed vehicle. Returns nil if the specified seat is not occupied.
function Vehicle:getPedInSeat(seatIndex) end

--- **Native**: `GET_VEHICLE_TYRE_SMOKE_COLOR` (`0x75280015`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getTyreSmokeColor() end

--- **Native**: `IS_VEHICLE_EXTRA_TURNED_ON` (`0x42098B5`)
---@param extraId integer
---@return boolean result
function Vehicle:isExtraTurnedOn(extraId) end

--- **Native**: `IS_VEHICLE_TYRE_BURST` (`0x48C80210`)
---@param wheelID fx.Enum.VehicleWheels|integer
---@param completely boolean
---@return boolean result
function Vehicle:isTyreBurst(wheelID, completely) end

--- See the client-side [IS_VEHICLE_WINDOW_INTACT](#\_0x46E571A0E20D01F1) for a window indexes list.
--- **Native**: `IS_VEHICLE_WINDOW_INTACT` (`0xAC4EF23D`)
---@param windowIndex fx.Enum.WindowId|integer The window index.
---@return boolean result
function Vehicle:isWindowIntact(windowIndex) end

--- SET_VEHICLE_ALARM
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_ALARM](?\_0xCDE5E70C1DDB954C).**
--- **Native**: `SET_VEHICLE_ALARM` (`0x24877D84`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setAlarm(state) end

--- Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
--- Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOUR_COMBINATION](?\_0x33E8CD3322E2FE31).**
--- **Native**: `SET_VEHICLE_COLOUR_COMBINATION` (`0xA557AEAD`)
---@param colorCombination integer One of the default color values of the vehicle.
---@return fx.Vehicle self
function Vehicle:setColourCombination(colorCombination) end

--- colorPrimary & colorSecondary are the paint indexes for the vehicle.
--- For a list of valid paint indexes, view: pastebin.com/pwHci0xK
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOURS](?\_0x4F1D4BE3A7F24601).**
--- **Native**: `SET_VEHICLE_COLOURS` (`0x57F24253`)
---@param colorPrimary integer
---@param colorSecondary integer
---@return fx.Vehicle self
function Vehicle:setColours(colorPrimary, colorSecondary) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
---
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](?\_0x06843DA7060A026B).**
--- **Native**: `SET_ENTITY_COORDS` (`0xDF70B41B`)
---@param pos vector3 The X coordinate. / The Y coordinate. / The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
---@return fx.Vehicle self
function Vehicle:setCoords(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- ```
--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_PRIMARY_COLOUR](?\_0x7141766F91D15BEA).**
--- **Native**: `SET_VEHICLE_CUSTOM_PRIMARY_COLOUR` (`0x8DF9F9BC`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Vehicle self
function Vehicle:setCustomPrimaryColour(r, g, b) end

--- ```
--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_SECONDARY_COLOUR](?\_0x36CED73BFED89754).**
--- **Native**: `SET_VEHICLE_CUSTOM_SECONDARY_COLOUR` (`0x9D77259E`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Vehicle self
function Vehicle:setCustomSecondaryColour(r, g, b) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOOR_BROKEN](?\_0xD4D4F6A4AB575A33).**
--- **Native**: `SET_VEHICLE_DOOR_BROKEN` (`0x8147FEA7`)
---@param doorIndex integer
---@param deleteDoor boolean
---@return fx.Vehicle self
function Vehicle:setDoorBroken(doorIndex, deleteDoor) end

--- Locks the doors of a specified vehicle to a defined lock state, affecting how players and NPCs can interact with the vehicle.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- ```cpp
--- enum eVehicleLockState {
--- // No specific lock state, vehicle behaves according to the game's default settings.
--- VEHICLELOCK_NONE = 0,
--- // Vehicle is fully unlocked, allowing free entry by players and NPCs.
--- VEHICLELOCK_UNLOCKED = 1,
--- // Vehicle is locked, preventing entry by players and NPCs.
--- VEHICLELOCK_LOCKED = 2,
--- // Vehicle locks out only players, allowing NPCs to enter.
--- VEHICLELOCK_LOCKOUT_PLAYER_ONLY = 3,
--- // Vehicle is locked once a player enters, preventing others from entering.
--- VEHICLELOCK_LOCKED_PLAYER_INSIDE = 4,
--- // Vehicle starts in a locked state, but may be unlocked through game events.
--- VEHICLELOCK_LOCKED_INITIALLY = 5,
--- // Forces the vehicle's doors to shut and lock.
--- VEHICLELOCK_FORCE_SHUT_DOORS = 6,
--- // Vehicle is locked but can still be damaged.
--- VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7,
--- // Vehicle is locked, but its trunk/boot remains unlocked.
--- VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED = 8,
--- // Vehicle is locked and does not allow passengers, except for the driver.
--- VEHICLELOCK_LOCKED_NO_PASSENGERS = 9,
--- // Vehicle is completely locked, preventing entry entirely, even if previously inside.
--- VEHICLELOCK_CANNOT_ENTER = 10
--- };
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOORS_LOCKED](?\_0xB664292EAECF7FA6).**
--- **Native**: `SET_VEHICLE_DOORS_LOCKED` (`0x4CDD35D0`)
---@param doorLockStatus fx.Enum.VehicleLockState|integer The lock state to apply to the vehicle's doors, see `eVehicleLockState`.
---@return fx.Vehicle self
function Vehicle:setDoorsLocked(doorLockStatus) end

--- It allows to flag an entity to ignore the request control filter policy.
--- **Native**: `SET_ENTITY_IGNORE_REQUEST_CONTROL_FILTER` (`0x9F7F8D36`)
---@param ignore boolean Define if the entity ignores the request control filter policy.
---@return fx.Vehicle self
function Vehicle:setIgnoreRequestControlFilter(ignore) end

--- Sets the rotation of a specified entity in the game world.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_ROTATION](?\_0x8524A8B0171D5E07).**
--- **Native**: `SET_ENTITY_ROTATION` (`0xA345EFE`)
---@param pitch number The pitch (X-axis) rotation in degrees.
---@param roll number The roll (Y-axis) rotation in degrees.
---@param yaw number The yaw (Z-axis) rotation in degrees.
---@param rotationOrder fx.Enum.RotationOrder|integer Specifies the order in which yaw, pitch, and roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9) for the available rotation orders.
---@param bDeadCheck boolean Usually set to `true`. Determines whether to check if the entity is dead before applying the rotation.
---@return fx.Vehicle self
function Vehicle:setRotation(pitch, roll, yaw, rotationOrder, bDeadCheck) end

--- TASK_EVERYONE_LEAVE_VEHICLE
---
--- **This is the server-side RPC native equivalent of the client native [TASK_EVERYONE_LEAVE_VEHICLE](?\_0x7F93691AB4B92272).**
--- **Native**: `TASK_EVERYONE_LEAVE_VEHICLE` (`0xC1971F30`)
---@return fx.Vehicle self
function Vehicle:taskEveryoneLeave() end

--- ```
--- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
--- Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
--- Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
--- Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_GO_TO_ENTITY](?\_0x6A071245EB0D1882).**
--- **Native**: `TASK_GO_TO_ENTITY` (`0x374827C2`)
---@param target fx.Entity|integer
---@param duration integer
---@param distance number
---@param speed number
---@param p5 number
---@param p6 integer
---@return fx.Vehicle self
function Vehicle:taskGoToEntity(target, duration, distance, speed, p5, p6) end

--- ```
--- //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
--- Entity aimedentity;
--- Player player = PLAYER::PLAYER_ID();
--- PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);
--- //bg is an array of peds
--- TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
--- in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_ENTITY](?\_0x08DA95E8298AE772).**
--- **Native**: `TASK_SHOOT_AT_ENTITY` (`0xAC0631C9`)
---@param target fx.Entity|integer
---@param duration integer
---@param firingPattern integer|string
---@return fx.Vehicle self
function Vehicle:taskShootAtEntity(target, duration, firingPattern) end

---@class fx.VehicleStatic
---@overload fun(handle: integer): fx.Vehicle?
local VehicleStatic = {}

---Creates the vehicle (CREATE_VEHICLE_SERVER_SETTER) then waits for `readyAsync()` (exists + network owner).
---Never yields. Rejects if the creation fails or on timeout.
---@param model fx.Model|integer|string
---@param position vector3|vector4 vector4: `w` is used as heading when `heading` is nil
---@param heading? number
---@param options? fx.ServerVehicleCreateOptions
---@return fx.Promise<fx.Vehicle>
function VehicleStatic.createAsync(model, position, heading, options) end

---Raw version: immediate CREATE_VEHICLE_SERVER_SETTER; the entity exists at once but has no owner yet.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.ServerVehicleCreateOptions
---@return fx.Vehicle?
function VehicleStatic.createRaw(model, position, heading, options) end

--- True when value is an fx.Vehicle, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function VehicleStatic.is(value) end

--- Legacy RPC creation: the nearest client creates the entity; returns a temporary handle (0 without clients). Prefer Vehicle.createAsync.
---
--- Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
--- script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
--- ```
--- NativeDB Added Parameter 8: BOOL p7
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [CREATE_VEHICLE](?\_0xAF35D0D2583051B0).**
--- **Native**: `CREATE_VEHICLE` (`0xDD75460A`)
---@param modelHash fx.Model|integer|string The model of vehicle to spawn.
---@param coords vector3 Spawn coordinate component.
---@param heading number Heading to face towards, in degrees.
---@param isNetwork boolean Whether to create a network object for the vehicle. If false, the vehicle exists only locally.
---@param netMissionEntity boolean Whether to register the vehicle as pinned to the script host in the R\* network model.
---@return fx.Vehicle? result The vehicle, or nil if the vehicle failed to be created.
function VehicleStatic.createRpc(modelHash, coords, heading, isNetwork, netMissionEntity) end

