---@meta
---@diagnostic disable
-- fx.Ped (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.ServerPedCreateOptions : fx.ServerCreateOptions
---@field pedType? integer Ignored by the server setter (kept for symmetry)
---@class fx.Ped : fx.Entity
---@field handle integer Raw entity handle.
---@field exists boolean (read-only) DOES_ENTITY_EXIST. Never raises, even on a deleted entity or in debug mode.
---@field states fx.PedStates Entity state bag (`entity:<netId>`); `states.x = v` is replicated to every client.
---@field state fx.PedStates Alias of `states` (`Entity(h).state` compatibility).
---@field armour integer [GET_PED_ARMOUR / SET_PED_ARMOUR]
---@field attachedTo? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO] Gets the entity that this entity is attached to.
---@field causeOfDeath integer (read-only) [GET_PED_CAUSE_OF_DEATH]
---@field collisionDisabled boolean (read-only) [GET_ENTITY_COLLISION_DISABLED]
---@field currentWeapon integer (read-only) [GET_CURRENT_PED_WEAPON] Returns the hash of weapon the Ped is currently using.
---@field desiredHeading number (read-only) [GET_PED_DESIRED_HEADING]
---@field firstOwner integer (read-only) [NETWORK_GET_FIRST_ENTITY_OWNER] Returns the first owner ID of the specified entity.
---@field heading number [GET_ENTITY_HEADING / SET_ENTITY_HEADING]
---@field health integer (read-only) [GET_ENTITY_HEALTH] Only works for vehicle and peds
---@field isAPlayer boolean (read-only) [IS_PED_A_PLAYER] This native checks if the given ped is a player.
---@field isFlashLightOn boolean (read-only) [IS_FLASH_LIGHT_ON]
---@field isHandcuffed boolean (read-only) [IS_PED_HANDCUFFED]
---@field isInAnyVehicle boolean (read-only) [IS_PED_IN_ANY_VEHICLE]
---@field isPositionFrozen boolean (read-only) [IS_ENTITY_POSITION_FROZEN] A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---@field isRagdoll boolean (read-only) [IS_PED_RAGDOLL]
---@field isStrafing boolean (read-only) [IS_PED_STRAFING]
---@field isUsingActionMode boolean (read-only) [IS_PED_USING_ACTION_MODE]
---@field isVisible boolean (read-only) [IS_ENTITY_VISIBLE] This native checks if the given entity is visible.
---@field lastVehicle? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_IN] Last vehicle used by the ped. Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
---@field maxHealth integer (read-only) [GET_PED_MAX_HEALTH]
---@field model fx.Model (read-only) [GET_ENTITY_MODEL]
---@field netType fx.Enum.NetObjEntityType (read-only) [GET_NET_TYPE_FROM_ENTITY] Gets the specific entity type (as an integer), which can be one of the following defined down below: #### FiveM: #### RedM:
---@field networkId integer (read-only) [NETWORK_GET_NETWORK_ID_FROM_ENTITY]
---@field orphanMode integer [GET_ENTITY_ORPHAN_MODE / SET_ENTITY_ORPHAN_MODE]
---@field owner integer (read-only) [NETWORK_GET_ENTITY_OWNER] Returns the owner ID of the specified entity.
---@field populationType integer (read-only) [GET_ENTITY_POPULATION_TYPE] This native gets an entity's population type.
---@field position vector3 [GET_ENTITY_COORDS / SET_ENTITY_COORDS] Entity position. Assigning calls SET_ENTITY_COORDS without flags; use setCoords for the flags. Gets the current coordinates for a specified entity. This native…
---@field relationshipGroupHash integer (read-only) [GET_PED_RELATIONSHIP_GROUP_HASH] Gets the current relationship group hash of a ped.
---@field remoteSyncedScenesAllowed boolean [GET_ENTITY_REMOTE_SYNCED_SCENES_ALLOWED / SET_ENTITY_REMOTE_SYNCED_SCENES_ALLOWED]
---@field rotation vector3 (read-only) [GET_ENTITY_ROTATION]
---@field rotationVelocity vector3 (read-only) [GET_ENTITY_ROTATION_VELOCITY]
---@field routingBucket integer [GET_ENTITY_ROUTING_BUCKET / SET_ENTITY_ROUTING_BUCKET] Gets the routing bucket for the specified entity. Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are populatio…
---@field script string (read-only) [GET_ENTITY_SCRIPT]
---@field scriptTaskCommand integer (read-only) [GET_PED_SCRIPT_TASK_COMMAND] Gets the script task command currently assigned to the ped.
---@field scriptTaskStage integer (read-only) [GET_PED_SCRIPT_TASK_STAGE] Gets the stage of the peds scripted task.
---@field seatIsUsing integer (read-only) [GET_SEAT_PED_IS_USING]
---@field selectedWeapon integer (read-only) [GET_SELECTED_PED_WEAPON] An alias of [GET_CURRENT_PED_WEAPON](#\_0xB0237302). Note, the client-side [GET_SELECTED_PED_WEAPON](#\_0x0A6DB4965674D243) native returns the weapon selected …
---@field sourceOfDamage? fx.Entity (read-only) [GET_PED_SOURCE_OF_DAMAGE] Get the last entity that damaged the ped. This native is used server side when using OneSync.
---@field sourceOfDeath? fx.Entity (read-only) [GET_PED_SOURCE_OF_DEATH] Get the entity that killed the ped. This native is used server side when using OneSync.
---@field speed number (read-only) [GET_ENTITY_SPEED] Gets the current speed of the entity in meters per second.
---@field stealthMovement boolean (read-only) [GET_PED_STEALTH_MOVEMENT]
---@field type integer (read-only) [GET_ENTITY_TYPE] Gets the entity type (as an integer), which can be one of the following defined down below: **The following entities will return type `1`:** * Ped * Player * A…
---@field vehicle? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_IN] Current vehicle of the ped (nil when not in a vehicle). Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side w…
---@field velocity vector3 [GET_ENTITY_VELOCITY / SET_ENTITY_VELOCITY]
local Ped = {}

---Promise resolved with the entity once it exists and, unless `waitOwner == false`, has a network owner
---(owner stays -1 until a player is in scope). Rejects with a TimeoutError after `timeoutMs` (default 10000).
---@param timeoutMs? integer
---@param waitOwner? boolean default true
---@return fx.Promise<fx.Ped>
function Ped:readyAsync(timeoutMs, waitOwner) end

---Escape hatch: calls any native with the handle as first argument.
---@param hash integer
---@param ... any
---@return any
function Ped:invoke(hash, ...) end

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
function Ped:addBlip() end

--- ```
--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
--- collection - PedDecorationCollection filename hash
--- overlay - Item name hash
--- Example:
--- Entry inside "mpbeach_overlays.xml" -
--- <Item>
--- <uvPos x="0.500000" y="0.500000" />
--- <scale x="0.600000" y="0.500000" />
--- <rotation value="0.000000" />
--- <nameHash>FM_Hair_Fuzz</nameHash>
--- <txdHash>mp_hair_fuzz</txdHash>
--- <txtHash>mp_hair_fuzz</txtHash>
--- <zone>ZONE_HEAD</zone>
--- <type>TYPE_TATTOO</type>
--- <faction>FM</faction>
--- <garment>All</garment>
--- <gender>GENDER_DONTCARE</gender>
--- <award />
--- <awardLevel />
--- </Item>
--- Code:
--- PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [ADD_PED_DECORATION_FROM_HASHES](?\_0x5F5D1665E352A839).**
--- **Native**: `ADD_PED_DECORATION_FROM_HASHES` (`0x70559AC7`)
---@param collection integer|string
---@param overlay integer|string
---@return fx.Ped self
function Ped:addDecorationFromHashes(collection, overlay) end

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
---@return fx.Ped self
function Ped:applyForce(forceType, coords, off, nComponent, bLocalForce, bLocalOffset, bScaleByMass, bPlayAudio, bScaleByTimeWarp) end

--- CLEAR_PED_PROP
---
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_PROP](?\_0x0943E5B8E078E76E).**
--- **Native**: `CLEAR_PED_PROP` (`0x2D23D743`)
---@param propId fx.Enum.AnchorPoints|integer The prop id you want to clear from the ped. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
---@return fx.Ped self
function Ped:clearProp(propId) end

--- CLEAR_PED_SECONDARY_TASK
---
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_SECONDARY_TASK](?\_0x176CECF6F920D707).**
--- **Native**: `CLEAR_PED_SECONDARY_TASK` (`0xA635F451`)
---@return fx.Ped self
function Ped:clearSecondaryTask() end

--- Clear a ped's tasks. Stop animations and other tasks created by scripts.
---
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS](?\_0xE1EF3C1216AFF2CD).**
--- **Native**: `CLEAR_PED_TASKS` (`0xDE3316AB`)
---@return fx.Ped self
function Ped:clearTasks() end

--- Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
---
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS_IMMEDIATELY](?\_0xAAA34F8A7CB32098).**
--- **Native**: `CLEAR_PED_TASKS_IMMEDIATELY` (`0xBC045625`)
---@return fx.Ped self
function Ped:clearTasksImmediately() end

--- Deletes the specified entity.
---
--- **NOTE**: For trains this will only work if called on the train engine, it will not work on its carriages.
--- **Native**: `DELETE_ENTITY` (`0xFAA3D236`)
---@return nil
function Ped:delete() end

--- Deletes the specified `entity` and any carriage its attached to, or that is attached to it.
--- **Native**: `DELETE_TRAIN` (`0x523BA3DA`)
---@return fx.Ped self
function Ped:deleteTrain() end

--- Internal function for ensuring an entity has a state bag.
--- **Native**: `ENSURE_ENTITY_STATE_BAG` (`0x3BB78F05`)
---@return fx.Ped self
function Ped:ensureStateBag() end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
---
--- **This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](?\_0x428CA6DBD1094446).**
--- **Native**: `FREEZE_ENTITY_POSITION` (`0x65C16D57`)
---@param toggle boolean Freeze or unfreeze entity.
---@return fx.Ped self
function Ped:freeze(toggle) end

--- Gets the type of a ped's specific task given an index of the CPedTaskSpecificDataNode nodes.
--- A ped will typically have a task at index 0, if a ped has multiple tasks at once they will be in the order 0, 1, 2, etc.
--- **Native**: `GET_PED_SPECIFIC_TASK_TYPE` (`0x7F4563D3`)
---@param index integer A zero-based index with a maximum value of 7.
---@return integer result The type of the specific task. 1604: A value of 530 denotes no script task is assigned or an invalid input was given. 2060+: A value of 531 denotes no script task is assigned or an invalid input was …
function Ped:getSpecificTaskType(index) end

--- GIVE_WEAPON_TO_PED
---
--- **This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_TO_PED](?\_0xBF0FD6E56C964FCB).**
--- **Native**: `GIVE_WEAPON_TO_PED` (`0xC4D88A85`)
---@param weaponHash integer|string
---@param ammoCount integer
---@param isHidden boolean
---@param bForceInHand boolean
---@return fx.Ped self
function Ped:giveWeapon(weaponHash, ammoCount, isHidden, bForceInHand) end

--- GIVE_WEAPON_COMPONENT_TO_PED
---
--- **This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_COMPONENT_TO_PED](?\_0xD966D51AA5B28BB9).**
--- **Native**: `GIVE_WEAPON_COMPONENT_TO_PED` (`0x3E1E286D`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return fx.Ped self
function Ped:giveWeaponComponent(weaponHash, componentHash) end

--- **Native**: `IS_PED_IN_VEHICLE` (`0x7DA6BC83`)
---@param vehicle fx.Vehicle|integer the vehicle id
---@return boolean result Returns `true` if the specified `ped` is in the specified `vehicle`
function Ped:isInVehicle(vehicle) end

--- Parameter `p1` does not seem to be used or referenced in game binaries.\
--- **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
---
--- **This is the server-side RPC native equivalent of the client native [REMOVE_ALL_PED_WEAPONS](?\_0xF25DF915FA38C5F3).**
--- **Native**: `REMOVE_ALL_PED_WEAPONS` (`0xA44CE817`)
---@param p1 boolean
---@return fx.Ped self
function Ped:removeAllWeapons(p1) end

--- ```
--- This native removes a specified weapon from your selected ped.
--- Weapon Hashes: pastebin.com/0wwDZgkF
--- Example:
--- C#:
--- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
--- C++:
--- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
--- The code above removes the knife from the player.
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_FROM_PED](?\_0x4899CB088EDF59B8).**
--- **Native**: `REMOVE_WEAPON_FROM_PED` (`0x9C37F220`)
---@param weaponHash integer|string
---@return fx.Ped self
function Ped:removeWeapon(weaponHash) end

--- REMOVE_WEAPON_COMPONENT_FROM_PED
---
--- **This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_COMPONENT_FROM_PED](?\_0x1E8BE90C74FB4C09).**
--- **Native**: `REMOVE_WEAPON_COMPONENT_FROM_PED` (`0x412AA00D`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return fx.Ped self
function Ped:removeWeaponComponent(weaponHash, componentHash) end

--- ```
--- NativeDB Added Parameter 4: BOOL p3
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_AMMO](?\_0x14E56BC5B5DB6A19).**
--- **Native**: `SET_PED_AMMO` (`0xBF90DF1A`)
---@param weaponHash integer|string
---@param ammo integer
---@return fx.Ped self
function Ped:setAmmo(weaponHash, ammo) end

--- SET_PED_CAN_RAGDOLL
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_CAN_RAGDOLL](?\_0xB128377056A54E2A).**
--- **Native**: `SET_PED_CAN_RAGDOLL` (`0xCF1384C4`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanRagdoll(toggle) end

--- This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
--- ### MP Freemode list of components
---
--- **0**: Face
--- **1**: Mask
--- **2**: Hair
--- **3**: Torso
--- **4**: Leg
--- **5**: Parachute / bag
--- **6**: Shoes
--- **7**: Accessory
--- **8**: Undershirt
--- **9**: Kevlar
--- **10**: Badge
--- **11**: Torso 2
--- List of Component IDs
---
--- ```cpp
--- // Components
--- enum ePedVarComp
--- {
--- PV_COMP_INVALID = 0xFFFFFFFF,
--- PV_COMP_HEAD = 0, // "HEAD"
--- PV_COMP_BERD = 1, // "BEARD"
--- PV_COMP_HAIR = 2, // "HAIR"
--- PV_COMP_UPPR = 3, // "UPPER"
--- PV_COMP_LOWR = 4, // "LOWER"
--- PV_COMP_HAND = 5, // "HAND"
--- PV_COMP_FEET = 6, // "FEET"
--- PV_COMP_TEEF = 7, // "TEETH"
--- PV_COMP_ACCS = 8, // "ACCESSORIES"
--- PV_COMP_TASK = 9, // "TASK"
--- PV_COMP_DECL = 10, // "DECL"
--- PV_COMP_JBIB = 11, // "JBIB"
--- PV_COMP_MAX = 12,
--- };
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_COMPONENT_VARIATION](?\_0x262B14F48D29DE80).**
--- **Native**: `SET_PED_COMPONENT_VARIATION` (`0xD4F7B05C`)
---@param componentId fx.Enum.PedVarComp|integer The component that you want to set.
---@param drawableId integer The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD).
---@param paletteId integer 0 to 3.
---@return fx.Ped self
function Ped:setComponentVariation(componentId, drawableId, textureId, paletteId) end

--- ```cpp
--- // Potential names and hash collisions included as comments
--- enum ePedConfigFlags {
--- CPED_CONFIG_FLAG_CreatedByFactory = 0,
--- CPED_CONFIG_FLAG_CanBeShotInVehicle = 1,
--- CPED_CONFIG_FLAG_NoCriticalHits = 2,
--- CPED_CONFIG_FLAG_DrownsInWater = 3,
--- CPED_CONFIG_FLAG_DrownsInSinkingVehicle = 4,
--- CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming = 5,
--- CPED_CONFIG_FLAG_HasBulletProofVest = 6,
--- CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
--- CPED_CONFIG_FLAG_NeverFallOffSkis = 8,
--- CPED_CONFIG_FLAG_NeverEverTargetThisPed = 9,
--- CPED_CONFIG_FLAG_ThisPedIsATargetPriority = 10,
--- CPED_CONFIG_FLAG_TargettableWithNoLos = 11,
--- CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands = 12,
--- CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
--- CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead = 14,
--- CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent = 15,
--- CPED_CONFIG_FLAG_KeepTasksAfterCleanUp = 16,
--- CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
--- CPED_CONFIG_FLAG_HasAScriptBrain = 18,
--- CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad = 19,
--- CPED_CONFIG_FLAG_AllowMedicsToReviveMe = 20,
--- CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript = 21,
--- CPED_CONFIG_FLAG_NotAllowedToCrouch = 22,
--- CPED_CONFIG_FLAG_DeathPickupsPersist = 23,
--- CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
--- CPED_CONFIG_FLAG_ForceDieIfInjured = 25,
--- CPED_CONFIG_FLAG_DontDragMeOutCar = 26,
--- CPED_CONFIG_FLAG_StayInCarOnJack = 27,
--- CPED_CONFIG_FLAG_ForceDieInCar = 28,
--- CPED_CONFIG_FLAG_GetOutUndriveableVehicle = 29,
--- CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds = 30,
--- CPED_CONFIG_FLAG_DontStoreAsPersistent = 31,
--- CPED_CONFIG_FLAG_WillFlyThroughWindscreen = 32,
--- CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
--- CPED_CONFIG_FLAG_HasHelmet = 34,
--- CPED_CONFIG_FLAG_UseHelmet = 35,
--- CPED_CONFIG_FLAG_DontTakeOffHelmet = 36,
--- [...]
--- **Native**: `SET_PED_CONFIG_FLAG` (`0x9CFBE10D`)
---@param flagId fx.Enum.PedConfigFlags|integer
---@param value boolean
---@return fx.Ped self
function Ped:setConfigFlag(flagId, value) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
---
--- **This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](?\_0x06843DA7060A026B).**
--- **Native**: `SET_ENTITY_COORDS` (`0xDF70B41B`)
---@param pos vector3 The X coordinate. / The Y coordinate. / The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
---@return fx.Ped self
function Ped:setCoords(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- SET_CURRENT_PED_WEAPON
---
--- **This is the server-side RPC native equivalent of the client native [SET_CURRENT_PED_WEAPON](?\_0xADF692B254977C0C).**
--- **Native**: `SET_CURRENT_PED_WEAPON` (`0xB8278882`)
---@param weaponHash integer|string
---@param bForceInHand boolean
---@return fx.Ped self
function Ped:setCurrentWeapon(weaponHash, bForceInHand) end

--- ```
--- Sets Ped Default Clothes
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_DEFAULT_COMPONENT_VARIATION](?\_0x45EEE61580806D63).**
--- **Native**: `SET_PED_DEFAULT_COMPONENT_VARIATION` (`0xC866A984`)
---@return fx.Ped self
function Ped:setDefaultComponentVariation() end

--- It overrides the default distance culling radius of an entity. Set to `0.0` to reset.
--- If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
---
--- **WARNING**: Culling natives are deprecated and have known, [unfixable issues](https://forum.cfx.re/t/issue-with-culling-radius-and-server-side-entities/4900677/4)
--- **Native**: `SET_ENTITY_DISTANCE_CULLING_RADIUS` (`0xD3A183A3`)
---@param radius number The new distance culling radius.
---@return fx.Ped self
function Ped:setDistanceCullingRadius(radius) end

--- Used for freemode (online) characters.
--- Indices:
---
--- 1.  black
--- 2.  very light blue/green
--- 3.  dark blue
--- 4.  brown
--- 5.  darker brown
--- 6.  light brown
--- 7.  blue
--- 8.  light blue
--- 9.  pink
--- 10. yellow
--- 11. purple
--- 12. black
--- 13. dark green
--- 14. light brown
--- 15. yellow/black pattern
--- 16. light colored spiral pattern
--- 17. shiny red
--- 18. shiny half blue/half red
--- 19. half black/half light blue
--- 20. white/red perimter
--- 21. green snake
--- 22. red snake
--- 23. dark blue snake
--- 24. dark yellow
--- 25. bright yellow
--- 26. all black
--- 27. red small pupil
--- 28. devil blue/black
--- 29. white small pupil
--- 30. glossed over
---
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_EYE_COLOR](?\_0x50B56988B170AFDF).**
--- **Native**: `SET_PED_EYE_COLOR` (`0xEC09DB1B`)
---@param index integer
---@return fx.Ped self
function Ped:setEyeColor(index) end

--- Sets the various freemode face features, e.g. nose length, chin shape.
--- **Indexes (From 0 to 19):**
--- Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
---
--- *   **0**: Nose Width (Thin/Wide)
--- *   **1**: Nose Peak (Up/Down)
--- *   **2**: Nose Length (Long/Short)
--- *   **3**: Nose Bone Curveness (Crooked/Curved)
--- *   **4**: Nose Tip (Up/Down)
--- *   **5**: Nose Bone Twist (Left/Right)
--- *   **6**: Eyebrow (Up/Down)
--- *   **7**: Eyebrow (In/Out)
--- *   **8**: Cheek Bones (Up/Down)
--- *   **9**: Cheek Sideways Bone Size (In/Out)
--- *   **10**: Cheek Bones Width (Puffed/Gaunt)
--- *   **11**: Eye Opening (Both) (Wide/Squinted)
--- *   **12**: Lip Thickness (Both) (Fat/Thin)
--- *   **13**: Jaw Bone Width (Narrow/Wide)
--- *   **14**: Jaw Bone Shape (Round/Square)
--- *   **15**: Chin Bone (Up/Down)
--- *   **16**: Chin Bone Length (In/Out or Backward/Forward)
--- *   **17**: Chin Bone Shape (Pointed/Square)
--- *   **18**: Chin Hole (Chin Bum)
--- *   **19**: Neck Thickness (Thin/Thick)
---     **Note:**
---     You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_FACE_FEATURE](?\_0x71A5C1DBA060049E).**
--- **Native**: `SET_PED_FACE_FEATURE` (`0x6C8D4458`)
---@param index integer An integer ranging from 0 to 19
---@param scale number A float ranging from -1.0 to 1.0
---@return fx.Ped self
function Ped:setFaceFeature(index, scale) end

--- Sets the tint index for the hair on the specified ped.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_HAIR_TINT](?\_0x4CFFC65454C93A49).**
--- **Native**: `SET_PED_HAIR_TINT` (`0xA23FE32C`)
---@param colorID integer The tint index for the primary hair color.
---@param highlightColorID integer The tint index for the hair highlight color.
---@return fx.Ped self
function Ped:setHairTint(colorID, highlightColorID) end

--- For more info and the list of faceIDs please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic. Note that the Skin and Shape IDs are shared. This native will use this same list for both Skin and Shape IDs.
--- **Other information:**
--- IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.
--- This native function is often called prior to calling natives such as:
---
--- *   [`SetPedHairColor`](#\_0xA23FE32C)
--- *   [`SetPedHeadOverlayColor`](#\_0x78935A27)
--- *   [`SetPedHeadOverlay`](#\_0xD28DBA90)
--- *   [`SetPedFaceFeature`](#\_0x6C8D4458)
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_BLEND_DATA](?\_0x9414E18B9434C2FE).**
--- **Native**: `SET_PED_HEAD_BLEND_DATA` (`0x60746B88`)
---@param shapeFirstID integer Controls the shape of the first ped's face
---@param shapeSecondID integer Controls the shape of the second ped's face
---@param shapeThirdID integer Controls the shape of the third ped's face
---@param skinFirstID integer Controls the first id's skin tone
---@param skinSecondID integer Controls the second id's skin tone
---@param skinThirdID integer Controls the third id's skin tone
---@param shapeMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (shapeFirstID and shapeSecondID)
---@param skinMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (skinFirstID and skinSecondID)
---@param thirdMix number Overrides the others in favor of the third IDs.
---@param isParent boolean IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
---@return fx.Ped self
function Ped:setHeadBlendData(shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent) end

--- ```
--- OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.
--- overlayID       Part                  Index, to disable
--- 0               Blemishes             0 - 23, 255
--- 1               Facial Hair           0 - 28, 255
--- 2               Eyebrows              0 - 33, 255
--- 3               Ageing                0 - 14, 255
--- 4               Makeup                0 - 74, 255
--- 5               Blush                 0 - 6, 255
--- 6               Complexion            0 - 11, 255
--- 7               Sun Damage            0 - 10, 255
--- 8               Lipstick              0 - 9, 255
--- 9               Moles/Freckles        0 - 17, 255
--- 10              Chest Hair            0 - 16, 255
--- 11              Body Blemishes        0 - 11, 255
--- 12              Add Body Blemishes    0 - 1, 255
--- ```
---
--- **Note:**
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_OVERLAY](?\_0x48F44967FA05CC1E).**
--- **Native**: `SET_PED_HEAD_OVERLAY` (`0xD28DBA90`)
---@param overlayID integer The overlay id displayed up above.
---@param index integer An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
---@param opacity number A float ranging from 0.0 to 1.0
---@return fx.Ped self
function Ped:setHeadOverlay(overlayID, index, opacity) end

--- ```
--- Used for freemode (online) characters.
--- Called after SET_PED_HEAD_OVERLAY().
--- ```
---
--- **Note:**
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
---
--- **This is the server-side RPC native equivalent of the client native [\_SET_PED_HEAD_OVERLAY_COLOR](?\_0x497BF74A7B9CB952).**
--- **Native**: `SET_PED_HEAD_OVERLAY_COLOR` (`0x78935A27`)
---@param overlayID integer An integer representing the overlay id
---@param colorType integer 1 for eyebrows, beards, makeup, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
---@param colorID integer An integer representing the primary color id
---@param secondColorID integer An integer representing the secondary color id
---@return fx.Ped self
function Ped:setHeadOverlayColor(overlayID, colorType, colorID, secondColorID) end

--- It allows to flag an entity to ignore the request control filter policy.
--- **Native**: `SET_ENTITY_IGNORE_REQUEST_CONTROL_FILTER` (`0x9F7F8D36`)
---@param ignore boolean Define if the entity ignores the request control filter policy.
---@return fx.Ped self
function Ped:setIgnoreRequestControlFilter(ignore) end

--- SET_PED_INTO_VEHICLE
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_INTO_VEHICLE](?\_0xF75B0D629E1C063D).**
--- **Native**: `SET_PED_INTO_VEHICLE` (`0x7500C79`)
---@param vehicle fx.Vehicle|integer
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669). -2 for the first available seat.
---@return fx.Ped self
function Ped:setIntoVehicle(vehicle, seatIndex) end

--- This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
--- ### MP Freemode list of props
---
--- **0**: Hats
--- **1**: Glasses
--- **2**: Ears
--- **6**: Watches
--- **7**: Bracelets
--- List of Prop IDs
---
--- ```cpp
--- enum eAnchorPoints
--- {
--- ANCHOR_HEAD = 0, // "p_head"
--- ANCHOR_EYES = 1, // "p_eyes"
--- ANCHOR_EARS = 2, // "p_ears"
--- ANCHOR_MOUTH = 3, // "p_mouth"
--- ANCHOR_LEFT_HAND = 4, // "p_lhand"
--- ANCHOR_RIGHT_HAND = 5, // "p_rhand"
--- ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
--- ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
--- ANCHOR_HIP = 8, // "p_lhip"
--- ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
--- ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
--- ANCHOR_PH_L_HAND = 11, // "ph_lhand"
--- ANCHOR_PH_R_HAND = 12, // "ph_rhand"
--- NUM_ANCHORS = 13,
--- };
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_PROP_INDEX](?\_0x93376B65A266EB5F).**
--- **Native**: `SET_PED_PROP_INDEX` (`0x829F2E2`)
---@param componentId fx.Enum.AnchorPoints|integer The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId integer The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@param attach boolean Attached or not.
---@return fx.Ped self
function Ped:setPropIndex(componentId, drawableId, textureId, attach) end

--- ```
--- p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_COMPONENT_VARIATION](?\_0xC8A9481A01E63C28).**
--- **Native**: `SET_PED_RANDOM_COMPONENT_VARIATION` (`0x4111BA46`)
---@param p1 integer
---@return fx.Ped self
function Ped:setRandomComponentVariation(p1) end

--- SET_PED_RANDOM_PROPS
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_PROPS](?\_0xC44AA05345C992C6).**
--- **Native**: `SET_PED_RANDOM_PROPS` (`0xE3318E0E`)
---@return fx.Ped self
function Ped:setRandomProps() end

--- PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
--- Known values:
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_RESET_FLAG](?\_0xC1E8A365BF3B29F2).**
--- **Native**: `SET_PED_RESET_FLAG` (`0xCFF6FF66`)
---@param flagId integer
---@param doReset boolean
---@return fx.Ped self
function Ped:setResetFlag(flagId, doReset) end

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
---@return fx.Ped self
function Ped:setRotation(pitch, roll, yaw, rotationOrder, bDeadCheck) end

--- p4/p5: Unusued in TU27
---
--- ### Ragdoll Types
---
--- **0**: CTaskNMRelax
--- **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
--- **Else**: CTaskNMBalance
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL](?\_0xAE99FB955581844A).**
--- **Native**: `SET_PED_TO_RAGDOLL` (`0x83CB5052`)
---@param minTime integer Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
---@param maxTime integer
---@param ragdollType integer
---@param bAbortIfInjured boolean unused
---@param bAbortIfDead boolean unused
---@param bForceScriptControl boolean
---@return fx.Ped self
function Ped:setToRagdoll(minTime, maxTime, ragdollType, bAbortIfInjured, bAbortIfDead, bForceScriptControl) end

--- ```cpp
--- enum eNMFallType {
--- TYPE_FROM_HIGH = 0,
--- TYPE_OVER_WALL = 1,
--- TYPE_DOWN_STAIRS = 2,
--- TYPE_DIE_TYPES = 3,
--- TYPE_DIE_FROM_HIGH = 4,
--- TYPE_DIE_OVER_WALL = 5,
--- TYPE_DIE_DOWN_STAIRS = 6
--- }
--- ```
---
--- ```
--- Return variable is never used in R*'s scripts.
--- Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.
--- x, y, and z are coordinates, most likely to where the ped will fall.
--- p7 is probably the force of the fall, but untested, so I left the variable name the same.
--- p8 to p13 are always 0f in R*'s scripts.
--- (Simplified) Example of the usage of the function from R*'s scripts:
--- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL_WITH_FALL](?\_0xD76632D99E4966C8).**
--- **Native**: `SET_PED_TO_RAGDOLL_WITH_FALL` (`0xFA12E286`)
---@param minTime integer
---@param maxTime integer
---@param nFallType fx.Enum.NMFallType|integer The type of fall.
---@param dir vector3 The direction of the fall.
---@param fGroundHeight number The ground height (z).
---@param grab1 vector3 unused
---@param grab2 vector3 unused
---@return fx.Ped self
function Ped:setToRagdollWithFall(minTime, maxTime, nFallType, dir, fGroundHeight, grab1, grab2) end

--- ```
--- Makes the specified ped attack the target ped.
--- p2 should be 0
--- p3 should be 16
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_COMBAT_PED](?\_0xF166E48407BAC484).**
--- **Native**: `TASK_COMBAT_PED` (`0xCB0D8932`)
---@param targetPed fx.Ped|integer
---@param p2 integer
---@param p3 integer
---@return fx.Ped self
function Ped:taskCombat(targetPed, p2, p3) end

--- ```
--- Example:
--- TASK::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
--- Needs working example. Doesn't seem to do anything.
--- I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
--- I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
--- I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_DRIVE_BY](?\_0x2F8AF0E82773A171).**
--- **Native**: `TASK_DRIVE_BY` (`0x2B84D1C4`)
---@param targetPed fx.Ped|integer
---@param targetVehicle fx.Vehicle|integer
---@param target vector3
---@param distanceToShoot number
---@param pedAccuracy integer
---@param p8 boolean
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskDriveBy(targetPed, targetVehicle, target, distanceToShoot, pedAccuracy, p8, firingPattern) end

--- ```
--- speed 1.0 = walk, 2.0 = run
--- p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
--- p6 is always 0
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_ENTER_VEHICLE](?\_0xC20E50AA46D09CA8).**
--- **Native**: `TASK_ENTER_VEHICLE` (`0xB8689B4E`)
---@param vehicle fx.Vehicle|integer
---@param timeout integer
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param speed number
---@param flag integer
---@param p6 any
---@return fx.Ped self
function Ped:taskEnterVehicle(vehicle, timeout, seatIndex, speed, flag, p6) end

--- TASK_GO_STRAIGHT_TO_COORD
---
--- **This is the server-side RPC native equivalent of the client native [TASK_GO_STRAIGHT_TO_COORD](?\_0xD76B57B44F1E6F8B).**
--- **Native**: `TASK_GO_STRAIGHT_TO_COORD` (`0x80A9E7A7`)
---@param coords vector3 The coordinate.
---@param speed number The ped movement speed.
---@param timeout integer \-1 , other values appear to break the ped movement.
---@param targetHeading number The heading you want the ped to be on x,y,z coord.
---@param distanceToSlide number The distance from x,y,z where the ped will start sliding.
---@return fx.Ped self
function Ped:taskGoStraightToCoord(coords, speed, timeout, targetHeading, distanceToSlide) end

--- Tells a ped to go to a coord by any means.
---
--- ```cpp
--- enum eDrivingMode {
--- DF_StopForCars = 1,
--- DF_StopForPeds = 2,
--- DF_SwerveAroundAllCars = 4,
--- DF_SteerAroundStationaryCars = 8,
--- DF_SteerAroundPeds = 16,
--- DF_SteerAroundObjects = 32,
--- DF_DontSteerAroundPlayerPed = 64,
--- DF_StopAtLights = 128,
--- DF_GoOffRoadWhenAvoiding = 256,
--- DF_DriveIntoOncomingTraffic = 512,
--- DF_DriveInReverse = 1024,
--- // If pathfinding fails, cruise randomly instead of going on a straight line
--- DF_UseWanderFallbackInsteadOfStraightLine = 2048,
--- DF_AvoidRestrictedAreas = 4096,
--- // These only work on MISSION_CRUISE
--- DF_PreventBackgroundPathfinding = 8192,
--- DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
--- DF_UseShortCutLinks =  262144,
--- DF_ChangeLanesAroundObstructions = 524288,
--- // cruise tasks ignore this anyway--only used for goto's
--- DF_UseSwitchedOffNodes =  2097152,
--- // if you're going to be primarily driving off road
--- DF_PreferNavmeshRoute =  4194304,
--- // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
--- DF_PlaneTaxiMode =  8388608,
--- DF_ForceStraightLine = 16777216,
--- DF_UseStringPullingAtJunctions = 33554432,
--- DF_AvoidHighways = 536870912,
--- DF_ForceJoinInRoadDirection = 1073741824,
--- // Standard driving mode. stops for cars, peds, and lights, goes around stationary obstructions
--- DRIVINGMODE_STOPFORCARS = 786603, // DF_StopForCars|DF_StopForPeds|DF_SteerAroundObjects|DF_SteerAroundStationaryCars|DF_StopAtLights|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions,		// Obey lights too
--- // Like the above, but doesn't steer around anything in its way - will only wait instead.
--- DRIVINGMODE_STOPFORCARS_STRICT = 262275, // DF_StopForCars|DF_StopForPeds|DF_StopAtLights|DF_UseShortCutLinks, // Doesn't deviate an inch.
--- // Default "alerted" driving mode. drives around everything, doesn't obey lights
--- DRIVINGMODE_AVOIDCARS = 786469, // DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars,
--- // Very erratic driving. difference between this and AvoidCars is that it doesn't use the brakes at ALL to help with steering
--- [...]
--- **Native**: `TASK_GO_TO_COORD_ANY_MEANS` (`0xF91DF93B`)
---@param coords vector3 The goto target coordinate.
---@param fMoveBlendRatio number 0.0 = still, 1.0 = walk, 2.0 = run, 3.0 = sprint.
---@param vehicle fx.Vehicle|integer If defined, the pedestrian will only move if said vehicle exists. If you don't want any sort of association, just set it to `0`.
---@param bUseLongRangeVehiclePathing boolean Setting to `true` tells the vehicle to use longrange vehicle pathing.
---@param drivingFlags fx.Enum.DrivingMode|integer See `eDrivingMode` enum.
---@param fMaxRangeToShootTargets number Determines the maximum distance at which the `Ped` will engage in combat with threatening targets.
---@return fx.Ped self
function Ped:taskGoToCoordAnyMeans(coords, fMoveBlendRatio, vehicle, bUseLongRangeVehiclePathing, drivingFlags, fMaxRangeToShootTargets) end

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
---@return fx.Ped self
function Ped:taskGoToEntity(target, duration, distance, speed, p5, p6) end

--- ```
--- In the scripts, p3 was always -1.
--- p3 seems to be duration or timeout of turn animation.
--- Also facingPed can be 0 or -1 so ped will just raise hands up.
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_HANDS_UP](?\_0xF2EAB31979A7F910).**
--- **Native**: `TASK_HANDS_UP` (`0x8DCC19C5`)
---@param duration integer
---@param facingPed fx.Ped|integer
---@param p3 integer
---@param p4 boolean
---@return fx.Ped self
function Ped:taskHandsUp(duration, facingPed, p3, p4) end

--- Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
---
--- **This is the server-side RPC native equivalent of the client native [TASK_LEAVE_ANY_VEHICLE](?\_0x504D54DF3F6F2247).**
--- **Native**: `TASK_LEAVE_ANY_VEHICLE` (`0xDBDD79FA`)
---@param p1 integer
---@param flags integer
---@return fx.Ped self
function Ped:taskLeaveAnyVehicle(p1, flags) end

--- ```
--- Flags from decompiled scripts:
--- 0 = normal exit and closes door.
--- 1 = normal exit and closes door.
--- 16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)
--- 64 = normal exit and closes door, maybe a bit slower animation than 0.
--- 256 = normal exit but does not close the door.
--- 4160 = ped is throwing himself out, even when the vehicle is still.
--- 262144 = ped moves to passenger seat first, then exits normally
--- Others to be tried out: 320, 512, 131072.
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_LEAVE_VEHICLE](?\_0xD3DBCE61A490BE02).**
--- **Native**: `TASK_LEAVE_VEHICLE` (`0x7B1141C6`)
---@param vehicle fx.Vehicle|integer
---@param flags integer
---@return fx.Ped self
function Ped:taskLeaveVehicle(vehicle, flags) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
---
--- ```cpp
--- enum eScriptedAnimFlags
--- {
--- AF_LOOPING = 1,
--- AF_HOLD_LAST_FRAME = 2,
--- AF_REPOSITION_WHEN_FINISHED = 4,
--- AF_NOT_INTERRUPTABLE = 8,
--- AF_UPPERBODY = 16,
--- AF_SECONDARY = 32,
--- AF_REORIENT_WHEN_FINISHED = 64,
--- AF_ABORT_ON_PED_MOVEMENT = 128,
--- AF_ADDITIVE = 256,
--- AF_TURN_OFF_COLLISION = 512,
--- AF_OVERRIDE_PHYSICS = 1024,
--- AF_IGNORE_GRAVITY = 2048,
--- AF_EXTRACT_INITIAL_OFFSET = 4096,
--- AF_EXIT_AFTER_INTERRUPTED = 8192,
--- AF_TAG_SYNC_IN = 16384,
--- AF_TAG_SYNC_OUT = 32768,
--- AF_TAG_SYNC_CONTINUOUS = 65536,
--- AF_FORCE_START = 131072,
--- AF_USE_KINEMATIC_PHYSICS = 262144,
--- AF_USE_MOVER_EXTRACTION = 524288,
--- AF_HIDE_WEAPON = 1048576,
--- AF_ENDS_IN_DEAD_POSE = 2097152,
--- AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304,
--- AF_DONT_EXIT_ON_DEATH = 8388608,
--- AF_ABORT_ON_WEAPON_DAMAGE = 16777216,
--- AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432,
--- AF_PROCESS_ATTACHMENTS_ON_START = 67108864,
--- AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728,
--- AF_USE_ALTERNATIVE_FP_ANIM = 268435456,
--- AF_BLENDOUT_WRT_LAST_FRAME = 536870912,
--- AF_USE_FULL_BLENDING = 1073741824
--- }
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM](?\_0xEA47FE3719165B94).**
--- **Native**: `TASK_PLAY_ANIM` (`0x5AB552C6`)
---@param animDictionary string The animation dictionary
---@param animationName string The animation name
---@param blendInSpeed number The speed at which the animation blends in. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param blendOutSpeed number The speed at which the animation blends out. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param duration integer The duration of the animation in milliseconds. -1 will play the animation until canceled
---@param flag fx.Enum.ScriptedAnimFlags|integer The animation flags (see enum)
---@param playbackRate number The playback rate (between 0.0 and 1.0)
---@param lockX boolean
---@param lockY boolean
---@param lockZ boolean
---@return fx.Ped self
function Ped:taskPlayAnim(animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end

--- Similar in functionality to [`TASK_PLAY_ANIM`](#\_0xEA47FE3719165B94), except the position and rotation parameters let you specify the initial position and rotation of the task. The ped is teleported to the position specified.
--- [Animations list](https://alexguirre.github.io/animations-list/)
---
--- **This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM_ADVANCED](?\_0x83CDB10EA29B370B).**
--- **Native**: `TASK_PLAY_ANIM_ADVANCED` (`0x3DDEB0E6`)
---@param animDictionary string The animation dictionary
---@param animationName string The animation name
---@param pos vector3 Initial position of the task
---@param rot vector3 Initial rotation of the task
---@param blendInSpeed number The speed at which the animation blends in. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param blendOutSpeed number The speed at which the animation blends out. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param duration integer The duration of the animation in milliseconds. -1 will play the animation until canceled
---@param flag any See [`TASK_PLAY_ANIM`](#\_0xEA47FE3719165B94)
---@param animTime number Value between 0.0 and 1.0, lets you start an animation from the given point
---@param p14 any
---@param p15 any
---@return fx.Ped self
function Ped:taskPlayAnimAdvanced(animDictionary, animationName, pos, rot, blendInSpeed, blendOutSpeed, duration, flag, animTime, p14, p15) end

--- TASK_REACT_AND_FLEE_PED
---
--- **This is the server-side RPC native equivalent of the client native [TASK_REACT_AND_FLEE_PED](?\_0x72C896464915D1B1).**
--- **Native**: `TASK_REACT_AND_FLEE_PED` (`0x8A632BD8`)
---@param fleeTarget fx.Ped|integer
---@return fx.Ped self
function Ped:taskReactAndFlee(fleeTarget) end

--- ```
--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_COORD](?\_0x46A6CC01E0826106).**
--- **Native**: `TASK_SHOOT_AT_COORD` (`0x601C22E3`)
---@param coords vector3
---@param duration integer
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskShootAtCoord(coords, duration, firingPattern) end

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
---@return fx.Ped self
function Ped:taskShootAtEntity(target, duration, firingPattern) end

--- ```
--- NativeDB Introduced: v323
--- ```
---
--- Warp a ped into a vehicle.
--- **Note**: It's better to use [`TASK_ENTER_VEHICLE`](#\_0xC20E50AA46D09CA8) with the flag "warp" flag instead of this native.
---
--- **This is the server-side RPC native equivalent of the client native [TASK_WARP_PED_INTO_VEHICLE](?\_0x9A7D091411C5F684).**
--- **Native**: `TASK_WARP_PED_INTO_VEHICLE` (`0x65D4A35D`)
---@param vehicle fx.Vehicle|integer The target vehicle into which the ped will be warped.
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return fx.Ped self
function Ped:taskWarpIntoVehicle(vehicle, seatIndex) end

---@class fx.PedStatic
---@overload fun(handle: integer): fx.Ped?
local PedStatic = {}

---Creates the ped (CREATE_PED server setter) then waits for `readyAsync()` (exists + network owner). Never yields.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.ServerPedCreateOptions
---@return fx.Promise<fx.Ped>
function PedStatic.createAsync(model, position, heading, options) end

---Raw version: immediate CREATE_PED server setter.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.ServerPedCreateOptions
---@return fx.Ped?
function PedStatic.createRaw(model, position, heading, options) end

--- True when value is an fx.Ped, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function PedStatic.is(value) end

