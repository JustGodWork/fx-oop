---@meta
---@diagnostic disable
-- fx.Entity (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.TeleportOptions
---@field ground? boolean Put the entity on the ground under the position (its z then only guides the search)
---@field heading? number Default: the w of a vector4, else unchanged
---@field timeout? integer Default 10000
---@class fx.Entity
---@field handle integer Raw entity handle.
---@field exists boolean (read-only) DOES_ENTITY_EXIST. Never raises, even on a deleted entity or in debug mode.
---@field states fx.EntityStates Entity state bag (`entity:<netId>`; requires a networked entity, error in debug mode otherwise).
---@field state fx.EntityStates Alias of `states` (`Entity(h).state` compatibility).
---@field address any (read-only) [GET_ENTITY_ADDRESS] **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning. Returns the memory address of an entity. This native i…
---@field alpha integer (read-only) [GET_ENTITY_ALPHA]
---@field archetypeName string (read-only) [GET_ENTITY_ARCHETYPE_NAME] Returns entity's archetype name, if available.
---@field attachedTo? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO]
---@field blip? fx.Blip (read-only) [GET_BLIP_FROM_ENTITY]
---@field boneCount integer (read-only) [GET_ENTITY_BONE_COUNT]
---@field canBeDamaged boolean (read-only) [GET_ENTITY_CAN_BE_DAMAGED]
---@field cgoffset vector3 [GET_CGOFFSET / SET_CGOFFSET]
---@field collisionDisabled boolean (read-only) [GET_ENTITY_COLLISION_DISABLED]
---@field collisionNormalOfLastHit vector3 (read-only) [GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY]
---@field doesHaveAnimDirector boolean (read-only) [DOES_ENTITY_HAVE_ANIM_DIRECTOR]
---@field doesHaveDrawable boolean (read-only) [DOES_ENTITY_HAVE_DRAWABLE]
---@field doesHavePhysics boolean (read-only) [DOES_ENTITY_HAVE_PHYSICS]
---@field doesHaveSkeletonData boolean (read-only) [DOES_ENTITY_HAVE_SKELETON_DATA]
---@field forwardVector vector3 (read-only) [GET_ENTITY_FORWARD_VECTOR]
---@field forwardX number (read-only) [GET_ENTITY_FORWARD_X]
---@field forwardY number (read-only) [GET_ENTITY_FORWARD_Y]
---@field hasBeenDamagedByAnyObject boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT]
---@field hasBeenDamagedByAnyPed boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED]
---@field hasBeenDamagedByAnyVehicle boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE]
---@field hasBeenRegisteredWithThisThread boolean (read-only) [NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD]
---@field hasCollidedWithAnything boolean (read-only) [HAS_ENTITY_COLLIDED_WITH_ANYTHING]
---@field hasCollisionLoadedAround boolean (read-only) [HAS_COLLISION_LOADED_AROUND_ENTITY]
---@field hasControl boolean (read-only) [NETWORK_HAS_CONTROL_OF_ENTITY]
---@field heading number [GET_ENTITY_HEADING / SET_ENTITY_HEADING]
---@field headingFromEulers number (read-only) [GET_ENTITY_HEADING_FROM_EULERS] Gets the heading of the entity physics in degrees, which tends to be more accurate than just [`GET_ENTITY_HEADING`](#\_0xE83D4F9BA2A38914). This can be clearly…
---@field health integer [GET_ENTITY_HEALTH / SET_ENTITY_HEALTH]
---@field heightAboveGround number (read-only) [GET_ENTITY_HEIGHT_ABOVE_GROUND]
---@field interior? fx.Interior (read-only) [GET_INTERIOR_FROM_ENTITY]
---@field invincible boolean (write-only) [SET_ENTITY_INVINCIBLE]
---@field isAMissionEntity boolean (read-only) [IS_ENTITY_A_MISSION_ENTITY]
---@field isAnObject boolean (read-only) [IS_ENTITY_AN_OBJECT]
---@field isAPed boolean (read-only) [IS_ENTITY_A_PED]
---@field isAttached boolean (read-only) [IS_ENTITY_ATTACHED]
---@field isAttachedToAnyObject boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_OBJECT]
---@field isAttachedToAnyPed boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_PED]
---@field isAttachedToAnyVehicle boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_VEHICLE]
---@field isAVehicle boolean (read-only) [IS_ENTITY_A_VEHICLE]
---@field isConcealed boolean (read-only) [NETWORK_IS_ENTITY_CONCEALED] Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
---@field isDead boolean (read-only) [IS_ENTITY_DEAD]
---@field isFading boolean (read-only) [NETWORK_IS_ENTITY_FADING]
---@field isFocus boolean (read-only) [IS_ENTITY_FOCUS]
---@field isGhostedToLocalPlayer boolean (read-only) [IS_ENTITY_GHOSTED_TO_LOCAL_PLAYER]
---@field isInAir boolean (read-only) [IS_ENTITY_IN_AIR]
---@field isInWater boolean (read-only) [IS_ENTITY_IN_WATER]
---@field isLocal boolean (read-only) [NETWORK_GET_ENTITY_IS_LOCAL]
---@field isNetworked boolean (read-only) [NETWORK_GET_ENTITY_IS_NETWORKED]
---@field isOccluded boolean (read-only) [IS_ENTITY_OCCLUDED]
---@field isOnFire boolean (read-only) [IS_ENTITY_ON_FIRE]
---@field isOnScreen boolean (read-only) [IS_ENTITY_ON_SCREEN] Determines whether the screen position of the specified entity is within the 2D bounds of the screen. This native will not check if the entity is not visible d…
---@field isPositionFrozen boolean (read-only) [IS_ENTITY_POSITION_FROZEN] A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---@field isStatic boolean (read-only) [IS_ENTITY_STATIC]
---@field isUpsidedown boolean (read-only) [IS_ENTITY_UPSIDEDOWN]
---@field isVisible boolean (read-only) [IS_ENTITY_VISIBLE]
---@field isVisibleToScript boolean (read-only) [IS_ENTITY_VISIBLE_TO_SCRIPT]
---@field isWaitingForWorldCollision boolean (read-only) [IS_ENTITY_WAITING_FOR_WORLD_COLLISION]
---@field keyForInRoom integer (read-only) [GET_KEY_FOR_ENTITY_IN_ROOM]
---@field lastMaterialHit integer (read-only) [GET_LAST_MATERIAL_HIT_BY_ENTITY]
---@field lastVelocityReceived vector3 (read-only) [NETWORK_GET_LAST_VELOCITY_RECEIVED]
---@field lodDist integer [GET_ENTITY_LOD_DIST / SET_ENTITY_LOD_DIST]
---@field maxHealth integer [GET_ENTITY_MAX_HEALTH / SET_ENTITY_MAX_HEALTH]
---@field model fx.Model (read-only) [GET_ENTITY_MODEL] Returns the model hash from an entity.
---@field nearestPlayer? fx.Player (read-only) [GET_NEAREST_PLAYER_TO_ENTITY]
---@field netScriptId integer (read-only) [NETWORK_GET_ENTITY_NET_SCRIPT_ID]
---@field networkId integer (read-only) [NETWORK_GET_NETWORK_ID_FROM_ENTITY] Get the network id of the given entity An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconvert…
---@field objectIndexFromIndex? fx.Object (read-only) [GET_OBJECT_INDEX_FROM_ENTITY_INDEX]
---@field owner integer (read-only) [NETWORK_GET_ENTITY_OWNER] Returns the owner ID of the specified entity.
---@field pedIndexFromIndex? fx.Ped (read-only) [GET_PED_INDEX_FROM_ENTITY_INDEX]
---@field pitch number (read-only) [GET_ENTITY_PITCH]
---@field populationType integer (read-only) [GET_ENTITY_POPULATION_TYPE] A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
---@field position vector3 [GET_ENTITY_COORDS / SET_ENTITY_COORDS] Entity position. Assigning calls SET_ENTITY_COORDS without flags (alive/dead/ragdoll/clearArea = false); use setCoords for the flags. Gets the current coordina…
---@field roll number (read-only) [GET_ENTITY_ROLL]
---@field roomKey integer (read-only) [GET_ROOM_KEY_FROM_ENTITY]
---@field rotationVelocity vector3 (read-only) [GET_ENTITY_ROTATION_VELOCITY]
---@field speed number (read-only) [GET_ENTITY_SPEED] Get the speed of a entity.
---@field submergedLevel number (read-only) [GET_ENTITY_SUBMERGED_LEVEL]
---@field type integer (read-only) [GET_ENTITY_TYPE]
---@field uprightValue number (read-only) [GET_ENTITY_UPRIGHT_VALUE]
---@field vehicleIndexFromIndex? fx.Vehicle (read-only) [GET_VEHICLE_INDEX_FROM_ENTITY_INDEX]
---@field velocity vector3 [GET_ENTITY_VELOCITY / SET_ENTITY_VELOCITY]
local Entity = {}

---Promise resolved with the entity once it really exists (and, if networked, once it has a network id).
---Rejects with a TimeoutError after `timeoutMs` (default 10000). Works on any wrapper.
---@param timeoutMs? integer
---@return fx.Promise<fx.Entity>
function Entity:readyAsync(timeoutMs) end

---Requests network control until it is granted, and resolves with the entity. Never yields.
---Resolves at once for a local (non-networked) entity or one already controlled. Rejects with a TimeoutError
---after `timeoutMs` (default 10000), or with an Error if the entity disappears.
---@param timeoutMs? integer
---@return fx.Promise<fx.Entity>
function Entity:takeControlAsync(timeoutMs) end

---Requests the collision around the entity until it is loaded, and resolves with the entity. Never yields.
---Use it after a teleport, before unfreezing the entity, so that it does not fall through the map.
---@param timeoutMs? integer
---@return fx.Promise<fx.Entity>
function Entity:loadCollisionAsync(timeoutMs) end

---Escape hatch: calls any native (including unnamed ones) with the handle as first argument.
---@param hash integer
---@param ... any
---@return any
function Entity:invoke(hash, ...) end

---Moves the entity, holding it frozen until the collision around it is loaded, so it does not fall through the map.
---Never yields. This client must control the entity (the local player ped, or after `takeControlAsync`).
---```lua
---Player.ped:teleportAsync(fx.Hud.waypoint, { ground = true }):await()
---```
---@param position vector3|vector4
---@param options? fx.TeleportOptions
---@return fx.Promise<fx.Entity>
function Entity:teleportAsync(position, options) end

--- **Native**: `ACTIVATE_PHYSICS` (`0x710311ADF0E20730`)
---@return fx.Entity self
function Entity:activatePhysics() end

--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
--- Can be used for objects, vehicles and peds.
---
--- Example of enemy:
--- ![enemy](https://i.imgur.com/fl78svv.png)
--- Example of friend:
--- ![friend](https://i.imgur.com/Q16ho5d.png)
--- **Native**: `ADD_BLIP_FOR_ENTITY` (`0x5CDE92C702A8FCE7`)
---@return fx.Blip? result A blip.
function Entity:addBlip() end

--- ```
--- Example:
--- GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");
--- I tried this and nothing happened...
--- ```
--- **Native**: `ADD_ENTITY_ICON` (`0x9CD43EEE12BF4DD0`)
---@param icon string
---@return any result
function Entity:addIcon(icon) end

--- ```
--- All found occurrences in b678d:
--- pastebin.com/ceu67jz8
--- ```
--- **Native**: `ADD_ENTITY_TO_AUDIO_MIX_GROUP` (`0x153973AB99FE8980`)
---@param groupName string
---@param fadeIn number
---@return fx.Entity self
function Entity:addToAudioMixGroup(groupName, fadeIn) end

--- Adds an entity to a network synchronised scene.
--- **Native**: `NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE` (`0xF2404D68CBC855FA`)
---@param netScene integer Which network scene to add this entity to (Returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#\_0x7CD6BC4C2BBDD526))
---@param animDict string Animation dictionary to play on this entity.
---@param animName string Animation clip from the dictionary to play on this entity.
---@param blendIn number Blend in speed of the animation. Default is `8.0`.
---@param blendOut number Blend out speed of the animation. Default is `-8.0`.
---@param flag integer Synchronized scene flags. See [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9) for more info.
---@return fx.Entity self
function Entity:addToSynchronisedScene(netScene, animDict, animName, blendIn, blendOut, flag) end

--- Allows scripts to use attachment commands on entities (eg. [`ATTACH_ENTITY_TO_ENTITY`](#\_0x6B9BBD38AB0796DF)) that are not controlled by the client.
---
--- **Note:** This is only local and does not affect entities on other machines. This is used by the ferris wheel script to sync players on carts.
--- **Native**: `NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION` (`0x267C78C60E806B9A`)
---@param toggle boolean true/false.
---@return fx.Entity self
function Entity:allowRemoteAttachmentModification(toggle) end

--- Applies a force to the specified entity.
---
--- ```cpp
--- enum eForceType
--- {
---     MinForce = 0,
---     MaxForceRot = 1,
---     MinForce2 = 2,
---     MaxForceRot2 = 3,
---     ForceNoRot = 4,
---     ForceRotPlusForce = 5
--- }
--- ```
---
--- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
--- **Native**: `APPLY_FORCE_TO_ENTITY` (`0xC5F68BE9613E2D18`)
---@param forceType fx.Enum.ApplyForceTypes|integer Refer to `eForceType`
---@param coords vector3 Force amount ()
---@param off vector3 Rotation/offset force ()
---@param boneIndex integer (Often 0) Entity bone index
---@param isDirectionRel boolean (Usually false) Vector defined in local (body-fixed) coordinate frame
---@param ignoreUpVec boolean (Usually true)
---@param isForceRel boolean (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
---@param p12 boolean (Usually false)
---@param p13 boolean (Usually true)
---@return fx.Entity self
function Entity:applyForce(forceType, coords, off, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

--- **Native**: `APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS` (`0x18FF00FC7EFF559E`)
---@param forceType integer Refer to [APPLY_FORCE_TO_ENTITY](#\_0xC5F68BE9613E2D18)
---@param coords vector3
---@param p5 boolean
---@param isDirectionRel boolean
---@param isForceRel boolean
---@param p8 boolean
---@return fx.Entity self
function Entity:applyForceToCenterOfMass(forceType, coords, p5, isDirectionRel, isForceRel, p8) end

--- **Native**: `ATTACH_ENTITY_BONE_TO_ENTITY_BONE` (`0x5C48B75732C8456C`)
---@param entity2 fx.Entity|integer
---@param entityBone integer
---@param entityBone2 integer
---@param p4 boolean
---@param p5 boolean
---@return fx.Entity self
function Entity:attachBoneToEntityBone(entity2, entityBone, entityBone2, p4, p5) end

--- **Native**: `ATTACH_ENTITY_BONE_TO_ENTITY_BONE_PHYSICALLY` (`0xFD1695C5D3B05439`)
---@param entity2 fx.Entity|integer
---@param entityBone integer
---@param entityBone2 integer
---@param p4 boolean
---@param p5 boolean
---@return fx.Entity self
function Entity:attachBoneToEntityBonePhysically(entity2, entityBone, entityBone2, p4, p5) end

--- Attach an entity to the specified entity.
--- **Native**: `ATTACH_ENTITY_TO_ENTITY` (`0x6B9BBD38AB0796DF`)
---@param entity2 fx.Entity|integer Entity to attach `entity1` with.
---@param boneIndex integer This is different to boneID, use ['GET_PED_BONE_INDEX'](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `entity1` will be attached to the center of…
---@param pos vector3 -axis offset from the center of `entity2`.
---@param rot vector3 -axis rotation.
---@param p9 boolean Unknown. Does not seem to have any effect.
---@param useSoftPinning boolean If set to false attached entity will not detach when fixed.
---@param collision boolean Controls collision between the two entities (FALSE disables collision).
---@param isPed boolean Pitch doesnt work when false and roll will only work on negative numbers (only peds)
---@param rotationOrder fx.Enum.RotationOrder|integer The order in which the rotation is applied. See [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@param syncRot boolean If false it ignores entity rotation.
---@return fx.Entity self
function Entity:attachToEntity(entity2, boneIndex, pos, rot, p9, useSoftPinning, collision, isPed, rotationOrder, syncRot) end

--- ```
--- breakForce is the amount of force required to break the bond.
--- p14 - is always 1 in scripts
--- p15 - is 1 or 0 in scripts - unknown what it does
--- p16 - controls collision between the two entities (FALSE disables collision).
--- p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
--- p18 - is always 2 in scripts.
--- ```
--- **Native**: `ATTACH_ENTITY_TO_ENTITY_PHYSICALLY` (`0xC3675780C92F90F9`)
---@param entity2 fx.Entity|integer
---@param boneIndex1 integer
---@param boneIndex2 integer
---@param pos1 vector3
---@param pos2 vector3
---@param rot vector3
---@param breakForce number
---@param fixedRot boolean
---@param p15 boolean
---@param collision boolean
---@param teleport boolean
---@param p18 integer
---@return fx.Entity self
function Entity:attachToEntityPhysically(entity2, boneIndex1, boneIndex2, pos1, pos2, rot, breakForce, fixedRot, p15, collision, teleport, p18) end

--- ```
--- Might be more appropriate in AUDIO?
--- ```
--- **Native**: `ATTACH_TV_AUDIO_TO_ENTITY` (`0x845BAD77CC770633`)
---@return fx.Entity self
function Entity:attachTvAudio() end

--- **Native**: `BREAK_ENTITY_GLASS` (`0x2E648D16F6E308F3`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 any
---@param p10 boolean
---@return fx.Entity self
function Entity:breakGlass(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- **Native**: `CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK` (`0x439E9BC95B7E7FBE`)
---@return boolean result
function Entity:cellCamIsCharVisibleNoFaceCheck() end

--- Immediately removes entity from an interior. Like sets entity to `limbo` room.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `CLEAR_INTERIOR_FOR_ENTITY` (`0x85D5422B2039A70D`)
---@return fx.Entity self
function Entity:clearInterior() end

--- This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
--- **Native**: `CLEAR_ENTITY_LAST_DAMAGE_ENTITY` (`0xA72CD9CA74A5ECBA`)
---@return fx.Entity self
function Entity:clearLastDamageEntity() end

--- **Native**: `CLEAR_ENTITY_LAST_WEAPON_DAMAGE` (`0xAC678E40BE7C74D2`)
---@return fx.Entity self
function Entity:clearLastWeaponDamage() end

--- **Native**: `CLEAR_ROOM_FOR_ENTITY` (`0xB365FC0C4E27FFA7`)
---@return fx.Entity self
function Entity:clearRoom() end

--- **Native**: `NETWORK_CONCEAL_ENTITY` (`0x1632BE0AC1E62876`)
---@param toggle boolean
---@return fx.Entity self
function Entity:conceal(toggle) end

--- ```
--- Returns whether or not the specified property is set for the entity.
--- ```
--- **Native**: `DECOR_EXIST_ON` (`0x05661B80A8C9165F`)
---@param propertyName string
---@return boolean result
function Entity:decorExistOn(propertyName) end

--- **Native**: `DECOR_GET_BOOL` (`0xDACE671663F2F5DB`)
---@param propertyName string
---@return boolean result
function Entity:decorGetBool(propertyName) end

--- **Native**: `DECOR_GET_FLOAT` (`0x6524A2F114706F43`)
---@param propertyName string
---@return number result
function Entity:decorGetFloat(propertyName) end

--- **Native**: `DECOR_GET_INT` (`0xA06C969B02A97298`)
---@param propertyName string
---@return integer result
function Entity:decorGetInt(propertyName) end

--- **Native**: `DECOR_REMOVE` (`0x00EE9F297C738720`)
---@param propertyName string
---@return boolean result
function Entity:decorRemove(propertyName) end

--- ```
--- This function sets metadata of type bool to specified entity.
--- ```
--- **Native**: `DECOR_SET_BOOL` (`0x6B1E8E2ED1335B71`)
---@param propertyName string
---@param value boolean
---@return boolean result
function Entity:decorSetBool(propertyName, value) end

--- **Native**: `DECOR_SET_FLOAT` (`0x211AB1DD8D0F363A`)
---@param propertyName string
---@param value number
---@return boolean result
function Entity:decorSetFloat(propertyName, value) end

--- ```
--- Sets property to int.
--- ```
--- **Native**: `DECOR_SET_INT` (`0x0CE3AA5E1CA19E10`)
---@param propertyName string
---@param value integer
---@return boolean result
function Entity:decorSetInt(propertyName, value) end

--- **Native**: `DECOR_SET_TIME` (`0x95AED7B8E39ECAA4`)
---@param propertyName string
---@param timestamp integer
---@return boolean result
function Entity:decorSetTime(propertyName, timestamp) end

--- Delete the specified entity, and invalidate the passed handle (i.e., the in/out argument).
--- You might want to check if the entity exists before with [DOES_ENTITY_EXIST](#\_0x7239B21A38F536BA).
--- **Native**: `DELETE_ENTITY` (`0xAE3CBE5BF394C9C9`)
---@return nil
function Entity:delete() end

--- **Native**: `DETACH_ENTITY` (`0x961AC54BF0613F5D`)
---@param dynamic boolean Set to `true` to keep velocity after detaching
---@param collision boolean
---@return fx.Entity self
function Entity:detach(dynamic, collision) end

--- **Native**: `DISABLE_CAM_COLLISION_FOR_ENTITY` (`0x2AED6301F67007D5`)
---@return fx.Entity self
function Entity:disableCamCollision() end

--- **Native**: `DISABLE_CAM_COLLISION_FOR_OBJECT` (`0x49482F9FCD825AAA`)
---@return fx.Entity self
function Entity:disableCamCollisionForObject() end

--- **Native**: `DOES_ENTITY_BELONG_TO_THIS_SCRIPT` (`0xDDE6DF5AE89981D2`)
---@param p2 boolean
---@return boolean result
function Entity:doesBelongToThisScript(p2) end

--- ```
--- ENABLE_*
--- ```
--- **Native**: `ENABLE_ENTITY_UNK` (`0x6CE177D014502E8A`)
---@return fx.Entity self
function Entity:enableUnk() end

--- Internal function for ensuring an entity has a state bag.
--- **Native**: `ENSURE_ENTITY_STATE_BAG` (`0x3BB78F05`)
---@return fx.Entity self
function Entity:ensureStateBag() end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_LOAD_CLONE_SYNC` (`0x6BC189AC`)
---@param data string
---@return fx.Entity self
function Entity:experimentalLoadCloneSync(data) end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_SAVE_CLONE_CREATE` (`0x9D65CAD2`)
---@return string result
function Entity:experimentalSaveCloneCreate() end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_SAVE_CLONE_SYNC` (`0x38D19210`)
---@return string result
function Entity:experimentalSaveCloneSync() end

--- ```
--- normal - transition like when your coming out of LSC
--- slow - transition like when you walk into a mission
--- ```
--- **Native**: `NETWORK_FADE_OUT_ENTITY` (`0xDE564951F95E09ED`)
---@param normal boolean
---@param slow boolean
---@return fx.Entity self
function Entity:fadeOut(normal, slow) end

--- **Native**: `FIND_FIRST_OBJECT` (`0xFAA6CB5D`)
---@return integer result
function Entity:findFirstObject() end

--- **Native**: `FIND_FIRST_PED` (`0xFB012961`)
---@return integer result
function Entity:findFirstPed() end

--- **Native**: `FIND_FIRST_PICKUP` (`0x3FF9D340`)
---@return integer result
function Entity:findFirstPickup() end

--- **Native**: `FIND_FIRST_VEHICLE` (`0x15E55694`)
---@return integer result
function Entity:findFirstVehicle() end

--- ```
--- Finds the vehicle that is carrying this entity with a handler frame.
--- The model of the entity must be prop_contr_03b_ld or the function will return 0.
--- ```
--- **Native**: `FIND_VEHICLE_CARRYING_THIS_ENTITY` (`0x375E7FC44F21C8AB`)
---@return fx.Vehicle? result
function Entity:findVehicleCarryingThis() end

--- ```
--- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.
--- ```
--- **Native**: `FORCE_ENTITY_AI_AND_ANIMATION_UPDATE` (`0x40FDEDB72F8293B2`)
---@return fx.Entity self
function Entity:forceAiAndAnimationUpdate() end

--- ```
--- Forces the particular room in an interior to load incase not teleporting into the portal.
--- ```
--- **Native**: `FORCE_ROOM_FOR_ENTITY` (`0x52923C4710DD9907`)
---@param interior fx.Interior|integer
---@param roomHashKey integer|string
---@return fx.Entity self
function Entity:forceRoom(interior, roomHashKey) end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
--- **Native**: `FREEZE_ENTITY_POSITION` (`0x428CA6DBD1094446`)
---@param toggle boolean Freeze or unfreeze entity.
---@return fx.Entity self
function Entity:freeze(toggle) end

--- ```
--- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.
--- Example:
--- 0.000000 - mark the starting of animation.
--- 0.500000 - mark the midpoint of the animation.
--- 1.000000 - mark the end of animation.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ENTITY_ANIM_CURRENT_TIME` (`0x346D81500D088F42`)
---@param animDict string
---@param animName string
---@return number result
function Entity:getAnimCurrentTime(animDict, animName) end

--- ```
--- Returns a float value representing animation's total playtime in milliseconds.
--- Example:
--- GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")
--- return 20800.000000
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ENTITY_ANIM_TOTAL_TIME` (`0x50BD2730B191E360`)
---@param animDict string
---@param animName string
---@return number result
function Entity:getAnimTotalTime(animDict, animName) end

--- ```
--- Returns the index of the bone. If the bone was not found, -1 will be returned.
--- list:
--- pastebin.com/D7JMnX1g
--- BoneNames:
--- 	chassis,
--- 	windscreen,
--- 	seat_pside_r,
--- 	seat_dside_r,
--- 	bodyshell,
--- 	suspension_lm,
--- 	suspension_lr,
--- 	platelight,
--- 	attach_female,
--- 	attach_male,
--- 	bonnet,
--- 	boot,
--- 	chassis_dummy,	//Center of the dummy
--- 	chassis_Control,	//Not found yet
--- 	door_dside_f,	//Door left, front
--- 	door_dside_r,	//Door left, back
--- 	door_pside_f,	//Door right, front
--- 	door_pside_r,	//Door right, back
--- 	Gun_GripR,
--- 	windscreen_f,
--- 	platelight,	//Position where the light above the numberplate is located
--- 	VFX_Emitter,
--- 	window_lf,	//Window left, front
--- 	window_lr,	//Window left, back
--- 	window_rf,	//Window right, front
--- 	window_rr,	//Window right, back
--- 	engine,	//Position of the engine
--- 	gun_ammo,
--- 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".
--- 	wheel_lf,	//Wheel left, front
--- 	wheel_lr,	//Wheel left, back
--- 	wheel_rf,	//Wheel right, front
--- 	wheel_rr,	//Wheel right, back
--- 	exhaust,	//Exhaust. shows only the position of the stock-exhaust
--- 	overheat,	//A position on the engine(not exactly sure, how to name it)
--- [...]
--- **Native**: `GET_ENTITY_BONE_INDEX_BY_NAME` (`0xFB71170B7E76ACBA`)
---@param boneName string
---@return integer result
function Entity:getBoneIndexByName(boneName) end

--- ```
--- Gets the world rotation of the specified bone of the specified entity.
--- This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
--- ```
--- **Native**: `GET_ENTITY_BONE_POSITION_2` (`0x46F8696933A63C9B`)
---@param boneIndex integer
---@return vector3 result
function Entity:getBonePosition2(boneIndex) end

--- ```
--- Gets the world rotation of the specified bone of the specified entity.
--- ```
--- **Native**: `GET_ENTITY_BONE_ROTATION` (`0xCE6294A232D03786`)
---@param boneIndex integer
---@return vector3 result
function Entity:getBoneRotation(boneIndex) end

--- Gets the local rotation of the specified bone of the specified entity.
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `GET_ENTITY_BONE_ROTATION_LOCAL` (`0xBD8D32550E5CEBFE`)
---@param boneIndex integer
---@return vector3 result
function Entity:getBoneRotationLocal(boneIndex) end

--- Gets the current coordinates (world position) for a specified entity.
--- **Native**: `GET_ENTITY_COORDS` (`0x3FEF770D40960D5A`)
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@return vector3 result The current entity coordinates.
function Entity:getCoords(alive) end

--- **Native**: `GET_HASH_NAME_FOR_COMPONENT` (`0x0368B3A838070348`)
---@param componentId integer
---@param drawableVariant integer
---@param textureVariant integer
---@return integer result
function Entity:getHashNameForComponent(componentId, drawableVariant, textureVariant) end

--- **Native**: `GET_HASH_NAME_FOR_PROP` (`0x5D6160275CAEC8DD`)
---@param componentId integer
---@param propIndex integer
---@param propTextureIndex integer
---@return integer result
function Entity:getHashNameForProp(componentId, propIndex, propTextureIndex) end

--- **Native**: `GET_ENTITY_HEIGHT` (`0x5A504562485944DD`)
---@param coords vector3
---@param atTop boolean
---@param inWorldCoords boolean
---@return number result
function Entity:getHeight(coords, atTop, inWorldCoords) end

--- Retrieves the map data and entity handles from a specific entity.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `GET_ENTITY_MAPDATA_OWNER` (`0xF6B815C5`)
---@return boolean result True if successful, false if not.
---@return integer mapdataHandle The output map data handle.
---@return integer entityHandle The output entity handle.
function Entity:getMapdataOwner() end

--- **Native**: `GET_ENTITY_MATRIX` (`0xECB2FC7235A7D137`)
---@return vector3 forwardVector
---@return vector3 rightVector
---@return vector3 upVector
---@return vector3 position
function Entity:getMatrix() end

--- **Native**: `GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM` (`0x4DC9A62F844D9337`)
---@param team integer
---@return fx.Player? result
function Entity:getNearestPlayerToOnTeam(team) end

--- ```
--- Converts world coords (posX - Z) to coords relative to the entity
--- Example:
--- posX = 50
--- posY = 1000
--- posZ = 60
--- Entity's coords are: x=30, y=1000, z=60.
--- All three returned coords will then be in range of [-20,20] depending on rotation of the entity.
--- ```
--- **Native**: `GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS` (`0x2274BC1C4885E333`)
---@param pos vector3
---@return vector3 result
function Entity:getOffsetFromGivenWorldCoords(pos) end

--- ```
--- Offset values are relative to the entity.
--- x = left/right
--- y = forward/backward
--- z = up/down
--- ```
--- **Native**: `GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS` (`0x1899F328B0E12848`)
---@param offset vector3
---@return vector3 result
function Entity:getOffsetFromInWorldCoords(offset) end

--- ```
--- GET_ENTITY_*
---
--- Seems to return the handle of the entity's portable pickup.
---
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `GET_ENTITY_PICKUP` (`0x1F922734E259BD26`)
---@param modelHash fx.Model|integer|string
---@return fx.Entity? result
function Entity:getPickup(modelHash) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `GET_ENTITY_PROOFS` (`0xBE8CD9BE829BBEBF`)
---@return boolean result
---@return boolean bulletProof
---@return boolean fireProof
---@return boolean explosionProof
---@return boolean collisionProof
---@return boolean meleeProof
---@return boolean steamProof
---@return boolean p7
---@return boolean drownProof
function Entity:getProofs() end

--- ```
--- w is the correct parameter name!
--- ```
--- **Native**: `GET_ENTITY_QUATERNION` (`0x7B3703D2D32DFA18`)
---@return number x
---@return number y
---@return number z
---@return number w
function Entity:getQuaternion() end

--- **NOTE**: What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
---
--- ```cpp
--- enum eRotationOrder {
---     // Rotate around the z-axis, then the y-axis and finally the x-axis.
---     ROT_ZYX = 0,
---     // Rotate around the y-axis, then the z-axis and finally the x-axis.
---     ROT_YZX = 1,
---     // Rotate around the z-axis, then the x-axis and finally the y-axis.
---     ROT_ZXY = 2,
---     // Rotate around the x-axis, then the z-axis and finally the y-axis.
---     ROT_XZY = 3,
---     // Rotate around the y-axis, then the x-axis and finally the z-axis.
---     ROT_YXZ = 4,
---     // Rotate around the x-axis, then the y-axis and finally the z-axis.
---     ROT_XYZ = 5,
--- }
--- ```
--- **Native**: `GET_ENTITY_ROTATION` (`0xAFBD61CC738D9EB9`)
---@param rotationOrder fx.Enum.RotationOrder|integer The order yaw, pitch and roll is applied. Usually 2.
---@return vector3 result A vector where the Z coordinate is the yaw.
function Entity:getRotation(rotationOrder) end

--- ```
--- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.
--- ```
--- **Native**: `GET_ENTITY_SCRIPT` (`0xA6E9C38DB51D7748`)
---@param script integer
---@return string result
---@return integer script
function Entity:getScript(script) end

--- ```
--- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).
--- ```
--- **Native**: `GET_ENTITY_SPEED_VECTOR` (`0x9A8D700A51CB7B0D`)
---@param relative boolean
---@return vector3 result
function Entity:getSpeedVector(relative) end

--- ```
--- Returns the coordinates of an entity-bone.
--- ```
--- **Native**: `GET_WORLD_POSITION_OF_ENTITY_BONE` (`0x44A8FCB8ED227738`)
---@param boneIndex integer
---@return vector3 result
function Entity:getWorldPositionOfBone(boneIndex) end

--- ```
--- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
--- ```
--- **Native**: `HAS_ANIM_EVENT_FIRED` (`0xEAF4CD9EA3E7E922`)
---@param actionHash integer|string
---@return boolean result
function Entity:hasAnimEventFired(actionHash) end

--- ```
--- P3 is always 3 as far as i cant tell
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `HAS_ENTITY_ANIM_FINISHED` (`0x20B711662962B472`)
---@param animDict string
---@param animName string
---@param p3 integer
---@return boolean result
function Entity:hasAnimFinished(animDict, animName, p3) end

--- **Native**: `HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY` (`0xC86D67D52A707CF8`)
---@param damager fx.Entity|integer The entity that caused the damage.
---@param bCheckDamagerVehicle boolean If the damager is driving a vehicle then check to see if the entity was damaged by the vehicle.
---@return boolean result Returns true if the entity has been damaged by the specified entity.
function Entity:hasBeenDamagedByEntity(damager, bCheckDamagerVehicle) end

--- ```
--- It determines what weapons caused damage:
--- If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0
--- If you want to define any melee weapon, second parameter=0, third parameter=1.
--- If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
--- ```
--- **Native**: `HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON` (`0x131D401334815E94`)
---@param weaponHash integer|string
---@param weaponType integer
---@return boolean result
function Entity:hasBeenDamagedByWeapon(weaponHash, weaponType) end

--- Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
---
--- The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY` (`0xFCDFF7B72D23A1AC`)
---@param entity2 fx.Entity|integer Entity to check to
---@param flags integer A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#\_0x377906D8A31E5586)). 17 is most common in GTA scripts.
---@return boolean result Returns `true` if no collider of specified bitmask is hit.
function Entity:hasClearLosToEntity(entity2, flags) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY_2` (`0x394BDE2A7BBA031E`)
---@param entity2 fx.Entity|integer
---@param traceType integer
---@return any result
function Entity:hasClearLosToEntity2(entity2, traceType) end

--- ```
--- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.
--- This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops
--- ```
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT` (`0x0267D00AF114F17A`)
---@param entity2 fx.Entity|integer
---@return boolean result
function Entity:hasClearLosToEntityInFront(entity2) end

--- ```
--- Checks if entity is within x/y/zSize distance of x/y/z.
--- Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0
--- ```
--- **Native**: `IS_ENTITY_AT_COORD` (`0x20B60995556D004F`)
---@param pos vector3
---@param size vector3
---@param p7 boolean
---@param p8 boolean
---@param p9 integer
---@return boolean result
function Entity:isAtCoord(pos, size, p7, p8, p9) end

--- ```
--- Checks if entity1 is within the box defined by x/y/zSize of entity2.
--- Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0
--- ```
--- **Native**: `IS_ENTITY_AT_ENTITY` (`0x751B70C3D034E187`)
---@param entity2 fx.Entity|integer
---@param size vector3
---@param p5 boolean
---@param p6 boolean
---@param p7 integer
---@return boolean result
function Entity:isAtEntity(entity2, size, p5, p6, p7) end

--- **Native**: `IS_ENTITY_ATTACHED_TO_ENTITY` (`0xEFBE71898A993728`)
---@param to fx.Entity|integer
---@return boolean result
function Entity:isAttachedToEntity(to) end

--- p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#\_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#\_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#\_0x20B60995556D004F).
---
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- **Native**: `IS_ENTITY_IN_ANGLED_AREA` (`0x51210CED3DA1C78A`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param debug boolean a debug flag invoking functions in the same path as `DRAW_MARKER`
---@param includez boolean If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
---@param p10 any
---@return boolean result
function Entity:isInAngledArea(coords1, coords2, width, debug, includez, p10) end

--- **Native**: `IS_ENTITY_IN_AREA` (`0x54736AA40E271165`)
---@param coords1 vector3
---@param coords2 vector3
---@param p7 boolean
---@param p8 boolean
---@param p9 any
---@return boolean result
function Entity:isInArea(coords1, coords2, p7, p8, p9) end

--- **Native**: `IS_ENTITY_IN_ZONE` (`0xB6463CF6AF527071`)
---@param zone string
---@return boolean result
function Entity:isInZone(zone) end

--- See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#\_0x6EC47A344923E1ED)
---
--- ```
--- Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)
--- p4 is always 3 in the scripts.
--- taskFlag:
--- 2 - Check synchronized scene
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `IS_ENTITY_PLAYING_ANIM` (`0x1F0B79228E461EC9`)
---@param animDict string
---@param animName string
---@param taskFlag integer
---@return boolean result
function Entity:isPlayingAnim(animDict, animName, taskFlag) end

--- **Native**: `IS_ENTITY_TOUCHING_ENTITY` (`0x17FFC1B2BA35A494`)
---@param targetEntity fx.Entity|integer
---@return boolean result
function Entity:isTouchingEntity(targetEntity) end

--- **Native**: `IS_ENTITY_TOUCHING_MODEL` (`0x0F42323798A58C8C`)
---@param modelHash fx.Model|integer|string
---@return boolean result
function Entity:isTouchingModel(modelHash) end

--- **Native**: `IS_ENTITY_UPRIGHT` (`0x5333F526F6AB19AA`)
---@param angle number
---@return boolean result
function Entity:isUpright(angle) end

--- Fade the given entity back in, usually used after the entity has been faded out with [NETWORK_FADE_OUT_ENTITY](#\_0xDE564951F95E09ED)
---
--- When used on a entity which isn't invisible or faded out then the native will still work, it will just instanly make the ped invisible before fading in.
---
--- **Additional Parameters**:
---
--- *   **flash**: If set to true the entity will flash while fading in.
--- **Native**: `NETWORK_FADE_IN_ENTITY` (`0x1F4ED342ACEFE62D`)
---@param bNetwork boolean When set to true the fade in will be networked.
---@return fx.Entity self
function Entity:networkFadeIn(bNetwork) end

--- **Native**: `NETWORK_OVERRIDE_COORDS_AND_HEADING` (`0xA7E30DE9272B6D49`)
---@param coords vector3
---@param heading number
---@return fx.Entity self
function Entity:overrideCoordsAndHeading(coords, heading) end

--- ```
--- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.
--- The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_ENTITY_ANIM` (`0x7FB218262B810701`)
---@param animName string
---@param animDict string
---@param p3 number
---@param loop boolean
---@param stayInAnim boolean
---@param p6 boolean
---@param delta number
---@param bitset any
---@return boolean result
function Entity:playAnim(animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

--- ```
--- p4 and p7 are usually 1000.0f.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_SYNCHRONIZED_ENTITY_ANIM` (`0xC77720A12FE14A86`)
---@param syncedScene integer
---@param animation string
---@param propName string
---@param p4 number
---@param p5 number
---@param p6 any
---@param p7 number
---@return boolean result
function Entity:playSynchronizedAnim(syncedScene, animation, propName, p4, p5, p6, p7) end

--- ```
--- Called to update entity attachments.
--- ```
--- **Native**: `PROCESS_ENTITY_ATTACHMENTS` (`0xF4080490ADC51C6F`)
---@return fx.Entity self
function Entity:processAttachments() end

--- **Native**: `NETWORK_REGISTER_ENTITY_AS_NETWORKED` (`0x06FAACD625D80CAA`)
---@return fx.Entity self
function Entity:registerAsNetworked() end

--- This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#\_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#\_0xC59F528E9AB9F339)
--- **Native**: `REGISTER_ENTITY_FOR_CUTSCENE` (`0xE40C1C56DF95C2E8`)
---@param cutsceneEntName string cHandle of cutscene entity, i.e Michael, MP\_1, MP\_4, Lamar
---@param p2 integer
---@param modelHash fx.Model|integer|string Not strictly neccasary, often 0 in R\* scripts
---@param p4 integer 0 for SP, 64 for MP seemingly
---@return fx.Entity self
function Entity:registerForCutscene(cutsceneEntName, p2, modelHash, p4) end

--- Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
--- ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
--- **Native**: `RELEASE_SCRIPT_GUID_FROM_ENTITY` (`0x2B3334BCA57CD799`)
---@return fx.Entity self
function Entity:releaseScriptGuid() end

--- ```
--- Used in am_mp_property_ext and am_mp_property_int
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Ped ped
--- ```
--- **Native**: `REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY` (`0x715135F4B82AC90D`)
---@return fx.Entity self
function Entity:removeAllStickyBombs() end

--- Removes an entity from its current mix group.
--- **Native**: `REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP` (`0x18EB48CFC41F2EA0`)
---@param fadeOut number Defaults to 0.0
---@return fx.Entity self
function Entity:removeFromAudioMixGroup(fadeOut) end

--- **Native**: `REMOVE_PARTICLE_FX_FROM_ENTITY` (`0xB8FEAEEBCC127425`)
---@return fx.Entity self
function Entity:removeParticleFx() end

--- **Native**: `NETWORK_REQUEST_CONTROL_OF_ENTITY` (`0xB69317BF5E782347`)
---@return boolean result
function Entity:requestControl() end

--- **Native**: `REQUEST_WEAPON_HIGH_DETAIL_MODEL` (`0x48164DBB970AC3F0`)
---@return fx.Entity self
function Entity:requestWeaponHighDetailModel() end

--- **Native**: `RESET_ENTITY_ALPHA` (`0x9B1E824FFBB7027A`)
---@return fx.Entity self
function Entity:resetAlpha() end

--- This native sets the entity's alpha level.
--- **Native**: `SET_ENTITY_ALPHA` (`0x44A0870B7E92D7C0`)
---@param alphaLevel integer The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
---@param skin boolean Whether or not to change the alpha of the entity's skin.
---@return fx.Entity self
function Entity:setAlpha(alphaLevel, skin) end

--- **Native**: `SET_ENTITY_ALWAYS_PRERENDER` (`0xACAD101E1FB66689`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setAlwaysPrerender(toggle) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_ENTITY_ANGULAR_VELOCITY` (`0x8339643499D1222E`)
---@param coords vector3
---@return fx.Entity self
function Entity:setAngularVelocity(coords) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `SET_ENTITY_ANIM_CURRENT_TIME` (`0x4487C259F0F70977`)
---@param animDictionary string
---@param animName string
---@param time number
---@return fx.Entity self
function Entity:setAnimCurrentTime(animDictionary, animName, time) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_ANIM_PHASE` (`0xDDF3CB5A0A4C0B49`)
---@param p1 number
---@param p2 any
---@param p3 boolean
---@return fx.Entity self
function Entity:setAnimPhase(p1, p2, p3) end

--- **Native**: `SET_ENTITY_ANIM_SPEED` (`0x28D1A16553C51776`)
---@param animDictionary string
---@param animName string
---@param speedMultiplier number
---@return fx.Entity self
function Entity:setAnimSpeed(animDictionary, animName, speedMultiplier) end

--- Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
---
--- Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
--- **Native**: `SET_ENTITY_AS_MISSION_ENTITY` (`0xAD738C3085FE7E11`)
---@param scriptHostObject boolean Whether or not to assign script info to this entity, if set to false the entity will only be protected from despawning locally.
---@param bGrabFromOtherScript boolean Changes the entity so it's owned by the current script if the entity is already a mission entity. This will only work on entities the machine has control of (non-remote entities).
---@return fx.Entity self
function Entity:setAsMissionEntity(scriptHostObject, bGrabFromOtherScript) end

--- ```
--- Marks the specified entity (ped, vehicle or object) as no longer needed.
--- Entities marked as no longer needed, will be deleted as the engine sees fit.
--- ```
--- **Native**: `SET_ENTITY_AS_NO_LONGER_NEEDED` (`0xB736A491E64A32CF`)
---@return fx.Entity self
function Entity:setAsNoLongerNeeded() end

--- **Native**: `SET_CAN_AUTO_VAULT_ON_ENTITY` (`0xE12ABE5E3A389A6C`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setCanAutoVault(toggle) end

--- **Native**: `SET_ENTITY_CAN_BE_DAMAGED` (`0x1760FFA8AB074D66`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setCanBeDamaged(toggle) end

--- **Native**: `SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP` (`0xE22D8FDE858B8119`)
---@param bCanBeDamaged boolean
---@param relGroup integer
---@return fx.Entity self
function Entity:setCanBeDamagedByRelationshipGroup(bCanBeDamaged, relGroup) end

--- ```
--- Sets whether the entity can be targeted without being in line-of-sight.
--- ```
--- **Native**: `SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS` (`0xD3997889736FD899`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setCanBeTargetedWithoutLos(toggle) end

--- **Native**: `NETWORK_SET_ENTITY_CAN_BLEND` (`0xD830567D88A1E873`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setCanBlend(toggle) end

--- **Native**: `SET_CAN_CLIMB_ON_ENTITY` (`0xA80AE305E0A3044F`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setCanClimb(toggle) end

--- **Native**: `SET_CG_AT_BOUNDCENTER` (`0xBE520D9761FF811F`)
---@return fx.Entity self
function Entity:setCgAtBoundcenter() end

--- ```
--- True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
--- ```
--- **Native**: `SET_ENTITY_CLEANUP_BY_ENGINE` (`0x3910051CCECDB00C`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setCleanupByEngine(toggle) end

--- **Native**: `SET_ENTITY_COLLISION` (`0x1A9205C1B9EE827F`)
---@param toggle boolean
---@param keepPhysics boolean
---@return fx.Entity self
function Entity:setCollision(toggle, keepPhysics) end

--- **Native**: `SET_ENTITY_COMPLETELY_DISABLE_COLLISION` (`0x9EBC85ED0FFFE51C`)
---@param toggle boolean
---@param keepPhysics boolean
---@return fx.Entity self
function Entity:setCompletelyDisableCollision(toggle, keepPhysics) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
--- **Native**: `SET_ENTITY_COORDS` (`0x06843DA7060A026B`)
---@param pos vector3 The X coordinate. / The Y coordinate. / The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
---@return fx.Entity self
function Entity:setCoords(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- Teleports an entity to specified coordinates directly, with options to maintain certain behaviors post-teleportation.
---
--- **Note**:
---
--- *   This native allows precise placement of entities without the usual adjustments for collision or interaction with the environment that may occur with other teleportation natives.
--- *   The `keepTasks` and `keepIK` parameters are specifically useful for maintaining the current state of a ped, ensuring actions or animations are not abruptly stopped due to the teleportation.
--- *   Setting `doWarp` to `false` is useful when simulating continuous movement or when the entity should interact with its immediate surroundings upon arrival.
--- **Native**: `SET_ENTITY_COORDS_NO_OFFSET` (`0x239A3351AC1DA385`)
---@param coords vector3 coordinate for the new position.
---@param keepTasks boolean If `true`, the tasks currently assigned to the ped are not removed upon teleportation. Applies only to peds.
---@param keepIK boolean If `true`, the Inverse Kinematics (IK) on the ped are not reset upon teleportation. Applies only to peds.
---@param doWarp boolean If `false`, the entity will maintain continuous motion and will not clear contacts nor create space for itself upon teleportation.
---@return fx.Entity self
function Entity:setCoordsNoOffset(coords, keepTasks, keepIK, doWarp) end

--- **Native**: `SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET` (`0x621873ECE1178967`)
---@param pos vector3
---@param alive boolean
---@param deadFlag boolean
---@param ragdollFlag boolean
---@param clearArea boolean
---@return fx.Entity self
function Entity:setCoordsWithoutPlantsReset(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- **Native**: `SET_DAMPING` (`0xEEA3B200A6FEB65B`)
---@param vertex integer
---@param value number
---@return fx.Entity self
function Entity:setDamping(vertex, value) end

--- ```
--- SET_ENTITY_*
--- ```
--- **Native**: `SET_ENTITY_DECALS_DISABLED` (`0x2C2E3DC128F44309`)
---@param p1 boolean
---@return fx.Entity self
function Entity:setDecalsDisabled(p1) end

--- Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `SET_ENTITY_DRAW_OUTLINE` (`0x76180407`)
---@param enabled boolean Whether or not to draw an outline.
---@return fx.Entity self
function Entity:setDrawOutline(enabled) end

--- **Native**: `SET_ENTITY_DYNAMIC` (`0x1718DE8E3F2823CA`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setDynamic(toggle) end

--- ```
--- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.
--- ```
--- **Native**: `SET_FOCUS_ENTITY` (`0x198F77705FA0931D`)
---@return fx.Entity self
function Entity:setFocus() end

--- ```
--- p6 & p7 - possibly length or time
--- ```
--- **Native**: `SET_GAMEPLAY_ENTITY_HINT` (`0x189E955A8313E298`)
---@param offset vector3
---@param p4 boolean
---@param p5 integer
---@param p6 integer
---@param p7 integer
---@param p8 any
---@return fx.Entity self
function Entity:setGameplayHint(offset, p4, p5, p6, p7, p8) end

--- **Native**: `NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER` (`0x4BA166079D658ED4`)
---@param p1 boolean
---@return fx.Entity self
function Entity:setGhostedWithOwner(p1) end

--- **Native**: `SET_ENTITY_HAS_GRAVITY` (`0x4A4722448F18EEF5`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setHasGravity(toggle) end

--- **Native**: `SET_ENTITY_ICON_COLOR` (`0x1D5F595CCAE2E238`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return fx.Entity self
function Entity:setIconColor(red, green, blue, alpha) end

--- **Native**: `SET_ENTITY_ICON_VISIBILITY` (`0xE0E8BEECCA96BA31`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setIconVisibility(toggle) end

--- ```
--- Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.
--- If you use this for a ped and you want Ragdoll to stay enabled, then do:
--- *(DWORD *)(pedAddress + 0x188) |= (1 << 9);
--- Use this if you want to get the invincibility status:
--- 	bool IsPedInvincible(Ped ped)
--- 	{
--- auto addr = getScriptHandleBaseAddress(ped);
--- if (addr)
--- {
--- 	DWORD flag = *(DWORD *)(addr + 0x188);
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);
--- }
--- return false;
--- 	}
--- ```
--- **Native**: `SET_ENTITY_INVINCIBLE` (`0x3882114BDE571AD4`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setInvincible(toggle) end

--- ```
--- if set to true other network players can't see it
--- if set to false other network player can see it
--- =========================================
--- ^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.
--- pc or last gen?
--- ^^ last-gen
--- ```
--- **Native**: `NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK` (`0xF1CA12B18AEF5298`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setInvisibleToNetwork(toggle) end

--- **Native**: `SET_ENTITY_IS_TARGET_PRIORITY` (`0xEA02E132F5C68722`)
---@param p1 boolean
---@param p2 number
---@return fx.Entity self
function Entity:setIsTargetPriority(p1, p2) end

--- **Native**: `SET_ENTITY_LIGHTS` (`0x7CFBA6A80BDF3874`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setLights(toggle) end

--- Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
---
--- Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SET_ENTITY_LOAD_COLLISION_FLAG` (`0x0DC7CABAB1E9B67E`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setLoadCollisionFlag(toggle) end

--- Sets the provided entity not visible for yourself for the current frame.
--- **Native**: `SET_ENTITY_LOCALLY_INVISIBLE` (`0xE135A9FF3F5D05D8`)
---@return fx.Entity self
function Entity:setLocallyInvisible() end

--- Sets the provided entity visible for yourself for the current frame.
--- **Native**: `SET_ENTITY_LOCALLY_VISIBLE` (`0x241E289B5C059EDC`)
---@return fx.Entity self
function Entity:setLocallyVisible() end

--- Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
--- **Native**: `SET_ENTITY_MATRIX` (`0xFB0639B`)
---@param forward vector3
---@param right vector3
---@param up vector3
---@param at vector3
---@return fx.Entity self
function Entity:setMatrix(forward, right, up, at) end

--- **Native**: `SET_ENTITY_MAX_SPEED` (`0x0E46A3FCBDE2A1B1`)
---@param speed number Speed in meters per second
---@return fx.Entity self
function Entity:setMaxSpeed(speed) end

--- **Native**: `SET_ENTITY_MOTION_BLUR` (`0x295D82A8559F9150`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setMotionBlur(toggle) end

--- ```
--- Calling this function disables collision between two entities.
--- The importance of the order for entity1 and entity2 is unclear.
--- The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--- ```
--- **Native**: `SET_ENTITY_NO_COLLISION_ENTITY` (`0xA53ED5520C07654A`)
---@param entity2 fx.Entity|integer
---@param thisFrameOnly boolean
---@return fx.Entity self
function Entity:setNoCollisionEntity(entity2, thisFrameOnly) end

--- **Native**: `SET_ENTITY_ONLY_DAMAGED_BY_PLAYER` (`0x79F020FF9EDC0748`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setOnlyDamagedByPlayer(toggle) end

--- **Native**: `SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP` (`0x7022BD828FA0B082`)
---@param p1 boolean
---@param relationshipHash integer|string
---@return fx.Entity self
function Entity:setOnlyDamagedByRelationshipGroup(p1, relationshipHash) end

--- Configures an entity to either allow or prevent it from being picked up by Cargobobs.
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_PICK_UP_BY_CARGOBOB_DISABLED` (`0xD7B80E7C3BEFC396`)
---@param toggle boolean A boolean value where `true` prevents the entity from being picked up by Cargobobs, and `false` allows it.
---@return fx.Entity self
function Entity:setPickUpByCargobobDisabled(toggle) end

--- ```
--- Enable / disable each type of damage.
--- --------------
--- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);
--- ```
--- **Native**: `SET_ENTITY_PROOFS` (`0xFAEE099C6F890BB8`)
---@param bulletProof boolean
---@param fireProof boolean
---@param explosionProof boolean
---@param collisionProof boolean
---@param meleeProof boolean
---@param steamProof boolean
---@param p7 boolean
---@param drownProof boolean
---@return fx.Entity self
function Entity:setProofs(bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

--- **Native**: `SET_ENTITY_PROOF_UNK` (`0x15F944730C832252`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setProofUnk(toggle) end

--- ```
--- w is the correct parameter name!
--- ```
--- **Native**: `SET_ENTITY_QUATERNION` (`0x77B21BE7AC540F07`)
---@param coords vector3
---@param w number
---@return fx.Entity self
function Entity:setQuaternion(coords, w) end

--- **Native**: `SET_ENTITY_RECORDS_COLLISIONS` (`0x0A50A1EEDAD01E65`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setRecordsCollisions(toggle) end

--- **Native**: `SET_ENTITY_RENDER_SCORCHED` (`0x730F5F8D3F0F2050`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setRenderScorched(toggle) end

--- **Native**: `SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK` (`0x694E00132F2823ED`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setRequiresMoreExpensiveRiverCheck(toggle) end

--- Sets the rotation of a specified entity in the game world.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_ENTITY_ROTATION` (`0x8524A8B0171D5E07`)
---@param pitch number The pitch (X-axis) rotation in degrees.
---@param roll number The roll (Y-axis) rotation in degrees.
---@param yaw number The yaw (Z-axis) rotation in degrees.
---@param rotationOrder fx.Enum.RotationOrder|integer Specifies the order in which yaw, pitch, and roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9) for the available rotation orders.
---@param bDeadCheck boolean Usually set to `true`. Determines whether to check if the entity is dead before applying the rotation.
---@return fx.Entity self
function Entity:setRotation(pitch, roll, yaw, rotationOrder, bDeadCheck) end

--- Changing traffic-lights will not change the behavior of NPCs.
---
--- Example: [here](https://www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340)
---
--- ```cpp
--- enum eTrafficlightOverrideMode
--- {
---     TLO_RED = 0,
---     TLO_AMBER = 1,
---     TLO_GREEN = 2,
---     TLO_NONE = 3
--- }
--- ```
--- **Native**: `SET_ENTITY_TRAFFICLIGHT_OVERRIDE` (`0x57C5DB656185EAC4`)
---@param state fx.Enum.TrafficlightOverrideMode|integer
---@return fx.Entity self
function Entity:setTrafficlightOverride(state) end

--- Toggle the visibility of a given entity.
--- **Native**: `SET_ENTITY_VISIBLE` (`0xEA1C610A04DB6BBB`)
---@param toggle boolean Whether or not the entity will be visible
---@param unk boolean Always 0 in scripts
---@return fx.Entity self
function Entity:setVisible(toggle, unk) end

--- ```
--- SET_*
--- Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.
--- Ran after these 2 natives,
--- set_object_targettable(uParam0, 0);
--- set_entity_invincible(uParam0, 1);
--- ```
--- **Native**: `SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE` (`0xDC6F8601FAF2E893`)
---@param toggle boolean
---@return fx.Entity self
function Entity:setWaitForCollisionsBeforeProbe(toggle) end

--- **Native**: `START_ENTITY_FIRE` (`0xF6A9D9708F6F23DF`)
---@return integer result
function Entity:startFire() end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_BOUND` (`0x37181417CE7C8900`)
---@param flags1 integer
---@param flags2 integer
---@return integer result
function Entity:startShapeTestBound(flags1, flags2) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_BOUNDING_BOX` (`0x052837721A854EC7`)
---@param flags1 integer
---@param flags2 integer
---@return integer result
function Entity:startShapeTestBoundingBox(flags1, flags2) end

--- ```
--- RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
--- ```
--- **Native**: `STOP_ENTITY_ANIM` (`0x28004F88151E03E0`)
---@param animation string
---@param animGroup string
---@param p3 number
---@return any result
function Entity:stopAnim(animation, animGroup, p3) end

--- **Native**: `STOP_ENTITY_FIRE` (`0x7F0DD2EBBB651AFF`)
---@return fx.Entity self
function Entity:stopFire() end

--- ```
--- p1 sync task id?
--- ```
--- **Native**: `STOP_SYNCHRONIZED_ENTITY_ANIM` (`0x43D3807C077261E3`)
---@param p1 number
---@param p2 boolean
---@return boolean result
function Entity:stopSynchronizedAnim(p1, p2) end

--- **Native**: `TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY` (`0x61E360B7E040D12E`)
---@param entity2 fx.Entity|integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@return fx.Entity self
function Entity:taskGoStraightToCoordRelativeToEntity(entity2, p2, p3, p4, p5, p6) end

--- ```
--- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
--- Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
--- Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
--- Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
--- ```
--- **Native**: `TASK_GO_TO_ENTITY` (`0x6A071245EB0D1882`)
---@param target fx.Entity|integer
---@param duration integer
---@param distance number
---@param speed number
---@param p5 number
---@param p6 integer
---@return fx.Entity self
function Entity:taskGoToEntity(target, duration, distance, speed, p5, p6) end

--- **Native**: `TASK_LOOK_AT_COORD` (`0x6FA46612594F7973`)
---@param coords vector3
---@param duration integer
---@param p5 any
---@param p6 any
---@return fx.Entity self
function Entity:taskLookAtCoord(coords, duration, p5, p6) end

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
--- **Native**: `TASK_SHOOT_AT_ENTITY` (`0x08DA95E8298AE772`)
---@param target fx.Entity|integer
---@param duration integer
---@param firingPattern integer|string
---@return fx.Entity self
function Entity:taskShootAtEntity(target, duration, firingPattern) end

--- **Native**: `NETWORK_UNREGISTER_NETWORKED_ENTITY` (`0x7368E683BB9038D6`)
---@return fx.Entity self
function Entity:unregisterNetworked() end

--- **Native**: `UPDATE_LIGHTS_ON_ENTITY` (`0xDEADC0DEDEADC0DE`)
---@return fx.Entity self
function Entity:updateLights() end

--- **Native**: `NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME` (`0xCD71A4ECAB22709E`)
---@return fx.Entity self
function Entity:useLogarithmicBlendingThisFrame() end

---@class fx.EntityStatic
---@overload fun(handle: integer): fx.Entity?
local EntityStatic = {}


--- True when value is an fx.Entity, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function EntityStatic.is(value) end

--- **Native**: `CREATE_FORCED_OBJECT` (`0x150E808B375A385A`)
---@param coords vector3
---@param p3 any
---@param modelHash fx.Model|integer|string
---@param p5 boolean
function EntityStatic.createForcedObject(coords, p3, modelHash, p5) end

--- ```
--- p5 = sets as true in scripts
--- Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.
--- Network players do not see changes done with this.
--- ```
--- **Native**: `CREATE_MODEL_HIDE` (`0x8A97BCA30A0CE478`)
---@param coords vector3
---@param radius number
---@param model fx.Model|integer|string
---@param p5 boolean
function EntityStatic.createModelHide(coords, radius, model, p5) end

--- **Native**: `CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS` (`0x3A52AE588830BF7F`)
---@param coords vector3
---@param radius number
---@param model fx.Model|integer|string
---@param p5 boolean
function EntityStatic.createModelHideExcludingScriptObjects(coords, radius, model, p5) end

--- ```
--- Only works with objects!
--- Network players do not see changes done with this.
--- ```
--- **Native**: `CREATE_MODEL_SWAP` (`0x92C47782FDA8B2A3`)
---@param coords vector3
---@param radius number
---@param originalModel integer|string
---@param newModel integer|string
---@param p6 boolean
function EntityStatic.createModelSwap(coords, radius, originalModel, newModel, p6) end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_LOAD_CLONE_CREATE` (`0xD2CB95A3`)
---@param data string
---@param objectId integer
---@param tree string
---@return fx.Entity? result
function EntityStatic.experimentalLoadCloneCreate(data, objectId, tree) end

--- ```
--- In the script "player_scene_t_bbfight.c4":
--- "if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))"
--- -- &l_16E (p0) is requested as an anim dictionary earlier in the script.
--- -- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param.
--- -- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim
--- --v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:
--- "if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"
--- Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though
--- -alphazolam
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `FIND_ANIM_EVENT_PHASE` (`0x07F1BE2BCCAA27A7`)
---@param animDictionary string
---@param animName string
---@param p2 string
---@return boolean result
---@return any p3
---@return any p4
function EntityStatic.findAnimEventPhase(animDictionary, animName, p2) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ANIM_DURATION` (`0xFEDDF04D62B8D790`)
---@param animDict string
---@param animName string
---@return number result
function EntityStatic.getAnimDuration(animDict, animName) end

--- Get the local entity handle of the given network id
---
--- Through this native you can get back the entity that you previously converted to netid with [NetworkGetNetworkIdFromEntity](#\_0x9E35DAB6) or with the `ToNet` natives
--- **Native**: `NETWORK_GET_ENTITY_FROM_NETWORK_ID` (`0xCE4E5D9B0A4FF560`)
---@param netId integer the network id of the entity
---@return fx.Entity? result The local entity of the network id
function EntityStatic.getFromNetworkId(netId) end

--- Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](#\_0x5BA35AAF).
--- **Native**: `GET_ENTITY_FROM_STATE_BAG_NAME` (`0x4BDF1867`)
---@param bagName string An internal state bag ID from the argument to a state bag change handler.
---@return fx.Entity? result The entity or nil if the state bag name did not refer to an entity, or the entity does not exist.
function EntityStatic.getFromStateBagName(bagName) end

--- Returns the handle of a cutscene entity, can be ped
--- **Native**: `GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY` (`0x0A2E9FDB9A8C62F6`)
---@param cutsceneEntName string I.E MP\_1, MP\_4, Michael, Trevor
---@param modelHash fx.Model|integer|string Not strictly neccasary, can get 0
---@return fx.Entity? result Returns entity
function EntityStatic.getIndexOfCutsceneEntity(cutsceneEntName, modelHash) end

--- **Native**: `GET_ENTITY_INDEX_OF_REGISTERED_ENTITY` (`0xC0741A26499654CD`)
---@param cutsceneEntName string
---@param modelHash fx.Model|integer|string
---@return fx.Entity? result
function EntityStatic.getIndexOfRegisteredEntity(cutsceneEntName, modelHash) end

--- ```
--- Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius.
--- ```
--- **Native**: `GET_ENTITY_INSIDE_EXPLOSION_AREA` (`0x14BA4BA137AF6CEC`)
---@param explosionType integer See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param coords1 vector3
---@param coords2 vector3
---@param radius number
---@return fx.Entity? result
function EntityStatic.getInsideExplosionArea(explosionType, coords1, coords2, radius) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `GET_ENTITY_INSIDE_EXPLOSION_SPHERE` (`0xB3CD51E3DB86F176`)
---@param explosionType integer
---@param coords vector3
---@param radius number
---@return fx.Entity? result
function EntityStatic.getInsideExplosionSphere(explosionType, coords, radius) end

--- **Native**: `IS_AN_ENTITY` (`0x731EC8A916BD11A1`)
---@param handle integer
---@return boolean result
function EntityStatic.isAn(handle) end

--- ```
--- gets the entity id of a network id
--- ```
--- **Native**: `NET_TO_ENT` (`0xBFFEAB45A9A9094A`)
---@param netHandle integer
---@return fx.Entity? result
function EntityStatic.netToEnt(netHandle) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM` (`0xB9C54555ED30FBC4`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
---@param p5 any
---@param p8 number
---@param p9 number
---@param p10 any
---@param p11 number
---@return boolean result
---@return any p6
---@return any p7
function EntityStatic.playSynchronizedMapAnim(p0, p1, p2, p3, p4, p5, p8, p9, p10, p11) end

--- **Native**: `REMOVE_FORCED_OBJECT` (`0x61B6775E83C0DB6F`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function EntityStatic.removeForcedObject(p0, p1, p2, p3, p4) end

--- p5 requires more research. See also [`CREATE_MODEL_HIDE`](#\_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#\_0x92C47782FDA8B2A3).
---
--- Network players do not see changes done with this.
--- **Native**: `REMOVE_MODEL_HIDE` (`0xD9E3006FB3CBD765`)
---@param coords vector3
---@param radius number The radius specified in gta units
---@param model fx.Model|integer|string The model that you want to make visible
---@param p5 boolean
function EntityStatic.removeModelHide(coords, radius, model, p5) end

--- **Native**: `REMOVE_MODEL_SWAP` (`0x033C0F9A64E229AE`)
---@param coords vector3
---@param radius number
---@param originalModel integer|string
---@param newModel integer|string
---@param p6 boolean
function EntityStatic.removeModelSwap(coords, radius, originalModel, newModel, p6) end

--- Gets the selected entity at the current mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `SELECT_ENTITY_AT_CURSOR` (`0x3DD8130F`)
---@param hitFlags integer A bit mask of entity types to match.
---@param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
---@return fx.Entity? result An entity, or nil.
function EntityStatic.selectAtCursor(hitFlags, precise) end

--- Gets the selected entity at the specified mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `SELECT_ENTITY_AT_POS` (`0xAFE8D405`)
---@param fracX number Mouse cursor X fraction.
---@param fracY number Mouse cursor Y fraction.
---@param hitFlags integer A bit mask of entity types to match.
---@param precise boolean Whether to do a *precise* test, i.e. of visual coordinates, too.
---@return fx.Entity? result An entity, or nil.
function EntityStatic.selectAtPos(fracX, fracY, hitFlags, precise) end

--- **Native**: `STOP_SYNCHRONIZED_MAP_ENTITY_ANIM` (`0x11E79CAB7183B6F5`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
---@param p5 number
---@return boolean result
function EntityStatic.stopSynchronizedMapAnim(p0, p1, p2, p3, p4, p5) end

--- **Native**: `WOULD_ENTITY_BE_OCCLUDED` (`0xEE5D2A122E09EC42`)
---@param entityModelHash integer|string
---@param coords vector3
---@param p4 boolean
---@return boolean result
function EntityStatic.wouldBeOccluded(entityModelHash, coords, p4) end

