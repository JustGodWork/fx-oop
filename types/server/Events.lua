---@meta
---@diagnostic disable
-- fx.Events (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---The connection deferrals of `playerConnecting`, called with a dot: `deferrals.defer()`.
---@class fx.Deferrals
---@field defer fun() Holds the connection until `done`: call it before any wait
---@field update fun(message: string) Text shown on the loading screen
---@field presentCard fun(card: string|table<string, any>, cb?: fun(data: table<string, any>, rawData: string)) Shows an Adaptive Card (JSON string or table)
---@field done fun(failureReason?: string) Accepts the connection, or refuses it with a reason
---@field handover fun(data: table<string, any>) Data readable on the loading screen (`nuiHandoverData`)

---A player connecting. `source` is a temporary id: the player gets its final server id when it joins.
---@class fx.PlayerConnection
---@field source integer Temporary server id
---@field name string Player name
---@field player? fx.Player The player under its temporary id
---@field deferrals fx.Deferrals
---@field setKickReason fun(reason: string) Refusal reason shown when the handler cancels without deferrals
---@field cancel fun() Refuses the connection (with `setKickReason`'s text): call it before the handler yields

---Why a player dropped (`playerDropped`, ClientDropReason).
---@alias fx.DropReasonName
---| "RESOURCE" A resource dropped the player
---| "CLIENT" The player disconnected
---| "SERVER"
---| "CLIENT_REPLACED" Same player connected again
---| "CLIENT_CONNECTION_TIMED_OUT"
---| "CLIENT_CONNECTION_TIMED_OUT_WITH_PENDING_COMMANDS"
---| "SERVER_SHUTDOWN"
---| "STATE_BAG_RATE_LIMIT"
---| "NET_EVENT_RATE_LIMIT"
---| "LATENT_NET_EVENT_RATE_LIMIT"
---| "COMMAND_RATE_LIMIT"
---| "ONE_SYNC_TOO_MANY_MISSED_FRAMES"
---| "NET_GAME_EVENT_RATE_LIMIT"

---@class fx.CfxEvent.PlayerDropped
---@field player fx.Player Still wraps the server id, but the player no longer exists
---@field reason string
---@field code integer ClientDropReason, 0 when the server did not send one
---@field codeName? fx.DropReasonName
---@field resource? string The resource that dropped the player (DropPlayer), nil for FiveM itself
---@field rawResource? string As sent, `__cfx_internal:...` for FiveM itself

---@class fx.CfxEvent.PedHealthChanged
---@field ped fx.Ped
---@field oldHealth integer
---@field health integer
---@field oldArmour integer
---@field armour integer
---@field attacker? fx.Entity
---@field weapon integer Weapon hash, 0 when unknown

---FiveM's own server events: players, resources, entities (OneSync). Every `on*` returns a function that removes the
---handler, and an error in a handler is logged without stopping the others.
---@class fx.Events.Cfx
---@field DropReason table<fx.DropReasonName, integer> ClientDropReason values: `DropReason.CLIENT == 2`
local EventsCfx = {}

---`playerConnecting`. An error in the handler after `deferrals.defer()` refuses the connection instead of leaving
---the player on the loading screen.
---```lua
---fx.Events.Cfx.onPlayerConnecting(function(c)
---  c.deferrals.defer()
---  Wait(0)
---  if isBanned(c.source) then return c.deferrals.done("Banned") end
---  c.deferrals.done()
---end)
---```
---@param fn fun(connection: fx.PlayerConnection)
---@return fun() off
function EventsCfx.onPlayerConnecting(fn) end

---`playerJoining`: the player got its final server id (`oldId` is the temporary one).
---@param fn fun(player: fx.Player, oldId: integer)
---@return fun() off
function EventsCfx.onPlayerJoining(fn) end

---`playerDropped`, for a player who had joined.
---```lua
---fx.Events.Cfx.onPlayerDropped(function(e)
---  if e.code == fx.Events.Cfx.DropReason.CLIENT_CONNECTION_TIMED_OUT then log:warn("%s timed out", e.player) end
---end)
---```
---@param fn fun(e: fx.CfxEvent.PlayerDropped)
---@return fun() off
function EventsCfx.onPlayerDropped(fn) end

---`onPlayerNameChanged` (`SetPlayerName`). `resource` is nil when no resource changed it.
---@param fn fun(player: fx.Player, oldName: string, newName: string, resource?: string)
---@return fun() off
function EventsCfx.onPlayerNameChanged(fn) end

---`playerEnteredScope` (OneSync): `player` is now in the scope of `viewer`.
---@param fn fun(player: fx.Player, viewer: fx.Player)
---@return fun() off
function EventsCfx.onPlayerEnteredScope(fn) end

---`playerLeftScope` (OneSync): `player` left the scope of `viewer`.
---@param fn fun(player: fx.Player, viewer: fx.Player)
---@return fun() off
function EventsCfx.onPlayerLeftScope(fn) end

---`onPlayerBucketChange` (`SetPlayerRoutingBucket`).
---@param fn fun(player: fx.Player, bucket: integer, oldBucket: integer)
---@return fun() off
function EventsCfx.onPlayerBucketChange(fn) end

---`onEntityBucketChange` (`SetEntityRoutingBucket`).
---@param fn fun(entity: fx.Entity, bucket: integer, oldBucket: integer)
---@return fun() off
function EventsCfx.onEntityBucketChange(fn) end

---`entityCreating`: a client created a networked entity. `cancel()` deletes it at once (not for player peds):
---call it before the handler yields.
---```lua
---fx.Events.Cfx.onEntityCreating(function(entity, cancel)
---  if entity.model == `rhino` then cancel() end
---end)
---```
---@param fn fun(entity: fx.Entity, cancel: fun())
---@return fun() off
function EventsCfx.onEntityCreating(fn) end

---`entityCreated`: a client-created entity passed `entityCreating`.
---@param fn fun(entity: fx.Entity)
---@return fun() off
function EventsCfx.onEntityCreated(fn) end

---`serverEntityCreated`: a server script created an entity (it may have no owner yet).
---@param fn fun(entity: fx.Entity)
---@return fun() off
function EventsCfx.onServerEntityCreated(fn) end

---`entityRemoved`.
---@param fn fun(entity: fx.Entity)
---@return fun() off
function EventsCfx.onEntityRemoved(fn) end

---`onPedHealthChanged` (recent server builds): the health or armour of a ped changed.
---@param fn fun(e: fx.CfxEvent.PedHealthChanged)
---@return fun() off
function EventsCfx.onPedHealthChanged(fn) end

---`onPedDeath` (recent server builds): the health of a ped dropped to 0.
---@param fn fun(ped: fx.Ped, attacker?: fx.Entity, weapon: integer)
---@return fun() off
function EventsCfx.onPedDeath(fn) end

---`onResourceStarting`: a resource is about to start, for every resource or only `resource`. `cancel()` keeps it
---from starting: call it before the handler yields.
---@param fn fun(resource: fx.ResourceRef, cancel: fun())
---@param resource? string|fx.ResourceRef
---@return fun() off
function EventsCfx.onResourceStarting(fn, resource) end

---`onResourceStart`, for every resource or only `resource`.
---```lua
---fx.Events.Cfx.onResourceStart(function(garage)
---  garage:call("registerGarage", "pillbox", { slots = 10 })
---end, "my_garage")
---```
---@param fn fun(resource: fx.ResourceRef)
---@param resource? string|fx.ResourceRef
---@return fun() off
function EventsCfx.onResourceStart(fn, resource) end

---`onResourceStop`, for every resource or only `resource`.
---@param fn fun(resource: fx.ResourceRef)
---@param resource? string|fx.ResourceRef
---@return fun() off
function EventsCfx.onResourceStop(fn, resource) end

---When the current resource stops.
---@param fn fun()
---@return fun() off
function EventsCfx.onStop(fn) end

---`onResourceListRefresh`: after the `refresh` command.
---@param fn fun()
---@return fun() off
function EventsCfx.onResourceListRefresh(fn) end

---A game event a client sent (OneSync). `cancel()` keeps it from reaching the other clients: call it before the
---handler yields.
---@class fx.GameEvent
---@field sender? fx.Player
---@field data table<string, any> Raw payload, with the fields fx does not decode
---@field cancel fun()

---The GTA V game events FiveM routes through the server.
---@alias fx.GameRoutedEventName
---| "weaponDamageEvent"
---| "weaponDamageReply"
---| "explosionEvent"
---| "fireEvent"
---| "startProjectileEvent"
---| "ptFxEvent"
---| "giveWeaponEvent"
---| "removeWeaponEvent"
---| "removeAllWeaponsEvent"
---| "clearPedTasksEvent"
---| "givePedScriptedTaskEvent"
---| "vehicleComponentControlEvent"
---| "vehicleComponentControlReply"
---| "respawnPlayerPedEvent"
---| "respawnPlayerPedReply"
---| "requestNetworkSyncedSceneEvent"
---| "startNetworkSyncedSceneEvent"
---| "updateNetworkSyncedSceneEvent"
---| "stopNetworkSyncedSceneEvent"

---A routed game event, raw.
---@class fx.GameEvent.Raw : fx.GameEvent
---@field name fx.GameRoutedEventName|string

---`requestNetworkSyncedSceneEvent`, `startNetworkSyncedSceneEvent`, `updateNetworkSyncedSceneEvent`,
---`stopNetworkSyncedSceneEvent`.
---@class fx.GameEvent.SyncedScene : fx.GameEvent
---@field action "request"|"start"|"update"|"stop"
---@field sceneId integer
---@field rate? number start and update
---@field position? vector3 start
---@field attachedTo? fx.Entity start
---@field looped? boolean start

---`weaponDamageEvent`.
---@class fx.GameEvent.WeaponDamage : fx.GameEvent
---@field victim? fx.Entity
---@field victims fx.Entity[] Every entity hit (the target players' peds when there is no victim)
---@field weapon integer Weapon hash
---@field damageType integer 0..3
---@field damage? integer Damage that overrides the weapon's, nil when the weapon's default applies
---@field damageFlags integer
---@field silenced boolean
---@field willKill boolean Only reported for a damage type 3
---@field component? integer Body part hit (damage type 2 or 3)
---@field tyreIndex? integer
---@field suspensionIndex? integer
---@field localPosition? vector3
---@field impactDirection? vector3

---`explosionEvent`.
---@class fx.GameEvent.Explosion : fx.GameEvent
---@field owner? fx.Entity Entity responsible (a ped), not a player id
---@field explosionType integer eExplosionTag
---@field position vector3
---@field damageScale number
---@field cameraShake number
---@field audible boolean
---@field invisible boolean

---@class fx.GameEvent.FireInfo
---@field entity? fx.Entity Entity on fire
---@field position vector3
---@field maxChildren integer
---@field weapon integer
---@field fireId integer

---`fireEvent` (up to 5 fires).
---@class fx.GameEvent.Fire : fx.GameEvent
---@field fires fx.GameEvent.FireInfo[]

---`startProjectileEvent`.
---@class fx.GameEvent.StartProjectile : fx.GameEvent
---@field owner? fx.Entity
---@field target? fx.Entity
---@field weapon integer
---@field ammo integer Projectile hash
---@field position vector3
---@field direction vector3

---`ptFxEvent`. The game sends the position and offset as whole numbers.
---@class fx.GameEvent.PtFx : fx.GameEvent
---@field effect integer Effect hash
---@field asset integer Asset hash
---@field entity? fx.Entity
---@field position vector3
---@field offset vector3
---@field rotation vector3 Degrees
---@field scale number

---`giveWeaponEvent`.
---@class fx.GameEvent.GiveWeapon : fx.GameEvent
---@field ped? fx.Ped
---@field weapon integer
---@field ammo integer
---@field asPickup boolean

---`removeWeaponEvent`.
---@class fx.GameEvent.RemoveWeapon : fx.GameEvent
---@field ped? fx.Ped
---@field weapon integer

---`removeAllWeaponsEvent`.
---@class fx.GameEvent.RemoveAllWeapons : fx.GameEvent
---@field ped? fx.Ped

---`clearPedTasksEvent`.
---@class fx.GameEvent.ClearPedTasks : fx.GameEvent
---@field ped? fx.Ped
---@field immediately boolean

---`vehicleComponentControlEvent`: a door, a seat... of a vehicle.
---@class fx.GameEvent.VehicleComponentControl : fx.GameEvent
---@field vehicle? fx.Vehicle
---@field ped? fx.Ped
---@field component integer
---@field request boolean
---@field isSeat boolean
---@field pedInSeat? fx.Ped

---`respawnPlayerPedEvent`. The game sends the position as whole numbers.
---@class fx.GameEvent.RespawnPlayerPed : fx.GameEvent
---@field position vector3

---`givePedScriptedTaskEvent`.
---@class fx.GameEvent.GivePedScriptedTask : fx.GameEvent
---@field ped? fx.Ped
---@field taskId integer

---GTA's game events the clients send through the server (OneSync), decoded. `e.cancel()` blocks one.
---@class fx.Events.Game
local EventsGame = {}

---A routed game event by name, raw.
---```lua
---fx.Events.Game.on("weaponDamageReply", function(e) print(e.sender, e.data.health) end)
---```
---@param name fx.GameRoutedEventName|string
---@param fn fun(e: fx.GameEvent.Raw)
---@return fun() off
function EventsGame.on(name, fn) end

---Every routed game event, raw.
---@param fn fun(e: fx.GameEvent.Raw)
---@return fun() off
function EventsGame.onAny(fn) end

---The synced scene events (`requestNetworkSyncedSceneEvent`, `start...`, `update...`, `stop...`).
---@param fn fun(e: fx.GameEvent.SyncedScene)
---@return fun() off
function EventsGame.onSyncedScene(fn) end

---`weaponDamageEvent`.
---```lua
---fx.Events.Game.onWeaponDamage(function(e)
---  if e.weapon == `WEAPON_RAILGUN` then e.cancel() end
---end)
---```
---@param fn fun(e: fx.GameEvent.WeaponDamage)
---@return fun() off
function EventsGame.onWeaponDamage(fn) end

---@param fn fun(e: fx.GameEvent.Explosion)
---@return fun() off
function EventsGame.onExplosion(fn) end

---@param fn fun(e: fx.GameEvent.Fire)
---@return fun() off
function EventsGame.onFire(fn) end

---@param fn fun(e: fx.GameEvent.StartProjectile)
---@return fun() off
function EventsGame.onStartProjectile(fn) end

---@param fn fun(e: fx.GameEvent.PtFx)
---@return fun() off
function EventsGame.onPtFx(fn) end

---@param fn fun(e: fx.GameEvent.GiveWeapon)
---@return fun() off
function EventsGame.onGiveWeapon(fn) end

---@param fn fun(e: fx.GameEvent.RemoveWeapon)
---@return fun() off
function EventsGame.onRemoveWeapon(fn) end

---@param fn fun(e: fx.GameEvent.RemoveAllWeapons)
---@return fun() off
function EventsGame.onRemoveAllWeapons(fn) end

---@param fn fun(e: fx.GameEvent.ClearPedTasks)
---@return fun() off
function EventsGame.onClearPedTasks(fn) end

---@param fn fun(e: fx.GameEvent.VehicleComponentControl)
---@return fun() off
function EventsGame.onVehicleComponentControl(fn) end

---@param fn fun(e: fx.GameEvent.RespawnPlayerPed)
---@return fun() off
function EventsGame.onRespawnPlayerPed(fn) end

---@param fn fun(e: fx.GameEvent.GivePedScriptedTask)
---@return fun() off
function EventsGame.onGivePedScriptedTask(fn) end

---@class fx.TxEvent.Announcement
---@field author string Admin name, or "txAdmin"
---@field message string

---@class fx.TxEvent.ServerShuttingDown
---@field delay integer Milliseconds before the server stops
---@field author string Admin name, or "txAdmin"
---@field message string

---@class fx.TxEvent.ScheduledRestart
---@field secondsRemaining integer 1800, 900, 600, 300, 240, 180, 120 or 60
---@field translatedMessage string

---@class fx.TxEvent.ScheduledRestartSkipped
---@field secondsRemaining integer
---@field temporary boolean A one-off schedule, not one from the settings
---@field author? string

---@class fx.TxEvent.PlayerBanned
---@field author string
---@field reason string
---@field actionId string
---@field expiration? integer Unix time in seconds, nil when permanent
---@field permanent boolean
---@field durationInput string "2 days", "permanent"...
---@field durationTranslated? string
---@field player? fx.Player The banned player when connected
---@field targetNetId? integer
---@field targetIds string[] Identifiers (`license:...`)
---@field targetHwids string[]
---@field targetName string
---@field kickMessage string

---@class fx.TxEvent.PlayerWarned
---@field author string
---@field reason string
---@field actionId string
---@field player? fx.Player The warned player when connected
---@field targetNetId? integer
---@field targetIds string[]
---@field targetName string

---@class fx.TxEvent.PlayerKicked
---@field target integer Server id, -1 for everyone
---@field everyone boolean
---@field player? fx.Player
---@field author string
---@field reason string
---@field dropMessage string

---@class fx.TxEvent.PlayerDirectMessage
---@field target integer
---@field player? fx.Player
---@field author string
---@field message string

---@class fx.TxEvent.PlayerHealed
---@field target integer Server id, -1 for everyone
---@field everyone boolean
---@field player? fx.Player
---@field author string

---@class fx.TxEvent.ActionRevoked
---@field actionId string
---@field actionType "ban"|"warn"
---@field actionReason string
---@field actionAuthor string
---@field playerName? string nil for a ban on identifiers only
---@field playerIds string[]
---@field playerHwids string[]
---@field revokedBy string

---@class fx.TxEvent.WhitelistPlayer
---@field action "added"|"removed"
---@field license string License hash, without `license:`
---@field playerName string
---@field adminName string

---@class fx.TxEvent.WhitelistPreApproval
---@field action "added"|"removed"
---@field identifier string `discord:123`...
---@field playerName? string
---@field adminName string

---@class fx.TxEvent.WhitelistRequest
---@field action "requested"|"approved"|"denied"|"deniedAll"
---@field playerName? string
---@field requestId? string
---@field license? string License hash, without `license:`
---@field adminName? string

---@class fx.TxEvent.AdminAuth
---@field netId integer -1: every admin lost its rights (they authenticate again)
---@field everyone boolean
---@field player? fx.Player
---@field isAdmin boolean
---@field username? string

---@class fx.TxEvent.ConsoleCommand
---@field author string
---@field channel string
---@field command string

---txAdmin's events (server only, raised before txAdmin's own handling: a banned player is still connected).
---@class fx.Events.TxAdmin
---@field enabled boolean The server runs under txAdmin
---@field version? string txAdmin version
local EventsTxAdmin = {}

---@param fn fun(e: fx.TxEvent.Announcement)
---@return fun() off
function EventsTxAdmin.onAnnouncement(fn) end

---The server stops (or restarts) after `e.delay` ms: save what must be saved.
---```lua
---fx.Events.TxAdmin.onServerShuttingDown(function(e)
---  saveAll()
---end)
---```
---@param fn fun(e: fx.TxEvent.ServerShuttingDown)
---@return fun() off
function EventsTxAdmin.onServerShuttingDown(fn) end

---Raised 30, 15, 10, 5, 4, 3, 2 and 1 minutes before a scheduled restart.
---@param fn fun(e: fx.TxEvent.ScheduledRestart)
---@return fun() off
function EventsTxAdmin.onScheduledRestart(fn) end

---@param fn fun(e: fx.TxEvent.ScheduledRestartSkipped)
---@return fun() off
function EventsTxAdmin.onScheduledRestartSkipped(fn) end

---@param fn fun(e: fx.TxEvent.PlayerBanned)
---@return fun() off
function EventsTxAdmin.onPlayerBanned(fn) end

---@param fn fun(e: fx.TxEvent.PlayerWarned)
---@return fun() off
function EventsTxAdmin.onPlayerWarned(fn) end

---@param fn fun(e: fx.TxEvent.PlayerKicked)
---@return fun() off
function EventsTxAdmin.onPlayerKicked(fn) end

---@param fn fun(e: fx.TxEvent.PlayerDirectMessage)
---@return fun() off
function EventsTxAdmin.onPlayerDirectMessage(fn) end

---@param fn fun(e: fx.TxEvent.PlayerHealed)
---@return fun() off
function EventsTxAdmin.onPlayerHealed(fn) end

---A ban or a warn was revoked.
---@param fn fun(e: fx.TxEvent.ActionRevoked)
---@return fun() off
function EventsTxAdmin.onActionRevoked(fn) end

---@param fn fun(e: fx.TxEvent.WhitelistPlayer)
---@return fun() off
function EventsTxAdmin.onWhitelistPlayer(fn) end

---@param fn fun(e: fx.TxEvent.WhitelistPreApproval)
---@return fun() off
function EventsTxAdmin.onWhitelistPreApproval(fn) end

---@param fn fun(e: fx.TxEvent.WhitelistRequest)
---@return fun() off
function EventsTxAdmin.onWhitelistRequest(fn) end

---An in-game admin authenticated (or failed to).
---@param fn fun(e: fx.TxEvent.AdminAuth)
---@return fun() off
function EventsTxAdmin.onAdminAuth(fn) end

---The admins changed: `players` must authenticate again.
---@param fn fun(players: fx.Player[], netIds: integer[])
---@return fun() off
function EventsTxAdmin.onAdminsUpdated(fn) end

---txAdmin settings changed (the `txAdmin-*` convars are set again).
---@param fn fun()
---@return fun() off
function EventsTxAdmin.onConfigChanged(fn) end

---An admin sent a command from the live console.
---@param fn fun(e: fx.TxEvent.ConsoleCommand)
---@return fun() off
function EventsTxAdmin.onConsoleCommand(fn) end

---Events in namespaces, decoded and typed: `Cfx` (FiveM's own events), `Game` (GTA's game events routed through
---the server) and `TxAdmin`.
---@class fx.Events
---@field Cfx fx.Events.Cfx
---@field Game fx.Events.Game
---@field TxAdmin fx.Events.TxAdmin

local EventsStatic = {}

