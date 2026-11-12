---@meta
---@diagnostic disable
-- fx.Network (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Network
---@field ageGroup integer (read-only) [NETWORK_GET_AGE_GROUP]
---@field areCutsceneEntities boolean (read-only) [NETWORK_ARE_CUTSCENE_ENTITIES]
---@field areSocialClubPoliciesCurrent boolean (read-only) [NETWORK_ARE_SOCIAL_CLUB_POLICIES_CURRENT]
---@field canBail boolean (read-only) [NETWORK_CAN_BAIL]
---@field canEnterMultiplayer boolean (read-only) [NETWORK_CAN_ENTER_MULTIPLAYER]
---@field canSessionEnd boolean (read-only) [NETWORK_CAN_SESSION_END]
---@field canSetWaypoint boolean (read-only) [NETWORK_CAN_SET_WAYPOINT]
---@field cloudTimeAsInt integer (read-only) [GET_CLOUD_TIME_AS_INT] Returns POSIX timestamp. Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5…
---@field cloudTimeAsString string (read-only) [GET_CLOUD_TIME_AS_STRING]
---@field friendCount integer (read-only) [NETWORK_GET_FRIEND_COUNT]
---@field gamerStatusFromQueue boolean (read-only) [NETWORK_GET_GAMER_STATUS_FROM_QUEUE]
---@field hasAgeRestrictedProfile boolean (read-only) [NETWORK_HAS_AGE_RESTRICTED_PROFILE]
---@field hasFollowInvite boolean (read-only) [NETWORK_HAS_FOLLOW_INVITE]
---@field hasGameBeenAltered boolean (read-only) [NETWORK_HAS_GAME_BEEN_ALTERED]
---@field hasHeadset boolean (read-only) [NETWORK_HAS_HEADSET]
---@field hasNetworkTimeStarted boolean (read-only) [HAS_NETWORK_TIME_STARTED]
---@field hasPendingInvite boolean (read-only) [NETWORK_HAS_PENDING_INVITE]
---@field hasReceivedHostBroadcastData boolean (read-only) [NETWORK_HAS_RECEIVED_HOST_BROADCAST_DATA]
---@field hasSocialClubAccount boolean (read-only) [NETWORK_HAS_SOCIAL_CLUB_ACCOUNT]
---@field hasSocialNetworkingSharingPriv boolean (read-only) [NETWORK_HAS_SOCIAL_NETWORKING_SHARING_PRIV]
---@field hasValidRosCredentials boolean (read-only) [NETWORK_HAS_VALID_ROS_CREDENTIALS]
---@field instanceIdOfThisScript integer (read-only) [NETWORK_GET_INSTANCE_ID_OF_THIS_SCRIPT]
---@field isActivitySession boolean (read-only) [NETWORK_IS_ACTIVITY_SESSION]
---@field isActivitySpectator boolean (read-only) [NETWORK_IS_ACTIVITY_SPECTATOR]
---@field isCableConnected boolean (read-only) [NETWORK_IS_CABLE_CONNECTED]
---@field isClockTimeOverridden boolean (read-only) [NETWORK_IS_CLOCK_TIME_OVERRIDDEN]
---@field isCloudAvailable boolean (read-only) [NETWORK_IS_CLOUD_AVAILABLE]
---@field isCloudBackgroundScriptRequestPending boolean (read-only) [NETWORK_IS_CLOUD_BACKGROUND_SCRIPT_REQUEST_PENDING]
---@field isCommerceDataValid boolean (read-only) [IS_COMMERCE_DATA_VALID]
---@field isCommerceStoreOpen boolean (read-only) [IS_COMMERCE_STORE_OPEN]
---@field isFindingGamers boolean (read-only) [NETWORK_IS_FINDING_GAMERS]
---@field isGameInProgress boolean (read-only) [NETWORK_IS_GAME_IN_PROGRESS]
---@field isGettingGamerStatus boolean (read-only) [NETWORK_IS_GETTING_GAMER_STATUS]
---@field isHost boolean (read-only) [NETWORK_IS_HOST]
---@field isHostOfThisScript boolean (read-only) [NETWORK_IS_HOST_OF_THIS_SCRIPT]
---@field isInMpCutscene boolean (read-only) [NETWORK_IS_IN_MP_CUTSCENE]
---@field isInParty boolean (read-only) [NETWORK_IS_IN_PARTY]
---@field isInPlatformParty boolean (read-only) [NETWORK_IS_IN_PLATFORM_PARTY]
---@field isInPlatformPartyChat boolean (read-only) [NETWORK_IS_IN_PLATFORM_PARTY_CHAT]
---@field isInSession boolean (read-only) [NETWORK_IS_IN_SESSION]
---@field isInSpectatorMode boolean (read-only) [NETWORK_IS_IN_SPECTATOR_MODE]
---@field isInTransition boolean (read-only) [NETWORK_IS_IN_TRANSITION]
---@field isInTutorialSession boolean (read-only) [NETWORK_IS_IN_TUTORIAL_SESSION]
---@field isLocalPlayerInvincible boolean (read-only) [NETWORK_IS_LOCAL_PLAYER_INVINCIBLE]
---@field isLocalTalking boolean (read-only) [NETWORK_IS_LOCAL_TALKING]
---@field isMultiplayerDisabled boolean (read-only) [NETWORK_IS_MULTIPLAYER_DISABLED]
---@field isOfflineInvitePending boolean (read-only) [NETWORK_IS_OFFLINE_INVITE_PENDING]
---@field isPsnAvailable boolean (read-only) [NETWORK_IS_PSN_AVAILABLE]
---@field isSessionActive boolean (read-only) [NETWORK_IS_SESSION_ACTIVE]
---@field isSessionBusy boolean (read-only) [NETWORK_IS_SESSION_BUSY]
---@field isSessionStarted boolean (read-only) [NETWORK_IS_SESSION_STARTED]
---@field isSignedIn boolean (read-only) [NETWORK_IS_SIGNED_IN]
---@field isSignedOnline boolean (read-only) [NETWORK_IS_SIGNED_ONLINE]
---@field isStoreAvailableToUser boolean (read-only) [IS_STORE_AVAILABLE_TO_USER]
---@field isTextChatActive boolean (read-only) [NETWORK_IS_TEXT_CHAT_ACTIVE]
---@field isTransitionBusy boolean (read-only) [NETWORK_IS_TRANSITION_BUSY]
---@field isTransitionClosedCrew boolean (read-only) [NETWORK_IS_TRANSITION_CLOSED_CREW]
---@field isTransitionClosedFriends boolean (read-only) [NETWORK_IS_TRANSITION_CLOSED_FRIENDS]
---@field isTransitionHost boolean (read-only) [NETWORK_IS_TRANSITION_HOST]
---@field isTransitionMatchmaking boolean (read-only) [NETWORK_IS_TRANSITION_MATCHMAKING]
---@field isTransitionOpenToMatchmaking boolean (read-only) [NETWORK_IS_TRANSITION_OPEN_TO_MATCHMAKING]
---@field isTransitionPrivate boolean (read-only) [NETWORK_IS_TRANSITION_PRIVATE]
---@field isTransitionSolo boolean (read-only) [NETWORK_IS_TRANSITION_SOLO]
---@field isTransitionStarted boolean (read-only) [NETWORK_IS_TRANSITION_STARTED]
---@field isTransitionToGame boolean (read-only) [NETWORK_IS_TRANSITION_TO_GAME]
---@field isTransitionVisibilityLocked boolean (read-only) [NETWORK_IS_TRANSITION_VISIBILITY_LOCKED]
---@field isTunableCloudRequestPending boolean (read-only) [NETWORK_IS_TUNABLE_CLOUD_REQUEST_PENDING]
---@field isTutorialSessionChangePending boolean (read-only) [NETWORK_IS_TUTORIAL_SESSION_CHANGE_PENDING]
---@field maxFriends integer (read-only) [NETWORK_GET_MAX_FRIENDS]
---@field maxNumNetworkObjects integer (read-only) [GET_MAX_NUM_NETWORK_OBJECTS]
---@field maxNumNetworkPeds integer (read-only) [GET_MAX_NUM_NETWORK_PEDS]
---@field maxNumNetworkPickups integer (read-only) [GET_MAX_NUM_NETWORK_PICKUPS]
---@field maxNumNetworkVehicles integer (read-only) [GET_MAX_NUM_NETWORK_VEHICLES]
---@field maxNumParticipants integer (read-only) [NETWORK_GET_MAX_NUM_PARTICIPANTS]
---@field networkTime integer (read-only) [GET_NETWORK_TIME]
---@field networkTimeAccurate integer (read-only) [GET_NETWORK_TIME_ACCURATE] Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instea…
---@field numBodyTrackers integer (read-only) [NETWORK_GET_NUM_BODY_TRACKERS]
---@field numCommerceItems integer (read-only) [GET_NUM_COMMERCE_ITEMS]
---@field numConnectedPlayers integer (read-only) [NETWORK_GET_NUM_CONNECTED_PLAYERS]
---@field numFoundGamers integer (read-only) [NETWORK_GET_NUM_FOUND_GAMERS]
---@field numParticipants integer (read-only) [NETWORK_GET_NUM_PARTICIPANTS]
---@field numPresenceInvites integer (read-only) [NETWORK_GET_NUM_PRESENCE_INVITES]
---@field onlineVersion string (read-only) [GET_ONLINE_VERSION]
---@field platformPartyUnk integer (read-only) [NETWORK_GET_PLATFORM_PARTY_UNK]
---@field positionHashOfThisScript any (read-only) [NETWORK_GET_POSITION_HASH_OF_THIS_SCRIPT]
---@field primaryClanDataClear any (read-only) [NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR]
---@field primaryClanDataPending any (read-only) [NETWORK_GET_PRIMARY_CLAN_DATA_PENDING]
---@field primaryClanDataSuccess any (read-only) [NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS]
---@field randomInt integer (read-only) [NETWORK_GET_RANDOM_INT]
---@field rosPrivilege24 boolean (read-only) [NETWORK_GET_ROS_PRIVILEGE_24]
---@field rosPrivilege25 boolean (read-only) [NETWORK_GET_ROS_PRIVILEGE_25]
---@field rosPrivilege9 boolean (read-only) [NETWORK_GET_ROS_PRIVILEGE_9]
---@field scriptStatus integer (read-only) [NETWORK_GET_SCRIPT_STATUS]
---@field talkerProximity number [NETWORK_GET_TALKER_PROXIMITY / NETWORK_SET_TALKER_PROXIMITY]
---@field targetingMode integer (read-only) [NETWORK_GET_TARGETING_MODE]
---@field thisScriptIsNetworkScript boolean (read-only) [NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT]
---@field timeoutTime integer (read-only) [NETWORK_GET_TIMEOUT_TIME]
---@field totalNumPlayers integer (read-only) [NETWORK_GET_TOTAL_NUM_PLAYERS]
---@field tunableCloudCrc integer (read-only) [NETWORK_GET_TUNABLE_CLOUD_CRC]
local NetworkStatic = {}

--- ```
--- NETWORK_RE*
---
--- Triggers a CEventNetworkInviteConfirmed event
--- ```
--- **Native**: `NETWORK_ACCEPT_INVITE` (`0x62A0296C1BB1CEB3`)
---@return boolean result
function NetworkStatic.acceptInvite() end

--- **Native**: `NETWORK_ACCEPT_PRESENCE_INVITE` (`0xFA91550DF9318B22`)
---@param p0 any
---@return boolean result
function NetworkStatic.acceptPresenceInvite(p0) end

--- **Native**: `NETWORK_ACCESS_TUNABLE_BOOL` (`0xAA6A47A573ABB75A`)
---@param tunableContext string
---@param tunableName string
---@return boolean result
function NetworkStatic.accessTunableBool(tunableContext, tunableName) end

--- **Native**: `NETWORK_ACCESS_TUNABLE_BOOL_HASH` (`0xEA16B69D93D71A45`)
---@param tunableContext integer|string
---@param tunableName integer|string
---@return boolean result
function NetworkStatic.accessTunableBoolHash(tunableContext, tunableName) end

--- **Native**: `NETWORK_ACCESS_TUNABLE_FLOAT` (`0xE5608CA7BC163A5F`)
---@param tunableContext string
---@param tunableName string
---@param value number
---@return boolean result
---@return number value
function NetworkStatic.accessTunableFloat(tunableContext, tunableName, value) end

--- **Native**: `NETWORK_ACCESS_TUNABLE_FLOAT_HASH` (`0x972BC203BBC4C4D5`)
---@param tunableContext integer|string
---@param tunableName integer|string
---@param value number
---@return boolean result
---@return number value
function NetworkStatic.accessTunableFloatHash(tunableContext, tunableName, value) end

--- **Native**: `NETWORK_ACCESS_TUNABLE_INT` (`0x8BE1146DFD5D4468`)
---@param tunableContext string
---@param tunableName string
---@param value integer
---@return boolean result
---@return integer value
function NetworkStatic.accessTunableInt(tunableContext, tunableName, value) end

--- **Native**: `NETWORK_ACCESS_TUNABLE_INT_HASH` (`0x40FCE03E50E8DBE8`)
---@param tunableContext integer|string
---@param tunableName integer|string
---@param value integer
---@return boolean result
---@return integer value
function NetworkStatic.accessTunableIntHash(tunableContext, tunableName, value) end

--- **Native**: `NETWORK_ACTION_FOLLOW_INVITE` (`0xC88156EBB786F8D5`)
---@return any result
function NetworkStatic.actionFollowInvite() end

--- **Native**: `ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID` (`0xD45B1FFCCD52FF19`)
---@param netID integer
---@param toggle boolean
function NetworkStatic.activateDamageTrackerOnNetworkId(netID, toggle) end

--- To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
---
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- **Native**: `NETWORK_ADD_ENTITY_ANGLED_AREA` (`0x376C6375BA60293A`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any result
function NetworkStatic.addEntityAngledArea(coords1, coords2, width) end

--- **Native**: `NETWORK_ADD_ENTITY_AREA` (`0x494C8FB299290269`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@return any result
function NetworkStatic.addEntityArea(p0, p1, p2, p3, p4, p5) end

--- **Native**: `NETWORK_ADD_ENTITY_DISPLAYED_BOUNDARIES` (`0x25B99872D588A101`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@return any result
function NetworkStatic.addEntityDisplayedBoundaries(p0, p1, p2, p3, p4, p5) end

--- ```
--- ..
--- ```
--- **Native**: `NETWORK_ADD_FOLLOWERS` (`0x236406F60CF216D6`)
---@param p1 integer
---@return integer p0
function NetworkStatic.addFollowers(p1) end

--- **Native**: `NETWORK_ADD_FRIEND` (`0x8E02D73914064223`)
---@param message string
---@return boolean result
---@return integer networkHandle
function NetworkStatic.addFriend(message) end

--- Adds a map entity to a network synchronized scene. This native function is utilized only once as of game build 2944 within the casino_slots script.
--- Please note that it's only possible to add a single map entity to synchronised scenes.
---
--- It's advisable to initially locate the object and retrieve its actual coordinates using [`GET_CLOSEST_OBJECT_OF_TYPE`](#\_0xE143FA2249364369).
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_ADD_MAP_ENTITY_TO_SYNCHRONISED_SCENE` (`0x45F35C0EDC33B03B`)
---@param netScene integer Net scene ID returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#\_0x7CD6BC4C2BBDD526)
---@param modelHash fx.Model|integer|string Model hash of the object the script should look for.
---@param coords vector3 Object coord.
---@param animDict string Anim dictionary to play on this object.
---@param animName string Anim name to play on this object.
---@param blendInSpeed number Float representing how quickly the animation should be blended into. Default is `8.0`.
---@param blendOutSpeed number Float representing how quickly the animation should be blended out of. Default is `-8.0`
---@param flags integer See [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9).
function NetworkStatic.addMapEntityToSynchronisedScene(netScene, modelHash, coords, animDict, animName, blendInSpeed, blendOutSpeed, flags) end

--- **Native**: `NETWORK_ADD_SYNCHRONISED_SCENE_CAMERA` (`0xCF8BD3B0BD6D42D7`)
---@param netScene integer
---@param animDict string
---@param animName string
function NetworkStatic.addSynchronisedSceneCamera(netScene, animDict, animName) end

--- **Native**: `NETWORK_ALLOCATE_TUNABLES_REGISTRATION_DATA_MAP` (`0xFAFC23AEE23868DB`)
---@return boolean result
function NetworkStatic.allocateTunablesRegistrationDataMap() end

--- **Native**: `NETWORK_AM_I_BLOCKED_BY_GAMER` (`0x15337C7C268A27B2`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.amIBlockedByGamer(networkHandle) end

--- **Native**: `NETWORK_AM_I_MUTED_BY_GAMER` (`0xDF02A2C93F1F26DA`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.amIMutedByGamer(networkHandle) end

--- **Native**: `NETWORK_APPLY_TRANSITION_PARAMETER` (`0x521638ADA1BA0D18`)
---@param p0 integer
---@param p1 integer
function NetworkStatic.applyTransitionParameter(p0, p1) end

--- **Native**: `NETWORK_APPLY_TRANSITION_PARAMETER_STRING` (`0xEBEFC2E77084F599`)
---@param p0 integer
---@param string_ string
---@param p2 boolean
function NetworkStatic.applyTransitionParameterString(p0, string_, p2) end

--- **Native**: `NETWORK_APPLY_VOICE_PROXIMITY_OVERRIDE` (`0xDBD2056652689917`)
---@param coords vector3
function NetworkStatic.applyVoiceProximityOverride(coords) end

--- **Native**: `NETWORK_ARE_HANDLES_THE_SAME` (`0x57DBA049E110F217`)
---@return boolean result
---@return integer netHandle1
---@return integer netHandle2
function NetworkStatic.areHandlesTheSame() end

--- **Native**: `NETWORK_ARE_TRANSITION_DETAILS_VALID` (`0x2615AA2A695930C1`)
---@param p0 any
---@return boolean result
function NetworkStatic.areTransitionDetailsValid(p0) end

--- **Native**: `NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY` (`0x478DCBD2A98B705A`)
---@param netScene integer
---@param entity fx.Entity|integer
---@param bone integer
function NetworkStatic.attachSynchronisedSceneToEntity(netScene, entity, bone) end

--- **Native**: `BAD_SPORT_PLAYER_LEFT_DETECTED` (`0xEC5E3AF5289DCA81`)
---@param event integer
---@param amountReceived integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.badSportPlayerLeftDetected(event, amountReceived) end

--- ```
--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- ```
--- **Native**: `NETWORK_BAIL_TRANSITION` (`0xEAA572036990CD1B`)
function NetworkStatic.bailTransition() end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_BAIL_TRANSITION_QUICKMATCH` (`0x023782EFC70585EE`)
function NetworkStatic.bailTransitionQuickmatch() end

--- **Native**: `NETWORK_BLOCK_INVITES` (`0x34F9E9049454A7A0`)
---@param toggle boolean
function NetworkStatic.blockInvites(toggle) end

--- **Native**: `NETWORK_BLOCK_JOIN_QUEUE_INVITES` (`0xCFEB8AF24FC1D0BB`)
---@param toggle boolean
function NetworkStatic.blockJoinQueueInvites(toggle) end

--- **Native**: `NETWORK_BLOCK_KICKED_PLAYERS` (`0x6B07B9CE4D390375`)
---@param p0 boolean
function NetworkStatic.blockKickedPlayers(p0) end

--- **Native**: `NETWORK_CACHE_LOCAL_PLAYER_HEAD_BLEND_DATA` (`0xBD0BE0BFC927EAC1`)
function NetworkStatic.cacheLocalPlayerHeadBlendData() end

--- ```
--- 11 - Need to download tunables.
--- 12 - Need to download background script.
--- Returns 1 if the multiplayer is loaded, otherwhise 0.
--- ```
--- **Native**: `NETWORK_CAN_ACCESS_MULTIPLAYER` (`0xAF50DA1A3F8B1BA4`)
---@param loadingState integer
---@return boolean result
---@return integer loadingState
function NetworkStatic.canAccessMultiplayer(loadingState) end

--- **Native**: `NETWORK_CANCEL_RESPAWN_SEARCH` (`0xFB8F2A6F3DF08CBE`)
function NetworkStatic.cancelRespawnSearch() end

--- **Native**: `NETWORK_CAN_COMMUNICATE_WITH_GAMER` (`0xA150A4F065806B1F`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.canCommunicateWithGamer(networkHandle) end

--- ```
--- Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
---
--- NETWORK_CAN_*
--- ```
--- **Native**: `NETWORK_CAN_COMMUNICATE_WITH_GAMER_2` (`0x8F5D1AD832AEB06C`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.canCommunicateWithGamer2(networkHandle) end

--- **Native**: `NETWORK_CAN_GAMER_PLAY_MULTIPLAYER_WITH_ME` (`0x135F9B7B7ADD2185`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.canGamerPlayMultiplayerWithMe(networkHandle) end

--- **Native**: `NETWORK_CAN_PLAY_MULTIPLAYER_WITH_GAMER` (`0x07DD29D5E22763F1`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.canPlayMultiplayerWithGamer(networkHandle) end

--- **Native**: `CAN_REGISTER_MISSION_ENTITIES` (`0x69778E7564BADE6D`)
---@param ped_amt integer
---@param vehicle_amt integer
---@param object_amt integer
---@param pickup_amt integer
---@return boolean result
function NetworkStatic.canRegisterMissionEntities(ped_amt, vehicle_amt, object_amt, pickup_amt) end

--- **Native**: `CAN_REGISTER_MISSION_OBJECTS` (`0x800DD4721A8B008B`)
---@param amount integer
---@return boolean result
function NetworkStatic.canRegisterMissionObjects(amount) end

--- **Native**: `CAN_REGISTER_MISSION_PEDS` (`0xBCBF4FEF9FA5D781`)
---@param amount integer
---@return boolean result
function NetworkStatic.canRegisterMissionPeds(amount) end

--- **Native**: `CAN_REGISTER_MISSION_PICKUPS` (`0x0A49D1CB6E34AF72`)
---@param amount integer
---@return boolean result
function NetworkStatic.canRegisterMissionPickups(amount) end

--- **Native**: `CAN_REGISTER_MISSION_VEHICLES` (`0x7277F1F2E085EE74`)
---@param amount integer
---@return boolean result
function NetworkStatic.canRegisterMissionVehicles(amount) end

--- **Native**: `NETWORK_CAN_VIEW_GAMER_USER_CONTENT` (`0xB57A49545BA53CE7`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.canViewGamerUserContent(networkHandle) end

--- **Native**: `NETWORK_CHANGE_TRANSITION_SLOTS` (`0xEEEDA5E6D7080987`)
---@param p0 any
---@param p1 any
function NetworkStatic.changeTransitionSlots(p0, p1) end

--- **Native**: `NETWORK_CHECK_COMMUNICATION_PRIVILEGES` (`0x83F28CE49FBBFFBA`)
---@param p0 integer
---@param p1 integer
---@param p2 boolean
---@return boolean result
function NetworkStatic.checkCommunicationPrivileges(p0, p1, p2) end

--- Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
--- **Native**: `NETWORK_CHECK_DATA_MANAGER_SUCCEEDED_FOR_HANDLE` (`0x44B37CDCAE765AAE`)
---@param friendDataIndex integer
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.checkDataManagerSucceededForHandle(friendDataIndex, networkHandle) end

--- **Native**: `NETWORK_CHECK_USER_CONTENT_PRIVILEGES` (`0x595F028698072DD9`)
---@param p0 integer
---@param p1 integer
---@param p2 boolean
---@return boolean result
function NetworkStatic.checkUserContentPrivileges(p0, p1, p2) end

--- ```
--- Only documented...
--- ```
--- **Native**: `NETWORK_CLAN_ANIMATION` (`0x729E3401F0430686`)
---@param animDict string
---@param animName string
---@return boolean result
function NetworkStatic.clanAnimation(animDict, animName) end

--- **Native**: `NETWORK_CLAN_ANY_DOWNLOAD_MEMBERSHIP_PENDING` (`0xB3F64A6A91432477`)
---@return boolean result True if there are any pending downloads, false otherwise.
function NetworkStatic.clanAnyDownloadMembershipPending() end

--- **Native**: `NETWORK_CLAN_DOWNLOAD_MEMBERSHIP` (`0xA989044E70010ABE`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.clanDownloadMembership(networkHandle) end

--- **Native**: `NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING` (`0x5B9E023DC6EBEDC0`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.clanDownloadMembershipPending(p0) end

--- **Native**: `NETWORK_CLAN_GET_EMBLEM_TXD_NAME` (`0x5835D9CD92E83184`)
---@param txdName string
---@return boolean result
---@return any netHandle
function NetworkStatic.clanGetEmblemTxdName(txdName) end

--- **Native**: `NETWORK_CLAN_GET_LOCAL_MEMBERSHIPS_COUNT` (`0x1F471B79ACC90BEF`)
---@return integer result
function NetworkStatic.clanGetLocalMembershipsCount() end

--- Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).
---
--- Test C++ code:
--- https://pastebin.com/CD8wni4C
--- **Native**: `NETWORK_CLAN_GET_MEMBERSHIP` (`0xC8BC2011F67B3411`)
---@param membershipIndex integer If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
---@return boolean result Returns true on success, false otherwise.
---@return integer networkHandle A player network handle.
---@return integer clanMembership Output buffer for the membership data. Also known as "desc".
function NetworkStatic.clanGetMembership(membershipIndex) end

--- **Native**: `NETWORK_CLAN_GET_MEMBERSHIP_COUNT` (`0xAAB11F6C4ADBC2C1`)
---@param p0 integer
---@return integer result
---@return integer p0
function NetworkStatic.clanGetMembershipCount(p0) end

--- **Native**: `NETWORK_CLAN_GET_MEMBERSHIP_DESC` (`0x48DE78AF2C8885B8`)
---@param p1 integer
---@return boolean result
---@return integer memberDesc
function NetworkStatic.clanGetMembershipDesc(p1) end

--- Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.
--- **Native**: `NETWORK_CLAN_GET_MEMBERSHIP_VALID` (`0x48A59CF88D43DF0E`)
---@param membershipIndex integer If the player has multiple crews/memberships, use \[0-9], or -1 to get the active crew/membership.
---@return boolean result Returns true if valid, false otherwise.
---@return integer networkHandle A player network handle.
function NetworkStatic.clanGetMembershipValid(membershipIndex) end

--- ```
--- bufferSize is 35 in the scripts.
--- ```
--- **Native**: `NETWORK_CLAN_GET_UI_FORMATTED_TAG` (`0xF45352426FF3A4F0`)
---@param bufferSize integer
---@param formattedTag string
---@return integer clanDesc
function NetworkStatic.clanGetUiFormattedTag(bufferSize, formattedTag) end

--- **Native**: `NETWORK_CLAN_IS_EMBLEM_READY` (`0xA134777FF7F33331`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p1
function NetworkStatic.clanIsEmblemReady(p0, p1) end

--- ```
--- bufferSize is 35 in the scripts.
--- ```
--- **Native**: `NETWORK_CLAN_IS_ROCKSTAR_CLAN` (`0x7543BB439F63792B`)
---@param bufferSize integer
---@return boolean result
---@return integer clanDesc
function NetworkStatic.clanIsRockstarClan(bufferSize) end

--- **Native**: `NETWORK_CLAN_JOIN` (`0x9FAAA4F4FC71F87F`)
---@param clanDesc integer
---@return boolean result
function NetworkStatic.clanJoin(clanDesc) end

--- ```
--- bufferSize is 35 in the scripts.
--- bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.
--- the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]
--- pastebin.com/cSZniHak
--- ```
--- **Native**: `NETWORK_CLAN_PLAYER_GET_DESC` (`0xEEE6EACBE8874FBA`)
---@param bufferSize integer
---@return boolean result
---@return integer clanDesc
---@return integer networkHandle
function NetworkStatic.clanPlayerGetDesc(bufferSize) end

--- **Native**: `NETWORK_CLAN_PLAYER_IS_ACTIVE` (`0xB124B57F571D8F18`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.clanPlayerIsActive(networkHandle) end

--- **Native**: `NETWORK_CLAN_RELEASE_EMBLEM` (`0x113E6E3E50E286B0`)
---@param p0 any
function NetworkStatic.clanReleaseEmblem(p0) end

--- **Native**: `NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE` (`0xBB6E6FEE99D866B2`)
---@param p0 integer
---@return boolean result
---@return integer p0
function NetworkStatic.clanRemoteMembershipsAreInCache(p0) end

--- **Native**: `NETWORK_CLAN_REQUEST_EMBLEM` (`0x13518FF1C6B28938`)
---@param p0 any
---@return boolean result
function NetworkStatic.clanRequestEmblem(p0) end

--- **Native**: `NETWORK_CLAN_SERVICE_IS_VALID` (`0x579CCED0265D4896`)
---@return boolean result
function NetworkStatic.clanServiceIsValid() end

--- **Native**: `NETWORK_CLEAR_CLOCK_TIME_OVERRIDE` (`0xD972DF67326F966E`)
function NetworkStatic.clearClockTimeOverride() end

--- **Native**: `NETWORK_CLEAR_FOLLOWERS` (`0x058F43EC59A8631A`)
function NetworkStatic.clearFollowers() end

--- **Native**: `NETWORK_CLEAR_FOLLOW_INVITE` (`0x439BFDE3CD0610F6`)
---@return any result
function NetworkStatic.clearFollowInvite() end

--- **Native**: `NETWORK_CLEAR_FOUND_GAMERS` (`0x6D14CCEE1B40381A`)
function NetworkStatic.clearFoundGamers() end

--- **Native**: `NETWORK_CLEAR_GET_GAMER_STATUS` (`0x86E0660E4F5C956D`)
function NetworkStatic.clearGetGamerStatus() end

--- **Native**: `NETWORK_CLEAR_GROUP_ACTIVITY` (`0x1888694923EF4591`)
function NetworkStatic.clearGroupActivity() end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `CLEAR_LAUNCH_PARAMS` (`0x966DD84FB6A46017`)
function NetworkStatic.clearLaunchParams() end

--- **Native**: `NETWORK_CLEAR_PROPERTY_ID` (`0xC2B82527CA77053E`)
function NetworkStatic.clearPropertyId() end

--- **Native**: `NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE` (`0xFB3272229A82C759`)
function NetworkStatic.clearTransitionCreatorHandle() end

--- **Native**: `NETWORK_CLEAR_VOICE_CHANNEL` (`0xE036A705F989E049`)
function NetworkStatic.clearVoiceChannel() end

--- **Native**: `NETWORK_CLEAR_VOICE_PROXIMITY_OVERRIDE` (`0xF03755696450470C`)
function NetworkStatic.clearVoiceProximityOverride() end

--- **Native**: `NETWORK_CLOSE_TRANSITION_MATCHMAKING` (`0x43F4DBA69710E01E`)
function NetworkStatic.closeTransitionMatchmaking() end

--- ```
--- Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
--- ```
--- **Native**: `CLOUD_CHECK_AVAILABILITY` (`0x4F18196C8D38768D`)
function NetworkStatic.cloudCheckAvailability() end

--- **Native**: `CLOUD_DELETE_MEMBER_FILE` (`0xC64DED7EF0D2FE37`)
---@param p0 string
---@return integer result
function NetworkStatic.cloudDeleteMemberFile(p0) end

--- **Native**: `CLOUD_DID_REQUEST_SUCCEED` (`0x3A3D5568AF297CD5`)
---@param handle integer
---@return boolean result
function NetworkStatic.cloudDidRequestSucceed(handle) end

--- **Native**: `CLOUD_GET_AVAILABILITY_CHECK_RESULT` (`0x0B0CC10720653F3B`)
---@return boolean result
function NetworkStatic.cloudGetAvailabilityCheckResult() end

--- **Native**: `CLOUD_HAS_REQUEST_COMPLETED` (`0x4C61B39930D045DA`)
---@param handle integer
---@return boolean result
function NetworkStatic.cloudHasRequestCompleted(handle) end

--- **Native**: `CLOUD_IS_CHECKING_AVAILABILITY` (`0xC7ABAC5DE675EE3B`)
---@return boolean result
function NetworkStatic.cloudIsCheckingAvailability() end

--- ```
--- Takes the specified time and writes it to the structure specified in the second argument.
--- struct date_time
--- {
---     alignas(8) int year;
---     alignas(8) int month;
---     alignas(8) int day;
---     alignas(8) int hour;
---     alignas(8) int minute;
---     alignas(8) int second;
--- };
--- ```
--- **Native**: `CONVERT_POSIX_TIME` (`0xAC97AF97FA68E5D5`)
---@param posixTime integer
---@param timeStructure any
---@return any timeStructure
function NetworkStatic.convertPosixTime(posixTime, timeStructure) end

--- Creates a networked synchronized scene.
--- Be sure to actually start the scene with [`NETWORK_START_SYNCHRONISED_SCENE`](#\_0x9A1B3FCDB36C8697) after you're done adding peds or entities to the scene.
--- **Native**: `NETWORK_CREATE_SYNCHRONISED_SCENE` (`0x7CD6BC4C2BBDD526`)
---@param coords vector3 X coord of the scene position (If the scene is for an object, the position should be of the object's coordinates most of the time) / Y coord of the scene position. / Z coord of the scene position.
---@param rot vector3 Value x of the scene rotation. / Value y of the scene rotation. / Value z of the scene rotation (It's heading).
---@param rotationOrder fx.Enum.RotationOrder|integer Rotation order. Default is 2.
---@param holdLastFrame boolean If true, the scene stays on the last frame once it finishes, making `GetSynchronizedScenePhase` keep returning `1.0`. Script is expected to clean up it's memory and stop the animation if this is pass…
---@param looped boolean If true, the scene will be looped and `holdLastFrame` will be disregarded.
---@param phaseToStopScene number Which phase (from `0.0` to `1.0` to stop the scene. Default is `1.0`)
---@param phaseToStartScene number Which phase (from `0.0` to `1.0` to start the scene. Default is `0.0`)
---@param animSpeed number Speed of the animation. Default is `1.0`
---@return integer result Returns the network synchronized scene's handle. You can get information regarding the phase, rate etc of this synchronised scene by using local synchronized scene natives (e.g [`GET_SYNCHRONIZED_SCE…
function NetworkStatic.createSynchronisedScene(coords, rot, rotationOrder, holdLastFrame, looped, phaseToStopScene, phaseToStartScene, animSpeed) end

--- **Native**: `NETWORK_DID_FIND_GAMERS_SUCCEED` (`0xF9B83B77929D8863`)
---@return boolean result
function NetworkStatic.didFindGamersSucceed() end

--- **Native**: `NETWORK_DID_GET_GAMER_STATUS_SUCCEED` (`0x5AE17C6B0134B7F1`)
---@return boolean result
function NetworkStatic.didGetGamerStatusSucceed() end

--- **Native**: `NETWORK_DISABLE_LEAVE_REMOTE_PED_BEHIND` (`0xC505036A35AFD01B`)
---@param toggle boolean
function NetworkStatic.disableLeaveRemotePedBehind(toggle) end

--- **Native**: `NETWORK_DISABLE_PROXIMITY_MIGRATION` (`0x407091CF6037118E`)
---@param netID integer
function NetworkStatic.disableProximityMigration(netID) end

--- ```
--- Hardcoded to return -1.
--- ```
--- **Native**: `NETWORK_DISPLAYNAMES_FROM_HANDLES_START` (`0xD66C9E72B3CC4982`)
---@param p1 any
---@return integer result
---@return any p0
function NetworkStatic.displaynamesFromHandlesStart(p1) end

--- **Native**: `NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID` (`0x18A47D074708FD68`)
---@param netId integer
---@return boolean result
function NetworkStatic.doesEntityExistWithNetworkId(netId) end

--- **Native**: `NETWORK_DOES_NETWORK_ID_EXIST` (`0x38CE16C96BD11344`)
---@param netId integer
---@return boolean result
function NetworkStatic.doesNetworkIdExist(netId) end

--- **Native**: `NETWORK_DOES_TUNABLE_EXIST` (`0x85E5F8B9B898B20A`)
---@param tunableContext string
---@param tunableName string
---@return boolean result
function NetworkStatic.doesTunableExist(tunableContext, tunableName) end

--- **Native**: `NETWORK_DOES_TUNABLE_EXIST_HASH` (`0xE4E53E1419D81127`)
---@param tunableContext integer|string
---@param tunableName integer|string
---@return boolean result
function NetworkStatic.doesTunableExistHash(tunableContext, tunableName) end

--- ```
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `NETWORK_DO_TRANSITION_QUICKMATCH` (`0x71FB0EBCD4915D56`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return boolean result
function NetworkStatic.doTransitionQuickmatch(p0, p1, p2, p3) end

--- ```
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC` (`0xA091A5E44F0072E5`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return boolean result
function NetworkStatic.doTransitionQuickmatchAsync(p0, p1, p2, p3) end

--- ```
--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- ```
--- **Native**: `NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP` (`0x9C4AB58491FDC98A`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p5 any
---@return boolean result
---@return any p4
function NetworkStatic.doTransitionQuickmatchWithGroup(p0, p1, p2, p3, p5) end

--- ```
--- p2 is true 3/4 of the occurrences I found.
--- 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.
--- ```
--- **Native**: `NETWORK_DO_TRANSITION_TO_FREEMODE` (`0x3AAD8B2FCA1E289F`)
---@param p1 any
---@param p2 boolean
---@param players integer
---@param p4 boolean
---@return boolean result
---@return any p0
function NetworkStatic.doTransitionToFreemode(p1, p2, players, p4) end

--- **Native**: `NETWORK_DO_TRANSITION_TO_GAME` (`0x3E9BB38102A589B0`)
---@param p0 boolean
---@param maxPlayers integer
---@return boolean result
function NetworkStatic.doTransitionToGame(p0, maxPlayers) end

--- **Native**: `NETWORK_DO_TRANSITION_TO_NEW_FREEMODE` (`0x9E80A5BA8109F974`)
---@param players integer
---@param p3 boolean
---@param p4 boolean
---@param p5 boolean
---@return boolean result
---@return any p0
---@return any p1
function NetworkStatic.doTransitionToNewFreemode(players, p3, p4, p5) end

--- **Native**: `NETWORK_DO_TRANSITION_TO_NEW_GAME` (`0x4665F51EFED00034`)
---@param p0 boolean
---@param maxPlayers integer
---@param p2 boolean
---@return boolean result
function NetworkStatic.doTransitionToNewGame(p0, maxPlayers, p2) end

--- **Native**: `NETWORK_END_TUTORIAL_SESSION` (`0xD0AFAFF5A51D72F7`)
function NetworkStatic.endTutorialSession() end

--- **Native**: `NETWORK_ENTITY_AREA_DOES_EXIST` (`0xE64A3CA08DFA37A9`)
---@param areaHandle integer
---@return boolean result
function NetworkStatic.entityAreaDoesExist(areaHandle) end

--- **Native**: `NETWORK_ENTITY_AREA_IS_OCCUPIED` (`0x4A2D4E8BF4265B0F`)
---@param areaHandle integer
---@return boolean result
function NetworkStatic.entityAreaIsOccupied(areaHandle) end

--- **Native**: `FACEBOOK_DO_UNK_CHECK` (`0xA75E2B6733DA5142`)
---@return boolean result
function NetworkStatic.facebookDoUnkCheck() end

--- **Native**: `FACEBOOK_IS_AVAILABLE` (`0x43865688AE10F0D7`)
---@return boolean result
function NetworkStatic.facebookIsAvailable() end

--- **Native**: `FACEBOOK_IS_SENDING_DATA` (`0x62B9FEC9A11F10EF`)
---@return boolean result
function NetworkStatic.facebookIsSendingData() end

--- **Native**: `FACEBOOK_SET_CREATE_CHARACTER_COMPLETE` (`0xDC48473142545431`)
---@return boolean result
function NetworkStatic.facebookSetCreateCharacterComplete() end

--- **Native**: `FACEBOOK_SET_HEIST_COMPLETE` (`0x098AB65B9ED9A9EC`)
---@param heistName string
---@param cashEarned integer
---@param xpEarned integer
---@return boolean result
function NetworkStatic.facebookSetHeistComplete(heistName, cashEarned, xpEarned) end

--- ```
--- milestoneId:
--- 0 = "percentcomplete"
--- 1 = "storycomplete"
--- 2 = "vehicles"
--- 3 = "properties"
--- 4 = "psych"
--- 5 = "mapreveal"
--- 6 = "prologue"
--- ```
--- **Native**: `FACEBOOK_SET_MILESTONE_COMPLETE` (`0x0AE1F1653B554AB9`)
---@param milestoneId integer
---@return boolean result
function NetworkStatic.facebookSetMilestoneComplete(milestoneId) end

--- ```
--- Hardcoded to not work in SP.
--- ```
--- **Native**: `FADE_OUT_LOCAL_PLAYER` (`0x416DBD4CD6ED8DD2`)
---@param p0 boolean
function NetworkStatic.fadeOutLocalPlayer(p0) end

--- **Native**: `FILLOUT_PM_PLAYER_LIST` (`0xCBBD7C4991B64809`)
---@param p1 any
---@param p2 any
---@return boolean result
---@return integer networkHandle
function NetworkStatic.filloutPmPlayerList(p1, p2) end

--- **Native**: `FILLOUT_PM_PLAYER_LIST_WITH_NAMES` (`0x716B6DB9D1886106`)
---@param p2 any
---@param p3 any
---@return boolean result
---@return any p0
---@return any p1
function NetworkStatic.filloutPmPlayerListWithNames(p2, p3) end

--- **Native**: `NETWORK_FIND_GAMERS_IN_CREW` (`0xE532D6811B3A4D2A`)
---@param p0 any
---@return boolean result
function NetworkStatic.findGamersInCrew(p0) end

--- **Native**: `NETWORK_FIND_MATCHED_GAMERS` (`0xF7B2CFDE5C9F700D`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@return boolean result
function NetworkStatic.findMatchedGamers(p0, p1, p2, p3) end

--- **Native**: `NETWORK_FINISH_BROADCASTING_DATA` (`0x64F62AFB081E260D`)
function NetworkStatic.finishBroadcastingData() end

--- **Native**: `NETWORK_FORCE_LOCAL_USE_OF_SYNCED_SCENE_CAMERA` (`0xC9B43A33D09CADA7`)
---@param sceneId integer
function NetworkStatic.forceLocalUseOfSyncedSceneCamera(sceneId) end

--- **Native**: `NETWORK_GAMER_HAS_HEADSET` (`0xF2FD55CB574BCC55`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.gamerHasHeadset(networkHandle) end

--- **Native**: `NETWORK_GAMERTAG_FROM_HANDLE_PENDING` (`0xB071E27958EF4CF0`)
---@return boolean result
function NetworkStatic.gamertagFromHandlePending() end

--- **Native**: `NETWORK_GAMERTAG_FROM_HANDLE_START` (`0x9F0C0A981D73FA56`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.gamertagFromHandleStart(networkHandle) end

--- **Native**: `NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED` (`0xFD00798DBA7523DD`)
---@return boolean result
function NetworkStatic.gamertagFromHandleSucceeded() end

--- **Native**: `NETWORK_GET_ACTIVITY_PLAYER_NUM` (`0x73E2B500410DA5A2`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getActivityPlayerNum(p0) end

--- **Native**: `NETWORK_GET_BACKGROUND_LOADING_RECIPIENTS` (`0x97A770BEEF227E2B`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p2
---@return any p3
function NetworkStatic.getBackgroundLoadingRecipients(p0, p1) end

--- ```
--- index2 is unused
--- ```
--- **Native**: `GET_COMMERCE_ITEM_CAT` (`0x6F44CBF56D79FAC0`)
---@param index integer
---@param index2 integer
---@return string result
function NetworkStatic.getCommerceItemCat(index, index2) end

--- **Native**: `GET_COMMERCE_ITEM_ID` (`0x662635855957C411`)
---@param index integer
---@return string result
function NetworkStatic.getCommerceItemId(index) end

--- **Native**: `GET_COMMERCE_ITEM_NAME` (`0xB4271092CA7EDF48`)
---@param index integer
---@return string result
function NetworkStatic.getCommerceItemName(index) end

--- **Native**: `GET_COMMERCE_ITEM_NUM_CATS` (`0x2A7776C709904AB0`)
---@param index integer
---@return integer result
function NetworkStatic.getCommerceItemNumCats(index) end

--- ```
--- NativeDB Added Parameter 3: int p2
--- ```
--- **Native**: `GET_COMMERCE_ITEM_TEXTURENAME` (`0x722F5D28B61C5EA8`)
---@param index integer
---@return string result
function NetworkStatic.getCommerceItemTexturename(index) end

--- **Native**: `GET_COMMERCE_PRODUCT_PRICE` (`0xCA94551B50B4932C`)
---@param index integer
---@return string result
function NetworkStatic.getCommerceProductPrice(index) end

--- ```
--- Return the content modifier id (the tunables context if you want) of a specific content.
--- It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.
--- The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'
--- 'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.
--- ```
--- **Native**: `NETWORK_GET_CONTENT_MODIFIER_LIST_ID` (`0x187382F8A3E0A6C3`)
---@param contentHash integer|string
---@return integer result
function NetworkStatic.getContentModifierListId(contentHash) end

--- **Native**: `NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU` (`0x74881E6BCAE2327C`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.getCurrentlySelectedGamerHandleFromInviteMenu(p0) end

--- **Native**: `NETWORK_GET_DESTROYER_OF_ENTITY` (`0x4CACA84440FA26F6`)
---@param p0 any
---@param p1 any
---@param weaponHash integer|string
---@return boolean result
---@return integer weaponHash
function NetworkStatic.getDestroyerOfEntity(p0, p1, weaponHash) end

--- **Native**: `NETWORK_GET_DESTROYER_OF_NETWORK_ID` (`0x7A1ADEEF01740A24`)
---@param netId integer
---@param weaponHash integer|string
---@return integer result
---@return integer weaponHash
function NetworkStatic.getDestroyerOfNetworkId(netId, weaponHash) end

--- **Native**: `NETWORK_GET_DISPLAYNAMES_FROM_HANDLES` (`0x58CC181719256197`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return integer result Hard-coded to always return 0.
function NetworkStatic.getDisplaynamesFromHandles(p0, p1, p2) end

--- **Native**: `NETWORK_GET_FOUND_GAMER` (`0x9DCFF2AFB68B3476`)
---@param p1 any
---@return boolean result
---@return any p0
function NetworkStatic.getFoundGamer(p1) end

--- **Native**: `NETWORK_GET_FRIEND_NAME` (`0xE11EBBB2A783FE8B`)
---@param friendIndex integer
---@return string result
function NetworkStatic.getFriendName(friendIndex) end

--- **Native**: `NETWORK_GET_FRIEND_NAME_FROM_INDEX` (`0x4164F227D052E293`)
---@param friendIndex integer
---@return string result
function NetworkStatic.getFriendNameFromIndex(friendIndex) end

--- **Native**: `NETWORK_GET_GAMER_STATUS_RESULT` (`0x02A8BEC6FD9AF660`)
---@param p1 any
---@return boolean result
---@return any p0
function NetworkStatic.getGamerStatusResult(p1) end

--- **Native**: `NETWORK_GET_GAMERTAG_FROM_HANDLE` (`0x426141162EBE5CDB`)
---@param networkHandle integer
---@return string result
---@return integer networkHandle
function NetworkStatic.getGamertagFromHandle(networkHandle) end

--- **Native**: `NETWORK_GET_GLOBAL_MULTIPLAYER_CLOCK` (`0x6D03BFBD643B2A02`)
---@return integer hours
---@return integer minutes
---@return integer seconds
function NetworkStatic.getGlobalMultiplayerClock() end

--- ```
--- Retrieves the local player's NetworkHandle* and stores it in the given buffer.
--- * Currently unknown struct
--- ```
--- **Native**: `NETWORK_GET_LOCAL_HANDLE` (`0xE86051786B66CD8E`)
---@param bufferSize integer
---@return integer networkHandle
function NetworkStatic.getLocalHandle(bufferSize) end

--- Returns a local synchronized scene handle of a networked synchronised scene.
--- **Native**: `NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID` (`0x02C40BF885C567B6`)
---@param netSceneId integer Network synchronised scene ID (returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#\_0x7CD6BC4C2BBDD526)).
---@return integer result Local synchronized scene ID. This value can be used with natives such as: [`GET_SYNCHRONIZED_SCENE_PHASE`](#\_0xE4A310B1D7FA73CC), [`GET_SYNCHRONIZED_SCENE_RATE`](#\_0xD80932D577274D40), [`IS_SYNCHRO…
function NetworkStatic.getLocalSceneFromNetworkId(netSceneId) end

--- **Native**: `GET_NUM_CREATED_MISSION_OBJECTS` (`0x12B6281B6C6706C0`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getNumCreatedMissionObjects(p0) end

--- **Native**: `GET_NUM_CREATED_MISSION_PEDS` (`0xCB215C4B56A7FAE7`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getNumCreatedMissionPeds(p0) end

--- **Native**: `GET_NUM_CREATED_MISSION_VEHICLES` (`0x0CD9AB83489430EA`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getNumCreatedMissionVehicles(p0) end

--- ```
--- p0 appears to be for MP
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `GET_NUM_RESERVED_MISSION_OBJECTS` (`0xAA81B5F10BC43AC2`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getNumReservedMissionObjects(p0) end

--- ```
--- p0 appears to be for MP
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `GET_NUM_RESERVED_MISSION_PEDS` (`0x1F13D5AE5CB17E17`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getNumReservedMissionPeds(p0) end

--- ```
--- p0 appears to be for MP
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `GET_NUM_RESERVED_MISSION_VEHICLES` (`0xCF3A965906452031`)
---@param p0 boolean
---@return integer result
function NetworkStatic.getNumReservedMissionVehicles(p0) end

--- **Native**: `NETWORK_GET_NUM_SCRIPT_PARTICIPANTS` (`0x3658E8CD94FC121A`)
---@param p1 any
---@param p2 any
---@return integer result
---@return any p0
function NetworkStatic.getNumScriptParticipants(p1, p2) end

--- **Native**: `NETWORK_GET_PARTICIPANT_INDEX` (`0x1B84DF6AF2A46938`)
---@param index integer
---@return integer result
function NetworkStatic.getParticipantIndex(index) end

--- **Native**: `NETWORK_GET_PLATFORM_PARTY_MEMBERS` (`0x120364DE2845DAF8`)
---@param dataSize integer
---@return integer result
---@return any data
function NetworkStatic.getPlatformPartyMembers(dataSize) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_CONTENT_ID` (`0x24409FC4C55CB22D`)
---@param p0 any
---@return string result
function NetworkStatic.getPresenceInviteContentId(p0) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_FROM_ADMIN` (`0x3DBF2DF0AEB7D289`)
---@param p0 any
---@return boolean result
function NetworkStatic.getPresenceInviteFromAdmin(p0) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_HANDLE` (`0x38D5B0FEBB086F75`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p1
function NetworkStatic.getPresenceInviteHandle(p0, p1) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_ID` (`0xDFF09646E12EC386`)
---@param p0 any
---@return any result
function NetworkStatic.getPresenceInviteId(p0) end

--- Returns the Name of the inviter of the specific selected Invite.
--- **Native**: `NETWORK_GET_PRESENCE_INVITE_INVITER` (`0x4962CC4AA2F345B7`)
---@param inviteIndex integer
---@return string result The Name of the inviter.
function NetworkStatic.getPresenceInviteInviter(inviteIndex) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_IS_TOURNAMENT` (`0x8806CEBFABD3CE05`)
---@param p0 any
---@return boolean result
function NetworkStatic.getPresenceInviteIsTournament(p0) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_PLAYLIST_CURRENT` (`0x728C4CC7920CD102`)
---@param p0 any
---@return any result
function NetworkStatic.getPresenceInvitePlaylistCurrent(p0) end

--- **Native**: `NETWORK_GET_PRESENCE_INVITE_PLAYLIST_LENGTH` (`0xD39B3FFF8FFDD5BF`)
---@param p0 any
---@return any result
function NetworkStatic.getPresenceInvitePlaylistLength(p0) end

--- The Native returns a hash of the session id as string from the specific invite index!
--- **Native**: `NETWORK_GET_PRESENCE_INVITE_SESSION_ID` (`0x26E1CD96B0903D60`)
---@param inviteIndex integer
---@return integer result A hash of the session id.
function NetworkStatic.getPresenceInviteSessionId(inviteIndex) end

--- **Native**: `NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL` (`0x042E4B70B93E6054`)
function NetworkStatic.getPrimaryClanDataCancel() end

--- **Native**: `NETWORK_GET_PRIMARY_CLAN_DATA_NEW` (`0xC080FF658B2E41DA`)
---@return boolean result
---@return any p0
---@return any p1
function NetworkStatic.getPrimaryClanDataNew() end

--- **Native**: `NETWORK_GET_PRIMARY_CLAN_DATA_START` (`0xCE86D8191B762107`)
---@param p1 any
---@return boolean result
---@return any p0
function NetworkStatic.getPrimaryClanDataStart(p1) end

--- ```
--- Same as GET_RANDOM_INT_IN_RANGE
--- ```
--- **Native**: `NETWORK_GET_RANDOM_INT_RANGED` (`0xE30CF56F1EFA5F43`)
---@param rangeStart integer
---@param rangeEnd integer
---@return integer result
function NetworkStatic.getRandomIntRanged(rangeStart, rangeEnd) end

--- ```
--- Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..
--- ```
--- **Native**: `NETWORK_GET_RESPAWN_RESULT` (`0x371EA43692861CF1`)
---@param randomInt integer
---@return vector3 coordinates
---@return number heading
function NetworkStatic.getRespawnResult(randomInt) end

--- **Native**: `NETWORK_GET_RESPAWN_RESULT_FLAGS` (`0x6C34F1208B8923FD`)
---@param p0 any
---@return any result
function NetworkStatic.getRespawnResultFlags(p0) end

--- ```
--- 0 = succeeded
--- 1 = pending
--- 2 = failed
--- ```
--- **Native**: `GET_STATUS_OF_TEXTURE_DOWNLOAD` (`0x8BD6C6DEA20E82C6`)
---@param p0 integer
---@return integer result
function NetworkStatic.getStatusOfTextureDownload(p0) end

--- **Native**: `GET_TIME_AS_STRING` (`0x9E23B1777A927DAD`)
---@param time integer
---@return string result
function NetworkStatic.getTimeAsString(time) end

--- ```
--- Subtracts the second argument from the first.
--- ```
--- **Native**: `GET_TIME_DIFFERENCE` (`0xA2C6FC031D46FFF0`)
---@param timeA integer
---@param timeB integer
---@return integer result
function NetworkStatic.getTimeDifference(timeA, timeB) end

--- ```
--- Adds the first argument to the second.
--- ```
--- **Native**: `GET_TIME_OFFSET` (`0x017008CCDAD48503`)
---@param timeA integer
---@param timeB integer
---@return integer result
function NetworkStatic.getTimeOffset(timeA, timeB) end

--- **Native**: `NETWORK_GET_TRANSITION_HOST` (`0x65042B9774C4435E`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.getTransitionHost(networkHandle) end

--- ```
--- Returns count.
--- ```
--- **Native**: `NETWORK_GET_TRANSITION_MEMBERS` (`0x73B000F7FBC55829`)
---@param dataCount integer
---@return integer result
---@return any data
function NetworkStatic.getTransitionMembers(dataCount) end

--- **Native**: `NETWORK_HANDLE_FROM_FRIEND` (`0xD45CB817D7E177D2`)
---@param friendIndex integer
---@param bufferSize integer
---@return integer networkHandle
function NetworkStatic.handleFromFriend(friendIndex, bufferSize) end

--- ```
--- Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.
--- * Currently unknown struct
--- ```
--- **Native**: `NETWORK_HANDLE_FROM_MEMBER_ID` (`0xA0FD21BED61E5C4C`)
---@param memberId string
---@param bufferSize integer
---@return integer networkHandle
function NetworkStatic.handleFromMemberId(memberId, bufferSize) end

--- ```
--- Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.
--- * Currently unknown struct
--- ```
--- **Native**: `NETWORK_HANDLE_FROM_USER_ID` (`0xDCD51DD8F87AEC5C`)
---@param userId string
---@param bufferSize integer
---@return integer networkHandle
function NetworkStatic.handleFromUserId(userId, bufferSize) end

--- **Native**: `NETWORK_HAS_CONTROL_OF_DOOR` (`0xCB3C68ADB06195DF`)
---@param doorHash integer|string
---@return boolean result
function NetworkStatic.hasControlOfDoor(doorHash) end

--- **Native**: `NETWORK_HAS_CONTROL_OF_NETWORK_ID` (`0x4D36070FE0215186`)
---@param netId integer
---@return boolean result
function NetworkStatic.hasControlOfNetworkId(netId) end

--- **Native**: `NETWORK_HASH_FROM_GAMER_HANDLE` (`0x58575AC3CF2CA8EC`)
---@param networkHandle integer
---@return integer result
---@return integer networkHandle
function NetworkStatic.hashFromGamerHandle(networkHandle) end

--- **Native**: `NETWORK_HAS_INVITE_BEEN_ACKED` (`0x71DC455F5CD1C2B1`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.hasInviteBeenAcked(networkHandle) end

--- **Native**: `NETWORK_HAS_INVITED_GAMER` (`0x4D86CD31E8976ECE`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.hasInvitedGamer(p0) end

--- **Native**: `NETWORK_HAS_INVITED_GAMER_TO_TRANSITION` (`0x7284A47B3540E6CF`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.hasInvitedGamerToTransition(p0) end

--- ```
--- index is always 18 in scripts
--- ```
--- **Native**: `NETWORK_HAS_ROS_PRIVILEGE` (`0xA699957E60D80214`)
---@param index integer
---@return boolean result
function NetworkStatic.hasRosPrivilege(index) end

--- **Native**: `NETWORK_HAS_ROS_PRIVILEGE_END_DATE` (`0xC22912B1D85F26B1`)
---@param privilege integer
---@return boolean result
---@return integer banType
---@return vector3 timeData
function NetworkStatic.hasRosPrivilegeEndDate(privilege) end

--- **Native**: `NETWORK_HAS_TRANSITION_INVITE_BEEN_ACKED` (`0x3F9990BF5F22759C`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.hasTransitionInviteBeenAcked(networkHandle) end

--- **Native**: `NETWORK_HAS_VIEW_GAMER_USER_CONTENT_RESULT` (`0xCCA4318E1AB03F1F`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.hasViewGamerUserContentResult(networkHandle) end

--- **Native**: `NETWORK_HAVE_COMMUNICATION_PRIVILEGES` (`0xAEEF48CDF5B6CE7C`)
---@param p0 integer
---@param player fx.Player|integer
---@return boolean result
function NetworkStatic.haveCommunicationPrivileges(p0, player) end

--- **Native**: `NETWORK_HAVE_ONLINE_PRIVILEGE_2` (`0x5EA784D197556507`)
---@return boolean result
function NetworkStatic.haveOnlinePrivilege2() end

--- **Native**: `NETWORK_HAVE_ONLINE_PRIVILEGES` (`0x25CB5A9F37BFD063`)
---@return boolean result
function NetworkStatic.haveOnlinePrivileges() end

--- **Native**: `NETWORK_HAVE_ROS_BANNED_PRIV` (`0x8020A73847E0CA7D`)
---@return boolean result
function NetworkStatic.haveRosBannedPriv() end

--- **Native**: `NETWORK_HAVE_ROS_CREATE_TICKET_PRIV` (`0xA0AD7E2AF5349F61`)
---@return boolean result
function NetworkStatic.haveRosCreateTicketPriv() end

--- **Native**: `NETWORK_HAVE_ROS_LEADERBOARD_WRITE_PRIV` (`0x422D396F80A96547`)
---@return boolean result
function NetworkStatic.haveRosLeaderboardWritePriv() end

--- **Native**: `NETWORK_HAVE_ROS_MULTIPLAYER_PRIV` (`0x5F91D5D0B36AA310`)
---@return boolean result
function NetworkStatic.haveRosMultiplayerPriv() end

--- **Native**: `NETWORK_HAVE_ROS_SOCIAL_CLUB_PRIV` (`0x606E4D3E3CCCF3EB`)
---@return boolean result
function NetworkStatic.haveRosSocialClubPriv() end

--- **Native**: `NETWORK_HAVE_USER_CONTENT_PRIVILEGES` (`0x72D918C99BCACC54`)
---@param p0 integer
---@return boolean result
function NetworkStatic.haveUserContentPrivileges(p0) end

--- From what I can tell it looks like it does the following:
---
--- Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
---
--- You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
--- **Native**: `NETWORK_HOST_TRANSITION` (`0xA60BB5CE242BB254`)
---@param p0 integer Unknown int
---@param p1 integer Unknown int
---@param p2 integer Unknown int
---@param p3 integer Unknown int
---@param p4 any Unknown always 0 in decompiled scripts
---@param p5 boolean BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
---@param p6 boolean BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
---@param p7 integer Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
---@param p8 any Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
---@param p9 integer Unknown int, sometimes 0, but also 32768 or 16384 appear in decompiled scripst, maybe a flag of some sort?
---@return boolean result Probably a bool indicating if the transition was created.
function NetworkStatic.hostTransition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- **Native**: `NETWORK_INVITE_GAMERS` (`0x9D80CD1D0E6327DE`)
---@param p1 any
---@return boolean result
---@return any p0
---@return any p2
---@return any p3
function NetworkStatic.inviteGamers(p1) end

--- **Native**: `NETWORK_INVITE_GAMERS_TO_TRANSITION` (`0x4A595C32F77DFF76`)
---@param p1 any
---@return boolean result
---@return any p0
function NetworkStatic.inviteGamersToTransition(p1) end

--- **Native**: `NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE` (`0x2763BBAA72A7BCB9`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isActivitySpectatorFromHandle(networkHandle) end

--- **Native**: `NETWORK_IS_ADDING_FRIEND` (`0x6EA101606F6E4D81`)
---@return any result
function NetworkStatic.isAddingFriend() end

--- ```
--- This would be nice to see if someone is in party chat, but 2 sad notes.
--- 1) It only becomes true if said person is speaking in that party at the time.
--- 2) It will never, become true unless you are in that party with said person.
--- ```
--- **Native**: `NETWORK_IS_CHATTING_IN_PLATFORM_PARTY` (`0x8DE9945BCC9AEC52`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isChattingInPlatformParty(networkHandle) end

--- **Native**: `IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID` (`0x6E192E33AD436366`)
---@param netID integer
---@return boolean result
function NetworkStatic.isDamageTrackerActiveOnNetworkId(netID) end

--- **Native**: `NETWORK_IS_DOOR_NETWORKED` (`0xC01E93FAC20C3346`)
---@param doorHash integer|string
---@return boolean result
function NetworkStatic.isDoorNetworked(doorHash) end

--- **Native**: `NETWORK_IS_FRIEND` (`0x1A24A179F9B31654`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isFriend(networkHandle) end

--- **Native**: `NETWORK_IS_FRIEND_HANDLE_ONLINE` (`0x87EB7A3FFCB314DB`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isFriendHandleOnline(networkHandle) end

--- **Native**: `NETWORK_IS_FRIEND_INDEX_ONLINE` (`0xBAD8F2A42B844821`)
---@param friendIndex integer
---@return boolean result
function NetworkStatic.isFriendIndexOnline(friendIndex) end

--- **Native**: `NETWORK_IS_FRIEND_IN_MULTIPLAYER` (`0x57005C18827F3A28`)
---@param friendName string
---@return boolean result
function NetworkStatic.isFriendInMultiplayer(friendName) end

--- ```
--- In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.
--- ```
--- **Native**: `NETWORK_IS_FRIEND_IN_SAME_TITLE` (`0x2EA9A3BEDF3F17B8`)
---@param friendName string
---@return boolean result
function NetworkStatic.isFriendInSameTitle(friendName) end

--- **Native**: `NETWORK_IS_FRIEND_ONLINE` (`0x425A44533437B64D`)
---@param name string
---@return boolean result
function NetworkStatic.isFriendOnline(name) end

--- **Native**: `NETWORK_IS_GAMER_BLOCKED_BY_ME` (`0xE944C4F5AF1B5883`)
---@param networkHandle any
---@return boolean result
---@return any networkHandle
function NetworkStatic.isGamerBlockedByMe(networkHandle) end

--- **Native**: `NETWORK_IS_GAMER_IN_MY_SESSION` (`0x0F10B05DDF8D16E9`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isGamerInMySession(networkHandle) end

--- **Native**: `NETWORK_IS_GAMER_MUTED_BY_ME` (`0xCE60DE011B6C7978`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isGamerMutedByMe(networkHandle) end

--- **Native**: `NETWORK_IS_GAMER_TALKING` (`0x71C33B22606CD88A`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isGamerTalking(networkHandle) end

--- **Native**: `NETWORK_IS_HANDLE_VALID` (`0x6F79B93B0A8E4133`)
---@param bufferSize integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isHandleValid(bufferSize) end

--- Checks if the networkHandle is the same as any other user that is signed in on the local machine.
--- For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".
--- **Native**: `NETWORK_IS_INACTIVE_PROFILE` (`0x7E58745504313A2E`)
---@param networkHandle integer
---@return boolean result Returns true if the networkHandle is signed in on the same machine, but is not the main player.
---@return integer networkHandle
function NetworkStatic.isInactiveProfile(networkHandle) end

--- Returns true if the specified network id is controlled by someone else.
--- **Native**: `NETWORK_IS_NETWORK_ID_A_CLONE` (`0x7242F8B741CE1086`)
---@param netId integer The network id for an object or entity.
---@return boolean result Probably a bool, returns true if you don't have control over the netId entity.
function NetworkStatic.isNetworkIdAClone(netId) end

--- **Native**: `IS_NETWORK_ID_OWNED_BY_PARTICIPANT` (`0xA1607996431332DF`)
---@param netId integer
---@return boolean result
function NetworkStatic.isNetworkIdOwnedByParticipant(netId) end

--- **Native**: `NETWORK_IS_PARTICIPANT_ACTIVE` (`0x6FF8FF40B6357D45`)
---@param p0 integer
---@return boolean result
function NetworkStatic.isParticipantActive(p0) end

--- ```
--- Note according to IDA TU27 X360(Console),
--- This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.
--- Side note: This location just stops where it's at once jumped to.
--- Screenshot for side note,
--- h t t p ://i.imgur.com/m2ci1mF.png
--- h t t p://i.imgur.com/Z0Wx2B6.png
--- ```
--- **Native**: `NETWORK_IS_PARTY_MEMBER` (`0x676ED266AADD31E0`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isPartyMember(networkHandle) end

--- ```
--- This function is hard-coded to always return 0.
--- ```
--- **Native**: `NETWORK_IS_PENDING_FRIEND` (`0x0BE73DA6984A6E33`)
---@param p0 any
---@return any result
function NetworkStatic.isPendingFriend(p0) end

--- **Native**: `NETWORK_IS_SCRIPT_ACTIVE` (`0x9D40DF90FAD26098`)
---@param scriptName string
---@param player fx.Player|integer
---@param p2 boolean
---@param p3 any
---@return boolean result
function NetworkStatic.isScriptActive(scriptName, player, p2, p3) end

--- ```
--- NativeDB Introduced: v2245
--- ```
--- **Native**: `NETWORK_IS_SCRIPT_ACTIVE_BY_HASH` (`0xDA7DE67F5FE5EE13`)
---@param scriptHash integer|string
---@param p1 integer
---@param p2 boolean
---@param p3 integer
---@return boolean result
function NetworkStatic.isScriptActiveByHash(scriptHash, p1, p2, p3) end

--- **Native**: `IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE` (`0xD82CF8E64C8729D8`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@return boolean result
function NetworkStatic.isSphereVisibleToAnotherMachine(p0, p1, p2, p3) end

--- **Native**: `IS_SPHERE_VISIBLE_TO_PLAYER` (`0xDC3A310219E5DA62`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@return boolean result
function NetworkStatic.isSphereVisibleToPlayer(p0, p1, p2, p3, p4) end

--- **Native**: `NETWORK_IS_THIS_SCRIPT_MARKED` (`0xD1110739EEADB592`)
---@param p0 any
---@param p1 boolean
---@param p2 any
---@return boolean result
function NetworkStatic.isThisScriptMarked(p0, p1, p2) end

--- ```
--- Returns true if the two times are equal; otherwise returns false.
--- ```
--- **Native**: `IS_TIME_EQUAL_TO` (`0xF5BC95857BD6D512`)
---@param timeA integer
---@param timeB integer
---@return boolean result
function NetworkStatic.isTimeEqualTo(timeA, timeB) end

--- ```
--- Subtracts the second argument from the first, then returns whether the result is negative.
--- ```
--- **Native**: `IS_TIME_LESS_THAN` (`0xCB2CF5148012C8D0`)
---@param timeA integer
---@param timeB integer
---@return boolean result
function NetworkStatic.isTimeLessThan(timeA, timeB) end

--- ```
--- Subtracts the first argument from the second, then returns whether the result is negative.
--- ```
--- **Native**: `IS_TIME_MORE_THAN` (`0xDE350F8651E4346C`)
---@param timeA integer
---@param timeB integer
---@return boolean result
function NetworkStatic.isTimeMoreThan(timeA, timeB) end

--- **Native**: `NETWORK_IS_TRANSITION_HOST_FROM_HANDLE` (`0x6B5C83BA3EFE6A10`)
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.isTransitionHostFromHandle(networkHandle) end

--- **Native**: `NETWORK_JOIN_GROUP_ACTIVITY` (`0xA06509A691D12BE4`)
---@return any result
function NetworkStatic.joinGroupActivity() end

--- **Native**: `NETWORK_JOIN_PREVIOUSLY_FAILED_SESSION` (`0x59DF79317F85A7E0`)
---@return boolean result
function NetworkStatic.joinPreviouslyFailedSession() end

--- **Native**: `NETWORK_JOIN_PREVIOUSLY_FAILED_TRANSITION` (`0xFFE1E5B792D92B34`)
---@return boolean result
function NetworkStatic.joinPreviouslyFailedTransition() end

--- **Native**: `NETWORK_LAUNCH_TRANSITION` (`0x2DCF46CB1A4F0884`)
---@return boolean result
function NetworkStatic.launchTransition() end

--- **Native**: `NETWORK_LEAVE_TRANSITION` (`0xD23A1A815D21DB19`)
---@return boolean result
function NetworkStatic.leaveTransition() end

--- **Native**: `NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED` (`0x5728BB6D63E3FF1D`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.markTransitionGamerAsFullyJoined(p0) end

--- **Native**: `NETWORK_MEMBER_ID_FROM_GAMER_HANDLE` (`0xC82630132081BB6F`)
---@param networkHandle integer
---@return string result
---@return integer networkHandle
function NetworkStatic.memberIdFromGamerHandle(networkHandle) end

--- ```
--- NativeDB Added Parameter 1: int p0
--- NativeDB Added Parameter 2: int p1
--- NativeDB Added Parameter 3: int p2
--- ```
--- **Native**: `NETWORK_BAIL` (`0x95914459A87EBA28`)
function NetworkStatic.networkBail() end

--- ```
--- Has a 3rd param (int) since patch [???].
--- ```
---
--- ```
--- NativeDB Added Parameter 3: int p2
--- ```
--- **Native**: `OPEN_COMMERCE_STORE` (`0x58C21165F6545892`)
---@param p0 string
---@param p1 string
function NetworkStatic.openCommerceStore(p0, p1) end

--- **Native**: `NETWORK_OPEN_TRANSITION_MATCHMAKING` (`0x2B3A8F7CA3A38FDE`)
function NetworkStatic.openTransitionMatchmaking() end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_OVERRIDE_CLOCK_MILLISECONDS_PER_GAME_MINUTE` (`0x42BF1D2E723B6D7E`)
---@param ms integer
function NetworkStatic.overrideClockMillisecondsPerGameMinute(ms) end

--- Overrides the game clock time for the local player, allowing for manipulation of the in-game time. This native is effective in both multiplayer and singleplayer modes.
---
--- **Note:** Passing wrong data (e.g. hours above 23) will cause the game to crash.
--- **Native**: `NETWORK_OVERRIDE_CLOCK_TIME` (`0xE679E3E06E363892`)
---@param hours integer The hour to set (0-23).
---@param minutes integer The minute to set (0-59).
---@param seconds integer The second to set (0-59).
function NetworkStatic.overrideClockTime(hours, minutes, seconds) end

--- ```
--- p0 is always false in scripts.
--- ```
--- **Native**: `NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS_ALL` (`0x0FF2862B61A58AF9`)
---@param toggle boolean
function NetworkStatic.overrideReceiveRestrictionsAll(toggle) end

--- **Native**: `NETWORK_OVERRIDE_SEND_RESTRICTIONS_ALL` (`0x57B192B4D4AD23D5`)
---@param toggle boolean
function NetworkStatic.overrideSendRestrictionsAll(toggle) end

--- **Native**: `NETWORK_OVERRIDE_TEAM_RESTRICTIONS` (`0x6F697A66CE78674E`)
---@param team integer
---@param toggle boolean
function NetworkStatic.overrideTeamRestrictions(team, toggle) end

--- **Native**: `NETWORK_OVERRIDE_TRANSITION_CHAT` (`0xAF66059A131AA269`)
---@param p0 boolean
function NetworkStatic.overrideTransitionChat(p0) end

--- ```
--- Return the local Participant ID.
--- This native is exactly the same as 'PARTICIPANT_ID' native.
--- ```
--- **Native**: `PARTICIPANT_ID_TO_INT` (`0x57A3BDDAD8E5AA0A`)
---@return integer result
function NetworkStatic.participantIdToInt() end

--- **Native**: `NETWORK_PLAYER_GET_CHEATER_REASON` (`0x172F75B6EE2233BA`)
---@return integer result
function NetworkStatic.playerGetCheaterReason() end

--- **Native**: `NETWORK_PLAYER_IS_BADSPORT` (`0x19D8DA0E5A68045A`)
---@return boolean result
function NetworkStatic.playerIsBadsport() end

--- **Native**: `NETWORK_PLAYER_IS_CHEATER` (`0x655B91F1495A9090`)
---@return boolean result
function NetworkStatic.playerIsCheater() end

--- **Native**: `NETWORK_QUERY_RESPAWN_RESULTS` (`0x3C891A251567DFCE`)
---@param p0 any
---@return any result
---@return any p0
function NetworkStatic.queryRespawnResults(p0) end

--- **Native**: `NETWORK_QUEUE_GAMER_FOR_STATUS` (`0x85A0EF54A500882C`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.queueGamerForStatus(p0) end

--- Forces the "Are you sure you want to quit Grand Theft Auto V?" warning message (Same as when you Alt+F4) to show.
--- Doesn't work in singleplayer.
--- **Native**: `NETWORK_QUIT_MP_TO_DESKTOP` (`0x45A83257ED02D9BC`)
function NetworkStatic.quitMpToDesktop() end

--- **Native**: `REFRESH_PLAYER_LIST_STATS` (`0xE26CCFF8094D8C74`)
---@param p0 integer
---@return boolean result
function NetworkStatic.refreshPlayerListStats(p0) end

--- **Native**: `NETWORK_REGISTER_HOST_BROADCAST_VARIABLES` (`0x3E9B2F01C50DF595`)
---@param numVars integer
---@return integer vars
function NetworkStatic.registerHostBroadcastVariables(numVars) end

--- **Native**: `NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES` (`0x3364AA97340CA215`)
---@param numVars integer
---@return integer vars
function NetworkStatic.registerPlayerBroadcastVariables(numVars) end

--- **Native**: `NETWORK_REGISTER_TUNABLE_BOOL_HASH` (`0x697F508861875B42`)
---@param contextHash integer|string
---@param nameHash integer|string
---@param value boolean
---@return boolean result
---@return boolean value
function NetworkStatic.registerTunableBoolHash(contextHash, nameHash, value) end

--- **Native**: `NETWORK_REGISTER_TUNABLE_FLOAT_HASH` (`0x1950DAE9848A4739`)
---@param contextHash integer|string
---@param nameHash integer|string
---@param value number
---@return boolean result
---@return number value
function NetworkStatic.registerTunableFloatHash(contextHash, nameHash, value) end

--- **Native**: `NETWORK_REGISTER_TUNABLE_INT_HASH` (`0x3A8B55FDA4C8DDEF`)
---@param contextHash integer|string
---@param nameHash integer|string
---@param value integer
---@return boolean result
---@return integer value
function NetworkStatic.registerTunableIntHash(contextHash, nameHash, value) end

--- **Native**: `RELEASE_ALL_COMMERCE_ITEM_IMAGES` (`0x72D0706CD6CCDB58`)
function NetworkStatic.releaseAllCommerceItemImages() end

--- ```
--- NativeDB Added Parameter 1: Player player
--- NativeDB Added Parameter 2: int a
--- NativeDB Added Parameter 3: int b
--- ```
--- **Native**: `REMOTE_CHEAT_DETECTED` (`0x472841A026D26D8B`)
---@return boolean result
function NetworkStatic.remoteCheatDetected() end

--- **Native**: `NETWORK_REMOVE_ALL_TRANSITION_INVITE` (`0x726E0375C7A26368`)
function NetworkStatic.removeAllTransitionInvite() end

--- **Native**: `NETWORK_REMOVE_ENTITY_AREA` (`0x93CF869BAA0C4874`)
---@param p0 any
---@return boolean result
function NetworkStatic.removeEntityArea(p0) end

--- **Native**: `NETWORK_REMOVE_PRESENCE_INVITE` (`0xF0210268DB0974B1`)
---@param p0 any
---@return boolean result
function NetworkStatic.removePresenceInvite(p0) end

--- **Native**: `NETWORK_REMOVE_TRANSITION_INVITE` (`0x7524B431B2E6F7EE`)
---@param p0 any
---@return any p0
function NetworkStatic.removeTransitionInvite(p0) end

--- **Native**: `NETWORK_REPORT_MYSELF` (`0x5626D9D6810730D5`)
function NetworkStatic.reportMyself() end

--- **Native**: `NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS` (`0x924426BFFD82E915`)
---@return boolean result
function NetworkStatic.requestCloudBackgroundScripts() end

--- **Native**: `NETWORK_REQUEST_CLOUD_TUNABLES` (`0x42FB3B532D526E6C`)
function NetworkStatic.requestCloudTunables() end

--- **Native**: `REQUEST_COMMERCE_ITEM_IMAGE` (`0xA2F952104FC6DD4B`)
---@param index integer
---@return boolean result
function NetworkStatic.requestCommerceItemImage(index) end

--- **Native**: `NETWORK_REQUEST_CONTROL_OF_DOOR` (`0x870DDFD5A4A796E4`)
---@param doorID integer
---@return boolean result
function NetworkStatic.requestControlOfDoor(doorID) end

--- **Native**: `NETWORK_REQUEST_CONTROL_OF_NETWORK_ID` (`0xA670B3662FAFFBD0`)
---@param netId integer
---@return boolean result
function NetworkStatic.requestControlOfNetworkId(netId) end

--- ```
--- Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
--- ```
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `RESERVE_NETWORK_LOCAL_OBJECTS` (`0x797F9C5E661D920E`)
---@param amount integer
function NetworkStatic.reserveNetworkLocalObjects(amount) end

--- ```
--- Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
--- ```
---
--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `RESERVE_NETWORK_LOCAL_PEDS` (`0x2C8DF5D129595281`)
---@param amount integer
function NetworkStatic.reserveNetworkLocalPeds(amount) end

--- **Native**: `RESERVE_NETWORK_LOCAL_VEHICLES` (`0x42613035157E4208`)
---@param amount integer
function NetworkStatic.reserveNetworkLocalVehicles(amount) end

--- **Native**: `RESERVE_NETWORK_MISSION_OBJECTS` (`0x4E5C93BD0C32FBF8`)
---@param amount integer
function NetworkStatic.reserveNetworkMissionObjects(amount) end

--- **Native**: `RESERVE_NETWORK_MISSION_PEDS` (`0xB60FEBA45333D36F`)
---@param amount integer
function NetworkStatic.reserveNetworkMissionPeds(amount) end

--- **Native**: `RESERVE_NETWORK_MISSION_VEHICLES` (`0x76B02E21ED27A469`)
---@param amount integer
function NetworkStatic.reserveNetworkMissionVehicles(amount) end

--- **Native**: `NETWORK_RESET_BODY_TRACKER` (`0x72433699B4E6DD64`)
function NetworkStatic.resetBodyTracker() end

--- Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
--- **Native**: `RESET_GHOSTED_ENTITY_ALPHA` (`0x17330EBF2F2124A8`)
function NetworkStatic.resetGhostedEntityAlpha() end

--- Revives our local player who was previously dead.
---
--- **Note:** Call this once you resurrect the player (this does not need to be called every frame).
---
--- ```cpp
--- enum ePlayerSpawnLocation {
---   // system will decide
---   SPAWN_LOCATION_AUTOMATIC = 0,
---   SPAWN_LOCATION_NEAR_DEATH = 1,
---   SPAWN_LOCATION_NEAR_TEAM_MATES = 2,
---   // script defined area
---   SPAWN_LOCATION_MISSION_AREA = 3,
---   SPAWN_LOCATION_NEAR_OTHER_PLAYERS = 4,
---   SPAWN_LOCATION_NEAR_CURRENT_POSITION = 5,
---   SPAWN_LOCATION_AT_CURRENT_POSITION = 6,
---   SPAWN_LOCATION_NET_TEST_BED = 7,
---   SPAWN_LOCATION_CUSTOM_SPAWN_POINTS = 8,
---   SPAWN_LOCATION_OUTSIDE_SIMEON_GARAGE = 9,
---   SPAWN_LOCATION_NEAR_SPECIFIC_COORDS = 10,
---   SPAWN_LOCATION_AT_SPECIFIC_COORDS = 11,
---   SPAWN_LOCATION_AT_AIRPORT_ARRIVALS = 12,
---   SPAWN_LOCATION_AT_SPECIFIC_COORDS_IF_POSSIBLE = 13,
---   SPAWN_LOCATION_IN_SPECIFIC_ANGLED_AREA = 14,
---   SPAWN_LOCATION_NEAREST_RESPAWN_POINT = 15,
---   SPAWN_LOCATION_AT_SPECIFIC_COORDS_RACE_CORONA = 16,
---   SPAWN_LOCATION_INSIDE_GARAGE = 17,
---   SPAWN_LOCATION_INSIDE_PROPERTY = 18,
---   SPAWN_LOCATION_INSIDE_PROPERTY_OR_GARAGE = 19,
---   SPAWN_LOCATION_NEAR_DEATH_IMPROMPTU = 20,
---   SPAWN_LOCATION_NEAR_CURRENT_POSITION_SPREAD_OUT = 21,
---   SPAWN_LOCATION_NEAREST_RESPAWN_POINT_TO_SPECIFIC_COORDS = 22,
---   SPAWN_LOCATION_NEAREST_HOSPITAL = 23,
---   SPAWN_LOCATION_NEAREST_POLICE_STATION = 24,
---   SPAWN_LOCATION_NEAREST_HOTEL_TO_SPECIFIC_COORDS = 25,
---   SPAWN_LOCATION_MISSION_AREA_NEAR_CURRENT_POSITION = 26,
---   SPAWN_LOCATION_PRIVATE_YACHT = 27,
---   SPAWN_LOCATION_PRIVATE_YACHT_APARTMENT = 28,
---   SPAWN_LOCATION_PRIVATE_FRIEND_YACHT = 29,
---   SPAWN_LOCATION_PRIVATE_YACHT_NEAR_SHORE = 30,
---   SPAWN_LOCATION_NEAR_GANG_BOSS = 31,
--- [...]
--- **Native**: `NETWORK_RESURRECT_LOCAL_PLAYER` (`0xEA23C49EAA83ACFB`)
---@param coords vector3
---@param heading number
---@param nInvincibilityTime integer This is the length of time in milliseconds that the player will be invincible for after resurrection.
---@param bLeaveDeadPed boolean Leaves the dead ped behind when resurrecting.
function NetworkStatic.resurrectLocalPlayer(coords, heading, nInvincibilityTime, bLeaveDeadPed) end

--- **Native**: `NETWORK_SEED_RANDOM_NUMBER_GENERATOR` (`0xF1B84178F8674195`)
---@param seed integer
function NetworkStatic.seedRandomNumberGenerator(seed) end

--- **Native**: `NETWORK_SEND_INVITE_VIA_PRESENCE` (`0xC3C7A6AFDB244624`)
---@param p2 any
---@param p3 any
---@return boolean result
---@return integer networkHandle
---@return any p1
function NetworkStatic.sendInviteViaPresence(p2, p3) end

--- ```
--- String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.
--- ```
--- **Native**: `NETWORK_SEND_PRESENCE_TRANSITION_INVITE` (`0xC116FF9B4D488291`)
---@param p2 any
---@param p3 any
---@return boolean result
---@return any p0
---@return any p1
function NetworkStatic.sendPresenceTransitionInvite(p2, p3) end

--- ```
--- Message is limited to 64 characters.
--- ```
--- **Native**: `NETWORK_SEND_TEXT_MESSAGE` (`0x3A214F2EC889B100`)
---@param message string
---@param networkHandle integer
---@return boolean result
---@return integer networkHandle
function NetworkStatic.sendTextMessage(message, networkHandle) end

--- ```
--- the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1
--- does this send an invite to a player?
--- ```
--- **Native**: `NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION` (`0x31D1D2B858D25E6B`)
---@param p1 string
---@param p2 integer
---@param p3 integer
---@param p4 boolean
---@return boolean result
---@return integer networkHandle
function NetworkStatic.sendTransitionGamerInstruction(p1, p2, p3, p4) end

--- **Native**: `NETWORK_SESSION_ACTIVITY_QUICKMATCH` (`0xBE3E347A87ACEB82`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return boolean result
function NetworkStatic.sessionActivityQuickmatch(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SESSION_BLOCK_JOIN_REQUESTS` (`0xA73667484D7037C3`)
---@param toggle boolean
function NetworkStatic.sessionBlockJoinRequests(toggle) end

--- **Native**: `NETWORK_SESSION_CANCEL_INVITE` (`0x2FBF47B1B36D36F9`)
function NetworkStatic.sessionCancelInvite() end

--- **Native**: `NETWORK_SESSION_CHANGE_SLOTS` (`0xB4AB419E0D86ACAE`)
---@param p0 integer
---@param p1 boolean
function NetworkStatic.sessionChangeSlots(p0, p1) end

--- **Native**: `NETWORK_SESSION_CREW_MATCHMAKING` (`0x94BC51E9449D917F`)
---@param p0 integer
---@param p1 integer
---@param p2 integer
---@param maxPlayers integer
---@param p4 boolean
---@return boolean result
function NetworkStatic.sessionCrewMatchmaking(p0, p1, p2, maxPlayers, p4) end

--- ```
--- p0 is always false and p1 varies.
--- NETWORK_SESSION_END(0, 1)
--- NETWORK_SESSION_END(0, 0)
--- Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."
--- ```
--- **Native**: `NETWORK_SESSION_END` (`0xA02E59562D711006`)
---@param p0 boolean
---@param p1 boolean
---@return boolean result
function NetworkStatic.sessionEnd(p0, p1) end

--- ```
--- unknown params
--- p0 = 0, 2, or 999 (The global is 999 by default.)
--- p1 = 0 (Always in every script it's found in atleast.)
--- p2 = 0, 3, or 4 (Based on a var that is determined by a function.)
--- p3 = maxPlayers (It's obvious in x360 scripts it's always 18)
--- p4 = 0 (Always in every script it's found in atleast.)
--- p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)
--- p5 is reset to 0 if,
--- Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.
--- ```
--- **Native**: `NETWORK_SESSION_ENTER` (`0x330ED4D05491934F`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param maxPlayers integer
---@param p4 any
---@param p5 any
---@return any result
function NetworkStatic.sessionEnter(p0, p1, p2, maxPlayers, p4, p5) end

--- **Native**: `NETWORK_SESSION_FORCE_CANCEL_INVITE` (`0xA29177F7703B5644`)
function NetworkStatic.sessionForceCancelInvite() end

--- **Native**: `NETWORK_SESSION_FRIEND_MATCHMAKING` (`0x2CFC76E0D087C994`)
---@param p0 integer
---@param p1 integer
---@param maxPlayers integer
---@param p3 boolean
---@return boolean result
function NetworkStatic.sessionFriendMatchmaking(p0, p1, maxPlayers, p3) end

--- **Native**: `NETWORK_SESSION_GET_INVITER` (`0xE57397B4A3429DD0`)
---@param networkHandle integer
---@return integer networkHandle
function NetworkStatic.sessionGetInviter(networkHandle) end

--- **Native**: `NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE` (`0x56CE820830EF040B`)
---@param p0 integer
---@return integer result
function NetworkStatic.sessionGetMatchmakingGroupFree(p0) end

--- **Native**: `NETWORK_SESSION_GET_PRIVATE_SLOTS` (`0x53AFD64C6758F2F9`)
---@return integer result
function NetworkStatic.sessionGetPrivateSlots() end

--- ```
--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.
--- ```
--- **Native**: `NETWORK_SESSION_HOST` (`0x6F3D4ED9BEE4E61D`)
---@param p0 integer
---@param maxPlayers integer
---@param p2 boolean
---@return boolean result
function NetworkStatic.sessionHost(p0, maxPlayers, p2) end

--- **Native**: `NETWORK_SESSION_HOST_CLOSED` (`0xED34C0C02C098BB7`)
---@param p0 integer
---@param maxPlayers integer
---@return boolean result
function NetworkStatic.sessionHostClosed(p0, maxPlayers) end

--- ```
--- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.
--- ```
--- **Native**: `NETWORK_SESSION_HOST_FRIENDS_ONLY` (`0xB9CFD27A5D578D83`)
---@param p0 integer
---@param maxPlayers integer
---@return boolean result
function NetworkStatic.sessionHostFriendsOnly(p0, maxPlayers) end

--- ```
--- Loads up the map that is loaded when beeing in mission creator
--- Player gets placed in a mix between online/offline mode
--- p0 is always 2 in R* scripts.
--- Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812
--- ```
--- **Native**: `NETWORK_SESSION_HOST_SINGLE_PLAYER` (`0xC74C33FCA52856D5`)
---@param p0 integer
function NetworkStatic.sessionHostSinglePlayer(p0) end

--- **Native**: `NETWORK_SESSION_IS_CLOSED_CREW` (`0x74732C6CA90DA2B4`)
---@return boolean result
function NetworkStatic.sessionIsClosedCrew() end

--- **Native**: `NETWORK_SESSION_IS_CLOSED_FRIENDS` (`0xFBCFA2EA2E206890`)
---@return boolean result
function NetworkStatic.sessionIsClosedFriends() end

--- **Native**: `NETWORK_SESSION_IS_IN_VOICE_SESSION` (`0x855BC38818F6F684`)
---@return boolean result
function NetworkStatic.sessionIsInVoiceSession() end

--- **Native**: `NETWORK_SESSION_IS_PRIVATE` (`0xCEF70AA5B3F89BA1`)
---@return boolean result
function NetworkStatic.sessionIsPrivate() end

--- **Native**: `NETWORK_SESSION_IS_SOLO` (`0xF3929C2379B60CCE`)
---@return boolean result
function NetworkStatic.sessionIsSolo() end

--- **Native**: `NETWORK_SESSION_IS_VISIBLE` (`0xBA416D68C631496A`)
---@return boolean result
function NetworkStatic.sessionIsVisible() end

--- **Native**: `NETWORK_SESSION_IS_VOICE_SESSION_BUSY` (`0xEF0912DDF7C4CB4B`)
---@return boolean result
function NetworkStatic.sessionIsVoiceSessionBusy() end

--- **Native**: `NETWORK_SESSION_JOIN_INVITE` (`0xC6F8AB8A4189CF3A`)
function NetworkStatic.sessionJoinInvite() end

--- **Native**: `NETWORK_SESSION_LEAVE_SINGLE_PLAYER` (`0x3442775428FD2DAA`)
function NetworkStatic.sessionLeaveSinglePlayer() end

--- **Native**: `NETWORK_SESSION_MARK_VISIBLE` (`0x271CC6AB59EBF9A5`)
---@param toggle boolean
function NetworkStatic.sessionMarkVisible(toggle) end

--- **Native**: `NETWORK_SESSION_SET_MATCHMAKING_GROUP` (`0x49EC8030F5015F8B`)
---@param matchmakingGroup integer
function NetworkStatic.sessionSetMatchmakingGroup(matchmakingGroup) end

--- ```
--- playerTypes:
--- 0 = regular joiner
--- 4 = spectator
--- 8 = unknown
--- ```
--- **Native**: `NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX` (`0x8B6A4DD0AF9CE215`)
---@param playerType integer
---@param playerCount integer
function NetworkStatic.sessionSetMatchmakingGroupMax(playerType, playerCount) end

--- **Native**: `NETWORK_SESSION_SET_MATCHMAKING_MENTAL_STATE` (`0xF1EEA2DDA9FFA69D`)
---@param p0 any
function NetworkStatic.sessionSetMatchmakingMentalState(p0) end

--- **Native**: `NETWORK_SESSION_SET_MATCHMAKING_PROPERTY_ID` (`0x3F52E880AAF6C8CA`)
---@param p0 boolean
function NetworkStatic.sessionSetMatchmakingPropertyId(p0) end

--- **Native**: `NETWORK_SESSION_VALIDATE_JOIN` (`0xC19F6C8E7865A6FF`)
---@param p0 boolean
function NetworkStatic.sessionValidateJoin(p0) end

--- ```
--- Only one occurence in the scripts:
--- auto sub_cb43(auto a_0, auto a_1) {
---     if (g_2594CB._f1) {
---         if (NETWORK::_855BC38818F6F684()) {
---             NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
---             g_2594CB._f14/*{13}*/ = a_0._fB93;
---             g_2594CB._f4/*"64"*/ = a_1;
---             return 1;
---         }
---     }
---     return 0;
--- }
--- other:
--- looks like it passes a player in the paramater
--- Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
--- ```
--- **Native**: `NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER` (`0xABD5E88B8A2D3DB2`)
---@param globalPtr any
---@return any globalPtr
function NetworkStatic.sessionVoiceConnectToPlayer(globalPtr) end

--- **Native**: `NETWORK_SESSION_VOICE_HOST` (`0x9C1556705F864230`)
function NetworkStatic.sessionVoiceHost() end

--- **Native**: `NETWORK_SESSION_VOICE_LEAVE` (`0x6793E42BE02B575D`)
function NetworkStatic.sessionVoiceLeave() end

--- **Native**: `NETWORK_SESSION_VOICE_RESPOND_TO_REQUEST` (`0x7F8413B7FC2AA6B9`)
---@param p0 boolean
---@param p1 integer
function NetworkStatic.sessionVoiceRespondToRequest(p0, p1) end

--- **Native**: `NETWORK_SESSION_VOICE_SET_TIMEOUT` (`0x5B8ED3DB018927B1`)
---@param timeout integer
function NetworkStatic.sessionVoiceSetTimeout(timeout) end

--- **Native**: `NETWORK_SESSION_WAS_INVITED` (`0x23DFB504655D0CE4`)
---@return boolean result
function NetworkStatic.sessionWasInvited() end

--- **Native**: `NETWORK_SET_ACTIVITY_PLAYER_MAX` (`0x0E4F77F7B9D74D84`)
---@param playerCount integer
function NetworkStatic.setActivityPlayerMax(playerCount) end

--- **Native**: `NETWORK_SET_ACTIVITY_SPECTATOR` (`0x75138790B4359A74`)
---@param toggle boolean
function NetworkStatic.setActivitySpectator(toggle) end

--- **Native**: `NETWORK_SET_ACTIVITY_SPECTATOR_MAX` (`0x9D277B76D1D12222`)
---@param maxSpectators integer
function NetworkStatic.setActivitySpectatorMax(maxSpectators) end

--- **Native**: `SET_BALANCE_ADD_MACHINE` (`0x815E5E3073DA1D67`)
---@param contentId string
---@param contentTypeName string
---@return boolean result
function NetworkStatic.setBalanceAddMachine(contentId, contentTypeName) end

--- **Native**: `SET_BALANCE_ADD_MACHINES` (`0xB8322EEB38BE7C26`)
---@param dataCount integer
---@param contentTypeName string
---@return boolean result
---@return any data
function NetworkStatic.setBalanceAddMachines(dataCount, contentTypeName) end

--- **Native**: `NETWORK_SET_CHOICE_MIGRATE_OPTIONS` (`0x5C707A667DF8B9FA`)
---@param toggle boolean
---@param player fx.Player|integer
function NetworkStatic.setChoiceMigrateOptions(toggle, player) end

--- **Native**: `NETWORK_SET_CURRENT_DATA_MANAGER_HANDLE` (`0x796A87B3B68D1F3D`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.setCurrentDataManagerHandle(p0) end

--- **Native**: `NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU` (`0x7206F674F2A3B1BB`)
---@param p0 any
---@return boolean result
---@return any p0
function NetworkStatic.setCurrentlySelectedGamerHandleFromInviteMenu(p0) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SET_CURRENT_MISSION_ID` (`0x2C863ACDCD12B3DB`)
---@param missionId string
function NetworkStatic.setCurrentMissionId(missionId) end

--- ```cpp
--- enum eMpSettingSpawn
--- {
--- 	MP_SETTING_SPAWN_NULL = 0,
--- 	MP_SETTING_SPAWN_PROPERTY = 1,
--- 	MP_SETTING_SPAWN_LAST_POSITION = 2,
--- 	MP_SETTING_SPAWN_GARAGE = 3,
--- 	MP_SETTING_SPAWN_RANDOM = 4,
--- 	MP_SETTING_SPAWN_PRIVATE_YACHT = 5,
--- 	MP_SETTING_SPAWN_OFFICE = 6,
--- 	MP_SETTING_SPAWN_CLUBHOUSE = 7,
--- 	MP_SETTING_SPAWN_IE_WAREHOUSE = 8,
--- 	MP_SETTING_SPAWN_BUNKER = 9,
--- 	MP_SETTING_SPAWN_HANGAR = 10,
--- 	MP_SETTING_SPAWN_DEFUNCT_BASE = 11,
--- 	MP_SETTING_SPAWN_NIGHTCLUB = 12,
--- 	MP_SETTING_SPAWN_ARENA_GARAGE = 13,
--- 	MP_SETTING_SPAWN_CASINO_APARTMENT = 14,
--- 	MP_SETTING_SPAWN_ARCADE = 15,
--- 	MP_SETTING_SPAWN_SUBMARINE = 16,
--- 	MP_SETTING_SPAWN_CAR_MEET = 17,
--- 	MP_SETTING_SPAWN_AUTO_SHOP = 18,
--- 	MP_SETTING_SPAWN_FIXER_HQ = 19,
--- 	MP_SETTING_SPAWN_MAX = 20,
--- };
--- ```
---
--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SET_CURRENT_SPAWN_SETTING` (`0xAA6D5451DC3448B6`)
---@param mpSettingSpawn integer|string
function NetworkStatic.setCurrentSpawnSetting(mpSettingSpawn) end

--- **Native**: `SET_ENTITY_VISIBLE_IN_CUTSCENE` (`0xE0031D3C8F36AB82`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function NetworkStatic.setEntityVisibleInCutscene(p0, p1, p2) end

--- **Native**: `NETWORK_SET_FRIENDLY_FIRE_OPTION` (`0xF808475FA571D823`)
---@param toggle boolean
function NetworkStatic.setFriendlyFireOption(toggle) end

--- **Native**: `NETWORK_SET_GAMER_INVITED_TO_TRANSITION` (`0xCA2C8073411ECDB6`)
---@param networkHandle integer
---@return integer networkHandle
function NetworkStatic.setGamerInvitedToTransition(networkHandle) end

--- Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
---
--- 'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
--- **Native**: `SET_GHOSTED_ENTITY_ALPHA` (`0x658500AE6D723A7E`)
---@param alpha integer A value between 1 and 254. Default: 128
function NetworkStatic.setGhostedEntityAlpha(alpha) end

--- **Native**: `NETWORK_SET_IN_FREE_CAM_MODE` (`0xFC18DB55AE19E046`)
---@param toggle boolean
function NetworkStatic.setInFreeCamMode(toggle) end

--- **Native**: `NETWORK_SET_IN_MP_CUTSCENE` (`0x9CA5DE655269FEC4`)
---@param p0 boolean
---@param p1 boolean
function NetworkStatic.setInMpCutscene(p0, p1) end

--- **Native**: `NETWORK_SET_IN_SPECTATOR_MODE` (`0x423DE3854BB50894`)
---@param toggle boolean
---@param playerPed fx.Ped|integer
function NetworkStatic.setInSpectatorMode(toggle, playerPed) end

--- **Native**: `NETWORK_SET_IN_SPECTATOR_MODE_EXTENDED` (`0x419594E137637120`)
---@param toggle boolean
---@param playerPed fx.Ped|integer
---@param p2 boolean
function NetworkStatic.setInSpectatorModeExtended(toggle, playerPed, p2) end

--- **Native**: `NETWORK_SET_INVITE_ON_CALL_FOR_INVITE_MENU` (`0x66F010A4B031A331`)
---@param networkHandle integer
---@return integer networkHandle
function NetworkStatic.setInviteOnCallForInviteMenu(networkHandle) end

--- Formerly incorrectly named `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` due to incorrect treatment of console vs. PC native registration.
---
--- Native name guessed through ordering.
---
--- ```
--- NativeDB Added Parameter 2: BOOL p1
--- ```
--- **Native**: `SET_LOCAL_PLAYER_AS_GHOST` (`0x5FFE9B4144F9712F`)
---@param toggle boolean
function NetworkStatic.setLocalPlayerAsGhost(toggle) end

--- **Native**: `NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME` (`0x2D95C7E2D7E07307`)
---@param time integer
function NetworkStatic.setLocalPlayerInvincibleTime(time) end

--- **Native**: `SET_LOCAL_PLAYER_INVISIBLE_LOCALLY` (`0xE5F773C1A1D9D168`)
---@param p0 boolean
function NetworkStatic.setLocalPlayerInvisibleLocally(p0) end

--- **Native**: `NETWORK_SET_LOCAL_PLAYER_SYNC_LOOK_AT` (`0x524FF0AEFF9C3973`)
---@param toggle boolean
function NetworkStatic.setLocalPlayerSyncLookAt(toggle) end

--- **Native**: `SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE` (`0xD1065D68947E7B6E`)
---@param p0 boolean
---@param p1 boolean
function NetworkStatic.setLocalPlayerVisibleInCutscene(p0, p1) end

--- **Native**: `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` (`0x7619364C82D3BF14`)
---@param p0 boolean
function NetworkStatic.setLocalPlayerVisibleLocally(p0) end

--- **Native**: `NETWORK_SET_MISSION_FINISHED` (`0x3B3D11CD9FFCDFC9`)
function NetworkStatic.setMissionFinished() end

--- **Native**: `SET_NETWORK_CUTSCENE_ENTITIES` (`0xAAA553E7DD28A457`)
---@param toggle boolean
function NetworkStatic.setNetworkCutsceneEntities(toggle) end

--- **Native**: `SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER` (`0xA8A024587329F36A`)
---@param netId integer
---@param player fx.Player|integer
---@param toggle boolean
function NetworkStatic.setNetworkIdAlwaysExistsForPlayer(netId, player, toggle) end

--- ```
--- Whether or not another player is allowed to take control of the entity
--- ```
--- **Native**: `SET_NETWORK_ID_CAN_MIGRATE` (`0x299EEB23175895FC`)
---@param netId integer
---@param toggle boolean
function NetworkStatic.setNetworkIdCanMigrate(netId, toggle) end

--- **Native**: `SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES` (`0xE05E81A888FA63C8`)
---@param netId integer
---@param toggle boolean
function NetworkStatic.setNetworkIdExistsOnAllMachines(netId, toggle) end

--- **Native**: `SET_NETWORK_ID_VISIBLE_IN_CUTSCENE` (`0xA6928482543022B4`)
---@param netId integer
---@param p1 boolean
---@param p2 boolean
function NetworkStatic.setNetworkIdVisibleInCutscene(netId, p1, p2) end

--- ```
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SET_NETWORK_VEHICLE_RESPOT_TIMER` (`0xEC51713AB6EC36E8`)
---@param netId integer
---@param time integer
function NetworkStatic.setNetworkVehicleRespotTimer(netId, time) end

--- **Native**: `NETWORK_SET_NO_SPECTATOR_CHAT` (`0xF46A1E03E8755980`)
---@param toggle boolean
function NetworkStatic.setNoSpectatorChat(toggle) end

--- **Native**: `NETWORK_SET_OVERRIDE_SPECTATOR_MODE` (`0x70DA3BF8DACD3210`)
---@param toggle boolean
function NetworkStatic.setOverrideSpectatorMode(toggle) end

--- **Native**: `NETWORK_SET_PLAYER_IS_PASSIVE` (`0x1B857666604B1A74`)
---@param toggle boolean
function NetworkStatic.setPlayerIsPassive(toggle) end

--- ```
--- value must be < 255
--- ```
--- **Native**: `NETWORK_SET_PROPERTY_ID` (`0x1775961C2FBBCB5C`)
---@param id integer
function NetworkStatic.setPropertyId(id) end

--- ```
--- On PC it's a nullsub which means it does absolutely nothing.
--- Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...
--- ```
--- **Native**: `NETWORK_SET_RICH_PRESENCE` (`0x1DCCACDCFC569362`)
---@param p0 integer
---@param p1 any
---@param p2 any
---@param p3 any
function NetworkStatic.setRichPresence(p0, p1, p2, p3) end

--- This native does absolutely nothing, just a nullsub
--- **Native**: `NETWORK_SET_RICH_PRESENCE_STRING` (`0x3E200C2BCF4164EB`)
---@param p0 integer
---@param textLabel string
function NetworkStatic.setRichPresenceString(p0, textLabel) end

--- **Native**: `NETWORK_SET_SCRIPT_READY_FOR_EVENTS` (`0x7AC752103856FB20`)
---@param toggle boolean
function NetworkStatic.setScriptReadyForEvents(toggle) end

--- ```
--- Access to the store for shark cards etc...
--- ```
--- **Native**: `SET_STORE_ENABLED` (`0x9641A9FF718E9C5E`)
---@param toggle boolean
function NetworkStatic.setStoreEnabled(toggle) end

--- **Native**: `NETWORK_SET_TEAM_ONLY_CHAT` (`0xD5B4883AC32F24C3`)
---@param toggle boolean
function NetworkStatic.setTeamOnlyChat(toggle) end

--- **Native**: `NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT` (`0x1CA59E306ECB80A5`)
---@param maxNumMissionParticipants integer
---@param p1 boolean
---@param instanceId integer
function NetworkStatic.setThisScriptIsNetworkScript(maxNumMissionParticipants, p1, instanceId) end

--- **Native**: `NETWORK_SET_TRANSITION_ACTIVITY_ID` (`0x30DE938B516F0AD2`)
---@param p0 any
function NetworkStatic.setTransitionActivityId(p0) end

--- **Native**: `NETWORK_SET_TRANSITION_CREATOR_HANDLE` (`0xEF26739BCD9907D5`)
---@param p0 any
---@return any p0
function NetworkStatic.setTransitionCreatorHandle(p0) end

--- **Native**: `NETWORK_SET_TRANSITION_VISIBILITY_LOCK` (`0x0C978FDA19692C2C`)
---@param p0 boolean
---@param p1 boolean
function NetworkStatic.setTransitionVisibilityLock(p0, p1) end

--- ```
--- Used by Metric VEHICLE_DIST_DRIVEN
--- ```
---
--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SET_VEHICLE_TEST_DRIVE` (`0x8C70252FC40F320B`)
---@param toggle boolean
function NetworkStatic.setVehicleTestDrive(toggle) end

--- **Native**: `NETWORK_SET_VOICE_ACTIVE` (`0xBABEC9E69A91C57B`)
---@param toggle boolean
function NetworkStatic.setVoiceActive(toggle) end

--- **Native**: `NETWORK_SET_VOICE_CHANNEL` (`0xEF6212C2EFEF1A23`)
---@param channel integer
function NetworkStatic.setVoiceChannel(channel) end

--- ```
--- Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
--- ```
--- **Native**: `NETWORK_SHOULD_SHOW_CONNECTIVITY_TROUBLESHOOTING` (`0x82A2B386716608F1`)
---@return boolean result
function NetworkStatic.shouldShowConnectivityTroubleshooting() end

--- ```
--- Example:
--- int playerHandle;
--- NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);
--- NETWORK_SHOW_PROFILE_UI(&playerHandle);
--- ```
--- **Native**: `NETWORK_SHOW_PROFILE_UI` (`0x859ED1CEA343FCA8`)
---@param networkHandle integer
---@return integer networkHandle
function NetworkStatic.showProfileUi(networkHandle) end

--- ```
--- Starts a new singleplayer game (at the prologue).
--- ```
--- **Native**: `SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME` (`0x593850C16A36B692`)
function NetworkStatic.shutdownAndLaunchSinglePlayerGame() end

--- Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
---
--- If you're already in SP then it'll re-load singleplayer.
---
--- You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
---
--- Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
--- **Native**: `SHUTDOWN_AND_LOAD_MOST_RECENT_SAVE` (`0x9ECA15ADFE141431`)
---@return boolean result always seems to be 1
function NetworkStatic.shutdownAndLoadMostRecentSave() end

--- **Native**: `NETWORK_START_SOLO_TUTORIAL_SESSION` (`0x17E0198B3882C2CB`)
function NetworkStatic.startSoloTutorialSession() end

--- **Native**: `NETWORK_START_SYNCHRONISED_SCENE` (`0x9A1B3FCDB36C8697`)
---@param netScene integer
function NetworkStatic.startSynchronisedScene(netScene) end

--- ```
--- Always returns -1. Seems to be XB1 specific.
--- ```
--- **Native**: `NETWORK_START_USER_CONTENT_PERMISSIONS_CHECK` (`0xDEB2B99A1AF1A2A6`)
---@param netHandle any
---@return integer result
function NetworkStatic.startUserContentPermissionsCheck(netHandle) end

--- **Native**: `NETWORK_STOP_SYNCHRONISED_SCENE` (`0xC254481A4574CB2F`)
---@param netScene integer
function NetworkStatic.stopSynchronisedScene(netScene) end

--- **Native**: `NETWORK_SUPPRESS_INVITE` (`0xA0682D67EF1FBA3D`)
---@param toggle boolean
function NetworkStatic.suppressInvite(toggle) end

--- **Native**: `TEXTURE_DOWNLOAD_GET_NAME` (`0x3448505B6E35262D`)
---@param p0 integer
---@return string result
function NetworkStatic.textureDownloadGetName(p0) end

--- **Native**: `TEXTURE_DOWNLOAD_HAS_FAILED` (`0x5776ED562C134687`)
---@param p0 integer
---@return boolean result
function NetworkStatic.textureDownloadHasFailed(p0) end

--- **Native**: `TEXTURE_DOWNLOAD_RELEASE` (`0x487EB90B98E9FB19`)
---@param p0 integer
function NetworkStatic.textureDownloadRelease(p0) end

--- **Native**: `TEXTURE_DOWNLOAD_REQUEST` (`0x16160DA74A8E74A2`)
---@param FilePath string
---@param Name string
---@param p3 boolean
---@return integer result
---@return integer PlayerHandle
function NetworkStatic.textureDownloadRequest(FilePath, Name, p3) end

--- **Native**: `TITLE_TEXTURE_DOWNLOAD_REQUEST` (`0x0B203B4AFDE53A4F`)
---@param FilePath string
---@param Name string
---@param p2 boolean
---@return integer result
function NetworkStatic.titleTextureDownloadRequest(FilePath, Name, p2) end

--- **Native**: `NETWORK_TRANSITION_TRACK` (`0xC3BFED92026A2AAD`)
---@param hash integer|string
---@param p1 integer
---@param p2 integer
---@param state integer
---@param p4 integer
function NetworkStatic.transitionTrack(hash, p1, p2, state, p4) end

--- ```
--- Returns defaultValue if the tunable doesn't exist.
--- ```
--- **Native**: `NETWORK_TRY_ACCESS_TUNABLE_BOOL_HASH` (`0xC7420099936CE286`)
---@param tunableContext integer|string
---@param tunableName integer|string
---@param defaultValue boolean
---@return boolean result
function NetworkStatic.tryAccessTunableBoolHash(tunableContext, tunableName, defaultValue) end

--- **Native**: `UGC_CANCEL_QUERY` (`0xE9B99B6853181409`)
function NetworkStatic.ugcCancelQuery() end

--- **Native**: `UGC_CLEAR_CREATE_RESULT` (`0x17440AA15D1D3739`)
function NetworkStatic.ugcClearCreateResult() end

--- **Native**: `UGC_CLEAR_MODIFY_RESULT` (`0xA1E5E0204A6FCC70`)
function NetworkStatic.ugcClearModifyResult() end

--- **Native**: `UGC_CLEAR_OFFLINE_QUERY` (`0x61A885D3F7CFEE9A`)
function NetworkStatic.ugcClearOfflineQuery() end

--- **Native**: `UGC_CLEAR_QUERY_RESULTS` (`0xBA96394A0EECFA65`)
function NetworkStatic.ugcClearQueryResults() end

--- **Native**: `UGC_COPY_CONTENT` (`0x152D90E4C1B4738A`)
---@return boolean result
---@return any p0
---@return any p1
function NetworkStatic.ugcCopyContent() end

--- **Native**: `UGC_DID_GET_SUCCEED` (`0x941E5306BCD7C2C7`)
---@return any result
function NetworkStatic.ugcDidGetSucceed() end

--- **Native**: `UGC_GET_BOOKMARKED_CONTENT` (`0xD5A4B59980401588`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p2
---@return any p3
function NetworkStatic.ugcGetBookmarkedContent(p0, p1) end

--- **Native**: `UGC_GET_CACHED_DESCRIPTION` (`0x40F7E66472DF3E5C`)
---@param p0 any
---@param p1 any
---@return string result
function NetworkStatic.ugcGetCachedDescription(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_CATEGORY` (`0xA7BAB11E7C9C6C5A`)
---@param p0 integer
---@return integer result
function NetworkStatic.ugcGetContentCategory(p0) end

--- **Native**: `UGC_GET_CONTENT_DESCRIPTION_HASH` (`0x7CF0448787B23758`)
---@param p0 any
---@return integer result
function NetworkStatic.ugcGetContentDescriptionHash(p0) end

--- **Native**: `UGC_GET_CONTENT_FILE_VERSION` (`0x37025B27D9B658B1`)
---@param p0 any
---@param p1 any
---@return any result
function NetworkStatic.ugcGetContentFileVersion(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_HASH` (`0x3A17A27D75C74887`)
---@return integer result
function NetworkStatic.ugcGetContentHash() end

--- **Native**: `UGC_GET_CONTENT_HAS_PLAYER_BOOKMARKED` (`0x993CBE59D350D225`)
---@param p0 any
---@return boolean result
function NetworkStatic.ugcGetContentHasPlayerBookmarked(p0) end

--- **Native**: `UGC_GET_CONTENT_HAS_PLAYER_RECORD` (`0x70EA8DA57840F9BE`)
---@param p0 any
---@return boolean result
function NetworkStatic.ugcGetContentHasPlayerRecord(p0) end

--- ```
--- Return the mission id of a job.
--- ```
--- **Native**: `UGC_GET_CONTENT_ID` (`0x55AA95F481D694D2`)
---@param p0 integer
---@return string result
function NetworkStatic.ugcGetContentId(p0) end

--- **Native**: `UGC_GET_CONTENT_IS_PUBLISHED` (`0x3054F114121C21EA`)
---@param p0 any
---@return boolean result
function NetworkStatic.ugcGetContentIsPublished(p0) end

--- **Native**: `UGC_GET_CONTENT_IS_VERIFIED` (`0xA9240A96C74CCA13`)
---@param p0 any
---@return boolean result
function NetworkStatic.ugcGetContentIsVerified(p0) end

--- **Native**: `UGC_GET_CONTENT_LANGUAGE` (`0x32DD916F3F7C9672`)
---@param p0 any
---@return any result
function NetworkStatic.ugcGetContentLanguage(p0) end

--- **Native**: `UGC_GET_CONTENT_NAME` (`0xBF09786A7FCAB582`)
---@param p0 any
---@return string result
function NetworkStatic.ugcGetContentName(p0) end

--- **Native**: `UGC_GET_CONTENT_NUM` (`0xE0A6138401BCB837`)
---@return any result
function NetworkStatic.ugcGetContentNum() end

--- **Native**: `UGC_GET_CONTENT_PATH` (`0xBAF6BABF9E7CCC13`)
---@param p0 integer
---@param p1 integer
---@return string result
function NetworkStatic.ugcGetContentPath(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_RATING` (`0x1ACCFBA3D8DAB2EE`)
---@param p0 any
---@param p1 any
---@return any result
function NetworkStatic.ugcGetContentRating(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_RATING_COUNT` (`0x759299C5BB31D2A9`)
---@param p0 any
---@param p1 any
---@return any result
function NetworkStatic.ugcGetContentRatingCount(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_RATING_NEGATIVE_COUNT` (`0x4E548C0D7AE39FF9`)
---@param p0 any
---@param p1 any
---@return any result
function NetworkStatic.ugcGetContentRatingNegativeCount(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_RATING_POSITIVE_COUNT` (`0x87E5C46C187FE0AE`)
---@param p0 any
---@param p1 any
---@return any result
function NetworkStatic.ugcGetContentRatingPositiveCount(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_TOTAL` (`0x769951E2455E2EB5`)
---@return any result
function NetworkStatic.ugcGetContentTotal() end

--- **Native**: `UGC_GET_CONTENT_UPDATED_DATE` (`0xCFD115B373C0DF63`)
---@param p0 any
---@param p1 any
---@return any p1
function NetworkStatic.ugcGetContentUpdatedDate(p0, p1) end

--- **Native**: `UGC_GET_CONTENT_USER_ID` (`0xCD67AD041A394C9C`)
---@param p0 integer
---@return string result
function NetworkStatic.ugcGetContentUserId(p0) end

--- **Native**: `UGC_GET_CONTENT_USER_NAME` (`0x703F12425ECA8BF5`)
---@param p0 any
---@return string result
function NetworkStatic.ugcGetContentUserName(p0) end

--- **Native**: `UGC_GET_CREATE_CONTENT_ID` (`0xC55A0B40FFB1ED23`)
---@return string result
function NetworkStatic.ugcGetCreateContentId() end

--- **Native**: `UGC_GET_CREATE_RESULT` (`0xFBC5E768C7A77A6A`)
---@return any result
function NetworkStatic.ugcGetCreateResult() end

--- **Native**: `UGC_GET_CREATOR_NUM` (`0x597F8DBA9B206FC7`)
---@return any result
function NetworkStatic.ugcGetCreatorNum() end

--- **Native**: `UGC_GET_CREW_CONTENT` (`0x9F6E2821885CAEE2`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return boolean result
---@return any p3
---@return any p4
function NetworkStatic.ugcGetCrewContent(p0, p1, p2) end

--- **Native**: `UGC_GET_FRIEND_CONTENT` (`0xF9E1CCAE8BA4C281`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p2
---@return any p3
function NetworkStatic.ugcGetFriendContent(p0, p1) end

--- **Native**: `UGC_GET_GET_BY_CATEGORY` (`0x678BB03C1A3BD51E`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return boolean result
---@return any p3
---@return any p4
function NetworkStatic.ugcGetGetByCategory(p0, p1, p2) end

--- **Native**: `UGC_GET_MODIFY_RESULT` (`0x5A0A3D1A186A5508`)
---@return any result
function NetworkStatic.ugcGetModifyResult() end

--- **Native**: `UGC_GET_MY_CONTENT` (`0x3195F8DD0D531052`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p2
---@return any p3
function NetworkStatic.ugcGetMyContent(p0, p1) end

--- **Native**: `UGC_GET_QUERY_RESULT` (`0xEDF7F927136C224B`)
---@return any result
function NetworkStatic.ugcGetQueryResult() end

--- ```
--- Return the root content id of a job.
--- ```
--- **Native**: `UGC_GET_ROOT_CONTENT_ID` (`0xC0173D6BFF4E0348`)
---@param p0 integer
---@return string result
function NetworkStatic.ugcGetRootContentId(p0) end

--- **Native**: `UGC_HAS_CREATE_FINISHED` (`0x5E24341A7F92A74B`)
---@return boolean result
function NetworkStatic.ugcHasCreateFinished() end

--- **Native**: `UGC_HAS_GET_FINISHED` (`0x02ADA21EA2F6918F`)
---@return boolean result
function NetworkStatic.ugcHasGetFinished() end

--- **Native**: `UGC_HAS_MODIFY_FINISHED` (`0x299EF3C576773506`)
---@return boolean result
function NetworkStatic.ugcHasModifyFinished() end

--- **Native**: `UGC_IS_GETTING` (`0xD53ACDBEF24A46E8`)
---@return boolean result
function NetworkStatic.ugcIsGetting() end

--- **Native**: `UGC_IS_LANGUAGE_SUPPORTED` (`0xF53E48461B71EECB`)
---@param p0 any
---@return boolean result
function NetworkStatic.ugcIsLanguageSupported(p0) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_UGC_NAV` (`0xC1447451DDB512F0`)
---@param p0 any
---@param p1 any
function NetworkStatic.ugcNav(p0, p1) end

--- **Native**: `UGC_POLICIES_MAKE_PRIVATE` (`0x5CAE833B0EE0C500`)
---@param p0 any
---@return boolean result
function NetworkStatic.ugcPoliciesMakePrivate(p0) end

--- **Native**: `UGC_PUBLISH` (`0x1DE0F5F50D723CAA`)
---@param contentId string
---@param baseContentId string
---@param contentTypeName string
---@return boolean result
function NetworkStatic.ugcPublish(contentId, baseContentId, contentTypeName) end

--- **Native**: `UGC_QUERY_BY_CONTENT_ID` (`0x158EC424F35EC469`)
---@param contentId string
---@param latestVersion boolean
---@param contentTypeName string
---@return boolean result
function NetworkStatic.ugcQueryByContentId(contentId, latestVersion, contentTypeName) end

--- **Native**: `UGC_QUERY_BY_CONTENT_IDS` (`0xC7397A83F7A2A462`)
---@param count integer
---@param latestVersion boolean
---@param contentTypeName string
---@return boolean result
---@return any data
function NetworkStatic.ugcQueryByContentIds(count, latestVersion, contentTypeName) end

--- **Native**: `UGC_QUERY_MY_CONTENT` (`0x9BF438815F5D96EA`)
---@param p0 any
---@param p1 any
---@param p3 any
---@param p4 any
---@param p5 any
---@return boolean result
---@return any p2
function NetworkStatic.ugcQueryMyContent(p0, p1, p3, p4, p5) end

--- **Native**: `UGC_QUERY_RECENTLY_CREATED_CONTENT` (`0x6D4CB481FAC835E8`)
---@param offset integer
---@param count integer
---@param contentTypeName string
---@param p3 integer
---@return boolean result
function NetworkStatic.ugcQueryRecentlyCreatedContent(offset, count, contentTypeName, p3) end

--- **Native**: `UGC_REQUEST_CACHED_DESCRIPTION` (`0x5E0165278F6339EE`)
---@param p0 integer
---@return integer result
function NetworkStatic.ugcRequestCachedDescription(p0) end

--- **Native**: `UGC_REQUEST_CONTENT_DATA_FROM_INDEX` (`0x171DF6A0C07FB3DC`)
---@param p0 integer
---@param p1 integer
---@return integer result
function NetworkStatic.ugcRequestContentDataFromIndex(p0, p1) end

--- **Native**: `UGC_REQUEST_CONTENT_DATA_FROM_PARAMS` (`0x7FD2990AF016795E`)
---@param contentTypeName string
---@param contentId string
---@param p2 integer
---@param p3 integer
---@param p4 integer
---@return integer result
function NetworkStatic.ugcRequestContentDataFromParams(contentTypeName, contentId, p2, p3, p4) end

--- **Native**: `UGC_SET_BOOKMARKED` (`0x274A1519DFC1094F`)
---@param contentId string
---@param bookmarked boolean
---@param contentTypeName string
---@return boolean result
function NetworkStatic.ugcSetBookmarked(contentId, bookmarked, contentTypeName) end

--- **Native**: `UGC_SET_DELETED` (`0xD05D1A6C74DA3498`)
---@param p1 boolean
---@return boolean result
---@return any p0
---@return any p2
function NetworkStatic.ugcSetDeleted(p1) end

--- **Native**: `UGC_SET_QUERY_DATA_FROM_OFFLINE` (`0xF98DDE0A8ED09323`)
---@param p0 boolean
function NetworkStatic.ugcSetQueryDataFromOffline(p0) end

--- **Native**: `UGC_TEXTURE_DOWNLOAD_REQUEST` (`0x308F96458B7087CC`)
---@param p1 any
---@param p2 any
---@param p3 any
---@param p5 boolean
---@return any result
---@return any p0
---@return any p4
function NetworkStatic.ugcTextureDownloadRequest(p1, p2, p3, p5) end

--- **Native**: `NETWORK_UPDATE_PLAYER_SCARS` (`0xB7C7F6AD6424304B`)
function NetworkStatic.updatePlayerScars() end

--- ```
--- Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
--- ```
--- **Native**: `NETWORK_USE_HIGH_PRECISION_BLENDING` (`0x2B1813ABA29016C5`)
---@param netID integer
---@param toggle boolean
function NetworkStatic.useHighPrecisionBlending(netID, toggle) end

--- **Native**: `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` (`0x77758139EC9B66C7`)
---@param toggle boolean
function NetworkStatic.usePlayerColourInsteadOfTeamColour(toggle) end

