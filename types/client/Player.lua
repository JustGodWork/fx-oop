---@meta
---@diagnostic disable
-- fx.Player (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Player
---@field serverId integer (read-only) Server id of the player (`source` on the server). Do NOT confuse with `id`.
---@field id integer (read-only) LOCAL index of the player (PLAYER_ID / GET_PLAYER_FROM_SERVER_ID; -1 when out of scope).
---@field handle integer (read-only) Local index used by the Player natives; raises when the player is out of scope (-1 would mean the local player to most natives).
---@field ped fx.Ped? (read-only) Player ped, RECOMPUTED on every access (changes on death / respawn). nil when the player is out of scope.
---@field states fx.PlayerStates Player state bag (`player:<serverId>`), distinct from `ped.states`.
---@field state fx.PlayerStates Compatibility alias (`Player(src).state`).
---@field areFlashingStarsAboutToDrop boolean (read-only) [ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP]
---@field areStarsGreyedOut boolean (read-only) [ARE_PLAYER_STARS_GREYED_OUT]
---@field averageLatency number (read-only) [NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER]
---@field averageLatencyFor2 number (read-only) [NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER_2]
---@field averagePacketLoss number (read-only) [NETWORK_GET_AVERAGE_PACKET_LOSS_FOR_PLAYER]
---@field canStartMission boolean (read-only) [CAN_PLAYER_START_MISSION]
---@field coords vector3 (read-only) [NETWORK_GET_PLAYER_COORDS] Returns the coordinates of another player. Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
---@field currentStealthNoise number (read-only) [GET_PLAYER_CURRENT_STEALTH_NOISE]
---@field fakeWantedLevel integer (read-only) [GET_PLAYER_FAKE_WANTED_LEVEL]
---@field finalRenderedInWhenFriendlyFov number (read-only) [GET_FINAL_RENDERED_IN_WHEN_FRIENDLY_FOV]
---@field group? fx.PedGroup (read-only) [GET_PLAYER_GROUP]
---@field hasBeenSpottedInStolenVehicle boolean (read-only) [HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE]
---@field hasCachedHeadBlendData boolean (read-only) [NETWORK_HAS_CACHED_PLAYER_HEAD_BLEND_DATA]
---@field hasDamagedAtLeastOneNonAnimalPed boolean (read-only) [HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED]
---@field hasDamagedAtLeastOnePed boolean (read-only) [HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED]
---@field hasHeadset boolean (read-only) [NETWORK_PLAYER_HAS_HEADSET]
---@field hasLeftTheWorld boolean (read-only) [HAS_PLAYER_LEFT_THE_WORLD]
---@field hasReserveParachute boolean (read-only) [GET_PLAYER_HAS_RESERVE_PARACHUTE]
---@field hasStartedTransition boolean (read-only) [NETWORK_HAS_PLAYER_STARTED_TRANSITION]
---@field healthRechargeLimit number [GET_PLAYER_HEALTH_RECHARGE_LIMIT / SET_PLAYER_HEALTH_RECHARGE_LIMIT]
---@field index integer (read-only) [NETWORK_GET_PLAYER_INDEX]
---@field invincible boolean [GET_PLAYER_INVINCIBLE / SET_PLAYER_INVINCIBLE]
---@field invincible2 boolean (read-only) [GET_PLAYER_INVINCIBLE_2] Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER…
---@field isActive boolean (read-only) [NETWORK_IS_PLAYER_ACTIVE]
---@field isAParticipant boolean (read-only) [NETWORK_IS_PLAYER_A_PARTICIPANT]
---@field isBattleAware boolean (read-only) [IS_PLAYER_BATTLE_AWARE]
---@field isBlockedByMe boolean (read-only) [NETWORK_IS_PLAYER_BLOCKED_BY_ME]
---@field isBluetoothEnable boolean (read-only) [IS_PLAYER_BLUETOOTH_ENABLE]
---@field isClimbing boolean (read-only) [IS_PLAYER_CLIMBING]
---@field isConcealed boolean (read-only) [NETWORK_IS_PLAYER_CONCEALED]
---@field isConnected boolean (read-only) [NETWORK_IS_PLAYER_CONNECTED]
---@field isConnectionEndpointRelayServer boolean (read-only) [NETWORK_IS_CONNECTION_ENDPOINT_RELAY_SERVER]
---@field isControlOn boolean (read-only) [IS_PLAYER_CONTROL_ON]
---@field isDamageTrackerActive boolean (read-only) [IS_DAMAGE_TRACKER_ACTIVE_ON_PLAYER]
---@field isDead boolean (read-only) [IS_PLAYER_DEAD]
---@field isDrivingOnHighway boolean (read-only) [GET_IS_PLAYER_DRIVING_ON_HIGHWAY]
---@field isFading boolean (read-only) [NETWORK_IS_PLAYER_FADING]
---@field isFreeAiming boolean (read-only) [IS_PLAYER_FREE_AIMING]
---@field isFreeForAmbientTask boolean (read-only) [IS_PLAYER_FREE_FOR_AMBIENT_TASK]
---@field isInCutscene boolean (read-only) [IS_PLAYER_IN_CUTSCENE]
---@field isInMpCutscene boolean (read-only) [NETWORK_IS_PLAYER_IN_MP_CUTSCENE]
---@field isMutedByMe boolean (read-only) [NETWORK_IS_PLAYER_MUTED_BY_ME]
---@field isPlaying boolean (read-only) [IS_PLAYER_PLAYING]
---@field isPressingHorn boolean (read-only) [IS_PLAYER_PRESSING_HORN]
---@field isReadyForCutscene boolean (read-only) [IS_PLAYER_READY_FOR_CUTSCENE]
---@field isRidingTrain boolean (read-only) [IS_PLAYER_RIDING_TRAIN]
---@field isRockstarDev boolean (read-only) [NETWORK_PLAYER_IS_ROCKSTAR_DEV]
---@field isScriptControlOn boolean (read-only) [IS_PLAYER_SCRIPT_CONTROL_ON]
---@field isSpecialAbilityActive boolean (read-only) [IS_SPECIAL_ABILITY_ACTIVE]
---@field isSpecialAbilityEnabled boolean (read-only) [IS_SPECIAL_ABILITY_ENABLED]
---@field isSpecialAbilityMeterFull boolean (read-only) [IS_SPECIAL_ABILITY_METER_FULL]
---@field isTalking boolean (read-only) [NETWORK_IS_PLAYER_TALKING]
---@field isTargettingAnything boolean (read-only) [IS_PLAYER_TARGETTING_ANYTHING]
---@field loudness number (read-only) [NETWORK_GET_PLAYER_LOUDNESS]
---@field maxArmour integer [GET_PLAYER_MAX_ARMOUR / SET_PLAYER_MAX_ARMOUR]
---@field maxStamina number (read-only) [GET_PLAYER_MAX_STAMINA]
---@field meleeWeaponDamageModifier number [GET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER / SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER] A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
---@field meleeWeaponDefenseModifier number [GET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER / SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER] A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
---@field name string (read-only) [GET_PLAYER_NAME] Returns the players name from a specified player index
---@field networkName string (read-only) [NETWORK_PLAYER_GET_NAME]
---@field numUnacked integer (read-only) [NETWORK_GET_NUM_UNACKED_FOR_PLAYER]
---@field oldestResendCount integer (read-only) [NETWORK_GET_OLDEST_RESEND_COUNT_FOR_PLAYER]
---@field ownsWaypoint boolean (read-only) [NETWORK_GET_PLAYER_OWNS_WAYPOINT]
---@field parachuteModelOverride integer [GET_PLAYER_PARACHUTE_MODEL_OVERRIDE / SET_PLAYER_PARACHUTE_MODEL_OVERRIDE]
---@field pedScriptIndex? fx.Ped (read-only) [GET_PLAYER_PED_SCRIPT_INDEX]
---@field reserveParachuteModelOverride integer [GET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE / SET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE]
---@field sprintStaminaRemaining number (read-only) [GET_PLAYER_SPRINT_STAMINA_REMAINING]
---@field sprintTimeRemaining number (read-only) [GET_PLAYER_SPRINT_TIME_REMAINING]
---@field stamina number (read-only) [GET_PLAYER_STAMINA]
---@field team integer [GET_PLAYER_TEAM / SET_PLAYER_TEAM]
---@field timeSinceDroveAgainstTraffic integer (read-only) [GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC]
---@field timeSinceDroveOnPavement integer (read-only) [GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT]
---@field timeSinceHitPed integer (read-only) [GET_TIME_SINCE_PLAYER_HIT_PED]
---@field timeSinceHitVehicle integer (read-only) [GET_TIME_SINCE_PLAYER_HIT_VEHICLE]
---@field tutorialSessionInstance integer (read-only) [NETWORK_GET_PLAYER_TUTORIAL_SESSION_INSTANCE]
---@field underwaterTimeRemaining number (read-only) [GET_PLAYER_UNDERWATER_TIME_REMAINING]
---@field unreliableResendCount integer (read-only) [NETWORK_GET_UNRELIABLE_RESEND_COUNT_FOR_PLAYER]
---@field vehicleDamageModifier number [GET_PLAYER_VEHICLE_DAMAGE_MODIFIER / SET_PLAYER_VEHICLE_DAMAGE_MODIFIER] A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
---@field vehicleDefenseModifier number [GET_PLAYER_VEHICLE_DEFENSE_MODIFIER / SET_PLAYER_VEHICLE_DEFENSE_MODIFIER] A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
---@field wantedCentrePosition vector3 (read-only) [GET_PLAYER_WANTED_CENTRE_POSITION]
---@field wantedLevel integer (read-only) [GET_PLAYER_WANTED_LEVEL]
---@field wantedLevelRadius number (read-only) [GET_WANTED_LEVEL_RADIUS]
---@field weaponDamageModifier number [GET_PLAYER_WEAPON_DAMAGE_MODIFIER / SET_PLAYER_WEAPON_DAMAGE_MODIFIER] A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
---@field weaponDefenseModifier number [GET_PLAYER_WEAPON_DEFENSE_MODIFIER / SET_PLAYER_WEAPON_DEFENSE_MODIFIER] A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
---@field weaponDefenseModifier2 number [GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2 / SET_PLAYER_WEAPON_DEFENSE_MODIFIER_2] A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
local Player = {}

--- **Native**: `ACTIVATE_DAMAGE_TRACKER_ON_PLAYER` (`0xBEC0816FF5ACBCDA`)
---@param toggle boolean
---@return fx.Player self
function Player:activateDamageTracker(toggle) end

--- **Native**: `NETWORK_AM_I_BLOCKED_BY_PLAYER` (`0x87F395D957D4353D`)
---@return boolean result
function Player:amIBlocked() end

--- **Native**: `NETWORK_AM_I_MUTED_BY_PLAYER` (`0x9D6981DFC91A8604`)
---@return boolean result
function Player:amIMuted() end

--- **Native**: `CAN_PED_HEAR_PLAYER` (`0xF297383AA91DCA29`)
---@param ped fx.Ped|integer
---@return boolean result
function Player:canPedHear(ped) end

--- **Native**: `CHANGE_PLAYER_PED` (`0x048189FAC643DEEE`)
---@param ped fx.Ped|integer
---@param b2 boolean
---@param resetDamage boolean
---@return fx.Player self
function Player:changePed(ped, b2, resetDamage) end

--- **Native**: `CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED` (`0x4AACB96203D11A31`)
---@return fx.Player self
function Player:clearHasDamagedAtLeastOneNonAnimalPed() end

--- **Native**: `CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED` (`0xF0B67A4DE6AB5F98`)
---@return fx.Player self
function Player:clearHasDamagedAtLeastOnePed() end

--- **Native**: `CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE` (`0x8753997EB5F6EE3F`)
---@return fx.Player self
function Player:clearParachuteModelOverride() end

--- **Native**: `CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE` (`0x10C54E4389C12B42`)
---@return fx.Player self
function Player:clearParachutePackModelOverride() end

--- **Native**: `CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE` (`0x0F4CC924CF8C7B21`)
---@return fx.Player self
function Player:clearParachuteVariationOverride() end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `CLEAR_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE` (`0x290D248E25815AE8`)
---@return fx.Player self
function Player:clearReserveParachuteModelOverride() end

--- ```
--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);
--- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
--- ```
--- **Native**: `CLEAR_PLAYER_WANTED_LEVEL` (`0xB302540597885499`)
---@return fx.Player self
function Player:clearWantedLevel() end

--- This is what R\* uses to hide players in MP interiors.
---
--- To manage player visibility with NetworkConcealPlayer, here’s a solid approach:
---
--- **General Population (players not in any instance):**
---
--- *   Use NetworkConcealPlayer to hide players who are in any instance. This way, general population players won’t see or interact with instance players.
---
--- **Instance Players (players in a specific instance):**
---
--- *   Use NetworkConcealPlayer to hide players who aren’t in the same instance. Instance players can still see and interact with the general population but not with players in other instances.
---
--- This setup keeps instance players separate from each other while allowing interaction with the general population.
--- **Native**: `NETWORK_CONCEAL_PLAYER` (`0xBBDF066252829606`)
---@param toggle boolean
---@param bAllowDamagingWhileConcealed boolean
---@return fx.Player self
function Player:conceal(toggle, bAllowDamagingWhileConcealed) end

--- Creates a gamer tag for the specified local player ID, automatically attached to the player's current ped.
--- The created gamer tag will have the same ID as the player. You can use [IS_MP_GAMER_TAG_ACTIVE](#\_0x4E929E7A5796FD26) to check if a gamer tag already exists for a player.
--- After the gamer tag is created, all components will be set as invisible. Use [SET_MP_GAMER_TAG_VISIBILITY](#\_0x63BB75ABEDC1F6A0) to change the visibility of individual components or [\_SET_MP_GAMER_TAG_VISIBILITY_ALL](#\_0xEE76FF7E6A0166B0) to set all of them at once.
---
--- To create a gamer tag for a ped that is not a player, see [CREATE_FAKE_MP_GAMER_TAG](#\_0xBFEFE3321A3F5015).
--- **Native**: `CREATE_MP_GAMER_TAG_WITH_CREW_COLOR` (`0x6DD05E9D83EFA4C9`)
---@param username string The name displayed on the gamer tag.
---@param crewIsPrivate boolean If the crew is private. Public crews have a pointed end cap, private crews do not.
---@param crewIsRockstar boolean If the crew is a Rockstar crew. Rockstar crews include a Rockstar logo before the name.
---@param crewName string The name of the crew.
---@param crewRank integer The rank from 1-5 that the player is within the crew. Use 0 if the player is the founder of the crew. Only relevant for private crews.
---@param crewR integer Red component of the crew colour.
---@param crewG integer Green component of the crew colour.
---@param crewB integer Blue component of the crew colour.
---@return fx.Player self
function Player:createMpGamerTagWithCrewColor(username, crewIsPrivate, crewIsRockstar, crewName, crewRank, crewR, crewG, crewB) end

--- Inhibits the player from using any method of combat including melee and firearms.\
--- NOTE: Only disables the firing for one frame
--- **Native**: `DISABLE_PLAYER_FIRING` (`0x5E6CC07646BBEAB8`)
---@param toggle boolean Unused, as this native will disable combat regardless of the value of this parameter.
---@return fx.Player self
function Player:disableFiring(toggle) end

--- **Native**: `NETWORK_DISABLE_INVINCIBLE_FLASHING` (`0x9DD368BF06983221`)
---@param toggle boolean
---@return fx.Player self
function Player:disableInvincibleFlashing(toggle) end

--- Disables vehicle rewards for the current frame.
--- **Native**: `DISABLE_PLAYER_VEHICLE_REWARDS` (`0xC142BE3BB9CE125F`)
---@return fx.Player self
function Player:disableVehicleRewards() end

--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `ENABLE_SPECIAL_ABILITY` (`0x181EC197DAEFE121`)
---@param toggle boolean
---@return fx.Player self
function Player:enableSpecialAbility(toggle) end

--- ```
--- Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.
--- Returns false if no entity found.
--- ```
--- **Native**: `GET_ENTITY_PLAYER_IS_FREE_AIMING_AT` (`0x2975C866E6713290`)
---@param entity fx.Entity|integer
---@return boolean result
---@return fx.Entity? entity
function Player:getEntityIsFreeAimingAt(entity) end

--- **Native**: `NETWORK_GET_ENTITY_KILLER_OF_PLAYER` (`0x42B2DAA6B596F5F8`)
---@param weaponHash integer|string
---@return fx.Entity? result
---@return integer weaponHash
function Player:getEntityKiller(weaponHash) end

--- **Native**: `GET_FINAL_RENDERED_IN_WHEN_FRIENDLY_ROT` (`0x26903D9CD1175F2C`)
---@param rotationOrder fx.Enum.RotationOrder|integer
---@return vector3 result
function Player:getFinalRenderedInWhenFriendlyRot(rotationOrder) end

--- **Native**: `GET_PLAYER_PARACHUTE_PACK_TINT_INDEX` (`0x6E9C742F340CE5A2`)
---@param tintIndex integer
---@return integer tintIndex
function Player:getParachutePackTintIndex(tintIndex) end

--- **Native**: `GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR` (`0xEF56DBABD3CD4887`)
---@return integer r
---@return integer g
---@return integer b
function Player:getParachuteSmokeTrailColor() end

--- ```
--- Tints:
--- None = -1,
--- Rainbow = 0,
--- Red = 1,
--- SeasideStripes = 2,
--- WidowMaker = 3,
--- Patriot = 4,
--- Blue = 5,
--- Black = 6,
--- Hornet = 7,
--- AirFocce = 8,
--- Desert = 9,
--- Shadow = 10,
--- HighAltitude = 11,
--- Airbone = 12,
--- Sunrise = 13,
--- ```
--- **Native**: `GET_PLAYER_PARACHUTE_TINT_INDEX` (`0x75D3F7A1B0D9B145`)
---@param tintIndex integer
---@return integer tintIndex
function Player:getParachuteTintIndex(tintIndex) end

--- ```
--- Tints:
--- None = -1,
--- Rainbow = 0,
--- Red = 1,
--- SeasideStripes = 2,
--- WidowMaker = 3,
--- Patriot = 4,
--- Blue = 5,
--- Black = 6,
--- Hornet = 7,
--- AirFocce = 8,
--- Desert = 9,
--- Shadow = 10,
--- HighAltitude = 11,
--- Airbone = 12,
--- Sunrise = 13,
--- ```
--- **Native**: `GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX` (`0xD5A016BC3C09CF40`)
---@param index integer
---@return integer index
function Player:getReserveParachuteTintIndex(index) end

--- **Native**: `GET_PLAYER_RGB_COLOUR` (`0xE902EF951DCE178F`)
---@return integer r
---@return integer g
---@return integer b
function Player:getRgbColour() end

--- ```
--- Assigns the handle of locked-on melee target to *entity that you pass it.
--- Returns false if no entity found.
--- ```
--- **Native**: `GET_PLAYER_TARGET_ENTITY` (`0x13EDE1A5DBF797C9`)
---@param entity fx.Entity|integer
---@return boolean result
---@return fx.Entity? entity
function Player:getTargetEntity(entity) end

--- ```
--- Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
--- ```
--- **Native**: `NETWORK_PLAYER_GET_USERID` (`0x4927FC39CD0869A0`)
---@param userID integer
---@return string result
---@return integer userID
function Player:getUserid(userID) end

--- **Native**: `GIVE_PLAYER_RAGDOLL_CONTROL` (`0x3C49C870E66F0A28`)
---@param toggle boolean
---@return fx.Player self
function Player:giveRagdollControl(toggle) end

--- ```
--- Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.
--- * Currently unknown struct
--- Example:
--- std::vector<UINT64> GetPlayerNetworkHandle(Player player) {
---     const int size = 13;
---     uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();
---     NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);
---     for (int i = 0; i < size; i++) {
---         Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);
---     }
---     std::vector<UINT64> result(buffer, buffer + sizeof(buffer));
---     return result;
--- }
--- ```
--- **Native**: `NETWORK_HANDLE_FROM_PLAYER` (`0x388EB2B86C73B6B3`)
---@param bufferSize integer
---@return integer networkHandle
function Player:handleNative(bufferSize) end

--- **Native**: `HAS_PLAYER_BEEN_SHOT_BY_COP` (`0xBC0753C9CA14B506`)
---@param ms integer Time since last bullet fired
---@param p2 boolean Always false
---@return boolean result
function Player:hasBeenShotByCop(ms, p2) end

--- **Native**: `NETWORK_HASH_FROM_PLAYER_HANDLE` (`0xBC1D768F2F5D6C05`)
---@return integer result
function Player:hashFromHandle() end

--- **Native**: `NETWORK_PLAYER_INDEX_IS_CHEATER` (`0x565E430DB3B05BEC`)
---@return boolean result
function Player:indexIsCheater() end

--- **Native**: `NETWORK_IS_PLAYER_A_PARTICIPANT_ON_SCRIPT` (`0x1AD5B71586B94820`)
---@param script string
---@param player2 fx.Player|integer
---@return boolean result
function Player:isAParticipantOnScript(script, player2) end

--- ```
--- Return true while player is being arrested / busted.
--- If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)
--- If atArresting is set to 0, this function will return 1 only when the busted screen is shown.
--- ```
--- **Native**: `IS_PLAYER_BEING_ARRESTED` (`0x388A47C51ABDAC8E`)
---@param atArresting boolean
---@return boolean result
function Player:isBeingArrested(atArresting) end

--- ```cpp
--- enum eViolationType {
---   // Checks if the player is driving on pedestrians walk ways
---   VT_PAVED_PEDESTRIAN_AREAS = 0,
---   // Checks if the player is running through red lights
---   // This takes some time to return true.
---   VT_RUNNING_REDS = 1,
---   // checks if the player is driving on the wrong side of the road
---   VT_AGAINST_TRAFFIC = 2
--- };
--- ```
---
--- Used solely in "Al Di Napoli" with type 2 for a voiceline.
--- **Native**: `IS_PLAYER_DRIVING_DANGEROUSLY` (`0xF10B44FD479D69F3`)
---@param type_ fx.Enum.ViolationType|integer Refer to `eViolationType`.
---@return boolean result Returns true if the player is performing the `type` traffic violation.
function Player:isDrivingDangerously(type_) end

--- ```
--- NETWORK_ARE_*
--- ```
--- **Native**: `NETWORK_IS_PLAYER_EQUAL_TO_INDEX` (`0x9DE986FC9A87C474`)
---@param index integer
---@return boolean result
function Player:isEqualToIndex(index) end

--- ```
--- Gets a value indicating whether the specified player is currently aiming freely at the specified entity.
--- ```
--- **Native**: `IS_PLAYER_FREE_AIMING_AT_ENTITY` (`0x3C06B5C839B38F7B`)
---@param entity fx.Entity|integer
---@return boolean result
function Player:isFreeAimingAtEntity(entity) end

--- **Native**: `IS_PLAYER_TARGETTING_ENTITY` (`0x7912F7FC4F6264B6`)
---@param entity fx.Entity|integer
---@return boolean result
function Player:isTargettingEntity(entity) end

--- **Native**: `IS_PLAYER_WANTED_LEVEL_GREATER` (`0x238DB2A2C23EE9EF`)
---@param wantedLevel integer
---@return boolean result
function Player:isWantedLevelGreater(wantedLevel) end

--- ```
--- int handle[76];
--- NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);
--- Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);
--- NETWORK_JOIN_TRANSITION(uVar2);
--- 		nothing doin.
--- ```
--- **Native**: `NETWORK_JOIN_TRANSITION` (`0x9D060B08CD63321A`)
---@return boolean result
function Player:joinTransition() end

--- ```
--- Could possibly bypass being muted or automatically muted
--- ```
--- **Native**: `NETWORK_OVERRIDE_CHAT_RESTRICTIONS` (`0x3039AE5AD2C9C0C4`)
---@param toggle boolean
---@return fx.Player self
function Player:overrideChatRestrictions(toggle) end

--- ```
--- R* uses this to hear all player when spectating.
--- It allows you to hear other online players when their chat is on none, crew and or friends
--- ```
--- **Native**: `NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS` (`0xDDF73E2B1FEC5AB4`)
---@param toggle boolean
---@return fx.Player self
function Player:overrideReceiveRestrictions(toggle) end

--- ```
--- This is used alongside the native,
--- 'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
--- ```
--- **Native**: `NETWORK_OVERRIDE_SEND_RESTRICTIONS` (`0x97DD4C5944CC2E6A`)
---@param toggle boolean
---@return fx.Player self
function Player:overrideSendRestrictions(toggle) end

--- **Native**: `REMOVE_PLAYER_HELMET` (`0xF3AC26D3CC576528`)
---@param p2 boolean
---@return fx.Player self
function Player:removeHelmet(p2) end

--- ```
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));
--- From am_armybase.ysc.c4:
--- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));
--- -----
--- This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7
--- -----
--- crimeType:
--- 1: Firearms possession
--- 2: Person running a red light ("5-0-5")
--- 3: Reckless driver
--- 4: Speeding vehicle (a "5-10")
--- 5: Traffic violation (a "5-0-5")
--- 6: Motorcycle rider without a helmet
--- 7: Vehicle theft (a "5-0-3")
--- 8: Grand Theft Auto
--- 9: ???
--- 10: ???
--- 11: Assault on a civilian (a "2-40")
--- 12: Assault on an officer
--- 13: Assault with a deadly weapon (a "2-45")
--- 14: Officer shot (a "2-45")
--- 15: Pedestrian struck by a vehicle
--- 16: Officer struck by a vehicle
--- 17: Helicopter down (an "AC"?)
--- 18: Civilian on fire (a "2-40")
--- 19: Officer set on fire (a "10-99")
--- 20: Car on fire
--- 21: Air unit down (an "AC"?)
--- 22: An explosion (a "9-96")
--- 23: A stabbing (a "2-45") (also something else I couldn't understand)
--- 24: Officer stabbed (also something else I couldn't understand)
--- 25: Attack on a vehicle ("MDV"?)
--- 26: Damage to property
--- 27: Suspect threatening officer with a firearm
--- 28: Shots fired
--- 29: ???
--- 30: ???
--- 31: ???
--- 32: ???
--- [...]
--- **Native**: `REPORT_CRIME` (`0xE9B09589827545E7`)
---@param crimeType integer
---@param wantedLvlThresh integer
---@return fx.Player self
function Player:reportCrime(crimeType, wantedLvlThresh) end

--- **Native**: `REPORT_POLICE_SPOTTED_PLAYER` (`0xDC64D2C53493ED12`)
---@return fx.Player self
function Player:reportPoliceSpotted() end

--- **Native**: `RESET_PLAYER_ARREST_STATE` (`0x2D03E13C460760D6`)
---@return fx.Player self
function Player:resetArrestState() end

--- **Native**: `RESET_PLAYER_INPUT_GAIT` (`0x19531C47A2ABD691`)
---@return fx.Player self
function Player:resetInputGait() end

--- **Native**: `RESET_PLAYER_STAMINA` (`0xA6F312FCCE9C1DFE`)
---@return fx.Player self
function Player:resetStamina() end

--- **Native**: `RESET_WANTED_LEVEL_DIFFICULTY` (`0xB9D0DD990DC141DD`)
---@return fx.Player self
function Player:resetWantedLevelDifficulty() end

--- ```
--- p4 and p5 are always 0 in scripts
--- ```
--- **Native**: `NETWORK_RESPAWN_COORDS` (`0x9769F811D1785B03`)
---@param coords vector3
---@param p4 boolean
---@param p5 boolean
---@return fx.Player self
function Player:respawnCoords(coords, p4, p5) end

--- Adds a percentage to a players stamina
--- **Native**: `RESTORE_PLAYER_STAMINA` (`0xA352C1B864CAFD33`)
---@param percentage number seems to be a percentage that ranges from 0.0 to 1.0 (1.0 being 100%)
---@return fx.Player self
function Player:restoreStamina(percentage) end

--- **Native**: `SCRIPT_RACE_GET_PLAYER_SPLIT_TIME` (`0x8EF5573A1F801A5C`)
---@return boolean result
---@return integer p1
---@return integer p2
function Player:scriptRaceGetSplitTime() end

--- **Native**: `NETWORK_SESSION_GET_KICK_VOTE` (`0xD6D09A6F32F49EF1`)
---@return boolean result
function Player:sessionGetKickVote() end

--- ```
--- Only works as host.
--- ```
--- **Native**: `NETWORK_SESSION_KICK_PLAYER` (`0xFA8904DC5F304220`)
---@return fx.Player self
function Player:sessionKick() end

--- **Native**: `SET_PLAYER_AIR_DEFENSE_ZONE_FLAG` (`0xECDC202B25E5CF48`)
---@param zoneId integer
---@param enable boolean
---@return fx.Player self
function Player:setAirDefenseZoneFlag(zoneId, enable) end

--- ```
--- This can be between 1.0f - 14.9f
--- You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.
--- On PC the multiplier can be between 0.0f and 50.0f (inclusive).
--- ```
--- **Native**: `SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE` (`0xCA7DC8329F0A1E9E`)
---@param multiplier number
---@return fx.Player self
function Player:setAirDragMultiplierForPlayersVehicle(multiplier) end

--- Sets whether all random peds will run away from the player if they are agitated (threatened) (bool=true), or if they will stand their ground (bool=false).
--- **Native**: `SET_ALL_RANDOM_PEDS_FLEE` (`0x056E0FE8534C2949`)
---@param toggle boolean true/false.
---@return fx.Player self
function Player:setAllRandomPedsFlee(toggle) end

--- **Native**: `SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME` (`0x471D2FF42A94B4F2`)
---@return fx.Player self
function Player:setAllRandomPedsFleeThisFrame() end

--- **Native**: `SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE` (`0x9F343285A00B4BB6`)
---@param toggle boolean
---@return fx.Player self
function Player:setAutoGiveParachuteWhenEnterPlane(toggle) end

--- **Native**: `SET_AUTO_GIVE_SCUBA_GEAR_WHEN_EXIT_VEHICLE` (`0xD2B315B6689D537D`)
---@param toggle boolean
---@return fx.Player self
function Player:setAutoGiveScubaGearWhenExitVehicle(toggle) end

--- **Native**: `SET_BEAST_MODE_ACTIVE` (`0x438822C279B73B93`)
---@return fx.Player self
function Player:setBeastModeActive() end

--- **Native**: `SET_PLAYER_BLUETOOTH_STATE` (`0x5DC40A8869C22141`)
---@param state boolean
---@return fx.Player self
function Player:setBluetoothState(state) end

--- ```
--- Sets whether this player can be hassled by gangs.
--- ```
--- **Native**: `SET_PLAYER_CAN_BE_HASSLED_BY_GANGS` (`0xD5E460AD7020A246`)
---@param toggle boolean
---@return fx.Player self
function Player:setCanBeHassledByGangs(toggle) end

--- Sets whether the player is able to do drive-bys in vehicle (shooting & aiming in vehicles), this also includes middle finger taunts.
---
--- This is a toggle, it does not have to be ran every frame.
--- **Native**: `SET_PLAYER_CAN_DO_DRIVE_BY` (`0x6E8834B52EC20C77`)
---@param toggle boolean If set to false, disables the players ability to do drive bys.
---@return fx.Player self
function Player:setCanDoDriveBy(toggle) end

--- **Native**: `SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL` (`0xF401B182DBA8AF53`)
---@param enabled boolean
---@return fx.Player self
function Player:setCanLeaveParachuteSmokeTrail(enabled) end

--- ```
--- Sets whether this player can take cover.
--- ```
--- **Native**: `SET_PLAYER_CAN_USE_COVER` (`0xD465A8599DFF6814`)
---@param toggle boolean
---@return fx.Player self
function Player:setCanUseCover(toggle) end

--- **Native**: `SET_PLAYER_CLOTH_PIN_FRAMES` (`0x749FADDF97DFE930`)
---@param p1 integer
---@return fx.Player self
function Player:setClothPinFrames(p1) end

--- ```
--- Flags:
--- SPC_AMBIENT_SCRIPT = (1 << 1),
--- SPC_CLEAR_TASKS = (1 << 2),
--- SPC_REMOVE_FIRES = (1 << 3),
--- SPC_REMOVE_EXPLOSIONS = (1 << 4),
--- SPC_REMOVE_PROJECTILES = (1 << 5),
--- SPC_DEACTIVATE_GADGETS = (1 << 6),
--- SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
--- SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
--- SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
--- SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
--- SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
--- SPC_ALLOW_PAD_SHAKE = (1 << 12)
--- See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
--- ```
--- **Native**: `SET_PLAYER_CONTROL` (`0x8D32347D6D4C40A2`)
---@param bHasControl boolean
---@param flags integer
---@return fx.Player self
function Player:setControl(bHasControl, flags) end

--- **Native**: `SET_DISABLE_AMBIENT_MELEE_MOVE` (`0x2E8AABFA40A84F8C`)
---@param toggle boolean
---@return fx.Player self
function Player:setDisableAmbientMeleeMove(toggle) end

--- **Native**: `SET_DISPATCH_COPS_FOR_PLAYER` (`0xDB172424876553F4`)
---@param toggle boolean
---@return fx.Player self
function Player:setDispatchCops(toggle) end

--- **Native**: `SET_EVERYONE_IGNORE_PLAYER` (`0x8EEDA153AD141BA4`)
---@param toggle boolean
---@return fx.Player self
function Player:setEveryoneIgnore(toggle) end

--- **Native**: `SET_EXPLOSIVE_AMMO_THIS_FRAME` (`0xA66C71C98D5F2CFB`)
---@return fx.Player self
function Player:setExplosiveAmmoThisFrame() end

--- **Native**: `SET_EXPLOSIVE_MELEE_THIS_FRAME` (`0xFF1BED81BFDC0FE0`)
---@return fx.Player self
function Player:setExplosiveMeleeThisFrame() end

--- **Native**: `SET_PLAYER_FALL_DISTANCE` (`0xEFD79FA81DFBA9CB`)
---@param distance number
---@return fx.Player self
function Player:setFallDistance(distance) end

--- **Native**: `SET_FIRE_AMMO_THIS_FRAME` (`0x11879CDD803D30F4`)
---@return fx.Player self
function Player:setFireAmmoThisFrame() end

--- **Native**: `SET_PLAYER_FORCED_AIM` (`0x0FEE4F80AC44A726`)
---@param toggle boolean
---@return fx.Player self
function Player:setForcedAim(toggle) end

--- **Native**: `SET_PLAYER_FORCED_ZOOM` (`0x75E7D505F2B15902`)
---@param toggle boolean
---@return fx.Player self
function Player:setForcedZoom(toggle) end

--- **Native**: `SET_PLAYER_FORCE_SKIP_AIM_INTRO` (`0x7651BC64AE59E128`)
---@param toggle boolean
---@return fx.Player self
function Player:setForceSkipAimIntro(toggle) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_FORCE_PLAYER_TO_JUMP` (`0xA1183BCFEE0F93D1`)
---@return fx.Player self
function Player:setForceToJump() end

--- **Native**: `SET_PLAYER_HAS_RESERVE_PARACHUTE` (`0x7DDAB28D31FAC363`)
---@return fx.Player self
function Player:setHasReserveParachute() end

--- This multiplier is reset to `1.0` every time the player ped is changed, often times via [`SET_PLAYER_MODEL`](#\_0x00A1CADD00108836) or [`CHANGE_PLAYER_PED`](#\_0x048189FAC643DEEE).
--- **Native**: `SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER` (`0x5DB660B38DD98A31`)
---@param regenRate number The recharge multiplier, this value needs to be a positive float value to work.
---@return fx.Player self
function Player:setHealthRechargeMultiplier(regenRate) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_PLAYER_HOMING_ROCKET_DISABLED` (`0xEE4EBDD2593BA844`)
---@param p1 boolean
---@return fx.Player self
function Player:setHomingRocketDisabled(p1) end

--- **Native**: `SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS` (`0x596976B02B6B5700`)
---@param toggle boolean
---@return fx.Player self
function Player:setIgnoreLowPriorityShockingEvents(toggle) end

--- **Native**: `SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED` (`0x6BC97F4F4BB3C04B`)
---@param toggle boolean
---@return fx.Player self
function Player:setInvincibleKeepRagdollEnabled(toggle) end

--- **Native**: `SET_PLAYER_INVISIBLE_LOCALLY` (`0x12B37D54667DB0B8`)
---@param toggle boolean
---@return fx.Player self
function Player:setInvisibleLocally(toggle) end

--- **Native**: `SET_PLAYER_LEAVE_PED_BEHIND` (`0xFF300C7649724A0B`)
---@param toggle boolean
---@return fx.Player self
function Player:setLeavePedBehind(toggle) end

--- ```
--- Used to toggle the square up aim.
--- ```
--- **Native**: `SET_PLAYER_LOCKON` (`0x5C8B2F450EE4328E`)
---@param toggle boolean Set to false to prevent lock on, set to true to allow for lock on.
---@return fx.Player self
function Player:setLockon(toggle) end

--- ```
--- Affects the range of auto aim target.
--- ```
--- **Native**: `SET_PLAYER_LOCKON_RANGE_OVERRIDE` (`0x29961D490E5814FD`)
---@param range number
---@return fx.Player self
function Player:setLockonRangeOverride(range) end

--- **Native**: `SET_PLAYER_MAX_STAMINA` (`0x35594F67`)
---@param maxStamina number The value you want to set
---@return boolean result Did you manage to set the value.
function Player:setMaxStamina(maxStamina) end

--- Establishes a reset flag to prevent the player from entering any vehicle. Not that this native must be called every frame.
--- **Native**: `SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE` (`0x1DE37BBF9E9CC14A`)
---@return fx.Player self
function Player:setMayNotEnterAnyVehicle() end

--- Limit the player to only enter this vehicle. Note set vehicle to false if you want them to access any vehicle.
--- **Native**: `SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE` (`0x8026FF78F208978A`)
---@param vehicle fx.Vehicle|integer Vehicle id.
---@return fx.Player self
function Player:setMayOnlyEnterThisVehicle(vehicle) end

--- Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
---
--- As per usual, make sure to request the model first and wait until it has loaded.
--- **Native**: `SET_PLAYER_MODEL` (`0x00A1CADD00108836`)
---@param model fx.Model|integer|string The model to use
---@return fx.Player self
function Player:setModel(model) end

--- **Native**: `SET_PLAYER_NOISE_MULTIPLIER` (`0xDB89EF50FF25FCE9`)
---@param multiplier number
---@return fx.Player self
function Player:setNoiseMultiplier(multiplier) end

--- **Native**: `SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE` (`0xDC80A4C2F18A2B64`)
---@param model fx.Model|integer|string
---@return fx.Player self
function Player:setParachutePackModelOverride(model) end

--- ```
--- tints 0- 13
--- 0 - unkown
--- 1 - unkown
--- 2 - unkown
--- 3 - unkown
--- 4 - unkown
--- ```
--- **Native**: `SET_PLAYER_PARACHUTE_PACK_TINT_INDEX` (`0x93B0FB27C9A04060`)
---@param tintIndex integer
---@return fx.Player self
function Player:setParachutePackTintIndex(tintIndex) end

--- **Native**: `SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR` (`0x8217FD371A4625CF`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Player self
function Player:setParachuteSmokeTrailColor(r, g, b) end

--- ```
--- Tints:
--- None = -1,
--- Rainbow = 0,
--- Red = 1,
--- SeasideStripes = 2,
--- WidowMaker = 3,
--- Patriot = 4,
--- Blue = 5,
--- Black = 6,
--- Hornet = 7,
--- AirFocce = 8,
--- Desert = 9,
--- Shadow = 10,
--- HighAltitude = 11,
--- Airbone = 12,
--- Sunrise = 13,
--- ```
--- **Native**: `SET_PLAYER_PARACHUTE_TINT_INDEX` (`0xA3D0E54541D9A5E5`)
---@param tintIndex integer
---@return fx.Player self
function Player:setParachuteTintIndex(tintIndex) end

--- ```
--- p1 was always 5.
--- p4 was always false.
--- ```
--- **Native**: `SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE` (`0xD9284A8C0D48352C`)
---@param p1 integer
---@param p2 any
---@param p3 any
---@param p4 boolean
---@return fx.Player self
function Player:setParachuteVariationOverride(p1, p2, p3, p4) end

--- ```
--- The player will be ignored by the police if toggle is set to true
--- ```
--- **Native**: `SET_POLICE_IGNORE_PLAYER` (`0x32C62AA929C2DA6A`)
---@param toggle boolean
---@return fx.Player self
function Player:setPoliceIgnore(toggle) end

--- Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
--- **Native**: `SET_RELATIONSHIP_TO_PLAYER` (`0xA7C511FA1C5BDA38`)
---@param p1 boolean
---@return fx.Player self
function Player:setRelationship(p1) end

--- ```
--- Tints:
--- None = -1,
--- Rainbow = 0,
--- Red = 1,
--- SeasideStripes = 2,
--- WidowMaker = 3,
--- Patriot = 4,
--- Blue = 5,
--- Black = 6,
--- Hornet = 7,
--- AirFocce = 8,
--- Desert = 9,
--- Shadow = 10,
--- HighAltitude = 11,
--- Airbone = 12,
--- Sunrise = 13,
--- ```
--- **Native**: `SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX` (`0xAF04C87F5DC1DF38`)
---@param index integer
---@return fx.Player self
function Player:setReserveParachuteTintIndex(index) end

--- ```
--- example:
--- flags: 0-6
--- PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);
--- wouldnt the flag be the seatIndex?
--- ```
--- **Native**: `SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS` (`0x11D5F725F0E780E0`)
---@param flags integer
---@return fx.Player self
function Player:setResetFlagPreferRearSeats(flags) end

--- ```
--- Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.
--- Just call it one time, it is not required to be called once every tick.
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.
--- It is not possible to "decrease" speed. Anything below 1 will be ignored.
--- ```
--- **Native**: `SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER` (`0x6DB47AA77FD94E09`)
---@param multiplier number
---@return fx.Player self
function Player:setRunSprintMultiplier(multiplier) end

--- **Native**: `SET_PLAYER_SIMULATE_AIMING` (`0xC54C95DA968EC5B5`)
---@param toggle boolean
---@return fx.Player self
function Player:setSimulateAiming(toggle) end

--- ```
--- Values around 1.0f to 2.0f used in game scripts.
--- ```
--- **Native**: `SET_PLAYER_SNEAKING_NOISE_MULTIPLIER` (`0xB2C1A29588A9F47C`)
---@param multiplier number
---@return fx.Player self
function Player:setSneakingNoiseMultiplier(multiplier) end

--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SET_SPECIAL_ABILITY` (`0xB214D570EAD7F81A`)
---@param p1 integer
---@return fx.Player self
function Player:setSpecialAbility(p1) end

--- **Native**: `SET_PLAYER_SPRINT` (`0xA01B8075D8B92DF4`)
---@param toggle boolean
---@return fx.Player self
function Player:setSprint(toggle) end

--- **Native**: `SET_PLAYER_STAMINA` (`0xA9EC16C7`)
---@param stamina number The value you want to set
---@return boolean result Did you manage to set the value.
function Player:setStamina(stamina) end

--- **Native**: `SET_PLAYER_STEALTH_PERCEPTION_MODIFIER` (`0x4E9021C1FCDD507A`)
---@param value number
---@return fx.Player self
function Player:setStealthPerceptionModifier(value) end

--- Allows the player to perform super jumps. This function must be called every frame for it to work.
--- It basically OR's a flag for a single frame, allowing the ped to perform a super jump only when the flag is set.
--- **Native**: `SET_SUPER_JUMP_THIS_FRAME` (`0x57FFF03E423A4C0B`)
---@return fx.Player self
function Player:setSuperJumpThisFrame() end

--- ```
--- Swim speed multiplier.
--- Multiplier goes up to 1.49
--- Just call it one time, it is not required to be called once every tick. - Note copied from below native.
--- Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.
--- ```
--- **Native**: `SET_SWIM_MULTIPLIER_FOR_PLAYER` (`0xA91C6F0FF7D16A13`)
---@param multiplier number
---@return fx.Player self
function Player:setSwimMultiplier(multiplier) end

--- the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
--- This function doesn't need to be called every frame, it works like a switcher.
--- **Native**: `SET_PLAYER_TALKING_OVERRIDE` (`0xFC02CAF6`)
---@param state boolean Overriding state.
---@return fx.Player self
function Player:setTalkingOverride(state) end

--- Seems to lock the underwater timer of the specified player. Set `percentage` to `50.0` will reduce the value of [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731) to 5.0.
---
--- If you want to increase the underwater time for ped, use [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) instead.
---
--- Using this native after [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) **WILL NOT** get what you want. For example, if you set the max time underwater to `100.0` seconds using [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) and then call this native and set the `percentage` to 50.0, you will not get `50.0`, instead `2.0`.
--- **Native**: `SET_PLAYER_UNDERWATER_TIME_REMAINING` (`0xA0D3E4F7AAFB7E78`)
---@param percentage number Maximum is `100.0`. Any value above `100.0` and less than `0.0` will have no effect on [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731).
---@return any result
function Player:setUnderwaterTimeRemaining(percentage) end

--- **Native**: `SET_PLAYER_VISIBLE_LOCALLY` (`0xFAA10F1FAFB11AF2`)
---@param toggle boolean
---@return fx.Player self
function Player:setVisibleLocally(toggle) end

--- ```
--- # Predominant call signatures
--- PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));
--- # Parameter value ranges
--- P0: PLAYER::PLAYER_ID()
--- P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)
--- P2: Not set by any call
--- ```
--- **Native**: `SET_PLAYER_WANTED_CENTRE_POSITION` (`0x520E541A97A13354`)
---@param p2 boolean
---@param p3 boolean
---@return vector3 position
function Player:setWantedCentrePosition(p2, p3) end

--- **Native**: `SET_PLAYER_WANTED_LEVEL` (`0x39FF19C64EF7DA5B`)
---@param wantedLevel integer the wanted level 1-5
---@param delayedResponse boolean false = 0-10sec police spawn response time, true = 10-20sec police spawn response time
---@return fx.Player self
function Player:setWantedLevel(wantedLevel, delayedResponse) end

--- ```
--- Max value is 1.0
--- ```
--- **Native**: `SET_WANTED_LEVEL_DIFFICULTY` (`0x9B0BB33B04405E7A`)
---@param difficulty number
---@return fx.Player self
function Player:setWantedLevelDifficulty(difficulty) end

--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `SET_WANTED_LEVEL_HIDDEN_EVASION_TIME` (`0x49B856B1360C47C7`)
---@param wantedLevel integer
---@param lossTime integer
---@return fx.Player self
function Player:setWantedLevelHiddenEvasionTime(wantedLevel, lossTime) end

--- **Native**: `SET_PLAYER_WANTED_LEVEL_NO_DROP` (`0x340E61DE7F471565`)
---@param wantedLevel integer the wanted level 1-5
---@param delayedResponse boolean false = 0-10sec police spawn response time, true = 10-20sec police spawn response time
---@return fx.Player self
function Player:setWantedLevelNoDrop(wantedLevel, delayedResponse) end

--- ```
--- Forces any pending wanted level to be applied to the specified player immediately.
--- Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.
--- Second parameter is unknown (always false).
--- ```
--- **Native**: `SET_PLAYER_WANTED_LEVEL_NOW` (`0xE0A7D1E497FFCD6F`)
---@param p1 boolean
---@return fx.Player self
function Player:setWantedLevelNow(p1) end

--- This is to make the player walk without accepting input.
---
--- Call this native every frame so you can control the direction of your ped.
--- **Native**: `SIMULATE_PLAYER_INPUT_GAIT` (`0x477D5D63E63ECA5D`)
---@param amount number For game pads, using anything less than 1.0 will make it partially press analog controls (like sticks/triggers).
---@param gaitType integer Value in increments of 100's. 2000, 500, 300, 200, etc. Set to -1 if you want your ped to walk forever.
---@param rotationSpeed number Determines the counterclockwise rotation angle when walking.
---@param p4 boolean Always true
---@param p5 boolean Always false
---@return fx.Player self
function Player:simulateInputGait(amount, gaitType, rotationSpeed, p4, p5) end

--- ```
--- p1 appears as 5, 10, 15, 25, or 30. p2 is always true.
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_ABSOLUTE` (`0xB7B0870EB531D08D`)
---@param p1 integer
---@param p2 boolean
---@return fx.Player self
function Player:specialAbilityChargeAbsolute(p1, p2) end

--- ```
--- p1 appears to always be 1 (only comes up twice)
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_CONTINUOUS` (`0xED481732DFF7E997`)
---@param p2 fx.Ped|integer
---@return fx.Player self
function Player:specialAbilityChargeContinuous(p2) end

--- ```
--- 2 matches. p1 was always true.
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_LARGE` (`0xF733F45FA4497D93`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Player self
function Player:specialAbilityChargeLarge(p1, p2) end

--- ```
--- Only 1 match. Both p1 & p2 were true.
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_MEDIUM` (`0xF113E3AA9BC54613`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Player self
function Player:specialAbilityChargeMedium(p1, p2) end

--- ```
--- normalizedValue is from 0.0 - 1.0
--- p2 is always 1
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_NORMALIZED` (`0xA0696A65F009EE18`)
---@param normalizedValue number
---@param p2 boolean
---@return fx.Player self
function Player:specialAbilityChargeNormalized(normalizedValue, p2) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_ON_MISSION_FAILED` (`0xC9A763D8FE87436A`)
---@return fx.Player self
function Player:specialAbilityChargeOnMissionFailed() end

--- ```
--- Every occurrence of p1 & p2 were both true.
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SPECIAL_ABILITY_CHARGE_SMALL` (`0x2E7B9B683481687D`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Player self
function Player:specialAbilityChargeSmall(p1, p2) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_DEACTIVATE` (`0xD6A953C6D1492057`)
---@return fx.Player self
function Player:specialAbilityDeactivate() end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_DEACTIVATE_FAST` (`0x9CB5CE07A3968D5A`)
---@return fx.Player self
function Player:specialAbilityDeactivateFast() end

--- ```
--- p1 was always true.
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SPECIAL_ABILITY_DEPLETE_METER` (`0x1D506DBBBC51E64B`)
---@param p1 boolean
---@return fx.Player self
function Player:specialAbilityDepleteMeter(p1) end

--- ```
--- Also known as _RECHARGE_SPECIAL_ABILITY
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SPECIAL_ABILITY_FILL_METER` (`0x3DACA8DDC6FD4980`)
---@param p1 boolean
---@return fx.Player self
function Player:specialAbilityFillMeter(p1) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_RESET` (`0x375F0E738F861A94`)
---@return fx.Player self
function Player:specialAbilityReset() end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_SPENT_NIGHTCLUB_ENTRY_FEE` (`0x876056684281655D`)
---@param amount integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
---@return fx.Player self
function Player:spentNightclubEntryFee(amount, p1, p2, p3) end

--- ```
--- One of the first things it does is get the players ped.
--- Then it calls a function that is used in some tasks and ped based functions.
--- ```
---
--- p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
--- **Native**: `NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER` (`0x5A6FFA2433E2F14C`)
---@param coords vector3
---@param radius number
---@param p5 number
---@param p6 number
---@param p7 number
---@param flags integer
---@return boolean result
function Player:startRespawnSearch(coords, radius, p5, p6, p7, flags) end

--- p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
--- **Native**: `NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER` (`0x4BA92A18502BCA61`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p8 number
---@param p9 number
---@param p10 number
---@param flags integer
---@return boolean result
function Player:startRespawnSearchInAngledArea(coords1, coords2, width, p8, p9, p10, flags) end

--- Teleports the player to the given coordinates.
---
--- If findCollisionLand is true it will try to find the Z value for you, this however has a timeout of 100 frames.
---
--- When trying to find the Z value the native will take longer the higher the difference from the given Z to the ground, this combined with the timeout can cause the teleport to just teleport to the given Z value, so try to estimate the z value, so don't just pass in 1000.0.
---
--- Also if you're in a vehicle and teleportWithVehicle is true it will not find the Z value for you.
--- **Native**: `START_PLAYER_TELEPORT` (`0xAD15F075A4DA0FDE`)
---@param coords vector3
---@param heading number
---@param teleportWithVehicle boolean Teleports the player along with the vehicle they are in.
---@param findCollisionLand boolean Attempt to find a ground coordinate at the given XY location; overriding the Z value.
---@param p7 boolean
---@return fx.Player self
function Player:startTeleport(coords, heading, teleportWithVehicle, findCollisionLand, p7) end

--- Suppresses a crime for a given player for this frame only.
---
--- **Note:** This native needs to be executed inside a thread if a crime is meant to be suppressed for a given amount of time.
--- **Native**: `SUPPRESS_CRIME_THIS_FRAME` (`0x9A987297ED8BD838`)
---@param crimeType integer The crime to suppress, see [`REPORT_CRIME`](#\_0xE9B09589827545E7) for available types.
---@return fx.Player self
function Player:suppressCrimeThisFrame(crimeType) end

--- ```
--- Disabling/enabling a player from getting pickups. From the scripts:
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
--- OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
--- SET_PLAYER_*
--- ```
--- **Native**: `TOGGLE_USE_PICKUPS_FOR_PLAYER` (`0x616093EC6B139DD9`)
---@param pickupHash integer|string
---@param toggle boolean
---@return fx.Player self
function Player:toggleUsePickups(pickupHash, toggle) end

--- ```
--- p1 = 6
--- ```
--- **Native**: `TRIGGER_SCRIPT_CRC_CHECK_ON_PLAYER` (`0x46FB3ED415C7641C`)
---@param p1 integer
---@param scriptHash integer|string
---@return boolean result
function Player:triggerScriptCrcCheck(p1, scriptHash) end

--- **Native**: `UPDATE_PLAYER_TELEPORT` (`0xE23D5873C2394C61`)
---@return boolean result
function Player:updateTeleport() end

---@class fx.PlayerStatic : fx.Player
---@field ped fx.Ped (read-only) Local player ped (PLAYER_PED_ID), never nil; recomputed on every access.
---@overload fun(serverId: integer): fx.Player? Another player by server id (nil when out of scope; the local player for its own id).
---@field causeOfMostRecentForceCleanup integer (read-only) [GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP]
---@field hostOfThisScript? fx.Player (read-only) [NETWORK_GET_HOST_OF_THIS_SCRIPT]
---@field index? fx.Player (read-only) [GET_PLAYER_INDEX]
---@field isCamControlDisabled boolean (read-only) [IS_PLAYER_CAM_CONTROL_DISABLED]
---@field isLoggingInNp boolean (read-only) [IS_PLAYER_LOGGING_IN_NP]
---@field isOnline boolean (read-only) [IS_PLAYER_ONLINE] It returns true if the player is online, suggesting they are also logged in locally. Note that this is an alias for `NETWORK_IS_SIGNED_ONLINE`.
---@field isSystemUiBeingDisplayed boolean (read-only) [IS_SYSTEM_UI_BEING_DISPLAYED]
---@field isTeleportActive boolean (read-only) [IS_PLAYER_TELEPORT_ACTIVE]
---@field maxWantedLevel integer [GET_MAX_WANTED_LEVEL / SET_MAX_WANTED_LEVEL]
---@field numberOfPlayers integer (read-only) [GET_NUMBER_OF_PLAYERS]
---@field timeSinceLastArrest integer (read-only) [GET_TIME_SINCE_LAST_ARREST]
---@field timeSinceLastDeath integer (read-only) [GET_TIME_SINCE_LAST_DEATH]
---@field wantedLevelParoleDuration integer (read-only) [GET_WANTED_LEVEL_PAROLE_DURATION]
local PlayerStatic = {}

---A player from its LOCAL index (`PlayerId()`, `GetActivePlayers()`, `NetworkGetPlayerIndexFromPed`...).
---The local player for its own index; nil for -1 or an index with no player.
---@param index integer
---@return fx.Player?
function PlayerStatic.fromIndex(index) end

---Promise resolved with the local player once it can play: the network session has started, the player is active
---(`NetworkIsPlayerActive`) and it has a ped. Resolved immediately when already the case
---(resource restart). The ped is not necessarily final: it changes if the spawn sets another model.
---Waits forever by default; with `timeoutMs`, rejects with a TimeoutError.
---@param timeoutMs? integer
---@return fx.Promise<fx.PlayerStatic>
function PlayerStatic:readyAsync(timeoutMs) end

--- True when value is an fx.Player, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function PlayerStatic.is(value) end

--- **Native**: `ASSISTED_MOVEMENT_CLOSE_ROUTE` (`0xAEBF081FFC0A0E5E`)
function PlayerStatic.assistedMovementCloseRoute() end

--- **Native**: `ASSISTED_MOVEMENT_FLUSH_ROUTE` (`0x8621390F0CDCFE1F`)
function PlayerStatic.assistedMovementFlushRoute() end

--- ```
--- Only 1 match. ob_sofa_michael.
--- PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
--- ```
--- **Native**: `PLAYER_ATTACH_VIRTUAL_BOUND` (`0xED51733DC73AED51`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
function PlayerStatic.attachVirtualBound(p0, p1, p2, p3, p4, p5, p6, p7) end

--- ```
--- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
--- ```
--- **Native**: `PLAYER_DETACH_VIRTUAL_BOUND` (`0x1DD5897E2FA6E7C9`)
function PlayerStatic.detachVirtualBound() end

--- ```
--- Purpose of the BOOL currently unknown.
--- Both, true and false, work
--- ```
--- **Native**: `DISPLAY_SYSTEM_SIGNIN_UI` (`0x94DD7888C10A979E`)
---@param unk boolean
function PlayerStatic.displaySystemSigninUi(unk) end

--- ```
--- Appears only 3 times in the scripts, more specifically in michael1.ysc
--- -
--- This can be used to prevent dying if you are "out of the world"
--- ```
--- **Native**: `EXTEND_WORLD_BOUNDARY_FOR_PLAYER` (`0x5006D96C995A5827`)
---@param coords vector3
function PlayerStatic.extendWorldBoundary(coords) end

--- ```
--- used with 1,2,8,64,128 in the scripts
--- ```
--- **Native**: `FORCE_CLEANUP` (`0xBC8983F38F78ED51`)
---@param cleanupFlags integer
function PlayerStatic.forceCleanup(cleanupFlags) end

--- ```
--- PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation
--- ```
--- **Native**: `FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME` (`0x4C68DDDDF0097317`)
---@param name string
---@param cleanupFlags integer
function PlayerStatic.forceCleanupForAllThreadsWithThisName(name, cleanupFlags) end

--- **Native**: `FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID` (`0xF745B37630DF176B`)
---@param id integer
---@param cleanupFlags integer
function PlayerStatic.forceCleanupForThreadWithThisId(id, cleanupFlags) end

--- ```
--- For Steam.
--- Always returns 0 in retail version of the game.
--- ```
--- **Native**: `GET_ACHIEVEMENT_PROGRESS` (`0x1C186837D0619335`)
---@param achievement integer
---@return integer result Returns the progression of an achievement; 0 if the achievement cannot be progressed.
function PlayerStatic.getAchievementProgress(achievement) end

--- **Native**: `NETWORK_GET_PLAYER_FROM_GAMER_HANDLE` (`0xCE5F689CF5A0A49D`)
---@param networkHandle integer
---@return fx.Player? result
---@return integer networkHandle
function PlayerStatic.getFromGamerHandle(networkHandle) end

--- ```
--- scriptName examples:
--- "freemode", "AM_CR_SecurityVan", ...
--- Most of the time, these values are used:
--- p1 = -1
--- p2 = 0
--- ```
--- **Native**: `NETWORK_GET_HOST_OF_SCRIPT` (`0x1D6A14F1F9A736FC`)
---@param scriptName string
---@param p1 integer
---@param p2 integer
---@return fx.Player? result
function PlayerStatic.getHostOfScript(scriptName, p1, p2) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `GET_NUMBER_OF_PLAYERS_IN_TEAM` (`0x1FC200409F10E6F1`)
---@param team integer
---@return integer result
function PlayerStatic.getNumberOfPlayersInTeam(team) end

--- ```
--- Drft
--- ```
--- **Native**: `GET_WANTED_LEVEL_THRESHOLD` (`0xFDD179EAF45B556C`)
---@param wantedLevel integer
---@return integer result
function PlayerStatic.getWantedLevelThreshold(wantedLevel) end

--- ```
--- Achievements from 0-57
--- more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.
--- ```
--- **Native**: `GIVE_ACHIEVEMENT_TO_PLAYER` (`0xBEC7076D64130195`)
---@param achievement integer
---@return boolean result
function PlayerStatic.giveAchievement(achievement) end

--- **Native**: `HAS_ACHIEVEMENT_BEEN_PASSED` (`0x867365E111A3B6EB`)
---@param achievement integer
---@return boolean result
function PlayerStatic.hasAchievementBeenPassed(achievement) end

--- **Native**: `HAS_FORCE_CLEANUP_OCCURRED` (`0xC968670BFACE42D9`)
---@param cleanupFlags integer
---@return boolean result
function PlayerStatic.hasForceCleanupOccurred(cleanupFlags) end

--- ```
--- Does exactly the same thing as PLAYER_ID()
--- ```
--- **Native**: `NETWORK_PLAYER_ID_TO_INT` (`0xEE68096F9F37341E`)
---@return integer result
function PlayerStatic.idToInt() end

--- ```
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--- --------------------------------------------------------
--- if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))
--- ```
--- **Native**: `INT_TO_PARTICIPANTINDEX` (`0x9EC6603812C24710`)
---@param value integer
---@return integer result
function PlayerStatic.intToParticipantindex(value) end

--- ```
--- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--- ```
--- **Native**: `INT_TO_PLAYERINDEX` (`0x41BD2A6B006AF756`)
---@param value integer
---@return fx.Player? result
function PlayerStatic.intToPlayerindex(value) end

--- **Native**: `IS_SPECIAL_ABILITY_UNLOCKED` (`0xC6017F6A6CDFA694`)
---@param playerModel integer|string
---@return boolean result
function PlayerStatic.isSpecialAbilityUnlocked(playerModel) end

--- ```
--- Return the local Participant ID
--- ```
--- **Native**: `PARTICIPANT_ID` (`0x90986E8876CE0A83`)
---@return fx.Player? result
function PlayerStatic.participantId() end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `RESET_WORLD_BOUNDARY_FOR_PLAYER` (`0xDA1DF03D5A315F4E`)
function PlayerStatic.resetWorldBoundary() end

--- For Steam.
--- Does nothing and always returns false in the retail version of the game.
--- **Native**: `SET_ACHIEVEMENT_PROGRESS` (`0xC2AFFFDABBDC2C5C`)
---@param achievement integer
---@param progress integer
---@return boolean result
function PlayerStatic.setAchievementProgress(achievement, progress) end

--- ```
--- 6 matches across 4 scripts. 5 occurrences were 240. The other was 255.
--- ```
--- **Native**: `SET_PLAYER_CLOTH_LOCK_COUNTER` (`0x14D913B777DFF5DA`)
---@param value integer
function PlayerStatic.setClothLockCounter(value) end

--- ```
--- Every occurrence was either 0 or 2.
--- ```
--- **Native**: `SET_PLAYER_CLOTH_PACKAGE_INDEX` (`0x9F7BBA2EA6372500`)
---@param index integer
function PlayerStatic.setClothPackageIndex(index) end

--- ```
--- If toggle is set to false:
---  The police won't be shown on the (mini)map
--- If toggle is set to true:
---  The police will be shown on the (mini)map
--- ```
--- **Native**: `SET_POLICE_RADAR_BLIPS` (`0x43286D561B72B8BF`)
---@param toggle boolean
function PlayerStatic.setPoliceRadarBlips(toggle) end

--- **Native**: `SET_SPECIAL_ABILITY_MULTIPLIER` (`0xA49C426ED0CA4AB7`)
---@param multiplier number
function PlayerStatic.setSpecialAbilityMultiplier(multiplier) end

--- ```
--- Sets your targeting mode.
--- 0 = Assisted Aim - Full
--- 1 = Assisted Aim - Partial
--- 2 = Free Aim - Assisted
--- 3 = Free Aim
--- ```
--- **Native**: `SET_PLAYER_TARGETING_MODE` (`0xB1906895227793F3`)
---@param targetMode integer
function PlayerStatic.setTargetingMode(targetMode) end

--- **Native**: `SET_PLAYER_TARGET_LEVEL` (`0x5702B917B99DB1CD`)
---@param targetLevel integer
function PlayerStatic.setTargetLevel(targetLevel) end

--- **Native**: `SET_WANTED_LEVEL_MULTIPLIER` (`0x020E5F00CDA207BA`)
---@param multiplier number
function PlayerStatic.setWantedLevelMultiplier(multiplier) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_ACTIVATE` (`0x821FDC827D6F4090`)
---@param player any
function PlayerStatic.specialAbilityActivate(player) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_DEPLETE` (`0x17F7471EACA78290`)
---@param p0 any
function PlayerStatic.specialAbilityDeplete(p0) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_LOCK` (`0x6A09D0D590A47D13`)
---@param playerModel integer|string
function PlayerStatic.specialAbilityLock(playerModel) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SPECIAL_ABILITY_UNLOCK` (`0xF145F3BE2EFA9A3B`)
---@param playerModel integer|string
function PlayerStatic.specialAbilityUnlock(playerModel) end

--- **Native**: `START_FIRING_AMNESTY` (`0xBF9BD71691857E48`)
---@param duration integer
function PlayerStatic.startFiringAmnesty(duration) end

--- ```
--- Disables the player's teleportation
--- ```
--- **Native**: `STOP_PLAYER_TELEPORT` (`0xC449EDED9D73009C`)
function PlayerStatic.stopTeleport() end

