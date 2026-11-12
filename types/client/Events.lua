---@meta
---@diagnostic disable
-- fx.Events (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---FiveM's own client events: resources, voice, players announced by the server. Every `on*` returns a function that
---removes the handler, and an error in a handler is logged without stopping the others.
---@class fx.Events.Cfx
local EventsCfx = {}

---`onResourceStarting`: a resource is about to start, for every resource or only `resource`. `cancel()` keeps it
---from starting: call it before the handler yields.
---@param fn fun(resource: fx.ResourceRef, cancel: fun())
---@param resource? string|fx.ResourceRef
---@return fun() off
function EventsCfx.onResourceStarting(fn, resource) end

---`onClientResourceStart`, for every resource or only `resource`.
---```lua
---fx.Events.Cfx.onResourceStart(function(garage)
---  garage:call("registerGarage", "pillbox", { slots = 10 })
---end, "my_garage")
---```
---@param fn fun(resource: fx.ResourceRef)
---@param resource? string|fx.ResourceRef
---@return fun() off
function EventsCfx.onResourceStart(fn, resource) end

---`onClientResourceStop`, for every resource or only `resource`.
---@param fn fun(resource: fx.ResourceRef)
---@param resource? string|fx.ResourceRef
---@return fun() off
function EventsCfx.onResourceStop(fn, resource) end

---When the current resource stops.
---@param fn fun()
---@return fun() off
function EventsCfx.onStop(fn) end

---`mumbleConnected`: connected to the voice server (`reconnecting` after a lost connection).
---@param fn fun(address: string, reconnecting: boolean)
---@return fun() off
function EventsCfx.onMumbleConnected(fn) end

---`mumbleDisconnected`: the voice connection is lost and will not be retried.
---@param fn fun(address: string)
---@return fun() off
function EventsCfx.onMumbleDisconnected(fn) end

---`onPlayerJoining`, sent by the server: a player joined the server or entered this client's scope (OneSync).
---@param fn fun(player: fx.Player, name: string, slot: integer)
---@return fun() off
function EventsCfx.onPlayerJoining(fn) end

---`onPlayerDropped`, sent by the server: a player left the server or this client's scope (OneSync).
---@param fn fun(player: fx.Player, name: string, slot: integer)
---@return fun() off
function EventsCfx.onPlayerDropped(fn) end

---`onPlayerNameChanged`, sent by the server (`SetPlayerName`). `resource` is nil when no resource changed it.
---@param fn fun(player: fx.Player, oldName: string, newName: string, resource?: string)
---@return fun() off
function EventsCfx.onPlayerNameChanged(fn) end

---Every argument of a game event is the low 32 bits of a script slot; floats are decoded, hashes are signed like
---GetHashKey's, entities are wrapped and player indexes are fx.Player.
---@class fx.GameEvent
---@field args integer[] Raw arguments

---`CEventNetworkEntityDamage`. Fields missing from older game builds: `incapacitated` (false) and
---`enduranceDamage` (0) before 2189 / 2060.
---@class fx.GameEvent.EntityDamage : fx.GameEvent
---@field victim fx.Entity
---@field attacker? fx.Entity nil for a fall, a fire, drowning...
---@field damage number
---@field enduranceDamage number
---@field incapacitated boolean
---@field fatal boolean The damage killed or destroyed the victim
---@field weapon integer Weapon hash (also unarmed, fall, vehicle weapons)
---@field victimSpeed number
---@field attackerSpeed number
---@field collision boolean The attacker is responsible for a vehicle collision
---@field headshot boolean
---@field melee boolean
---@field material integer Material id of the hit (materials.dat)

---`CEventNetworkPlayerEnteredVehicle` (raised again on a seat change).
---@class fx.GameEvent.PlayerEnteredVehicle : fx.GameEvent
---@field player fx.Player
---@field vehicle fx.Vehicle

---`CEventNetworkVehicleUndrivable`.
---@class fx.GameEvent.VehicleUndrivable : fx.GameEvent
---@field vehicle fx.Vehicle
---@field attacker? fx.Entity
---@field weapon integer

---`CEventNetworkPlayerCollectedPickup`.
---@class fx.GameEvent.PickupCollected : fx.GameEvent
---@field pickup integer Pickup handle
---@field player? fx.Player
---@field pickupType integer Hash
---@field amount integer
---@field model integer Custom model hash
---@field collected integer

---`CEventNetworkPlayerCollectedAmbientPickup`.
---@class fx.GameEvent.AmbientPickupCollected : fx.GameEvent
---@field pickupType integer Hash
---@field amount integer
---@field player? fx.Player
---@field model integer
---@field playerGift boolean
---@field droppedByPed boolean
---@field collected integer
---@field pickupIndex integer

---`CEventNetworkPlayerCollectedPortablePickup` / `CEventNetworkPlayerDroppedPortablePickup`.
---@class fx.GameEvent.PortablePickup : fx.GameEvent
---@field pickup? fx.Entity
---@field networkId integer
---@field player? fx.Player
---@field model integer

---`CEventNetworkPickupRespawned`.
---@class fx.GameEvent.PickupRespawned : fx.GameEvent
---@field pickupIndex integer
---@field pickupType integer
---@field model integer

---`CEventNetworkPedLeftBehind`.
---@class fx.GameEvent.PedLeftBehind : fx.GameEvent
---@field ped? fx.Ped
---@field reason integer 0 default, 1 the player left the session

---`CEventNetworkPlayerArrest`.
---@class fx.GameEvent.PlayerArrest : fx.GameEvent
---@field arrester? fx.Ped
---@field arrestee? fx.Ped
---@field result integer 0..9: cuffed, cuff failed, uncuffed, uncuff failed, taken into custody...

---`CEventNetworkTimedExplosion`.
---@class fx.GameEvent.TimedExplosion : fx.GameEvent
---@field vehicle? fx.Vehicle
---@field culprit? fx.Ped

---`CEventNetworkFiredDummyProjectile`.
---@class fx.GameEvent.FiredDummyProjectile : fx.GameEvent
---@field ped? fx.Ped
---@field projectile? fx.Entity
---@field weapon integer

---`CEventNetworkFiredVehicleProjectile`.
---@class fx.GameEvent.FiredVehicleProjectile : fx.GameEvent
---@field vehicle? fx.Vehicle
---@field ped? fx.Ped
---@field projectile? fx.Entity
---@field weapon integer

---`CEventNetworkStuntPerformed`.
---@class fx.GameEvent.StuntPerformed : fx.GameEvent
---@field stuntType integer
---@field value number

---`CEventNetworkConnectionTimeout`.
---@class fx.GameEvent.ConnectionTimeout : fx.GameEvent
---@field player? fx.Player

---`CEventNetworkCheatTriggered`.
---@class fx.GameEvent.CheatTriggered : fx.GameEvent
---@field cheatType integer 0 invincible, 1 weapons, 2 health, 3 vehicle, 4 warp

---`CEventNetworkPlayerActivatedSpecialAbility`, `...DeactivatedSpecialAbility`, `...SpecialAbilityFailedActivation`.
---@class fx.GameEvent.SpecialAbility : fx.GameEvent
---@field player? fx.Player
---@field ability integer
---@field state "activated"|"deactivated"|"failed"

---A network game event, raw.
---@class fx.GameEvent.Raw
---@field name string
---@field args integer[] Low 32 bits of each argument: floats as their bits, hashes signed

---A game AI event fired under its own name (`CEventShockingCarCrash`, `CEventGunShot`...).
---@class fx.GameEvent.Ai
---@field name string
---@field entities fx.Entity[] Entities the event concerns
---@field entity? fx.Entity Entity that raised it
---@field position? vector3 Position of the `CEventShocking*` events
---@field data any[] Raw data

---`populationPedCreating`: the game is about to create an ambient ped.
---@class fx.GameEvent.PopulationPedCreating
---@field position vector3
---@field model integer Model hash
---@field setModel fun(model: string|integer) Creates another model
---@field setPosition fun(position: vector3) Creates it elsewhere
---@field cancel fun() The ped is not created: call it before the handler yields

---Network game events (`gameEventTriggered`), every name of FiveM's tables (game builds 1604 to 3258).
---@alias fx.GameNetworkEventName
---| "CEventNetworkAdminInvited"
---| "CEventNetworkAttemptHostMigration"
---| "CEventNetworkBail"
---| "CEventNetworkCashTransactionLog"
---| "CEventNetworkCheatTriggered"
---| "CEventNetworkClanInviteReceived"
---| "CEventNetworkClanInviteRequestReceived"
---| "CEventNetworkClanJoined"
---| "CEventNetworkClanKicked"
---| "CEventNetworkClanLeft"
---| "CEventNetworkClanRankChanged"
---| "CEventNetworkCloudEvent"
---| "CEventNetworkCloudFileResponse"
---| "CEventNetworkConnectionTimeout"
---| "CEventNetworkEmailReceivedEvent"
---| "CEventNetworkEndSession"
---| "CEventNetworkEntityDamage"
---| "CEventNetworkFindSession"
---| "CEventNetworkFiredDummyProjectile"
---| "CEventNetworkFiredVehicleProjectile"
---| "CEventNetworkFollowInviteReceived"
---| "CEventNetworkHostMigration"
---| "CEventNetworkHostSession"
---| "CEventNetworkIncrementStat"
---| "CEventNetworkInviteAccepted"
---| "CEventNetworkInviteConfirmed"
---| "CEventNetworkInviteRejected"
---| "CEventNetworkJoinSession"
---| "CEventNetworkJoinSessionResponse"
---| "CEventNetworkMarketingEmailReceivedEvent"
---| "CEventNetworkOnlinePermissionsUpdated"
---| "CEventNetworkPedDroppedWeapon"
---| "CEventNetworkPedLeftBehind"
---| "CEventNetworkPickupRespawned"
---| "CEventNetworkPlayerActivatedSpecialAbility"
---| "CEventNetworkPlayerArrest"
---| "CEventNetworkPlayerCollectedAmbientPickup"
---| "CEventNetworkPlayerCollectedPickup"
---| "CEventNetworkPlayerCollectedPortablePickup"
---| "CEventNetworkPlayerDeactivatedSpecialAbility"
---| "CEventNetworkPlayerDroppedPortablePickup"
---| "CEventNetworkPlayerEnteredVehicle"
---| "CEventNetworkPlayerJoinScript"
---| "CEventNetworkPlayerLeftScript"
---| "CEventNetworkPlayerSpawn"
---| "CEventNetworkPlayerSpecialAbilityFailedActivation"
---| "CEventNetworkPresenceInvite"
---| "CEventNetworkPresenceInviteRemoved"
---| "CEventNetworkPresenceInviteReply"
---| "CEventNetworkPresenceTriggerEvent"
---| "CEventNetworkPresence_StatUpdate"
---| "CEventNetworkPrimaryClanChanged"
---| "CEventNetworkRemovedFromSessionDueToComplaints"
---| "CEventNetworkRemovedFromSessionDueToStall"
---| "CEventNetworkRequestDelay"
---| "CEventNetworkRosChanged"
---| "CEventNetworkScAdminPlayerUpdated"
---| "CEventNetworkScAdminReceivedCash"
---| "CEventNetworkScriptEvent"
---| "CEventNetworkSessionEvent"
---| "CEventNetworkShopTransaction"
---| "CEventNetworkSignInChangeActioned"
---| "CEventNetworkSignInStateChanged"
---| "CEventNetworkSocialClubAccountLinked"
---| "CEventNetworkSpectateLocal"
---| "CEventNetworkStartMatch"
---| "CEventNetworkStartSession"
---| "CEventNetworkStorePlayerLeft"
---| "CEventNetworkStuntPerformed"
---| "CEventNetworkSummon"
---| "CEventNetworkSystemServiceEvent"
---| "CEventNetworkTextMessageReceived"
---| "CEventNetworkTimedExplosion"
---| "CEventNetworkTransitionEvent"
---| "CEventNetworkTransitionGamerInstruction"
---| "CEventNetworkTransitionMemberJoined"
---| "CEventNetworkTransitionMemberLeft"
---| "CEventNetworkTransitionParameterChanged"
---| "CEventNetworkTransitionStarted"
---| "CEventNetworkTransitionStringChanged"
---| "CEventNetworkVehicleUndrivable"
---| "CEventNetworkVoiceConnectionRequested"
---| "CEventNetworkVoiceConnectionResponse"
---| "CEventNetworkVoiceConnectionTerminated"
---| "CEventNetworkVoiceSessionEnded"
---| "CEventNetworkVoiceSessionStarted"
---| "CEventNetwork_InboxMsgReceived"

---Game AI events fired under their own name (`fx.Events.Game.onAiEvent`).
---@alias fx.GameAiEventName
---| "CEventAcquaintancePedDead"
---| "CEventAcquaintancePedDislike"
---| "CEventAcquaintancePedLike"
---| "CEventAcquaintancePedWanted"
---| "CEventAgitated"
---| "CEventAgitatedAction"
---| "CEventCallForCover"
---| "CEventCarUndriveable"
---| "CEventClimbLadderOnRoute"
---| "CEventClimbNavMeshOnRoute"
---| "CEventCommunicateEvent"
---| "CEventCopCarBeingStolen"
---| "CEventCrimeCryForHelp"
---| "CEventCrimeReported"
---| "CEventDamage"
---| "CEventDeadPedFound"
---| "CEventDeath"
---| "CEventDisturbance"
---| "CEventDraggedOutCar"
---| "CEventEncroachingPed"
---| "CEventEntityDamaged"
---| "CEventEntityDestroyed"
---| "CEventErrorArrayOverflow"
---| "CEventErrorInstructionLimit"
---| "CEventErrorUnknownError"
---| "CEventExplosionHeard"
---| "CEventFootStepHeard"
---| "CEventFriendlyAimedAt"
---| "CEventFriendlyFireNearMiss"
---| "CEventGetOutOfWater"
---| "CEventGivePedTask"
---| "CEventGunAimedAt"
---| "CEventGunShot"
---| "CEventGunShotBulletImpact"
---| "CEventGunShotWhizzedBy"
---| "CEventHelpAmbientFriend"
---| "CEventHurtTransition"
---| "CEventInAir"
---| "CEventInjuredCryForHelp"
---| "CEventLeaderEnteredCarAsDriver"
---| "CEventLeaderExitedCarAsDriver"
---| "CEventLeaderHolsteredWeapon"
---| "CEventLeaderLeftCover"
---| "CEventLeaderUnholsteredWeapon"
---| "CEventMeleeAction"
---| "CEventMustLeaveBoat"
---| "CEventNewTask"
---| "CEventObjectCollision"
---| "CEventOnFire"
---| "CEventOpenDoor"
---| "CEventPedCollisionWithPed"
---| "CEventPedCollisionWithPlayer"
---| "CEventPedEnteredMyVehicle"
---| "CEventPedJackingMyVehicle"
---| "CEventPedOnCarRoof"
---| "CEventPedSeenDeadPed"
---| "CEventPlayerCollisionWithPed"
---| "CEventPlayerDeath"
---| "CEventPlayerUnableToEnterVehicle"
---| "CEventPotentialBeWalkedInto"
---| "CEventPotentialBlast"
---| "CEventPotentialGetRunOver"
---| "CEventPotentialWalkIntoVehicle"
---| "CEventProvidingCover"
---| "CEventRanOverPed"
---| "CEventReactionEnemyPed"
---| "CEventReactionInvestigateDeadPed"
---| "CEventReactionInvestigateThreat"
---| "CEventRequestHelpWithConfrontation"
---| "CEventRespondedToThreat"
---| "CEventScenarioForceAction"
---| "CEventScriptCommand"
---| "CEventShockingBicycleCrash"
---| "CEventShockingBicycleOnPavement"
---| "CEventShockingBrokenGlass"
---| "CEventShockingCarAlarm"
---| "CEventShockingCarChase"
---| "CEventShockingCarCrash"
---| "CEventShockingCarOnCar"
---| "CEventShockingCarPileUp"
---| "CEventShockingDangerousAnimal"
---| "CEventShockingDeadBody"
---| "CEventShockingDrivingOnPavement"
---| "CEventShockingEngineRevved"
---| "CEventShockingExplosion"
---| "CEventShockingFire"
---| "CEventShockingGunFight"
---| "CEventShockingGunshotFired"
---| "CEventShockingHelicopterOverhead"
---| "CEventShockingHornSounded"
---| "CEventShockingInDangerousVehicle"
---| "CEventShockingInjuredPed"
---| "CEventShockingMadDriver"
---| "CEventShockingMadDriverBicycle"
---| "CEventShockingMadDriverExtreme"
---| "CEventShockingMugging"
---| "CEventShockingNonViolentWeaponAimedAt"
---| "CEventShockingParachuterOverhead"
---| "CEventShockingPedKnockedIntoByPlayer"
---| "CEventShockingPedRunOver"
---| "CEventShockingPedShot"
---| "CEventShockingPlaneFlyby"
---| "CEventShockingPotentialBlast"
---| "CEventShockingPropertyDamage"
---| "CEventShockingRunningPed"
---| "CEventShockingRunningStampede"
---| "CEventShockingSeenCarStolen"
---| "CEventShockingSeenConfrontation"
---| "CEventShockingSeenGangFight"
---| "CEventShockingSeenInsult"
---| "CEventShockingSeenMeleeAction"
---| "CEventShockingSeenNiceCar"
---| "CEventShockingSeenPedKilled"
---| "CEventShockingSiren"
---| "CEventShockingStudioBomb"
---| "CEventShockingVehicleTowed"
---| "CEventShockingVisibleWeapon"
---| "CEventShockingWeaponThreat"
---| "CEventShockingWeirdPed"
---| "CEventShockingWeirdPedApproaching"
---| "CEventShoutBlockingLos"
---| "CEventShoutTargetPosition"
---| "CEventShovePed"
---| "CEventStatChangedValue"
---| "CEventStaticCountReachedMax"
---| "CEventStuckInAir"
---| "CEventSuspiciousActivity"
---| "CEventSwitch2NM"
---| "CEventUnidentifiedPed"
---| "CEventVehicleCollision"
---| "CEventVehicleDamageWeapon"
---| "CEventVehicleOnFire"
---| "CEventWrithe"

---GTA's game events (`gameEventTriggered`), decoded, and the game hooks of FiveM. Network events are raised for
---every entity the client knows about, not only its own.
---@class fx.Events.Game
local EventsGame = {}

---A network game event by name, raw.
---```lua
---fx.Events.Game.on("CEventNetworkPedDroppedWeapon", function(e) print(#e.args, table.concat(e.args, ",")) end)
---```
---@param name fx.GameNetworkEventName|string
---@param fn fun(e: fx.GameEvent.Raw)
---@return fun() off
function EventsGame.on(name, fn) end

---Every network game event, raw.
---@param fn fun(e: fx.GameEvent.Raw)
---@return fun() off
function EventsGame.onAny(fn) end

---Decodes the raw arguments of a game event; nil for an event it does not know.
---@param name fx.GameNetworkEventName|string
---@param args integer[]
---@return fx.GameEvent?
function EventsGame.decode(name, args) end

---`CEventNetworkEntityDamage`.
---```lua
---fx.Events.Game.onEntityDamage(function(e)
---  if e.fatal and e.victim == fx.Player.ped then print("killed by", e.attacker, e.headshot) end
---end)
---```
---@param fn fun(e: fx.GameEvent.EntityDamage)
---@return fun() off
function EventsGame.onEntityDamage(fn) end

---`CEventNetworkEntityDamage` when the damage killed or destroyed the victim.
---@param fn fun(e: fx.GameEvent.EntityDamage)
---@return fun() off
function EventsGame.onEntityKilled(fn) end

---@param fn fun(e: fx.GameEvent.PlayerEnteredVehicle)
---@return fun() off
function EventsGame.onPlayerEnteredVehicle(fn) end

---@param fn fun(e: fx.GameEvent.VehicleUndrivable)
---@return fun() off
function EventsGame.onVehicleUndrivable(fn) end

---@param fn fun(e: fx.GameEvent.PickupCollected)
---@return fun() off
function EventsGame.onPickupCollected(fn) end

---@param fn fun(e: fx.GameEvent.AmbientPickupCollected)
---@return fun() off
function EventsGame.onAmbientPickupCollected(fn) end

---@param fn fun(e: fx.GameEvent.PortablePickup)
---@return fun() off
function EventsGame.onPortablePickupCollected(fn) end

---@param fn fun(e: fx.GameEvent.PortablePickup)
---@return fun() off
function EventsGame.onPortablePickupDropped(fn) end

---@param fn fun(e: fx.GameEvent.PickupRespawned)
---@return fun() off
function EventsGame.onPickupRespawned(fn) end

---@param fn fun(e: fx.GameEvent.PedLeftBehind)
---@return fun() off
function EventsGame.onPedLeftBehind(fn) end

---@param fn fun(e: fx.GameEvent.PlayerArrest)
---@return fun() off
function EventsGame.onPlayerArrest(fn) end

---@param fn fun(e: fx.GameEvent.TimedExplosion)
---@return fun() off
function EventsGame.onTimedExplosion(fn) end

---@param fn fun(e: fx.GameEvent.FiredDummyProjectile)
---@return fun() off
function EventsGame.onFiredDummyProjectile(fn) end

---@param fn fun(e: fx.GameEvent.FiredVehicleProjectile)
---@return fun() off
function EventsGame.onFiredVehicleProjectile(fn) end

---@param fn fun(e: fx.GameEvent.StuntPerformed)
---@return fun() off
function EventsGame.onStuntPerformed(fn) end

---`CEventNetworkConnectionTimeout`: the connection to a player timed out.
---@param fn fun(e: fx.GameEvent.ConnectionTimeout)
---@return fun() off
function EventsGame.onConnectionTimeout(fn) end

---`CEventNetworkCheatTriggered`: the game's own cheat detection.
---@param fn fun(e: fx.GameEvent.CheatTriggered)
---@return fun() off
function EventsGame.onCheatTriggered(fn) end

---A special ability activated, deactivated or that failed to activate (game build 3258+).
---@param fn fun(e: fx.GameEvent.SpecialAbility)
---@return fun() off
function EventsGame.onSpecialAbility(fn) end

---A game AI event under its own name (recent FiveM builds), e.g. `"CEventShockingCarCrash"`, `"CEventGunShot"`.
---@param name fx.GameAiEventName|string
---@param fn fun(e: fx.GameEvent.Ai)
---@return fun() off
function EventsGame.onAiEvent(name, fn) end

---`populationPedCreating`: change or cancel the ambient peds the game creates.
---```lua
---fx.Events.Game.onPopulationPedCreating(function(e)
---  if e.model == `a_c_chimp` then e.cancel() end
---end)
---```
---@param fn fun(e: fx.GameEvent.PopulationPedCreating)
---@return fun() off
function EventsGame.onPopulationPedCreating(fn) end

---`mapDataLoaded`: a map data file (ymap) was loaded.
---@param fn fun(hash: integer)
---@return fun() off
function EventsGame.onMapDataLoaded(fn) end

---`mapDataUnloaded`.
---@param fn fun(hash: integer)
---@return fun() off
function EventsGame.onMapDataUnloaded(fn) end

---Events in namespaces, decoded and typed: `Cfx` (FiveM's own events) and `Game` (GTA's game events).
---@class fx.Events
---@field Cfx fx.Events.Cfx
---@field Game fx.Events.Game
local EventsStatic = {}

