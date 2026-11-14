---@meta
---@diagnostic disable
-- fx.Player (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Player
---@field handle integer Server id of the player (`source`).
---@field serverId integer (read-only) Server id of the player (= handle).
---@field exists boolean (read-only) DOES_PLAYER_EXIST.
---@field ped fx.Ped? (read-only) Player ped (GET_PLAYER_PED), RECOMPUTED on every access. nil when the player has none.
---@field identifiers table<string, string> (read-only) Identifiers by type, whole: `player.identifiers.license` is `"license:..."`; a type the player lacks is nil (`discord` without Discord)
---@field tokens string[] (read-only) Hardware tokens of the player (GET_PLAYER_TOKEN)
---@field states fx.PlayerStates Player state bag (`player:<src>`), distinct from `ped.states`.
---@field state fx.PlayerStates Compatibility alias (`Player(src).state`).
---@field airDragMultiplierForPlayersVehicle number (read-only) [GET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE]
---@field cameraRotation vector3 (read-only) [GET_PLAYER_CAMERA_ROTATION] Gets the current camera rotation for a specified player. This native is used server side when using OneSync.
---@field canStartCommerceSession boolean (read-only) [CAN_PLAYER_START_COMMERCE_SESSION] > This native is deprecated and may be removed in a future version. Use the [Tebex API](https://docs.tebex.io/) instead. Returns whether or not the specified p…
---@field endpoint string (read-only) [GET_PLAYER_ENDPOINT]
---@field fakeWantedLevel integer (read-only) [GET_PLAYER_FAKE_WANTED_LEVEL] Gets the current fake wanted level for a specified player. This native is used server side when using OneSync.
---@field focusPos vector3 (read-only) [GET_PLAYER_FOCUS_POS] Gets the focus position (i.e. the position of the active camera in the game world) of a player.
---@field guid string (read-only) [GET_PLAYER_GUID]
---@field invincible boolean [GET_PLAYER_INVINCIBLE / SET_PLAYER_INVINCIBLE]
---@field isCommerceInfoLoaded boolean (read-only) [IS_PLAYER_COMMERCE_INFO_LOADED] > This native is deprecated and may be removed in a future version. Use [`IS_PLAYER_COMMERCE_INFO_LOADED_EXT`](#\_0x1D14F4FE) instead. Requests whether or not …
---@field isCommerceInfoLoadedExt boolean (read-only) [IS_PLAYER_COMMERCE_INFO_LOADED_EXT] Requests whether or not the commerce data for the specified player has loaded from Tebex.
---@field isEvadingWantedLevel boolean (read-only) [IS_PLAYER_EVADING_WANTED_LEVEL]
---@field isInFreeCamMode boolean (read-only) [IS_PLAYER_IN_FREE_CAM_MODE]
---@field isUsingSuperJump boolean (read-only) [IS_PLAYER_USING_SUPER_JUMP]
---@field lastMsg integer (read-only) [GET_PLAYER_LAST_MSG]
---@field maxArmour integer (read-only) [GET_PLAYER_MAX_ARMOUR]
---@field maxHealth integer (read-only) [GET_PLAYER_MAX_HEALTH]
---@field meleeWeaponDamageModifier number (read-only) [GET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER] A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
---@field name string (read-only) [GET_PLAYER_NAME]
---@field numIdentifiers integer (read-only) [GET_NUM_PLAYER_IDENTIFIERS]
---@field numTokens integer (read-only) [GET_NUM_PLAYER_TOKENS]
---@field ping integer (read-only) [GET_PLAYER_PING] See [GET_PLAYER_PEER_STATISTICS](#\_0x9A928294) if you want more detailed information, like packet loss, and packet/rtt variance
---@field routingBucket integer [GET_PLAYER_ROUTING_BUCKET / SET_PLAYER_ROUTING_BUCKET] Gets the routing bucket for the specified player. Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are populatio…
---@field team integer (read-only) [GET_PLAYER_TEAM]
---@field timeOnline integer (read-only) [GET_PLAYER_TIME_ONLINE] Gets the current time online for a specified player.
---@field voiceProximityOverride vector3 (read-only) [NETWORK_GET_VOICE_PROXIMITY_OVERRIDE_FOR_PLAYER]
---@field wantedCentrePosition vector3 (read-only) [GET_PLAYER_WANTED_CENTRE_POSITION] Gets the current known coordinates for the specified player from cops perspective. This native is used server side when using OneSync.
---@field wantedLevel integer (read-only) [GET_PLAYER_WANTED_LEVEL]
---@field weaponDamageModifier number (read-only) [GET_PLAYER_WEAPON_DAMAGE_MODIFIER] A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
---@field weaponDefenseModifier number (read-only) [GET_PLAYER_WEAPON_DEFENSE_MODIFIER] A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
---@field weaponDefenseModifier2 number (read-only) [GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2] A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
local Player = {}

--- ```
--- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);
--- PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
--- ```
---
--- **This is the server-side RPC native equivalent of the client native [CLEAR_PLAYER_WANTED_LEVEL](?\_0xB302540597885499).**
--- **Native**: `CLEAR_PLAYER_WANTED_LEVEL` (`0x54EA5BCC`)
---@return fx.Player self
function Player:clearWantedLevel() end

--- > This native is deprecated and may be removed in a future version. Use [`DOES_PLAYER_OWN_SKU_EXT`](#\_0xDEF0480B) instead.
---
--- Requests whether or not the player owns the specified SKU.
--- **Native**: `DOES_PLAYER_OWN_SKU` (`0x167ABA27`)
---@deprecated
---@param skuId integer The ID of the SKU.
---@return boolean result A boolean.
function Player:doesOwnSku(skuId) end

--- Requests whether or not the player owns the specified package.
--- **Native**: `DOES_PLAYER_OWN_SKU_EXT` (`0xDEF0480B`)
---@param skuId integer The package ID on Tebex.
---@return boolean result A boolean.
function Player:doesOwnSkuExt(skuId) end

--- **Native**: `DROP_PLAYER` (`0xBA0613E1`)
---@param reason string
---@return fx.Player self
function Player:drop(reason) end

--- To get the number of identifiers, use [GET_NUM_PLAYER_IDENTIFIERS](#\_0xFF7F66AB)
---
--- To get a specific type of identifier, use [GET_PLAYER_IDENTIFIER_BY_TYPE](#\_0xA61C8FC6)
--- **Native**: `GET_PLAYER_IDENTIFIER` (`0x7302DBCF`)
---@param identiferIndex integer
---@return string result Returns the identifier at the specific index, if out of bounds returns `null`
function Player:getIdentifier(identiferIndex) end

--- Get an identifier from a player by the type of the identifier.
--- Known [Identifiers](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/GetPlayerIdentifiers/#identifier-types)
--- **Native**: `GET_PLAYER_IDENTIFIER_BY_TYPE` (`0xA61C8FC6`)
---@param identifierType string The string to match in an identifier, this can be `"license"` for example.
---@return string result The identifier that matches the string provided
function Player:getIdentifierByType(identifierType) end

--- ```cpp
--- const int ENET_PACKET_LOSS_SCALE = 65536;
---
--- enum PeerStatistics
--- {
--- 	// PacketLoss will only update once every 10 seconds, use PacketLossEpoch if you want the time
--- 	// since the last time the packet loss was updated.
---
--- 	// the amount of packet loss the player has, needs to be scaled with PACKET_LOSS_SCALE
--- 	PacketLoss = 0,
--- 	// The variance in the packet loss
--- 	PacketLossVariance = 1,
--- 	// The time since the last packet update in ms, relative to the peers connection time
--- 	PacketLossEpoch = 2,
--- 	// The mean amount of time it takes for a packet to get to the client (ping)
--- 	RoundTripTime = 3,
--- 	// The variance in the round trip time
--- 	RoundTripTimeVariance = 4,
--- 	// Despite their name, these are only updated once every 5 seconds, you can get the last time this was updated with PacketThrottleEpoch
--- 	// The last recorded round trip time of a packet
--- 	LastRoundTripTime = 5,
--- 	// The last round trip time variance
--- 	LastRoundTripTimeVariance = 6,
--- 	// The time since the last packet throttle update, relative to the peers connection time
--- 	PacketThrottleEpoch = 7,
--- };
--- ```
---
--- These statistics only update once every 10 seconds.
--- **Native**: `GET_PLAYER_PEER_STATISTICS` (`0x9A928294`)
---@param peerStatistic integer The statistic to get, this will error if its out of range
---@return fx.Enum.PeerStatistics result See `ENetStatisticType` for what this will return.
function Player:getPeerStatistics(peerStatistic) end

--- ```
--- Gets the amount of time player has spent evading the cops.
--- Counter starts and increments only when cops are chasing the player.
--- If the player is evading, the timer will pause.
--- ```
--- **Native**: `GET_PLAYER_TIME_IN_PURSUIT` (`0x7ADE63E1`)
---@param lastPursuit boolean False = CurrentPursuit, True = LastPursuit
---@return integer result Returns -1, if the player is not wanted or wasn't in pursuit before, depending on the lastPursuit parameter Returns 0, if lastPursuit == False and the player has a wanted level, but the pursuit has n…
function Player:getTimeInPursuit(lastPursuit) end

--- Gets a player's token. Tokens can be used to enhance banning logic, however are specific to a server.
--- **Native**: `GET_PLAYER_TOKEN` (`0x54C06897`)
---@param index integer Index between 0 and GET_NUM_PLAYER_TOKENS.
---@return string result A token value.
function Player:getToken(index) end

--- **Native**: `IS_PLAYER_ACE_ALLOWED` (`0xDEDAE23D`)
---@param object string
---@return boolean result
function Player:isAceAllowed(object) end

--- > This native is deprecated and may be removed in a future version. Use [`LOAD_PLAYER_COMMERCE_DATA_EXT`](#\_0x7995539E) instead.
---
--- Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
--- **Native**: `LOAD_PLAYER_COMMERCE_DATA` (`0xA8F63EAB`)
---@deprecated
---@return fx.Player self
function Player:loadCommerceData() end

--- Requests the commerce data from Tebex for the specified player, including the owned SKUs.
---
--- Use [`IS_PLAYER_COMMERCE_INFO_LOADED_EXT`](#\_0x1D14F4FE) to check if it has loaded.
---
--- This will not automatically update whenever a client purchases a package, if you want to fetch new purchases you will need to call this native again.
---
--- This native will temporarily cache the players commerce data for 10 seconds, a call to this native after 10 seconds will re-fetch the players commerce data.
--- **Native**: `LOAD_PLAYER_COMMERCE_DATA_EXT` (`0x7995539E`)
---@return fx.Player self
function Player:loadCommerceDataExt() end

--- > This native is deprecated and may be removed in a future version. Use the [Tebex API](https://docs.tebex.io/) instead.
---
--- Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
--- will open the browser prompting further purchase details.
--- **Native**: `REQUEST_PLAYER_COMMERCE_SESSION` (`0x96F93CCE`)
---@deprecated
---@param skuId integer The ID of the SKU.
---@return fx.Player self
function Player:requestCommerceSession(skuId) end

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
---
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_CONTROL](?\_0x8D32347D6D4C40A2).**
--- **Native**: `SET_PLAYER_CONTROL` (`0xD17AFCD8`)
---@param bHasControl boolean
---@param flags integer
---@return fx.Player self
function Player:setControl(bHasControl, flags) end

--- Sets the culling radius for the specified player.
--- Set to `0.0` to reset.
---
--- **WARNING**: Culling natives are deprecated and have known, [unfixable issues](https://forum.cfx.re/t/issue-with-culling-radius-and-server-side-entities/4900677/4)
--- **Native**: `SET_PLAYER_CULLING_RADIUS` (`0x8A2FBAD4`)
---@param radius number The radius.
---@return fx.Player self
function Player:setCullingRadius(radius) end

--- Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
--- As per usual, make sure to request the model first and wait until it has loaded.
---
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_MODEL](?\_0x00A1CADD00108836).**
--- **Native**: `SET_PLAYER_MODEL` (`0x774A4C54`)
---@param model fx.Model|integer|string The model to use
---@return fx.Player self
function Player:setModel(model) end

--- SET_PLAYER_WANTED_LEVEL
---
--- **This is the server-side RPC native equivalent of the client native [SET_PLAYER_WANTED_LEVEL](?\_0x39FF19C64EF7DA5B).**
--- **Native**: `SET_PLAYER_WANTED_LEVEL` (`0xB7A0914B`)
---@param wantedLevel integer the wanted level 1-5
---@param delayedResponse boolean false = 0-10sec police spawn response time, true = 10-20sec police spawn response time
---@return fx.Player self
function Player:setWantedLevel(wantedLevel, delayedResponse) end

--- **Native**: `TEMP_BAN_PLAYER` (`0x1E35DBBA`)
---@param reason string
---@return fx.Player self
function Player:tempBan(reason) end

---@class fx.PlayerStatic
---@overload fun(source: integer|string): fx.Player? Player by server id (nil if not connected).
local PlayerStatic = {}

---Every connected player.
---@return fx.Player[]
function PlayerStatic.all() end
--- True when value is an fx.Player, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function PlayerStatic.is(value) end

