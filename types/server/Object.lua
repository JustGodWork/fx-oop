---@meta
---@diagnostic disable
-- fx.Object (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.ServerObjectCreateOptions : fx.ServerCreateOptions
---@field doorFlag? boolean Default false
---@class fx.Object : fx.Entity
---@field handle integer Raw entity handle.
---@field exists boolean (read-only) DOES_ENTITY_EXIST. Never raises, even on a deleted entity or in debug mode.
---@field states fx.ObjectStates Entity state bag (`entity:<netId>`); `states.x = v` is replicated to every client.
---@field state fx.ObjectStates Alias of `states` (`Entity(h).state` compatibility).
---@field attachedTo? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO] Gets the entity that this entity is attached to.
---@field collisionDisabled boolean (read-only) [GET_ENTITY_COLLISION_DISABLED]
---@field firstOwner integer (read-only) [NETWORK_GET_FIRST_ENTITY_OWNER] Returns the first owner ID of the specified entity.
---@field heading number [GET_ENTITY_HEADING / SET_ENTITY_HEADING]
---@field health integer (read-only) [GET_ENTITY_HEALTH] Only works for vehicle and peds
---@field isPositionFrozen boolean (read-only) [IS_ENTITY_POSITION_FROZEN] A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---@field isVisible boolean (read-only) [IS_ENTITY_VISIBLE] This native checks if the given entity is visible.
---@field maxHealth integer (read-only) [GET_ENTITY_MAX_HEALTH] Currently it only works with peds.
---@field model fx.Model (read-only) [GET_ENTITY_MODEL]
---@field netType fx.Enum.NetObjEntityType (read-only) [GET_NET_TYPE_FROM_ENTITY] Gets the specific entity type (as an integer), which can be one of the following defined down below: #### FiveM: #### RedM:
---@field networkId integer (read-only) [NETWORK_GET_NETWORK_ID_FROM_ENTITY]
---@field orphanMode integer [GET_ENTITY_ORPHAN_MODE / SET_ENTITY_ORPHAN_MODE]
---@field owner integer (read-only) [NETWORK_GET_ENTITY_OWNER] Returns the owner ID of the specified entity.
---@field populationType integer (read-only) [GET_ENTITY_POPULATION_TYPE] This native gets an entity's population type.
---@field position vector3 [GET_ENTITY_COORDS / SET_ENTITY_COORDS] Entity position. Assigning calls SET_ENTITY_COORDS without flags; use setCoords for the flags. Gets the current coordinates for a specified entity. This native…
---@field remoteSyncedScenesAllowed boolean [GET_ENTITY_REMOTE_SYNCED_SCENES_ALLOWED / SET_ENTITY_REMOTE_SYNCED_SCENES_ALLOWED]
---@field rotation vector3 (read-only) [GET_ENTITY_ROTATION]
---@field rotationVelocity vector3 (read-only) [GET_ENTITY_ROTATION_VELOCITY]
---@field routingBucket integer [GET_ENTITY_ROUTING_BUCKET / SET_ENTITY_ROUTING_BUCKET] Gets the routing bucket for the specified entity. Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are populatio…
---@field script string (read-only) [GET_ENTITY_SCRIPT]
---@field speed number (read-only) [GET_ENTITY_SPEED] Gets the current speed of the entity in meters per second.
---@field type integer (read-only) [GET_ENTITY_TYPE] Gets the entity type (as an integer), which can be one of the following defined down below: **The following entities will return type `1`:** * Ped * Player * A…
---@field velocity vector3 [GET_ENTITY_VELOCITY / SET_ENTITY_VELOCITY]
local Object = {}

---Promise resolved with the entity once it exists and, unless `waitOwner == false`, has a network owner
---(owner stays -1 until a player is in scope). Rejects with a TimeoutError after `timeoutMs` (default 10000).
---@param timeoutMs? integer
---@param waitOwner? boolean default true
---@return fx.Promise<fx.Object>
function Object:readyAsync(timeoutMs, waitOwner) end

---Escape hatch: calls any native with the handle as first argument.
---@param hash integer
---@param ... any
---@return any
function Object:invoke(hash, ...) end

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
function Object:addBlip() end

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
---@return fx.Object self
function Object:applyForce(forceType, coords, off, nComponent, bLocalForce, bLocalOffset, bScaleByMass, bPlayAudio, bScaleByTimeWarp) end

--- Deletes the specified entity.
---
--- **NOTE**: For trains this will only work if called on the train engine, it will not work on its carriages.
--- **Native**: `DELETE_ENTITY` (`0xFAA3D236`)
---@return nil
function Object:delete() end

--- Deletes the specified `entity` and any carriage its attached to, or that is attached to it.
--- **Native**: `DELETE_TRAIN` (`0x523BA3DA`)
---@return fx.Object self
function Object:deleteTrain() end

--- Internal function for ensuring an entity has a state bag.
--- **Native**: `ENSURE_ENTITY_STATE_BAG` (`0x3BB78F05`)
---@return fx.Object self
function Object:ensureStateBag() end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
---
--- **This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](?\_0x428CA6DBD1094446).**
--- **Native**: `FREEZE_ENTITY_POSITION` (`0x65C16D57`)
---@param toggle boolean Freeze or unfreeze entity.
---@return fx.Object self
function Object:freeze(toggle) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
---
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](?\_0x06843DA7060A026B).**
--- **Native**: `SET_ENTITY_COORDS` (`0xDF70B41B`)
---@param pos vector3 The X coordinate. / The Y coordinate. / The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
---@return fx.Object self
function Object:setCoords(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- It allows to flag an entity to ignore the request control filter policy.
--- **Native**: `SET_ENTITY_IGNORE_REQUEST_CONTROL_FILTER` (`0x9F7F8D36`)
---@param ignore boolean Define if the entity ignores the request control filter policy.
---@return fx.Object self
function Object:setIgnoreRequestControlFilter(ignore) end

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
---@return fx.Object self
function Object:setRotation(pitch, roll, yaw, rotationOrder, bDeadCheck) end

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
---@return fx.Object self
function Object:taskGoToEntity(target, duration, distance, speed, p5, p6) end

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
---@return fx.Object self
function Object:taskShootAtEntity(target, duration, firingPattern) end

---@class fx.ObjectStatic
---@overload fun(handle: integer): fx.Object?
local ObjectStatic = {}

---Creates the object (CREATE_OBJECT_NO_OFFSET server setter) then waits for `readyAsync()`. Never yields.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.ServerObjectCreateOptions
---@return fx.Promise<fx.Object>
function ObjectStatic.createAsync(model, position, heading, options) end

---Raw version: immediate CREATE_OBJECT_NO_OFFSET server setter (heading applied afterwards).
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.ServerObjectCreateOptions
---@return fx.Object?
function ObjectStatic.createRaw(model, position, heading, options) end

--- True when value is an fx.Object, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function ObjectStatic.is(value) end

--- Legacy RPC creation: the nearest client creates the entity; returns a temporary handle (0 without clients). Prefer Object.createAsync.
---
--- Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
--- This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
---
--- **This is the server-side RPC native equivalent of the client native [CREATE_OBJECT](?\_0x509D5878EB39E842).**
--- **Native**: `CREATE_OBJECT` (`0x2F7AA05C`)
---@param modelHash fx.Model|integer|string The model to spawn.
---@param coords vector3 Spawn coordinate X component. / Spawn coordinate Y component. / Spawn coordinate Z component, 'ground level'.
---@param isNetwork boolean Whether to create a network object for the object. If false, the object exists only locally.
---@param netMissionEntity boolean Whether to register the object as pinned to the script host in the R\* network model.
---@param doorFlag boolean False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.
---@return fx.Object? result The object, or nil if the object failed to be created.
function ObjectStatic.createRpc(modelHash, coords, isNetwork, netMissionEntity, doorFlag) end

