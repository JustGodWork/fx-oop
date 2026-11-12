---@meta
---@diagnostic disable
-- fx.Vehicle (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.VehicleCreateOptions
---@field networked? boolean Default true
---@field missionEntity? boolean Default true
---@field placeOnGround? boolean SET_VEHICLE_ON_GROUND_PROPERLY after creation
---@field timeout? integer Timeout (ms) for model loading and readyAsync() (default 10000)

---vehicle.mods: reads and writes one mod at a time (the mod kit is set for you).
---Assigning a value out of range raises in debug mode.
---@class fx.VehicleModsProxy
---@field wheelType fx.Enum.VehicleWheelType|integer
---@field customTyres boolean
---@field spoiler integer Slot 0
---@field frontBumper integer Slot 1
---@field rearBumper integer Slot 2
---@field sideSkirt integer Slot 3
---@field exhaust integer Slot 4
---@field frame integer Slot 5
---@field grille integer Slot 6
---@field hood integer Slot 7
---@field leftFender integer Slot 8
---@field rightFender integer Slot 9
---@field roof integer Slot 10
---@field engine integer Slot 11
---@field brakes integer Slot 12
---@field transmission integer Slot 13
---@field horn integer Slot 14
---@field suspension integer Slot 15
---@field armor integer Slot 16
---@field turbo boolean Slot 18 (on / off)
---@field tyreSmoke boolean Slot 20 (on / off)
---@field xenon boolean Slot 22 (on / off)
---@field frontWheels integer Slot 23
---@field rearWheels integer Slot 24
---@field plateHolder integer Slot 25
---@field vanityPlate integer Slot 26
---@field trimA integer Slot 27
---@field ornaments integer Slot 28
---@field dashboard integer Slot 29
---@field dial integer Slot 30
---@field doorSpeaker integer Slot 31
---@field seats integer Slot 32
---@field steeringWheel integer Slot 33
---@field shifter integer Slot 34
---@field plaque integer Slot 35
---@field speakers integer Slot 36
---@field trunk integer Slot 37
---@field hydraulics integer Slot 38
---@field engineBlock integer Slot 39
---@field airFilter integer Slot 40
---@field struts integer Slot 41
---@field archCover integer Slot 42
---@field aerials integer Slot 43
---@field trimB integer Slot 44
---@field tank integer Slot 45
---@field leftDoor integer Slot 46
---@field rightDoor integer Slot 47
---@field livery integer Slot 48
---@field lightbar integer Slot 49
local VehicleModsProxy = {}

---Number of parts this vehicle has for a slot (GET_NUM_VEHICLE_MODS); 1 for an on / off mod.
---@param key fx.VehicleModKey|fx.Enum.VehicleMods
---@return integer
function VehicleModsProxy:count(key) end

---Display name of a part, in the game language (the current part when `index` is nil). nil for the stock part.
---@param key fx.VehicleModKey|fx.Enum.VehicleMods
---@param index? integer
---@return string?
function VehicleModsProxy:label(key, index) end

---Every part of a slot with its name: what a tuning menu lists. Empty for an on / off mod.
---@param key fx.VehicleModKey|fx.Enum.VehicleMods
---@return { index: integer, label: string? }[]
function VehicleModsProxy:list(key) end

---Puts back the stock part of one slot, or of every slot (and turns the on / off mods off).
---@param key? fx.VehicleModKey|fx.Enum.VehicleMods
---@return fx.VehicleModsProxy
function VehicleModsProxy:reset(key) end

---@return fx.VehicleModsData
function VehicleModsProxy:get() end

---Applies several mods, the wheel type first.
---@param mods fx.VehicleModsData
---@return fx.VehicleModsProxy
function VehicleModsProxy:set(mods) end

---vehicle.colors: reads and writes one colour at a time.
---@class fx.VehicleColorsProxy
---@field primary integer
---@field secondary integer
---@field pearl integer
---@field wheels integer
---@field primaryRgb integer[]|false
---@field secondaryRgb integer[]|false
---@field interior integer
---@field dashboard integer
---@field xenon fx.Enum.HeadlightColors|integer
---@field xenonRgb integer[]|false
---@field neon integer[]
---@field neonEnabled { left: boolean, right: boolean, front: boolean, back: boolean }
---@field tyreSmoke integer[]
---@field windowTint fx.Enum.WindowTints|integer
---@field livery integer
---@field roofLivery integer
local VehicleColorsProxy = {}

---@return fx.VehicleColorsData
function VehicleColorsProxy:get() end

---Applies several colours (the indexes before the custom colours).
---@param colors fx.VehicleColorsData
---@return fx.VehicleColorsProxy
function VehicleColorsProxy:set(colors) end

---vehicle.extras: `vehicle.extras[1] = false`. Reading an extra the vehicle does not have gives nil.
---Turning an extra on or off repairs the vehicle in the game: the damage is put back (body deformation aside).
---@class fx.VehicleExtrasProxy
---@field [integer] boolean?
local VehicleExtrasProxy = {}

---Ids of the extras this vehicle has.
---@return integer[]
function VehicleExtrasProxy:list() end

---@return table<integer, boolean>
function VehicleExtrasProxy:get() end

---@param extras table<integer|string, boolean> Ids as strings (after a JSON round trip) are accepted
---@return fx.VehicleExtrasProxy
function VehicleExtrasProxy:set(extras) end

---vehicle.damage: health values and broken parts.
---@class fx.VehicleDamageProxy
---@field engine number
---@field body number
---@field tank number
---@field dirt number
---@field brokenDoors integer[]
---@field brokenWindows integer[]
---@field burstTyres integer[]
---@field rimTyres integer[]
local VehicleDamageProxy = {}

---@return fx.VehicleDamageData
function VehicleDamageProxy:get() end

---Applies damage values; a list given repairs the parts missing from it.
---@param damage fx.VehicleDamageData
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:set(damage) end

---Repairs everything: health values to 1000, broken parts and body deformation.
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:repair() end

---@param door integer 0-5 (fx.Enum.DoorId)
---@param remove? boolean true: the door disappears; false (default): it falls off
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:breakDoor(door, remove) end

---@param window integer 0-7 (fx.Enum.WindowId)
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:smashWindow(window) end

---@param window integer
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:fixWindow(window) end

---@param tyre integer 0-5, 45 or 47
---@param onRim? boolean Down to the rim
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:burstTyre(tyre, onRim) end

---@param tyre integer
---@return fx.VehicleDamageProxy
function VehicleDamageProxy:fixTyre(tyre) end
---@class fx.Vehicle : fx.Entity
---@field mods fx.VehicleModsProxy Mods one by one: `veh.mods.spoiler = 3`, `veh.mods.turbo = true`
---@field colors fx.VehicleColorsProxy Colours one by one: `veh.colors.primary = 12`, `veh.colors.neon = { 255, 0, 255 }`
---@field extras fx.VehicleExtrasProxy Extras one by one: `veh.extras[1] = false`
---@field damage fx.VehicleDamageProxy Damage one by one: `veh.damage.engine = 400`, `veh.damage:repair()`
---@field handle integer Raw entity handle.
---@field exists boolean (read-only) DOES_ENTITY_EXIST. Never raises, even on a deleted entity or in debug mode.
---@field states fx.VehicleStates Entity state bag (`entity:<netId>`; requires a networked entity, error in debug mode otherwise).
---@field state fx.VehicleStates Alias of `states` (`Entity(h).state` compatibility).
---@field acceleration number (read-only) [GET_VEHICLE_ACCELERATION] Retrieves a static value representing the maximum drive force of specific a vehicle, including any vehicle mods. This value does not change dynamically during …
---@field activeMissionType integer (read-only) [GET_ACTIVE_VEHICLE_MISSION_TYPE]
---@field address any (read-only) [GET_ENTITY_ADDRESS] **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning. Returns the memory address of an entity. This native i…
---@field alarmTimeLeft integer [GET_VEHICLE_ALARM_TIME_LEFT / SET_VEHICLE_ALARM_TIME_LEFT]
---@field alpha integer (read-only) [GET_ENTITY_ALPHA]
---@field archetypeName string (read-only) [GET_ENTITY_ARCHETYPE_NAME] Returns entity's archetype name, if available.
---@field areAllWindowsIntact boolean (read-only) [ARE_ALL_VEHICLE_WINDOWS_INTACT]
---@field areAnySeatsFree boolean (read-only) [ARE_ANY_VEHICLE_SEATS_FREE]
---@field areBombBayDoorsOpen boolean (read-only) [ARE_BOMB_BAY_DOORS_OPEN] Returns true when the bomb bay doors of this plane are open. False if they're closed.
---@field areHeliStubWingsDeployed boolean (read-only) [ARE_HELI_STUB_WINGS_DEPLOYED] Only used with the "akula" in the decompiled native scripts.
---@field areOutriggerLegsDeployed boolean (read-only) [ARE_OUTRIGGER_LEGS_DEPLOYED] Returns whether the outrigger legs are deployed for the vehicle. The Chernobog is one of the few vehicles with outrigger legs.
---@field arePlanePropellersIntact boolean (read-only) [ARE_PLANE_PROPELLERS_INTACT]
---@field arePlaneWingsIntact boolean (read-only) [ARE_PLANE_WINGS_INTACT]
---@field attachedTo? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO]
---@field attachedToCargobob? fx.Vehicle (read-only) [GET_VEHICLE_ATTACHED_TO_CARGOBOB]
---@field blip? fx.Blip (read-only) [GET_BLIP_FROM_ENTITY]
---@field boatBoomPositionRatio number [GET_BOAT_BOOM_POSITION_RATIO / SET_BOAT_BOOM_POSITION_RATIO]
---@field bodyHealth number [GET_VEHICLE_BODY_HEALTH / SET_VEHICLE_BODY_HEALTH]
---@field bombCount integer [GET_VEHICLE_BOMB_COUNT / SET_VEHICLE_BOMB_COUNT] Gets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a …
---@field boneCount integer (read-only) [GET_ENTITY_BONE_COUNT]
---@field canActivateParachute boolean (read-only) [GET_VEHICLE_CAN_ACTIVATE_PARACHUTE]
---@field canAnchorBoatHere boolean (read-only) [CAN_ANCHOR_BOAT_HERE] Checks if a boat can be anchored at its present position without possibly intersecting collision later.
---@field canAnchorBoatHereIgnorePlayers boolean (read-only) [CAN_ANCHOR_BOAT_HERE_IGNORE_PLAYERS] Checks if a boat can be anchored at its present position, ignoring any players standing on the boat.
---@field canBeDamaged boolean (read-only) [GET_ENTITY_CAN_BE_DAMAGED]
---@field canJump boolean (read-only) [GET_CAN_VEHICLE_JUMP]
---@field canReceiveCbRadio boolean (read-only) [CAN_VEHICLE_RECEIVE_CB_RADIO]
---@field cargobobHookPosition vector3 (read-only) [GET_CARGOBOB_HOOK_POSITION] Gets the position of the cargobob hook, in world coords.
---@field causeOfDestruction integer (read-only) [GET_VEHICLE_CAUSE_OF_DESTRUCTION]
---@field cgoffset vector3 [GET_CGOFFSET / SET_CGOFFSET]
---@field cheatPowerIncrease number [GET_VEHICLE_CHEAT_POWER_INCREASE / SET_VEHICLE_CHEAT_POWER_INCREASE] A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
---@field class integer (read-only) [GET_VEHICLE_CLASS]
---@field clutch number [GET_VEHICLE_CLUTCH / SET_VEHICLE_CLUTCH]
---@field collisionDisabled boolean (read-only) [GET_ENTITY_COLLISION_DISABLED]
---@field collisionNormalOfLastHit vector3 (read-only) [GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY]
---@field colourCombination integer [GET_VEHICLE_COLOUR_COMBINATION / SET_VEHICLE_COLOUR_COMBINATION]
---@field convertibleRoofState fx.Enum.RoofState (read-only) [GET_CONVERTIBLE_ROOF_STATE] Returns the convertible state of the specified vehicle.
---@field countermeasureCount integer [GET_VEHICLE_COUNTERMEASURE_COUNT / SET_VEHICLE_COUNTERMEASURE_COUNT] Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle. Use [`_SET_AIRCRAFT_C…
---@field currentGear integer [GET_VEHICLE_CURRENT_GEAR / SET_VEHICLE_CURRENT_GEAR]
---@field currentPlayback integer (read-only) [GET_CURRENT_PLAYBACK_FOR_VEHICLE]
---@field currentRpm number [GET_VEHICLE_CURRENT_RPM / SET_VEHICLE_CURRENT_RPM]
---@field currentSlipstreamDraft number (read-only) [GET_VEHICLE_CURRENT_SLIPSTREAM_DRAFT]
---@field dashboardSpeed number (read-only) [GET_VEHICLE_DASHBOARD_SPEED]
---@field defaultHorn integer (read-only) [GET_VEHICLE_DEFAULT_HORN]
---@field defaultHornIgnoreMods integer (read-only) [GET_VEHICLE_DEFAULT_HORN_IGNORE_MODS]
---@field dirtLevel number [GET_VEHICLE_DIRT_LEVEL / SET_VEHICLE_DIRT_LEVEL] A getter for [`SET_VEHICLE_DIRT_LEVEL`](#\_0x79D3B596FE44EE8B).
---@field doesAllowRappel boolean (read-only) [DOES_VEHICLE_ALLOW_RAPPEL]
---@field doesCargobobHavePickupMagnet boolean (read-only) [DOES_CARGOBOB_HAVE_PICKUP_MAGNET]
---@field doesCargobobHavePickUpRope boolean (read-only) [DOES_CARGOBOB_HAVE_PICK_UP_ROPE]
---@field doesHaveAnimDirector boolean (read-only) [DOES_ENTITY_HAVE_ANIM_DIRECTOR]
---@field doesHaveDrawable boolean (read-only) [DOES_ENTITY_HAVE_DRAWABLE]
---@field doesHaveLandingGear boolean (read-only) [DOES_VEHICLE_HAVE_LANDING_GEAR]
---@field doesHavePhysics boolean (read-only) [DOES_ENTITY_HAVE_PHYSICS]
---@field doesHaveRoof boolean (read-only) [DOES_VEHICLE_HAVE_ROOF] Determines whether a specific vehicle is equipped with a roof.
---@field doesHaveSearchlight boolean (read-only) [DOES_VEHICLE_HAVE_SEARCHLIGHT] Determines whether the specified vehicle is equipped with a searchlight.
---@field doesHaveSkeletonData boolean (read-only) [DOES_ENTITY_HAVE_SKELETON_DATA]
---@field doesHaveStuckVehicleCheck boolean (read-only) [DOES_VEHICLE_HAVE_STUCK_VEHICLE_CHECK]
---@field doesHaveTombstone boolean (read-only) [GET_DOES_VEHICLE_HAVE_TOMBSTONE]
---@field doesHaveWeapons boolean (read-only) [DOES_VEHICLE_HAVE_WEAPONS]
---@field doesTrainStopAtStations boolean (read-only) [DOES_TRAIN_STOP_AT_STATIONS]
---@field doesUseFuel boolean (read-only) [DOES_VEHICLE_USE_FUEL] Checks whether the vehicle consumes fuel. The check is done based on petrol tank volume and vehicle type. Bicycles and vehicles with petrol tank volume equal t…
---@field doorLockStatus integer (read-only) [GET_VEHICLE_DOOR_LOCK_STATUS]
---@field drawnWheelAngleMult number (read-only) [GET_VEHICLE_DRAWN_WHEEL_ANGLE_MULT] Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
---@field driftTyresEnabled boolean [GET_DRIFT_TYRES_ENABLED / SET_DRIFT_TYRES_ENABLED]
---@field engineHealth number [GET_VEHICLE_ENGINE_HEALTH / SET_VEHICLE_ENGINE_HEALTH]
---@field engineTemperature number [GET_VEHICLE_ENGINE_TEMPERATURE / SET_VEHICLE_ENGINE_TEMPERATURE]
---@field entityAttachedToCargobob? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO_CARGOBOB]
---@field entityAttachedToTowTruck? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO_TOW_TRUCK]
---@field enveffScale number [GET_VEHICLE_ENVEFF_SCALE / SET_VEHICLE_ENVEFF_SCALE]
---@field estimatedMaxSpeed number (read-only) [GET_VEHICLE_ESTIMATED_MAX_SPEED] Retrieves a static value representing the estimated max speed of a specific vehicle, including any vehicle mods. This value does not change dynamically during …
---@field flightNozzlePosition number [GET_VEHICLE_FLIGHT_NOZZLE_POSITION / SET_VEHICLE_FLIGHT_NOZZLE_POSITION]
---@field forwardVector vector3 (read-only) [GET_ENTITY_FORWARD_VECTOR]
---@field forwardX number (read-only) [GET_ENTITY_FORWARD_X]
---@field forwardY number (read-only) [GET_ENTITY_FORWARD_Y]
---@field fuelLevel number [GET_VEHICLE_FUEL_LEVEL / SET_VEHICLE_FUEL_LEVEL]
---@field gravityAmount number [GET_VEHICLE_GRAVITY_AMOUNT / SET_VEHICLE_GRAVITY_AMOUNT]
---@field handbrake boolean [GET_VEHICLE_HANDBRAKE / SET_VEHICLE_HANDBRAKE]
---@field hasBeenDamagedByAnyObject boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT]
---@field hasBeenDamagedByAnyPed boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED]
---@field hasBeenDamagedByAnyVehicle boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE]
---@field hasBeenRegisteredWithThisThread boolean (read-only) [NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD]
---@field hasCollidedWithAnything boolean (read-only) [HAS_ENTITY_COLLIDED_WITH_ANYTHING]
---@field hasCollisionLoadedAround boolean (read-only) [HAS_COLLISION_LOADED_AROUND_ENTITY]
---@field hasControl boolean (read-only) [NETWORK_HAS_CONTROL_OF_ENTITY]
---@field hasKers boolean (read-only) [GET_VEHICLE_HAS_KERS]
---@field hasParachute boolean (read-only) [GET_VEHICLE_HAS_PARACHUTE]
---@field hasRetractableWheels boolean (read-only) [GET_HAS_RETRACTABLE_WHEELS]
---@field hasRocketBoost boolean (read-only) [GET_HAS_ROCKET_BOOST]
---@field heading number [GET_ENTITY_HEADING / SET_ENTITY_HEADING]
---@field headingFromEulers number (read-only) [GET_ENTITY_HEADING_FROM_EULERS] Gets the heading of the entity physics in degrees, which tends to be more accurate than just [`GET_ENTITY_HEADING`](#\_0xE83D4F9BA2A38914). This can be clearly…
---@field health integer [GET_ENTITY_HEALTH / SET_ENTITY_HEALTH]
---@field healthPercentage number (read-only) [GET_VEHICLE_HEALTH_PERCENTAGE]
---@field heightAboveGround number (read-only) [GET_ENTITY_HEIGHT_ABOVE_GROUND]
---@field heliMainRotorHealth number [GET_HELI_MAIN_ROTOR_HEALTH / SET_HELI_MAIN_ROTOR_HEALTH]
---@field heliTailBoomHealth number (read-only) [GET_HELI_TAIL_BOOM_HEALTH]
---@field heliTailRotorHealth number [GET_HELI_TAIL_ROTOR_HEALTH / SET_HELI_TAIL_ROTOR_HEALTH]
---@field highGear integer [GET_VEHICLE_HIGH_GEAR / SET_VEHICLE_HIGH_GEAR]
---@field homingLockonState integer (read-only) [GET_VEHICLE_HOMING_LOCKON_STATE]
---@field hornSoundIndex integer (read-only) [GET_VEHICLE_HORN_SOUND_INDEX]
---@field indicatorLights integer (read-only) [GET_VEHICLE_INDICATOR_LIGHTS] Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
---@field interior? fx.Interior (read-only) [GET_INTERIOR_FROM_ENTITY]
---@field invincible boolean (write-only) [SET_ENTITY_INVINCIBLE]
---@field isAlarmActivated boolean (read-only) [IS_VEHICLE_ALARM_ACTIVATED]
---@field isAlarmSet boolean (read-only) [IS_VEHICLE_ALARM_SET]
---@field isAMissionEntity boolean (read-only) [IS_ENTITY_A_MISSION_ENTITY]
---@field isAnObject boolean (read-only) [IS_ENTITY_AN_OBJECT]
---@field isAnyEntityAttachedToHandlerFrame boolean (read-only) [IS_ANY_ENTITY_ATTACHED_TO_HANDLER_FRAME]
---@field isAnyPedRappellingFromHeli boolean (read-only) [IS_ANY_PED_RAPPELLING_FROM_HELI]
---@field isAPed boolean (read-only) [IS_ENTITY_A_PED]
---@field isAttached boolean (read-only) [IS_ENTITY_ATTACHED]
---@field isAttachedToAnyObject boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_OBJECT]
---@field isAttachedToAnyPed boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_PED]
---@field isAttachedToAnyVehicle boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_VEHICLE]
---@field isAttachedToTrailer boolean (read-only) [IS_VEHICLE_ATTACHED_TO_TRAILER]
---@field isAudiblyDamaged boolean (read-only) [IS_VEHICLE_AUDIBLY_DAMAGED]
---@field isAVehicle boolean (read-only) [IS_ENTITY_A_VEHICLE]
---@field isBeingHalted boolean (read-only) [IS_VEHICLE_BEING_HALTED]
---@field isBig boolean (read-only) [IS_BIG_VEHICLE]
---@field isBoatAnchored boolean (read-only) [IS_BOAT_ANCHORED] Checks if a boat is currently anchored. This native is a getter for [SET_BOAT_ANCHOR](#\_0x75DBEC174AEEAD10).
---@field isBoatCapsized boolean (read-only) [GET_IS_BOAT_CAPSIZED] Checks whether the specified boat vehicle is capsized, meaning it has overturned or is upside down in the water.
---@field isConcealed boolean (read-only) [NETWORK_IS_ENTITY_CONCEALED] Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
---@field isDamaged boolean (read-only) [IS_VEHICLE_DAMAGED]
---@field isDead boolean (read-only) [IS_ENTITY_DEAD]
---@field isEmpDisabled boolean (read-only) [GET_IS_VEHICLE_EMP_DISABLED]
---@field isEngineOnFire boolean (read-only) [IS_VEHICLE_ENGINE_ON_FIRE] Only ever used once in decompiled scripts: **am_pi_menu**: Returns true if the engine is on fire, or if the vehicle engine health is < 0 and it **has been** on…
---@field isEngineRunning boolean (read-only) [GET_IS_VEHICLE_ENGINE_RUNNING]
---@field isEngineStarting boolean (read-only) [IS_VEHICLE_ENGINE_STARTING]
---@field isFading boolean (read-only) [NETWORK_IS_ENTITY_FADING]
---@field isFocus boolean (read-only) [IS_ENTITY_FOCUS]
---@field isGhostedToLocalPlayer boolean (read-only) [IS_ENTITY_GHOSTED_TO_LOCAL_PLAYER]
---@field isHeliLandingAreaBlocked boolean (read-only) [IS_HELI_LANDING_AREA_BLOCKED]
---@field isHighDetail boolean (read-only) [IS_VEHICLE_HIGH_DETAIL]
---@field isHornActive boolean (read-only) [IS_HORN_ACTIVE]
---@field isInAir boolean (read-only) [IS_ENTITY_IN_AIR]
---@field isInBurnout boolean (read-only) [IS_VEHICLE_IN_BURNOUT]
---@field isInSubmarineMode boolean (read-only) [IS_VEHICLE_IN_SUBMARINE_MODE]
---@field isInteriorLightOn boolean (read-only) [IS_VEHICLE_INTERIOR_LIGHT_ON]
---@field isInWater boolean (read-only) [IS_ENTITY_IN_WATER]
---@field isLeftHeadlightDamaged boolean (read-only) [GET_IS_LEFT_VEHICLE_HEADLIGHT_DAMAGED]
---@field isLocal boolean (read-only) [NETWORK_GET_ENTITY_IS_LOCAL]
---@field isMercenary boolean (read-only) [GET_VEHICLE_IS_MERCENARY] Returns whether the specified vehicle is designated as a mercenary vehicle
---@field isMissionTrain boolean (read-only) [IS_MISSION_TRAIN]
---@field isNeedsToBeHotwired boolean (read-only) [IS_VEHICLE_NEEDS_TO_BE_HOTWIRED]
---@field isNetworked boolean (read-only) [NETWORK_GET_ENTITY_IS_NETWORKED]
---@field isNitrousActive boolean (read-only) [IS_NITROUS_ACTIVE] Determines if the nitrous is currently activated in the specified vehicle.
---@field isOccluded boolean (read-only) [IS_ENTITY_OCCLUDED]
---@field isOnAllWheels boolean (read-only) [IS_VEHICLE_ON_ALL_WHEELS]
---@field isOnFire boolean (read-only) [IS_ENTITY_ON_FIRE]
---@field isOnScreen boolean (read-only) [IS_ENTITY_ON_SCREEN] Determines whether the screen position of the specified entity is within the 2D bounds of the screen. This native will not check if the entity is not visible d…
---@field isParachuteActive boolean (read-only) [IS_VEHICLE_PARACHUTE_ACTIVE] Does not work for vehicle of type: CBike, CBmx, CBoat, CTrain, CSubmarine.
---@field isPlaneLandingGearIntact boolean (read-only) [IS_PLANE_LANDING_GEAR_INTACT]
---@field isPlaybackGoingOn boolean (read-only) [IS_PLAYBACK_GOING_ON_FOR_VEHICLE]
---@field isPlaybackUsingAiGoingOn boolean (read-only) [IS_PLAYBACK_USING_AI_GOING_ON_FOR_VEHICLE]
---@field isPositionFrozen boolean (read-only) [IS_ENTITY_POSITION_FROZEN] A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---@field isPreviouslyOwnedByPlayer boolean (read-only) [IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER]
---@field isPrimaryColourCustom boolean (read-only) [GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM]
---@field isRadioOn boolean (read-only) [IS_VEHICLE_RADIO_ON]
---@field isRightHeadlightDamaged boolean (read-only) [GET_IS_RIGHT_VEHICLE_HEADLIGHT_DAMAGED]
---@field isRocketBoostActive boolean (read-only) [IS_VEHICLE_ROCKET_BOOST_ACTIVE]
---@field isSearchlightOn boolean (read-only) [IS_VEHICLE_SEARCHLIGHT_ON]
---@field isSecondaryColourCustom boolean (read-only) [GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM]
---@field isShuntBoostActive boolean (read-only) [GET_IS_VEHICLE_SHUNT_BOOST_ACTIVE]
---@field isSirenAudioOn boolean (read-only) [IS_VEHICLE_SIREN_AUDIO_ON]
---@field isSirenOn boolean (read-only) [IS_VEHICLE_SIREN_ON] Returns whether the vehicle's lights and sirens are on.
---@field isSlipstreamLeader boolean (read-only) [IS_VEHICLE_SLIPSTREAM_LEADER]
---@field isSprayable boolean (read-only) [IS_VEHICLE_SPRAYABLE]
---@field isStatic boolean (read-only) [IS_ENTITY_STATIC]
---@field isStolen boolean (read-only) [IS_VEHICLE_STOLEN]
---@field isStopped boolean (read-only) [IS_VEHICLE_STOPPED]
---@field isStoppedAtTrafficLights boolean (read-only) [IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS] This native checks if the given vehicle is stopped at a red or amber traffic light junction, provided the driver's personality is set to not run amber lights.
---@field isStuckOnRoof boolean (read-only) [IS_VEHICLE_STUCK_ON_ROOF]
---@field isTaxiLightOn boolean (read-only) [IS_TAXI_LIGHT_ON]
---@field isUpsidedown boolean (read-only) [IS_ENTITY_UPSIDEDOWN]
---@field isVisible boolean (read-only) [IS_VEHICLE_VISIBLE]
---@field isVisibleToScript boolean (read-only) [IS_ENTITY_VISIBLE_TO_SCRIPT]
---@field isWaitingForWorldCollision boolean (read-only) [IS_ENTITY_WAITING_FOR_WORLD_COLLISION]
---@field isWanted boolean (read-only) [IS_VEHICLE_WANTED]
---@field isWaypointPlaybackGoingOn boolean (read-only) [IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE]
---@field isWheelsLoweredStateActive boolean (read-only) [GET_IS_WHEELS_LOWERED_STATE_ACTIVE]
---@field keyForInRoom integer (read-only) [GET_KEY_FOR_ENTITY_IN_ROOM]
---@field landingGearState integer (read-only) [GET_LANDING_GEAR_STATE] Landing gear state 2 is never used.
---@field lastMaterialHit integer (read-only) [GET_LAST_MATERIAL_HIT_BY_ENTITY]
---@field lastRammed? fx.Vehicle (read-only) [GET_LAST_RAMMED_VEHICLE]
---@field lastVelocityReceived vector3 (read-only) [NETWORK_GET_LAST_VELOCITY_RECEIVED]
---@field layoutHash integer (read-only) [GET_VEHICLE_LAYOUT_HASH]
---@field lightMultiplier number [GET_VEHICLE_LIGHT_MULTIPLIER / SET_VEHICLE_LIGHT_MULTIPLIER]
---@field livery integer [GET_VEHICLE_LIVERY / SET_VEHICLE_LIVERY]
---@field liveryCount integer (read-only) [GET_VEHICLE_LIVERY_COUNT]
---@field lodDist integer [GET_ENTITY_LOD_DIST / SET_ENTITY_LOD_DIST]
---@field maxBraking number (read-only) [GET_VEHICLE_MAX_BRAKING]
---@field maxHealth integer [GET_ENTITY_MAX_HEALTH / SET_ENTITY_MAX_HEALTH]
---@field maxNumberOfPassengers integer (read-only) [GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS]
---@field maxTraction number (read-only) [GET_VEHICLE_MAX_TRACTION]
---@field modColor2Name string (read-only) [GET_VEHICLE_MOD_COLOR_2_NAME]
---@field model fx.Model (read-only) [GET_ENTITY_MODEL] Returns the model hash from an entity.
---@field modKit integer [GET_VEHICLE_MOD_KIT / SET_VEHICLE_MOD_KIT]
---@field modKitType integer (read-only) [GET_VEHICLE_MOD_KIT_TYPE]
---@field nearestPlayer? fx.Player (read-only) [GET_NEAREST_PLAYER_TO_ENTITY]
---@field netScriptId integer (read-only) [NETWORK_GET_ENTITY_NET_SCRIPT_ID]
---@field networkId integer (read-only) [NETWORK_GET_NETWORK_ID_FROM_ENTITY] Get the network id of the given entity An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconvert…
---@field nextGear integer [GET_VEHICLE_NEXT_GEAR / SET_VEHICLE_NEXT_GEAR]
---@field numberOfBrokenBones integer (read-only) [GET_VEHICLE_NUMBER_OF_BROKEN_BONES]
---@field numberOfBrokenOffBones integer (read-only) [GET_VEHICLE_NUMBER_OF_BROKEN_OFF_BONES]
---@field numberOfColours integer (read-only) [GET_NUMBER_OF_VEHICLE_COLOURS]
---@field numberOfDoors integer (read-only) [GET_NUMBER_OF_VEHICLE_DOORS]
---@field numberOfPassengers integer (read-only) [GET_VEHICLE_NUMBER_OF_PASSENGERS]
---@field numberOfWheels integer (read-only) [GET_VEHICLE_NUMBER_OF_WHEELS]
---@field numberPlateText string [GET_VEHICLE_NUMBER_PLATE_TEXT / SET_VEHICLE_NUMBER_PLATE_TEXT]
---@field numberPlateTextIndex fx.Enum.VehiclePlateIndicies|integer [GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX / SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX]
---@field numModKits integer (read-only) [GET_NUM_MOD_KITS]
---@field objectIndexFromIndex? fx.Object (read-only) [GET_OBJECT_INDEX_FROM_ENTITY_INDEX]
---@field oilLevel number [GET_VEHICLE_OIL_LEVEL / SET_VEHICLE_OIL_LEVEL]
---@field owner integer (read-only) [NETWORK_GET_ENTITY_OWNER] Returns the owner ID of the specified entity.
---@field pedIndexFromIndex? fx.Ped (read-only) [GET_PED_INDEX_FROM_ENTITY_INDEX]
---@field petrolTankHealth number [GET_VEHICLE_PETROL_TANK_HEALTH / SET_VEHICLE_PETROL_TANK_HEALTH]
---@field pitch number (read-only) [GET_ENTITY_PITCH]
---@field plateType fx.Enum.VehiclePlateType (read-only) [GET_VEHICLE_PLATE_TYPE] Returns the plates a vehicle has. Motorcycles with no visible plates will sometimes return a 2 for unknown reasons.
---@field populationType integer (read-only) [GET_ENTITY_POPULATION_TYPE] A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
---@field position vector3 [GET_ENTITY_COORDS / SET_ENTITY_COORDS] Entity position. Assigning calls SET_ENTITY_COORDS without flags (alive/dead/ragdoll/clearArea = false); use setCoords for the flags. Gets the current coordina…
---@field positionInRecording number (read-only) [GET_POSITION_IN_RECORDING]
---@field remainingNitrousDuration number (read-only) [GET_REMAINING_NITROUS_DURATION] Retrieves the remaining duration of nitrous boost available for the specified vehicle.
---@field roll number (read-only) [GET_ENTITY_ROLL]
---@field roofLivery integer [GET_VEHICLE_ROOF_LIVERY / SET_VEHICLE_ROOF_LIVERY] Returns index of the current vehicle's rooftop livery. A getter for [\_SET_VEHICLE_ROOF_LIVERY](#\_0xA6D3A8750DC73270).
---@field roofLiveryCount integer (read-only) [GET_VEHICLE_ROOF_LIVERY_COUNT] Returns a number of available rooftop liveries, or -1 if vehicle has no rooftop liveries available.
---@field roomKey integer (read-only) [GET_ROOM_KEY_FROM_ENTITY]
---@field rotationVelocity vector3 (read-only) [GET_ENTITY_ROTATION_VELOCITY]
---@field speed number (read-only) [GET_ENTITY_SPEED] Get the speed of a entity.
---@field steeringAngle number [GET_VEHICLE_STEERING_ANGLE / SET_VEHICLE_STEERING_ANGLE]
---@field steeringScale number [GET_VEHICLE_STEERING_SCALE / SET_VEHICLE_STEERING_SCALE]
---@field submarineIsUnderDesignDepth boolean (read-only) [GET_SUBMARINE_IS_UNDER_DESIGN_DEPTH] Determines if the submarine is operating below its designated crush depth.
---@field submarineNumberOfAirLeaks integer (read-only) [GET_SUBMARINE_NUMBER_OF_AIR_LEAKS] Checks if a Submarine has any air leaks, when there is more than 4 the player will drown.
---@field submergedLevel number (read-only) [GET_ENTITY_SUBMERGED_LEVEL]
---@field suspensionHeight number [GET_VEHICLE_SUSPENSION_HEIGHT / SET_VEHICLE_SUSPENSION_HEIGHT]
---@field throttleOffset number (read-only) [GET_VEHICLE_THROTTLE_OFFSET]
---@field timePositionInRecording number (read-only) [GET_TIME_POSITION_IN_RECORDING]
---@field topSpeedModifier number (read-only) [GET_VEHICLE_TOP_SPEED_MODIFIER] A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
---@field trainCruiseSpeed number [GET_TRAIN_CRUISE_SPEED / SET_TRAIN_CRUISE_SPEED] Gets the trains desired speed.
---@field trainCurrentTrackNode integer (read-only) [GET_TRAIN_CURRENT_TRACK_NODE]
---@field trainDirection boolean (read-only) [GET_TRAIN_DIRECTION] Gets the direction the train is facing
---@field trainDoorCount integer (read-only) [GET_TRAIN_DOOR_COUNT] Gets the door count for the specified train.
---@field trainSpeed number [GET_TRAIN_SPEED / SET_TRAIN_SPEED] Gets the speed the train is currently going.
---@field trainState integer [GET_TRAIN_STATE / SET_TRAIN_STATE]
---@field trainTrackIndex integer (read-only) [GET_TRAIN_TRACK_INDEX]
---@field turboPressure number [GET_VEHICLE_TURBO_PRESSURE / SET_VEHICLE_TURBO_PRESSURE]
---@field type integer (read-only) [GET_ENTITY_TYPE]
---@field typeRaw fx.Enum.VehicleType (read-only) [GET_VEHICLE_TYPE_RAW] Returns the model type of the vehicle as defined by:
---@field tyresCanBurst boolean [GET_VEHICLE_TYRES_CAN_BURST / SET_VEHICLE_TYRES_CAN_BURST]
---@field uprightValue number (read-only) [GET_ENTITY_UPRIGHT_VALUE]
---@field vehicleIndexFromIndex? fx.Vehicle (read-only) [GET_VEHICLE_INDEX_FROM_ENTITY_INDEX]
---@field vehicleType string (read-only) [GET_VEHICLE_TYPE] Returns the type of the passed vehicle. For client scripts, reference the more detailed [GET_VEHICLE_TYPE_RAW](#\_0xDE73BC10) native. ### Vehicle types * autom…
---@field velocity vector3 [GET_ENTITY_VELOCITY / SET_ENTITY_VELOCITY]
---@field waypointProgress integer (read-only) [GET_VEHICLE_WAYPOINT_PROGRESS]
---@field waypointTargetPoint integer (read-only) [GET_VEHICLE_WAYPOINT_TARGET_POINT]
---@field wheelieState integer [GET_VEHICLE_WHEELIE_STATE / SET_VEHICLE_WHEELIE_STATE] List of known states:
---@field wheelSize number (read-only) [GET_VEHICLE_WHEEL_SIZE] Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle). Only works on non-default wheels (returns 0 in …
---@field wheelType fx.Enum.VehicleWheelType [GET_VEHICLE_WHEEL_TYPE / SET_VEHICLE_WHEEL_TYPE]
---@field wheelWidth number (read-only) [GET_VEHICLE_WHEEL_WIDTH] Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle). Only works on non-default wheels (returns 0 i…
---@field windowTint fx.Enum.WindowTints|integer [GET_VEHICLE_WINDOW_TINT / SET_VEHICLE_WINDOW_TINT]
---@field xenonLightsColor fx.Enum.HeadlightColors [GET_VEHICLE_XENON_LIGHTS_COLOR / SET_VEHICLE_XENON_LIGHTS_COLOR] Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle. You must enable xenon headlights for this native to w…
local Vehicle = {}

---Reads the vehicle properties, by group (every group when `groups` is nil). Plain values: store them as JSON,
---send them in an event, give them back to setProperties.
---@param groups? fx.VehiclePropertyGroup[]
---@return fx.VehicleProperties
function Vehicle:getProperties(groups) end

---Applies properties: only the groups and keys present are applied, in the right order (wheel type, mods, colours,
---extras, damage, details). Immediate: this client must control the vehicle (error in debug mode otherwise), or the
---owner overwrites the values. Unknown keys raise.
---@param props fx.VehicleProperties
---@return fx.Vehicle
function Vehicle:setProperties(props) end

---Takes network control (takeControlAsync), then calls setProperties. Never yields.
---@param props fx.VehicleProperties
---@param timeoutMs? integer
---@return fx.Promise<fx.Vehicle>
function Vehicle:setPropertiesAsync(props, timeoutMs) end

---Loads the model, creates a ped in a seat of the vehicle (CREATE_PED_INSIDE_VEHICLE), releases the model, then
---waits for `readyAsync()`. Never yields.
---```lua
---local driver <const> = veh:createPedInsideAsync("s_m_y_cop_01", -1):await()
---driver:taskVehicleDriveWander(veh, 20.0, 786603)
---```
---@param model fx.Model|integer|string
---@param seat? integer -1 driver (default), 0 front passenger, 1 and up the back seats
---@param options? fx.PedCreateOptions
---@return fx.Promise<fx.Ped>
function Vehicle:createPedInsideAsync(model, seat, options) end

---Promise resolved with the entity once it really exists (and, if networked, once it has a network id).
---Rejects with a TimeoutError after `timeoutMs` (default 10000). Works on any wrapper.
---@param timeoutMs? integer
---@return fx.Promise<fx.Vehicle>
function Vehicle:readyAsync(timeoutMs) end

---Requests network control until it is granted, and resolves with the entity. Never yields.
---Resolves at once for a local (non-networked) entity or one already controlled. Rejects with a TimeoutError
---after `timeoutMs` (default 10000), or with an Error if the entity disappears.
---@param timeoutMs? integer
---@return fx.Promise<fx.Vehicle>
function Vehicle:takeControlAsync(timeoutMs) end

---Requests the collision around the entity until it is loaded, and resolves with the entity. Never yields.
---Use it after a teleport, before unfreezing the entity, so that it does not fall through the map.
---@param timeoutMs? integer
---@return fx.Promise<fx.Vehicle>
function Vehicle:loadCollisionAsync(timeoutMs) end

---Escape hatch: calls any native (including unnamed ones) with the handle as first argument.
---@param hash integer
---@param ... any
---@return any
function Vehicle:invoke(hash, ...) end

---Moves the entity, holding it frozen until the collision around it is loaded, so it does not fall through the map.
---Never yields. This client must control the entity (the local player ped, or after `takeControlAsync`).
---```lua
---Player.ped:teleportAsync(fx.Hud.waypoint, { ground = true }):await()
---```
---@param position vector3|vector4
---@param options? fx.TeleportOptions
---@return fx.Promise<fx.Vehicle>
function Vehicle:teleportAsync(position, options) end

--- **Native**: `ACTIVATE_PHYSICS` (`0x710311ADF0E20730`)
---@return fx.Vehicle self
function Vehicle:activatePhysics() end

--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
--- Can be used for objects, vehicles and peds.
---
--- Example of enemy:
--- ![enemy](https://i.imgur.com/fl78svv.png)
--- Example of friend:
--- ![friend](https://i.imgur.com/Q16ho5d.png)
--- **Native**: `ADD_BLIP_FOR_ENTITY` (`0x5CDE92C702A8FCE7`)
---@return fx.Blip? result A blip.
function Vehicle:addBlip() end

--- ```
--- boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone.
--- ```
--- **Native**: `ADD_VEHICLE_CREW_EMBLEM` (`0x428BDCB9DA58DA53`)
---@param ped fx.Ped|integer
---@param boneIndex integer
---@param x1 number
---@param x2 number
---@param x3 number
---@param y1 number
---@param y2 number
---@param y3 number
---@param z1 number
---@param z2 number
---@param z3 number
---@param scale number
---@param p13 any
---@param alpha integer
---@return boolean result
function Vehicle:addCrewEmblem(ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha) end

--- ```
--- Example:
--- GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");
--- I tried this and nothing happened...
--- ```
--- **Native**: `ADD_ENTITY_ICON` (`0x9CD43EEE12BF4DD0`)
---@param icon string
---@return any result
function Vehicle:addIcon(icon) end

--- **Native**: `ADD_VEHICLE_PHONE_EXPLOSIVE_DEVICE` (`0x99AD4CCCB128CBC9`)
---@return fx.Vehicle self
function Vehicle:addPhoneExplosiveDevice() end

--- ```
--- All found occurrences in b678d:
--- pastebin.com/ceu67jz8
--- ```
--- **Native**: `ADD_ENTITY_TO_AUDIO_MIX_GROUP` (`0x153973AB99FE8980`)
---@param groupName string
---@param fadeIn number
---@return fx.Vehicle self
function Vehicle:addToAudioMixGroup(groupName, fadeIn) end

--- Adds an entity to a network synchronised scene.
--- **Native**: `NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE` (`0xF2404D68CBC855FA`)
---@param netScene integer Which network scene to add this entity to (Returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#\_0x7CD6BC4C2BBDD526))
---@param animDict string Animation dictionary to play on this entity.
---@param animName string Animation clip from the dictionary to play on this entity.
---@param blendIn number Blend in speed of the animation. Default is `8.0`.
---@param blendOut number Blend out speed of the animation. Default is `-8.0`.
---@param flag integer Synchronized scene flags. See [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9) for more info.
---@return fx.Vehicle self
function Vehicle:addToSynchronisedScene(netScene, animDict, animName, blendIn, blendOut, flag) end

--- **Native**: `ADD_VEHICLE_UPSIDEDOWN_CHECK` (`0xB72E26D81006005B`)
---@return fx.Vehicle self
function Vehicle:addUpsidedownCheck() end

--- This native it's a debug native. Won't do anything.
--- **Native**: `ALLOW_AMBIENT_VEHICLES_TO_AVOID_ADVERSE_CONDITIONS` (`0xB264C4D2F2B0A78B`)
---@return fx.Vehicle self
function Vehicle:allowAmbientVehiclesToAvoidAdverseConditions() end

--- Allows scripts to use attachment commands on entities (eg. [`ATTACH_ENTITY_TO_ENTITY`](#\_0x6B9BBD38AB0796DF)) that are not controlled by the client.
---
--- **Note:** This is only local and does not affect entities on other machines. This is used by the ferris wheel script to sync players on carts.
--- **Native**: `NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION` (`0x267C78C60E806B9A`)
---@param toggle boolean true/false.
---@return fx.Vehicle self
function Vehicle:allowRemoteAttachmentModification(toggle) end

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
---@return fx.Vehicle self
function Vehicle:applyForce(forceType, coords, off, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

--- **Native**: `APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS` (`0x18FF00FC7EFF559E`)
---@param forceType integer Refer to [APPLY_FORCE_TO_ENTITY](#\_0xC5F68BE9613E2D18)
---@param coords vector3
---@param p5 boolean
---@param isDirectionRel boolean
---@param isForceRel boolean
---@param p8 boolean
---@return fx.Vehicle self
function Vehicle:applyForceToCenterOfMass(forceType, coords, p5, isDirectionRel, isForceRel, p8) end

--- Queries whether the control panels of a plane are intact. This native is used to determine the operational status of a plane's cockpit controls, which can affect the plane's flyability.
--- **Native**: `ARE_PLANE_CONTROL_PANELS_INTACT` (`0xF78F94D60248C737`)
---@param checkForZeroHealth boolean If set to `true`, the native also checks if the plane's health is zero, indicating it is completely destroyed. If `false`, only the state of the control panels is considered.
---@return boolean result Returns `true` if the plane's control panels are intact, and, depending on the `checkForZeroHealth` parameter, the plane is not completely destroyed. Returns `false` if the control panels are damaged…
function Vehicle:arePlaneControlPanelsIntact(checkForZeroHealth) end

--- **Native**: `ATTACH_ENTITY_BONE_TO_ENTITY_BONE` (`0x5C48B75732C8456C`)
---@param entity2 fx.Entity|integer
---@param entityBone integer
---@param entityBone2 integer
---@param p4 boolean
---@param p5 boolean
---@return fx.Vehicle self
function Vehicle:attachBoneToEntityBone(entity2, entityBone, entityBone2, p4, p5) end

--- **Native**: `ATTACH_ENTITY_BONE_TO_ENTITY_BONE_PHYSICALLY` (`0xFD1695C5D3B05439`)
---@param entity2 fx.Entity|integer
---@param entityBone integer
---@param entityBone2 integer
---@param p4 boolean
---@param p5 boolean
---@return fx.Vehicle self
function Vehicle:attachBoneToEntityBonePhysically(entity2, entityBone, entityBone2, p4, p5) end

--- **Native**: `ATTACH_CONTAINER_TO_HANDLER_FRAME` (`0x6A98C2ECF57FA5D4`)
---@param container fx.Entity|integer
---@return fx.Vehicle self
function Vehicle:attachContainerToHandlerFrame(container) end

--- **Native**: `ATTACH_ENTITY_TO_CARGOBOB` (`0xA1DD82F3CCF9A01E`)
---@param entity fx.Entity|integer
---@param p2 integer
---@param coords vector3
---@return fx.Vehicle self
function Vehicle:attachEntityToCargobob(entity, p2, coords) end

--- **Native**: `ATTACH_VEHICLE_ON_TO_TRAILER` (`0x16B5E274BDE402F8`)
---@param trailer fx.Vehicle|integer The trailer to attach the vehicle to
---@param offset vector3 The offset of the vehicle
---@param coords vector3 The coords of where you want the vehicle placed (must be an offset from the trailer itself)
---@param rotation vector3 The rotation of where you want the vehicle placed
---@param disableColls number Should actually be a boolean, this will disable the collision between the vehicle you're attaching and the trailer
---@return fx.Vehicle self
function Vehicle:attachOnToTrailer(trailer, offset, coords, rotation, disableColls) end

--- **Native**: `ATTACH_VEHICLE_TO_CARGOBOB` (`0x4127F1D84E347769`)
---@param vehicle fx.Vehicle|integer The vehicle that will be attached
---@param vehicleBoneIndex integer A Vehicle bone the hook/magnet should attach to or -1 for none/default [GET_ENTITY_BONE_INDEX_BY_NAME](#\_0xFB71170B7E76ACBA)
---@param coords vector3 hook/magnet Offset
---@return fx.Vehicle self
function Vehicle:attachToCargobob(vehicle, vehicleBoneIndex, coords) end

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
---@return fx.Vehicle self
function Vehicle:attachToEntity(entity2, boneIndex, pos, rot, p9, useSoftPinning, collision, isPed, rotationOrder, syncRot) end

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
---@return fx.Vehicle self
function Vehicle:attachToEntityPhysically(entity2, boneIndex1, boneIndex2, pos1, pos2, rot, breakForce, fixedRot, p15, collision, teleport, p18) end

--- ```
--- HookOffset defines where the hook is attached. leave at 0 for default attachment.
--- ```
--- **Native**: `ATTACH_VEHICLE_TO_TOW_TRUCK` (`0x29A16F8D621C4508`)
---@param vehicle fx.Vehicle|integer
---@param rear boolean
---@param hookOffset vector3
---@return fx.Vehicle self
function Vehicle:attachToTowTruck(vehicle, rear, hookOffset) end

--- **Native**: `ATTACH_VEHICLE_TO_TRAILER` (`0x3C7D42D58F770B54`)
---@param trailer fx.Vehicle|integer
---@param radius number
---@return fx.Vehicle self
function Vehicle:attachToTrailer(trailer, radius) end

--- ```
--- Might be more appropriate in AUDIO?
--- ```
--- **Native**: `ATTACH_TV_AUDIO_TO_ENTITY` (`0x845BAD77CC770633`)
---@return fx.Vehicle self
function Vehicle:attachTvAudio() end

--- Plays a siren blip from the vehicle when you double press the horn key.
---
--- This only works on vehicles with sirens.
--- **Native**: `BLIP_SIREN` (`0x1B9025BDA76822B6`)
---@return fx.Vehicle self
function Vehicle:blipSiren() end

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
---@return fx.Vehicle self
function Vehicle:breakGlass(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- Break off vehicle wheel by index. The `leaveDebrisTrail` flag requires `putOnFire` to be true.
--- **Native**: `BREAK_OFF_VEHICLE_WHEEL` (`0xA274CADB`)
---@param wheelIndex integer The wheel index.
---@param leaveDebrisTrail boolean Start "veh_debris_trail" ptfx.
---@param deleteWheel boolean True to delete wheel, otherwise detach.
---@param unknownFlag boolean Unknown flag.
---@param putOnFire boolean Set wheel on fire once detached.
---@return fx.Vehicle self
function Vehicle:breakOffWheel(wheelIndex, leaveDebrisTrail, deleteWheel, unknownFlag, putOnFire) end

--- This native makes the vehicle stop immediately, as it happens when we enter a multiplayer garage.
--- **Native**: `BRING_VEHICLE_TO_HALT` (`0x260BE8F09E326A20`)
---@param distance number The distance from the initial coords at which the vehicle should come to rest.
---@param duration integer The length of time in seconds to hold the car at rest after stopping.
---@param bControlVerticalVelocity boolean `false` by default which allows gravity to act normally in the z direction. Enable this option to halt the vehicle's vertical velocity as well.
---@return fx.Vehicle self
function Vehicle:bringToHalt(distance, duration, bControlVerticalVelocity) end

--- Determines whether the specified Cargobob can pick up a given entity.
--- **Native**: `CAN_CARGOBOB_PICK_UP_ENTITY` (`0x2C1D8B3B19E517CC`)
---@param entity fx.Entity|integer The entity to be checked for pick-up.
---@return boolean result Returns `true` if the Cargobob can pick up the specified entity, `false` otherwise.
function Vehicle:canCargobobPickUpEntity(entity) end

--- **Native**: `CAN_SHUFFLE_SEAT` (`0x30785D90C956BF35`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean result
function Vehicle:canShuffleSeat(seatIndex) end

--- **Native**: `CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK` (`0x439E9BC95B7E7FBE`)
---@return boolean result
function Vehicle:cellCamIsCharVisibleNoFaceCheck() end

--- **Native**: `CLEAR_VEHICLE_CUSTOM_PRIMARY_COLOUR` (`0x55E1D2758F34E437`)
---@return fx.Vehicle self
function Vehicle:clearCustomPrimaryColour() end

--- **Native**: `CLEAR_VEHICLE_CUSTOM_SECONDARY_COLOUR` (`0x5FFBDEEC3E8E2009`)
---@return fx.Vehicle self
function Vehicle:clearCustomSecondaryColour() end

--- Immediately removes entity from an interior. Like sets entity to `limbo` room.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `CLEAR_INTERIOR_FOR_ENTITY` (`0x85D5422B2039A70D`)
---@return fx.Vehicle self
function Vehicle:clearInterior() end

--- This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
--- **Native**: `CLEAR_ENTITY_LAST_DAMAGE_ENTITY` (`0xA72CD9CA74A5ECBA`)
---@return fx.Vehicle self
function Vehicle:clearLastDamageEntity() end

--- **Native**: `CLEAR_ENTITY_LAST_WEAPON_DAMAGE` (`0xAC678E40BE7C74D2`)
---@return fx.Vehicle self
function Vehicle:clearLastWeaponDamage() end

--- ```
--- NativeDB Introduced: 3095
--- ```
---
--- Resets or clears the nitrous system for a specified vehicle. You can check if a vehicle has nitrous with [`IS_NITROUS_ACTIVE`](#\_0x491E822B2C464FE4)
--- **Native**: `CLEAR_NITROUS` (`0xC889AE921400E1ED`)
---@return fx.Vehicle self
function Vehicle:clearNitrous() end

--- **Native**: `CLEAR_ROOM_FOR_ENTITY` (`0xB365FC0C4E27FFA7`)
---@return fx.Vehicle self
function Vehicle:clearRoom() end

--- **Native**: `CLEAR_VEHICLE_ROUTE_HISTORY` (`0x6D6AF961B72728AE`)
---@return fx.Vehicle self
function Vehicle:clearRouteHistory() end

--- ```
--- CLEAR_*
---
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `CLEAR_VEHICLE_TASKS` (`0xDBBC7A2432524127`)
---@return fx.Vehicle self
function Vehicle:clearTasks() end

--- Removes vehicle xenon lights custom RGB color.
--- **Native**: `CLEAR_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR` (`0x2867ED8C`)
---@return fx.Vehicle self
function Vehicle:clearXenonLightsCustomColor() end

--- **Native**: `CLOSE_BOMB_BAY_DOORS` (`0x3556041742A0DC74`)
---@return fx.Vehicle self
function Vehicle:closeBombBayDoors() end

--- **Native**: `NETWORK_CONCEAL_ENTITY` (`0x1632BE0AC1E62876`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:conceal(toggle) end

--- ```
--- Works for vehicles with a retractable landing gear
--- landing gear states:
--- 0: Deployed
--- 1: Closing
--- 2: Opening
--- 3: Retracted
--- ```
--- **Native**: `CONTROL_LANDING_GEAR` (`0xCFC8BE9A5E1FE575`)
---@param state integer
---@return fx.Vehicle self
function Vehicle:controlLandingGear(state) end

--- Copies sourceVehicle's damage (broken bumpers, broken lights, etc.) to targetVehicle.
--- **Native**: `COPY_VEHICLE_DAMAGES` (`0xE44A982368A4AF23`)
---@param targetVehicle fx.Vehicle|integer The target to paste the vehicle damage.
---@return fx.Vehicle self
function Vehicle:copyDamages(targetVehicle) end

--- **Native**: `CREATE_PED_INSIDE_VEHICLE` (`0x7DD959874C1FD534`)
---@param pedType integer See [`CREATE_PED`](#\_0xD49F9B0955C367DE)
---@param modelHash fx.Model|integer|string
---@param seat fx.Enum.SeatPosition|integer
---@param isNetwork boolean
---@param bScriptHostPed boolean
---@return fx.Ped? result
function Vehicle:createPedInside(pedType, modelHash, seat, isNetwork, bScriptHostPed) end

--- Drops the Hook/Magnet on a cargobob
---
--- ```cpp
--- enum eCargobobHook
--- {
--- 	CARGOBOB_HOOK = 0,
--- 	CARGOBOB_MAGNET = 1,
--- };
--- ```
--- **Native**: `CREATE_PICK_UP_ROPE_FOR_CARGOBOB` (`0x7BEB0C7A235F6F3B`)
---@param state fx.Enum.CargobobHook|integer
---@return fx.Vehicle self
function Vehicle:createPickUpRopeForCargobob(state) end

--- **Native**: `CREATE_RANDOM_PED_AS_DRIVER` (`0x9B62392B474F44A0`)
---@param returnHandle boolean
---@return fx.Ped? result
function Vehicle:createRandomPedAsDriver(returnHandle) end

--- ```
--- Returns whether or not the specified property is set for the entity.
--- ```
--- **Native**: `DECOR_EXIST_ON` (`0x05661B80A8C9165F`)
---@param propertyName string
---@return boolean result
function Vehicle:decorExistOn(propertyName) end

--- **Native**: `DECOR_GET_BOOL` (`0xDACE671663F2F5DB`)
---@param propertyName string
---@return boolean result
function Vehicle:decorGetBool(propertyName) end

--- **Native**: `DECOR_GET_FLOAT` (`0x6524A2F114706F43`)
---@param propertyName string
---@return number result
function Vehicle:decorGetFloat(propertyName) end

--- **Native**: `DECOR_GET_INT` (`0xA06C969B02A97298`)
---@param propertyName string
---@return integer result
function Vehicle:decorGetInt(propertyName) end

--- **Native**: `DECOR_REMOVE` (`0x00EE9F297C738720`)
---@param propertyName string
---@return boolean result
function Vehicle:decorRemove(propertyName) end

--- ```
--- This function sets metadata of type bool to specified entity.
--- ```
--- **Native**: `DECOR_SET_BOOL` (`0x6B1E8E2ED1335B71`)
---@param propertyName string
---@param value boolean
---@return boolean result
function Vehicle:decorSetBool(propertyName, value) end

--- **Native**: `DECOR_SET_FLOAT` (`0x211AB1DD8D0F363A`)
---@param propertyName string
---@param value number
---@return boolean result
function Vehicle:decorSetFloat(propertyName, value) end

--- ```
--- Sets property to int.
--- ```
--- **Native**: `DECOR_SET_INT` (`0x0CE3AA5E1CA19E10`)
---@param propertyName string
---@param value integer
---@return boolean result
function Vehicle:decorSetInt(propertyName, value) end

--- **Native**: `DECOR_SET_TIME` (`0x95AED7B8E39ECAA4`)
---@param propertyName string
---@param timestamp integer
---@return boolean result
function Vehicle:decorSetTime(propertyName, timestamp) end

--- ```
--- Deletes a vehicle.
--- The vehicle must be a mission entity to delete, so call this before deleting: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);
--- eg how to use:
--- SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);
--- DELETE_VEHICLE(&vehicle);
--- Deletes the specified vehicle, then sets the handle pointed to by the pointer to NULL.
--- ```
--- **Native**: `DELETE_VEHICLE` (`0xEA386986E786A54F`)
---@return nil
function Vehicle:delete() end

--- Used to delete mission trains created with [`CREATE_MISSION_TRAIN`](#\_0x63C6CCA8E68AE8C8).
--- **Native**: `DELETE_MISSION_TRAIN` (`0x5B76B14AE875C795`)
---@return fx.Vehicle self
function Vehicle:deleteMissionTrain() end

--- **Native**: `DETACH_ENTITY` (`0x961AC54BF0613F5D`)
---@param dynamic boolean Set to `true` to keep velocity after detaching
---@param collision boolean
---@return fx.Vehicle self
function Vehicle:detach(dynamic, collision) end

--- **Native**: `DETACH_CONTAINER_FROM_HANDLER_FRAME` (`0x7C0043FDFF6436BC`)
---@return fx.Vehicle self
function Vehicle:detachContainerFromHandlerFrame() end

--- Detaches the specified entity currently being carried by a Cargobob.
--- **Native**: `DETACH_ENTITY_FROM_CARGOBOB` (`0xAF03011701811146`)
---@param entity fx.Entity|integer The entity to be detached.
---@return any result
function Vehicle:detachEntityFromCargobob(entity) end

--- **Native**: `DETACH_VEHICLE_FROM_ANY_CARGOBOB` (`0xADF7BE450512C12F`)
---@return boolean result
function Vehicle:detachFromAnyCargobob() end

--- **Native**: `DETACH_VEHICLE_FROM_ANY_TOW_TRUCK` (`0xD0E9CE05A1E68CD8`)
---@return boolean result
function Vehicle:detachFromAnyTowTruck() end

--- **Native**: `DETACH_VEHICLE_FROM_CARGOBOB` (`0x0E21D3DF1051399D`)
---@param vehicle fx.Vehicle|integer
---@return fx.Vehicle self
function Vehicle:detachFromCargobob(vehicle) end

--- ```
--- First two parameters swapped. Scripts verify that towTruck is the first parameter, not the second.
--- ```
--- **Native**: `DETACH_VEHICLE_FROM_TOW_TRUCK` (`0xC2DB6B6708350ED8`)
---@param vehicle fx.Vehicle|integer
---@return fx.Vehicle self
function Vehicle:detachFromTowTruck(vehicle) end

--- **Native**: `DETACH_VEHICLE_FROM_TRAILER` (`0x90532EDF0D2BDD86`)
---@return fx.Vehicle self
function Vehicle:detachFromTrailer() end

--- **Native**: `DISABLE_CAM_COLLISION_FOR_ENTITY` (`0x2AED6301F67007D5`)
---@return fx.Vehicle self
function Vehicle:disableCamCollision() end

--- **Native**: `DISABLE_CAM_COLLISION_FOR_OBJECT` (`0x49482F9FCD825AAA`)
---@return fx.Vehicle self
function Vehicle:disableCamCollisionForObject() end

--- **Native**: `DISABLE_INDIVIDUAL_PLANE_PROPELLER` (`0x500873A45724C863`)
---@param propeller integer
---@return fx.Vehicle self
function Vehicle:disableIndividualPlanePropeller(propeller) end

--- **Native**: `DISABLE_VEHICLE_NEON_LIGHTS` (`0x83F813570FF519DE`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:disableNeonLights(toggle) end

--- **Native**: `DISABLE_PLANE_AILERON` (`0x23428FC53C60919C`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Vehicle self
function Vehicle:disablePlaneAileron(p1, p2) end

--- **Native**: `DISABLE_VEHICLE_TURRET_MOVEMENT_THIS_FRAME` (`0x32CAEDF24A583345`)
---@return fx.Vehicle self
function Vehicle:disableTurretMovementThisFrame() end

--- Disables collision for this vehicle (maybe it also supports other entities, not sure).
--- Only world/building/fixed world objects will have their collisions disabled, props, peds, or any other entity still collides with the vehicle.
---
--- [Example video](https://streamable.com/6n45d5)
---
--- Not sure if there is a native (and if so, which one) that resets the collisions.
--- **Native**: `DISABLE_VEHICLE_WORLD_COLLISION` (`0x75627043C6AA90AD`)
---@return fx.Vehicle self
function Vehicle:disableWorldCollision() end

--- **Native**: `DOES_ENTITY_BELONG_TO_THIS_SCRIPT` (`0xDDE6DF5AE89981D2`)
---@param p2 boolean
---@return boolean result
function Vehicle:doesBelongToThisScript(p2) end

--- ```
--- Checks via CVehicleModelInfo
--- ```
--- **Native**: `DOES_EXTRA_EXIST` (`0x1262D55792428154`)
---@param extraId integer
---@return boolean result
function Vehicle:doesExtraExist(extraId) end

--- **Native**: `DOES_VEHICLE_HAVE_CREW_EMBLEM` (`0x060D935D3981A275`)
---@param p1 integer
---@return boolean result
function Vehicle:doesHaveCrewEmblem(p1) end

--- ```
--- Checks if vehicle tyre at index exists. Also returns false if tyre was removed.
--- ```
---
--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `DOES_VEHICLE_TYRE_EXIST` (`0x534E36D4DB9ECC5D`)
---@param tyreIndex integer
---@return boolean result
function Vehicle:doesTyreExist(tyreIndex) end

--- **Native**: `EJECT_JB700_ROOF` (`0xE38CB9D7D39FDBCC`)
---@param coords vector3
---@return fx.Vehicle self
function Vehicle:ejectJb700Roof(coords) end

--- Will disable a plane or a helicopter's need to swerve around object in its heightmap when using TASK_PLANE_MISSION or other AI / Pilot behavior.  Will ensure plane flys directly to it's destination or die trying! This native does NOT need to be called every frame, but instead, just called once on the vehicle (NOT THE PED) you're trying to disable avoidance for!
--- **Native**: `ENABLE_AIRCRAFT_OBSTACLE_AVOIDANCE` (`0x8AA9180DE2FEDD45`)
---@param avoidObstacles boolean `true` / `false` to enable/disable heightmap obstacle avoidance respectively!
---@return fx.Vehicle self
function Vehicle:enableAircraftObstacleAvoidance(avoidObstacles) end

--- Enable or disable exhaust pops on the given vehicle.
--- **Native**: `ENABLE_VEHICLE_EXHAUST_POPS` (`0x2BE4BC731D039D5A`)
---@param toggle boolean Enables or disables exaust pops.
---@return fx.Vehicle self
function Vehicle:enableExhaustPops(toggle) end

--- **Native**: `ENABLE_VEHICLE_FANBELT_DAMAGE` (`0x1C073274E065C6D2`)
---@param enableFanbeltDamage boolean Enables fanbelt damage
---@return fx.Vehicle self
function Vehicle:enableFanbeltDamage(enableFanbeltDamage) end

--- Enable or disable the plane stall warning sounds
--- **Native**: `ENABLE_STALL_WARNING_SOUNDS` (`0xC15907D667F7CFB2`)
---@param enable boolean
---@return fx.Vehicle self
function Vehicle:enableStallWarningSounds(enable) end

--- ```
--- ENABLE_*
--- ```
--- **Native**: `ENABLE_ENTITY_UNK` (`0x6CE177D014502E8A`)
---@return fx.Vehicle self
function Vehicle:enableUnk() end

--- Internal function for ensuring an entity has a state bag.
--- **Native**: `ENSURE_ENTITY_STATE_BAG` (`0x3BB78F05`)
---@return fx.Vehicle self
function Vehicle:ensureStateBag() end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_LOAD_CLONE_SYNC` (`0x6BC189AC`)
---@param data string
---@return fx.Vehicle self
function Vehicle:experimentalLoadCloneSync(data) end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_SAVE_CLONE_CREATE` (`0x9D65CAD2`)
---@return string result
function Vehicle:experimentalSaveCloneCreate() end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_SAVE_CLONE_SYNC` (`0x38D19210`)
---@return string result
function Vehicle:experimentalSaveCloneSync() end

--- ```
--- Explodes a selected vehicle.
--- Vehicle vehicle = Vehicle you want to explode.
--- BOOL isAudible = If explosion makes a sound.
--- BOOL isInvisible = If the explosion is invisible or not.
--- First BOOL does not give any visual explosion, the vehicle just falls apart completely but slowly and starts to burn.
--- ```
--- **Native**: `EXPLODE_VEHICLE` (`0xBA71116ADF5B514C`)
---@param isAudible boolean
---@param isInvisible boolean
---@return fx.Vehicle self
function Vehicle:explode(isAudible, isInvisible) end

--- **Native**: `NETWORK_EXPLODE_HELI` (`0x2A5E0621DD815A9A`)
---@param isAudible boolean
---@param isInvisible boolean
---@param netScriptEntityId integer
---@return fx.Vehicle self
function Vehicle:explodeHeli(isAudible, isInvisible, netScriptEntityId) end

--- **Native**: `EXPLODE_VEHICLE_IN_CUTSCENE` (`0x786A4EB67B01BF0B`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:explodeInCutscene(p1) end

--- ```
--- normal - transition like when your coming out of LSC
--- slow - transition like when you walk into a mission
--- ```
--- **Native**: `NETWORK_FADE_OUT_ENTITY` (`0xDE564951F95E09ED`)
---@param normal boolean
---@param slow boolean
---@return fx.Vehicle self
function Vehicle:fadeOut(normal, slow) end

--- **Native**: `FIND_FIRST_OBJECT` (`0xFAA6CB5D`)
---@return integer result
function Vehicle:findFirstObject() end

--- **Native**: `FIND_FIRST_PED` (`0xFB012961`)
---@return integer result
function Vehicle:findFirstPed() end

--- **Native**: `FIND_FIRST_PICKUP` (`0x3FF9D340`)
---@return integer result
function Vehicle:findFirstPickup() end

--- **Native**: `FIND_FIRST_VEHICLE` (`0x15E55694`)
---@return integer result
function Vehicle:findFirstVehicle() end

--- ```
--- Finds the vehicle that is carrying this entity with a handler frame.
--- The model of the entity must be prop_contr_03b_ld or the function will return 0.
--- ```
--- **Native**: `FIND_VEHICLE_CARRYING_THIS_ENTITY` (`0x375E7FC44F21C8AB`)
---@return fx.Vehicle? result
function Vehicle:findVehicleCarryingThis() end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
---
--- This function is coded to not work on vehicles of type: `CBike`, `Bmx`, `CBoat`, `CTrain`, and `CSubmarine`.
--- **Native**: `FIX_VEHICLE_WINDOW` (`0x772282EBEB95E682`)
---@param windowIndex integer
---@return fx.Vehicle self
function Vehicle:fixWindow(windowIndex) end

--- ```
--- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.
--- ```
--- **Native**: `FORCE_ENTITY_AI_AND_ANIMATION_UPDATE` (`0x40FDEDB72F8293B2`)
---@return fx.Vehicle self
function Vehicle:forceAiAndAnimationUpdate() end

--- This native is used alongside with [`SET_VEHICLE_TYRE_BURST`](#\_0xEC6A202EE4960385).
---
--- ```
--- NativeDB Introduced: v3258
--- ```
--- **Native**: `FORCE_VEHICLE_ENGINE_SYNTH` (`0xEB7D0E1FCC8FE17A`)
---@param force boolean
---@return fx.Vehicle self
function Vehicle:forceEngineSynth(force) end

--- ```
--- Often called after START_PLAYBACK_RECORDED_VEHICLE and SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE; similar in use to FORCE_ENTITY_AI_AND_ANIMATION_UPDATE.
--- ```
--- **Native**: `FORCE_PLAYBACK_RECORDED_VEHICLE_UPDATE` (`0x1F2E4E06DEA8992B`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:forcePlaybackRecordedUpdate(p1) end

--- ```
--- Forces the particular room in an interior to load incase not teleporting into the portal.
--- ```
--- **Native**: `FORCE_ROOM_FOR_ENTITY` (`0x52923C4710DD9907`)
---@param interior fx.Interior|integer
---@param roomHashKey integer|string
---@return fx.Vehicle self
function Vehicle:forceRoom(interior, roomHashKey) end

--- Forces a submarine to maintain neutral buoyancy for a specified duration, preventing it from rising when unoccupied or without a driver.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `FORCE_SUBMARINE_NEURTAL_BUOYANCY` (`0xC67DB108A9ADE3BE`)
---@param time integer The duration in milliseconds for which to maintain neutral buoyancy.
---@return fx.Vehicle self
function Vehicle:forceSubmarineNeurtalBuoyancy(time) end

--- **Native**: `FORCE_SUBMARINE_SURFACE_MODE` (`0x33506883545AC0DF`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:forceSubmarineSurfaceMode(toggle) end

--- This native sets the audio to the specific vehicle hash's audioNameHash.
--- **Native**: `FORCE_USE_AUDIO_GAME_OBJECT` (`0x4F0C413926060B38`)
---@param gameObjectName string
---@return fx.Vehicle self
function Vehicle:forceUseAudioGameObject(gameObjectName) end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
--- **Native**: `FREEZE_ENTITY_POSITION` (`0x428CA6DBD1094446`)
---@param toggle boolean Freeze or unfreeze entity.
---@return fx.Vehicle self
function Vehicle:freeze(toggle) end

--- ```
--- NativeDB Introduced: v3095
--- ```
---
--- Recharges the nitrous system of the specified vehicle to its maximum capacity. This action sets the nitrous charge duration to the maximum limit defined by previous settings applied through [`SET_OVERRIDE_NITROUS_LEVEL`](#\_0xC8E9B6B71B8E660D).
--- **Native**: `FULLY_CHARGE_NITROUS` (`0x1A2BCC8C636F9226`)
---@return fx.Vehicle self
function Vehicle:fullyChargeNitrous() end

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
function Vehicle:getAnimCurrentTime(animDict, animName) end

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
function Vehicle:getAnimTotalTime(animDict, animName) end

--- ```
--- Same call as VEHICLE::_0x0F3B4D4E43177236
--- ```
--- **Native**: `GET_BOAT_BOOM_POSITION_RATIO_2` (`0xC1F981A6F74F0C23`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:getBoatBoomPositionRatio2(p1) end

--- **Native**: `GET_BOAT_BOOM_POSITION_RATIO_3` (`0x0F3B4D4E43177236`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:getBoatBoomPositionRatio3(p1) end

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
function Vehicle:getBoneIndexByName(boneName) end

--- ```
--- Gets the world rotation of the specified bone of the specified entity.
--- This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
--- ```
--- **Native**: `GET_ENTITY_BONE_POSITION_2` (`0x46F8696933A63C9B`)
---@param boneIndex integer
---@return vector3 result
function Vehicle:getBonePosition2(boneIndex) end

--- ```
--- Gets the world rotation of the specified bone of the specified entity.
--- ```
--- **Native**: `GET_ENTITY_BONE_ROTATION` (`0xCE6294A232D03786`)
---@param boneIndex integer
---@return vector3 result
function Vehicle:getBoneRotation(boneIndex) end

--- Gets the local rotation of the specified bone of the specified entity.
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `GET_ENTITY_BONE_ROTATION_LOCAL` (`0xBD8D32550E5CEBFE`)
---@param boneIndex integer
---@return vector3 result
function Vehicle:getBoneRotationLocal(boneIndex) end

--- See [`SET_VEHICLE_CUSTOM_PRIMARY_COLOUR`](#\_0x7141766F91D15BEA) and [`SET_VEHICLE_CUSTOM_SECONDARY_COLOUR`](#\_0x36CED73BFED89754).
--- **Native**: `GET_VEHICLE_COLOR` (`0xF3CC740D36221548`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getColor() end

--- **Native**: `GET_VEHICLE_COLOURS` (`0xA19435F193E081AC`)
---@return integer colorPrimary
---@return integer colorSecondary
function Vehicle:getColours() end

--- Gets the current coordinates (world position) for a specified entity.
--- **Native**: `GET_ENTITY_COORDS` (`0x3FEF770D40960D5A`)
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@return vector3 result The current entity coordinates.
function Vehicle:getCoords(alive) end

--- **Native**: `GET_VEHICLE_CREW_EMBLEM_REQUEST_STATE` (`0xFE26117A5841B2FF`)
---@param p1 integer
---@return integer result
function Vehicle:getCrewEmblemRequestState(p1) end

--- **Native**: `GET_VEHICLE_CUSTOM_PRIMARY_COLOUR` (`0xB64CF2CCA9D95F52`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getCustomPrimaryColour() end

--- **Native**: `GET_VEHICLE_CUSTOM_SECONDARY_COLOUR` (`0x8389CD56CA8072DC`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getCustomSecondaryColour() end

--- **Native**: `GET_VEHICLE_DASHBOARD_COLOR` (`0xB7635E80A5C31BFF`)
---@param color integer
---@return integer color
function Vehicle:getDashboardColor(color) end

--- ```
--- The only example I can find of this function in the scripts, is this:
--- struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);
--- -----------------------------------------------------------------------------------------------------------------------------------------
--- PC scripts:
--- v_5/*{3}*/ = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);
--- ```
--- **Native**: `GET_VEHICLE_DEFORMATION_AT_POS` (`0x4EC6CFBC7B2E9536`)
---@param offset vector3
---@return vector3 result
function Vehicle:getDeformationAtPos(offset) end

--- Checks the angle of the door mapped from 0.0 - 1.0 where 0.0 is fully closed and 1.0 is fully open.
---
--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `GET_VEHICLE_DOOR_ANGLE_RATIO` (`0xFE3F9C29F7B32BD5`)
---@param doorIndex integer Index of door to check
---@return number result A float representing angle of door mapped from 0.0 to 1.0
function Vehicle:getDoorAngleRatio(doorIndex) end

--- **Native**: `GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER` (`0xF6AF6CB341349015`)
---@param player fx.Player|integer
---@return boolean result
function Vehicle:getDoorsLockedForPlayer(player) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `GET_ENTRY_POSITION_OF_DOOR` (`0xC0572928C0ABFDA3`)
---@param doorIndex integer
---@return vector3 result
function Vehicle:getEntryPositionOfDoor(doorIndex) end

--- **Native**: `GET_VEHICLE_EXTRA_COLOURS` (`0x3BC4245933A166F7`)
---@return integer pearlescentColor
---@return integer wheelColor
function Vehicle:getExtraColours() end

--- Gets vehicles gear ratio on choosen gear.
--- **Native**: `GET_VEHICLE_GEAR_RATIO` (`0x82E794B7`)
---@param gear integer The vehicles gear you want to get.
---@return number result
function Vehicle:getGearRatio(gear) end

--- Returns the effective handling data of a vehicle as a floating-point value.
--- Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
--- **Native**: `GET_VEHICLE_HANDLING_FLOAT` (`0x642FC12F`)
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return number result A floating-point value.
function Vehicle:getHandlingFloat(class_, fieldName) end

--- Returns the effective handling data of a vehicle as an integer value.
--- Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
--- **Native**: `GET_VEHICLE_HANDLING_INT` (`0x27396C75`)
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return integer result An integer.
function Vehicle:getHandlingInt(class_, fieldName) end

--- Returns the effective handling data of a vehicle as a vector value.
--- Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
--- **Native**: `GET_VEHICLE_HANDLING_VECTOR` (`0xFB341304`)
---@param class_ string The handling class to get. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to get. These match the keys in `handling.meta`.
---@return vector3 result An integer.
function Vehicle:getHandlingVector(class_, fieldName) end

--- **Native**: `GET_HASH_NAME_FOR_COMPONENT` (`0x0368B3A838070348`)
---@param componentId integer
---@param drawableVariant integer
---@param textureVariant integer
---@return integer result
function Vehicle:getHashNameForComponent(componentId, drawableVariant, textureVariant) end

--- **Native**: `GET_HASH_NAME_FOR_PROP` (`0x5D6160275CAEC8DD`)
---@param componentId integer
---@param propIndex integer
---@param propTextureIndex integer
---@return integer result
function Vehicle:getHashNameForProp(componentId, propIndex, propTextureIndex) end

--- **Native**: `GET_ENTITY_HEIGHT` (`0x5A504562485944DD`)
---@param coords vector3
---@param atTop boolean
---@param inWorldCoords boolean
---@return number result
function Vehicle:getHeight(coords, atTop, inWorldCoords) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `GET_HYDRAULIC_WHEEL_VALUE` (`0x0BB5CBDDD0F25AE3`)
---@param wheelId integer
---@return number result
function Vehicle:getHydraulicWheelValue(wheelId) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `GET_VEHICLE_INDIVIDUAL_DOOR_LOCK_STATUS` (`0xCA4AC3EAAE46EC7B`)
---@param doorIndex integer
---@return integer result Returns vehicle door lock state previously set with [`SET_VEHICLE_INDIVIDUAL_DOORS_LOCKED`](#\_0xBE70724027F85BCD)
function Vehicle:getIndividualDoorLockStatus(doorIndex) end

--- **Native**: `GET_VEHICLE_INTERIOR_COLOR` (`0x7D1464D472D32136`)
---@param color integer
---@return integer color
function Vehicle:getInteriorColor(color) end

--- **Native**: `GET_LAST_PED_IN_VEHICLE_SEAT` (`0x83F969AA1EE2A664`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return fx.Ped? result
function Vehicle:getLastPedInSeat(seatIndex) end

--- **Native**: `GET_VEHICLE_LIGHTS_STATE` (`0xB91B4C20085BD12F`)
---@return boolean result
---@return boolean lightsOn
---@return boolean highbeamsOn
function Vehicle:getLightsState() end

--- ```
--- Second Param = LiveryIndex
--- example
--- int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh);
--- for (int i = 0; i < count; i++)
--- 	{
--- char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i);
--- 	}
--- this example will work fine to fetch all names
--- for example for Sanchez we get
--- SANC_LV1
--- SANC_LV2
--- SANC_LV3
--- SANC_LV4
--- SANC_LV5
--- Use _GET_LABEL_TEXT, to get the localized livery name.
--- -----------
--- NOTE: You may need to set the vehicle's modKit to 0 by using this function: SET_VEHICLE_MOD_KIT() before getting the name, otherwise this native may return NULL.
--- dev-c.com/nativedb/func/info/1f2aa07f00b3217a
--- ```
--- **Native**: `GET_LIVERY_NAME` (`0xB4C7A93837C91A1F`)
---@param liveryIndex integer
---@return string result
function Vehicle:getLiveryName(liveryIndex) end

--- **Native**: `GET_VEHICLE_LOCK_ON_TARGET` (`0x8F5EBAB1F260CFCE`)
---@param entity fx.Entity|integer
---@return boolean result
---@return fx.Entity? entity
function Vehicle:getLockOnTarget(entity) end

--- Retrieves the map data and entity handles from a specific entity.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `GET_ENTITY_MAPDATA_OWNER` (`0xF6B815C5`)
---@return boolean result True if successful, false if not.
---@return integer mapdataHandle The output map data handle.
---@return integer entityHandle The output entity handle.
function Vehicle:getMapdataOwner() end

--- **Native**: `GET_ENTITY_MATRIX` (`0xECB2FC7235A7D137`)
---@return vector3 forwardVector
---@return vector3 rightVector
---@return vector3 upVector
---@return vector3 position
function Vehicle:getMatrix() end

--- **Native**: `GET_VEHICLE_MOD` (`0x772960298DA26FDB`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return integer result Returns the current modIndex, or `-1` if the mod is stock.
function Vehicle:getMod(modType) end

--- **Native**: `GET_VEHICLE_MOD_COLOR_1` (`0xE8D65CA700C9A693`)
---@return integer paintType
---@return integer color
---@return integer pearlescentColor
function Vehicle:getModColor1() end

--- ```
--- returns a string which is the codename of the vehicle's currently selected primary color
--- p1 is always 0
--- ```
--- **Native**: `GET_VEHICLE_MOD_COLOR_1_NAME` (`0xB45085B721EFD38C`)
---@param p1 boolean
---@return string result
function Vehicle:getModColor1Name(p1) end

--- **Native**: `GET_VEHICLE_MOD_COLOR_2` (`0x81592BE4E3878728`)
---@return integer paintType
---@return integer color
function Vehicle:getModColor2() end

--- ```
--- Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF
--- ```
--- **Native**: `GET_VEHICLE_MOD_IDENTIFIER_HASH` (`0x4593CF82AA179706`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modIndex integer
---@return integer result
function Vehicle:getModIdentifierHash(modType, modIndex) end

--- **Native**: `GET_VEHICLE_MOD_MODIFIER_VALUE` (`0x90A38E9838E0A8C1`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modIndex integer
---@return integer result
function Vehicle:getModModifierValue(modType, modIndex) end

--- **Native**: `GET_MOD_SLOT_NAME` (`0x51F0FEB9F6AE98C0`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return string result
function Vehicle:getModSlotName(modType) end

--- ```
--- Returns the text label of a mod type for a given vehicle
--- Use _GET_LABEL_TEXT to get the part name in the game's language
--- ```
--- **Native**: `GET_MOD_TEXT_LABEL` (`0x8935624F8C5592CC`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param modValue integer
---@return string result
function Vehicle:getModTextLabel(modType, modValue) end

--- ```
--- Only used for wheels(ModType = 23/24) Returns true if the wheels are custom wheels
--- ```
--- **Native**: `GET_VEHICLE_MOD_VARIATION` (`0xB3924ECD70E095DC`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return boolean result
function Vehicle:getModVariation(modType) end

--- **Native**: `GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM` (`0x4DC9A62F844D9337`)
---@param team integer
---@return fx.Player? result
function Vehicle:getNearestPlayerToOnTeam(team) end

--- Gets the color of the neon lights of the specified vehicle.
---
--- See [`_SET_VEHICLE_NEON_LIGHTS_COLOUR`](#\_0x8E0A582209A62695) for more information
--- **Native**: `GET_VEHICLE_NEON_LIGHTS_COLOUR` (`0x7619EEE8C886757F`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getNeonLightsColour() end

--- ```
--- Returns how many possible mods a vehicle has for a given mod type
--- ```
--- **Native**: `GET_NUM_VEHICLE_MODS` (`0xE38E9162A2500646`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return integer result
function Vehicle:getNumMods(modType) end

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
function Vehicle:getOffsetFromGivenWorldCoords(pos) end

--- ```
--- Offset values are relative to the entity.
--- x = left/right
--- y = forward/backward
--- z = up/down
--- ```
--- **Native**: `GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS` (`0x1899F328B0E12848`)
---@param offset vector3
---@return vector3 result
function Vehicle:getOffsetFromInWorldCoords(offset) end

--- Gets the ped in the specified seat of the passed vehicle.
---
--- If there is no ped in the seat, and the game considers the vehicle as ambient population, this will create a random occupant ped in the seat, which may be cleaned up by the game fairly soon if not marked as script-owned mission entity.
---
--- **NativeDB Added Parameter 3**: BOOL p2 (uses a different GetOccupant function)
--- **Native**: `GET_PED_IN_VEHICLE_SEAT` (`0xBB40DD2270B65366`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return fx.Ped? result A ped in the specified vehicle seat, or nil if no such ped existed.
function Vehicle:getPedInSeat(seatIndex) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `GET_PED_USING_VEHICLE_DOOR` (`0x218297BF0CFD853B`)
---@param doorIndex integer
---@return fx.Ped? result
function Vehicle:getPedUsingDoor(doorIndex) end

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
function Vehicle:getPickup(modelHash) end

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
function Vehicle:getProofs() end

--- ```
--- w is the correct parameter name!
--- ```
--- **Native**: `GET_ENTITY_QUATERNION` (`0x7B3703D2D32DFA18`)
---@return number x
---@return number y
---@return number z
---@return number w
function Vehicle:getQuaternion() end

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
function Vehicle:getRotation(rotationOrder) end

--- ```
--- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.
--- ```
--- **Native**: `GET_ENTITY_SCRIPT` (`0xA6E9C38DB51D7748`)
---@param script integer
---@return string result
---@return integer script
function Vehicle:getScript(script) end

--- ```
--- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).
--- ```
--- **Native**: `GET_ENTITY_SPEED_VECTOR` (`0x9A8D700A51CB7B0D`)
---@param relative boolean
---@return vector3 result
function Vehicle:getSpeedVector(relative) end

--- ```
--- Outputs 2 Vector3's.
--- Scripts check if out2.x - out1.x > something.x
--- Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
--- ```
--- **Native**: `GET_VEHICLE_SUSPENSION_BOUNDS` (`0xDF7E3EEB29642C38`)
---@return vector3 out1
---@return vector3 out2
function Vehicle:getSuspensionBounds() end

--- ```
--- Gets the trailer of a vehicle and puts it into the trailer parameter.
--- ```
--- **Native**: `GET_VEHICLE_TRAILER_VEHICLE` (`0x1CDD6BADC297830D`)
---@param trailer fx.Vehicle|integer
---@return boolean result
---@return fx.Vehicle? trailer
function Vehicle:getTrailerVehicle(trailer) end

--- ```
--- Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.
--- ```
--- **Native**: `GET_TRAIN_CARRIAGE` (`0x08AAFD0814722BC3`)
---@param trailerNumber integer
---@return fx.Entity? result
function Vehicle:getTrainCarriage(trailerNumber) end

--- Gets the ratio that a door is open for on a train.
--- **Native**: `GET_TRAIN_DOOR_OPEN_RATIO` (`0x40B16551`)
---@param doorIndex integer Zero-based door index.
---@return number result A value between 0.0 (fully closed) and 1.0 (fully open).
function Vehicle:getTrainDoorOpenRatio(doorIndex) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `GET_TYRE_HEALTH` (`0x55EAB010FAEE9380`)
---@param wheelIndex integer
---@return number result
function Vehicle:getTyreHealth(wheelIndex) end

--- **Native**: `GET_VEHICLE_TYRE_SMOKE_COLOR` (`0xB635392A4938B3C3`)
---@return integer r
---@return integer g
---@return integer b
function Vehicle:getTyreSmokeColor() end

--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `GET_TYRE_WEAR_MULTIPLIER` (`0x6E387895952F4F71`)
---@param wheelIndex integer
---@return number result
function Vehicle:getTyreWearMultiplier(wheelIndex) end

--- **Native**: `GET_VEHICLE_WEAPON_CAPACITY` (`0x8181CE2F25CB9BB7`)
---@param weaponIndex integer
---@return integer result
function Vehicle:getWeaponCapacity(weaponIndex) end

--- Gets brake pressure of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- Normal values around 1.0f when braking.
--- **Native**: `GET_VEHICLE_WHEEL_BRAKE_PRESSURE` (`0x70FE2EFF`)
---@param wheelIndex integer
---@return number result
function Vehicle:getWheelBrakePressure(wheelIndex) end

--- Gets the flags of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_FLAGS` (`0xC70FA0C7`)
---@param wheelIndex integer
---@return integer result An unsigned int containing bit flags.
function Vehicle:getWheelFlags(wheelIndex) end

--- **Native**: `GET_VEHICLE_WHEEL_HEALTH` (`0x54A677F5`)
---@param wheelIndex integer
---@return number result
function Vehicle:getWheelHealth(wheelIndex) end

--- Gets whether the wheel is powered.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- This is a shortcut to a flag in GET_VEHICLE_WHEEL_FLAGS.
--- **Native**: `GET_VEHICLE_WHEEL_IS_POWERED` (`0x3CCF1B49`)
---@param wheelIndex integer
---@return boolean result
function Vehicle:getWheelIsPowered(wheelIndex) end

--- Gets power being sent to a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_POWER` (`0xD203287`)
---@param wheelIndex integer
---@return number result
function Vehicle:getWheelPower(wheelIndex) end

--- **Native**: `GET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE` (`0xCEE21AB2`)
---@param wheelIndex integer Index of wheel, 0-3.
---@return number result Float representing size of the rim collider. Not sure what it is used for, probably to detect whether bullets hit rim or tire and puncture it (and to determine size of the wheel when tire is fully bl…
function Vehicle:getWheelRimColliderSize(wheelIndex) end

--- Gets the rotation speed of a wheel.
--- This is used internally to calcuate GET_VEHICLE_WHEEL_SPEED.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_ROTATION_SPEED` (`0xEA1859E5`)
---@param wheelIndex integer
---@return number result The angular velocity of the wheel.
function Vehicle:getWheelRotationSpeed(wheelIndex) end

--- Gets speed of a wheel at the tyre.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_SPEED` (`0x149C9DA0`)
---@param wheelIndex integer
---@return number result An integer.
function Vehicle:getWheelSpeed(wheelIndex) end

--- Gets steering angle of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_STEERING_ANGLE` (`0xA0867448`)
---@param wheelIndex integer
---@return number result The steering angle of the wheel, with 0 being straight.
function Vehicle:getWheelSteeringAngle(wheelIndex) end

--- **Native**: `GET_VEHICLE_WHEEL_SURFACE_MATERIAL` (`0xA7F04022`)
---@param wheelIndex integer Index of wheel, 0-3.
---@return integer result Integer representing the index of the current surface material of that wheel. Check materials.dat for the indexes.
function Vehicle:getWheelSurfaceMaterial(wheelIndex) end

--- Gets the current suspension compression of a wheel.
--- Returns a positive value. 0 means the suspension is fully extended, the wheel is off the ground.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_SUSPENSION_COMPRESSION` (`0x2B48175B`)
---@param wheelIndex integer
---@return number result The current compression of the wheel's suspension.
function Vehicle:getWheelSuspensionCompression(wheelIndex) end

--- **Native**: `GET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE` (`0xE0BA9FE6`)
---@param wheelIndex integer Index of wheel, 0-3.
---@return number result Float representing size of the wheel collider.
function Vehicle:getWheelTireColliderSize(wheelIndex) end

--- **Native**: `GET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH` (`0xEF65929C`)
---@param wheelIndex integer Index of wheel, 0-3.
---@return number result Float representing width of the wheel collider.
function Vehicle:getWheelTireColliderWidth(wheelIndex) end

--- Gets the traction vector length of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `GET_VEHICLE_WHEEL_TRACTION_VECTOR_LENGTH` (`0x3BCFEE14`)
---@param wheelIndex integer
---@return number result
function Vehicle:getWheelTractionVectorLength(wheelIndex) end

--- Returns the offset of the specified wheel relative to the wheel's axle center.
--- **Native**: `GET_VEHICLE_WHEEL_X_OFFSET` (`0xCC90CBCA`)
---@param wheelIndex integer
---@return number result
function Vehicle:getWheelXOffset(wheelIndex) end

--- **Native**: `GET_VEHICLE_WHEEL_Y_ROTATION` (`0x2EA4AFFE`)
---@param wheelIndex integer
---@return number result
function Vehicle:getWheelYRotation(wheelIndex) end

--- ```
--- Returns the coordinates of an entity-bone.
--- ```
--- **Native**: `GET_WORLD_POSITION_OF_ENTITY_BONE` (`0x44A8FCB8ED227738`)
---@param boneIndex integer
---@return vector3 result
function Vehicle:getWorldPositionOfBone(boneIndex) end

--- Returns vehicle xenon lights custom RGB color values. Do note this native doesn't return non-RGB colors that was set with [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07).
--- **Native**: `GET_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR` (`0xC715F730`)
---@return boolean result A boolean indicating if vehicle have custom xenon lights RGB color.
---@return integer red Red color (0-255).
---@return integer green Green color (0-255).
---@return integer blue Blue color (0-255).
function Vehicle:getXenonLightsCustomColor() end

--- ```
--- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
--- ```
--- **Native**: `HAS_ANIM_EVENT_FIRED` (`0xEAF4CD9EA3E7E922`)
---@param actionHash integer|string
---@return boolean result
function Vehicle:hasAnimEventFired(actionHash) end

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
function Vehicle:hasAnimFinished(animDict, animName, p3) end

--- **Native**: `HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY` (`0xC86D67D52A707CF8`)
---@param damager fx.Entity|integer The entity that caused the damage.
---@param bCheckDamagerVehicle boolean If the damager is driving a vehicle then check to see if the entity was damaged by the vehicle.
---@return boolean result Returns true if the entity has been damaged by the specified entity.
function Vehicle:hasBeenDamagedByEntity(damager, bCheckDamagerVehicle) end

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
function Vehicle:hasBeenDamagedByWeapon(weaponHash, weaponType) end

--- Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
---
--- The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY` (`0xFCDFF7B72D23A1AC`)
---@param entity2 fx.Entity|integer Entity to check to
---@param flags integer A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#\_0x377906D8A31E5586)). 17 is most common in GTA scripts.
---@return boolean result Returns `true` if no collider of specified bitmask is hit.
function Vehicle:hasClearLosToEntity(entity2, flags) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY_2` (`0x394BDE2A7BBA031E`)
---@param entity2 fx.Entity|integer
---@param traceType integer
---@return any result
function Vehicle:hasClearLosToEntity2(entity2, traceType) end

--- ```
--- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.
--- This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops
--- ```
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT` (`0x0267D00AF114F17A`)
---@param entity2 fx.Entity|integer
---@return boolean result
function Vehicle:hasClearLosToEntityInFront(entity2) end

--- **Note**: Flags are not the same based on your `gamebuild`. Please see [here](https://docs.fivem.net/docs/game-references/vehicle-references/vehicle-flags) to see a complete list of all vehicle flags.
---
--- Get vehicle.meta flag by index. Useful examples include `FLAG_LAW_ENFORCEMENT` (31), `FLAG_RICH_CAR` (36), `FLAG_IS_ELECTRIC` (43), `FLAG_IS_OFFROAD_VEHICLE` (48).
--- **Native**: `GET_VEHICLE_HAS_FLAG` (`0xD85C9F57`)
---@param flagIndex integer Flag index.
---@return boolean result A boolean for whether the flag is set.### Example
function Vehicle:hasFlag(flagIndex) end

--- **Native**: `HAVE_VEHICLE_MODS_STREAMED_IN` (`0x9A83F5F9963775EF`)
---@return boolean result
function Vehicle:haveModsStreamedIn() end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `HIDE_VEHICLE_TOMBSTONE` (`0xAE71FB656C600587`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:hideTombstone(toggle) end

--- Determines if a vehicle is a convertible with an animatable roof. This native checks if the specified vehicle model features a convertible roof that can be lowered or raised through an animation.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `IS_VEHICLE_A_CONVERTIBLE` (`0x52F357A30698BCCE`)
---@param checkRoofExtras boolean When set to `false`, the native checks only for vehicles with an animatable convertible roof. Set to `true` to include additional checks for vehicles that might have a non-animatable roof (i.e., usin…
---@return boolean result Returns `true` if the vehicle is a convertible with an animatable roof or if `checkRoofExtras` is `true` and the vehicle has a roof (animatable or not). Returns `false` if the vehicle does not meet t…
function Vehicle:isAConvertible(checkRoofExtras) end

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
function Vehicle:isAtCoord(pos, size, p7, p8, p9) end

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
function Vehicle:isAtEntity(entity2, size, p5, p6, p7) end

--- **Native**: `IS_VEHICLE_ATTACHED_TO_CARGOBOB` (`0xD40148F22E81A1D9`)
---@param vehicleAttached fx.Vehicle|integer
---@return boolean result
function Vehicle:isAttachedToCargobob(vehicleAttached) end

--- **Native**: `IS_ENTITY_ATTACHED_TO_ENTITY` (`0xEFBE71898A993728`)
---@param to fx.Entity|integer
---@return boolean result
function Vehicle:isAttachedToEntity(to) end

--- ```
--- Scripts verify that towTruck is the first parameter, not the second.
--- ```
--- **Native**: `IS_VEHICLE_ATTACHED_TO_TOW_TRUCK` (`0x146DF9EC4C4B9FD4`)
---@param vehicle fx.Vehicle|integer
---@return boolean result
function Vehicle:isAttachedToTowTruck(vehicle) end

--- **Native**: `IS_VEHICLE_BUMPER_BOUNCING` (`0x27B926779DEB502D`)
---@param frontBumper boolean
---@return boolean result
function Vehicle:isBumperBouncing(frontBumper) end

--- **Native**: `IS_VEHICLE_BUMPER_BROKEN_OFF` (`0x468056A6BB6F3846`)
---@param front boolean
---@return boolean result
function Vehicle:isBumperBrokenOff(front) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `IS_VEHICLE_DOOR_DAMAGED` (`0xB8E181E559464527`)
---@param doorID integer
---@return boolean result
function Vehicle:isDoorDamaged(doorID) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `IS_VEHICLE_DOOR_FULLY_OPEN` (`0x3E933CFF7B111C22`)
---@param doorIndex integer The index of the door to check.
---@return boolean result A bool indiciating if the specified door is fully open on the specified vehicle.
function Vehicle:isDoorFullyOpen(doorIndex) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `GET_IS_DOOR_VALID` (`0x645F4B6E8499F632`)
---@param doorIndex integer
---@return boolean result
function Vehicle:isDoorValid(doorIndex) end

--- ```
--- p1 is always 0 in the scripts.
--- p1 = check if vehicle is on fire
--- ```
--- **Native**: `IS_VEHICLE_DRIVEABLE` (`0x4C241E39B23DF959`)
---@param isOnFireCheck boolean
---@return boolean result
function Vehicle:isDriveable(isOnFireCheck) end

--- **Native**: `IS_ENTITY_ATTACHED_TO_HANDLER_FRAME` (`0x57715966069157AD`)
---@param entity fx.Entity|integer
---@return boolean result
function Vehicle:isEntityAttachedToHandlerFrame(entity) end

--- **Native**: `IS_VEHICLE_EXTRA_TURNED_ON` (`0xD2E6822DBFD6C8BD`)
---@param extraId integer
---@return boolean result
function Vehicle:isExtraTurnedOn(extraId) end

--- **Native**: `IS_HANDLER_FRAME_ABOVE_CONTAINER` (`0x89D630CF5EA96D23`)
---@param container fx.Entity|integer
---@return boolean result
function Vehicle:isHandlerFrameAboveContainer(container) end

--- **Native**: `IS_HELI_PART_BROKEN` (`0xBC74B4BE25EB6C8A`)
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@return boolean result
function Vehicle:isHeliPartBroken(p1, p2, p3) end

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
function Vehicle:isInAngledArea(coords1, coords2, width, debug, includez, p10) end

--- **Native**: `IS_ENTITY_IN_AREA` (`0x54736AA40E271165`)
---@param coords1 vector3
---@param coords2 vector3
---@param p7 boolean
---@param p8 boolean
---@param p9 any
---@return boolean result
function Vehicle:isInArea(coords1, coords2, p7, p8, p9) end

--- **Native**: `IS_ENTITY_IN_ZONE` (`0xB6463CF6AF527071`)
---@param zone string
---@return boolean result
function Vehicle:isInZone(zone) end

--- **Native**: `IS_VEHICLE_MODEL` (`0x423E8DE37D934D89`)
---@param model fx.Model|integer|string
---@return boolean result
function Vehicle:isModel(model) end

--- ```
--- mpsum2_g9ec
--- ```
---
--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `IS_VEHICLE_MOD_HSW_EXCLUSIVE` (`0x00834EAC4A96E010`)
---@param modType integer
---@param modIndex integer
---@return boolean result
function Vehicle:isModHswExclusive(modType, modIndex) end

--- ```
--- indices:
--- 0 = Left
--- 1 = Right
--- 2 = Front
--- 3 = Back
--- ```
--- **Native**: `IS_VEHICLE_NEON_LIGHT_ENABLED` (`0x8C4B92553E4766A5`)
---@param index integer
---@return boolean result
function Vehicle:isNeonLightEnabled(index) end

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
function Vehicle:isPlayingAnim(animDict, animName, taskFlag) end

--- Seat indices range from -1 to [`GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS`](#\_0xA7C4F2C6E744A550) minus one.
---
--- ```cpp
--- // CTaskExitVehicleSeat::eSeatPosition - 1
--- enum eSeatPosition
--- {
---     SF_FrontDriverSide = -1,
---     SF_FrontPassengerSide = 0,
---     SF_BackDriverSide = 1,
---     SF_BackPassengerSide = 2,
---     SF_AltFrontDriverSide = 3,
---     SF_AltFrontPassengerSide = 4,
---     SF_AltBackDriverSide = 5,
---     SF_AltBackPassengerSide = 6,
--- };
--- ```
---
--- ```
--- NativeDB Added Parameter 3: BOOL isTaskRunning
---
--- isTaskRunning = on true the function returns already false while a task on the target seat is running (TASK_ENTER_VEHICLE/TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT) - on false only when a ped is finally sitting in the seat.
--- ```
--- **Native**: `IS_VEHICLE_SEAT_FREE` (`0x22AC59A870E6A669`)
---@param seatIndex fx.Enum.SeatPosition|integer The eSeatPosition or -2 for **any** vehicle seat.
---@return boolean result
function Vehicle:isSeatFree(seatIndex) end

--- **Native**: `IS_SEAT_WARP_ONLY` (`0xF7F203E31F96F6A1`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean result
function Vehicle:isSeatWarpOnly(seatIndex) end

--- ```
--- p1 can be anywhere from 0 to 3 in the scripts. p2 is generally somewhere in the 1000 to 10000 range.
--- ```
--- **Native**: `IS_VEHICLE_STUCK_TIMER_UP` (`0x679BE1DAF71DA874`)
---@param p1 integer
---@param p2 integer
---@return boolean result
function Vehicle:isStuckTimerUp(p1, p2) end

--- **Native**: `IS_TOGGLE_MOD_ON` (`0x84B233A8C8FC8AE7`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return boolean result
function Vehicle:isToggleModOn(modType) end

--- **Native**: `IS_ENTITY_TOUCHING_ENTITY` (`0x17FFC1B2BA35A494`)
---@param targetEntity fx.Entity|integer
---@return boolean result
function Vehicle:isTouchingEntity(targetEntity) end

--- **Native**: `IS_ENTITY_TOUCHING_MODEL` (`0x0F42323798A58C8C`)
---@param modelHash fx.Model|integer|string
---@return boolean result
function Vehicle:isTouchingModel(modelHash) end

--- **Native**: `IS_TURRET_SEAT` (`0xE33FFA906CE74880`)
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return boolean result
function Vehicle:isTurretSeat(seatIndex) end

--- ```cpp
--- enum eVehicleWheels
--- {
--- 	WHEEL_LF = 0, // Vehicle Left front
--- 	WHEEL_RF = 1, // Vehicle Right front
--- 	WHEEL_LM = 2, // Vehicle Left middle
--- 	WHEEL_RM = 3, // Vehicle Right middle
--- 	WHEEL_LR = 4, // Vehicle Left rear
--- 	WHEEL_RR = 5, // Vehicle Right rear
--- 	WHEEL_BF = 6, // Bike front
--- 	WHEEL_BR = 7, // Bike rear
--- 	MAX_WHEELS = 8
--- };
--- ```
--- **Native**: `IS_VEHICLE_TYRE_BURST` (`0xBA291848A0815CA9`)
---@param wheelID fx.Enum.VehicleWheels|integer The wheel id to check, see `eVehicleWheels`
---@param isBurstToRim boolean Whether it should only return `true` if the tire is bursted to its rims
---@return boolean result Returns `true` if the vehicle tire is poped, `false` otherwise.
function Vehicle:isTyreBurst(wheelID, isBurstToRim) end

--- **Native**: `IS_ENTITY_UPRIGHT` (`0x5333F526F6AB19AA`)
---@param angle number
---@return boolean result
function Vehicle:isUpright(angle) end

--- Getter for [BREAK_OFF_VEHICLE_WHEEL](?\_0xA274CADB).
--- **Native**: `IS_VEHICLE_WHEEL_BROKEN_OFF` (`0xCF1BC668`)
---@param wheelIndex integer The wheel index.
---@return boolean result
function Vehicle:isWheelBrokenOff(wheelIndex) end

--- ```cpp
--- enum eWindowId {
--- 	VEH_EXT_WINDOW_LF = 0,
--- 	VEH_EXT_WINDOW_RF = 1,
--- 	VEH_EXT_WINDOW_LR = 2,
--- 	VEH_EXT_WINDOW_RR = 3,
--- 	VEH_EXT_WINDOW_LM = 4,
--- 	VEH_EXT_WINDOW_RM = 5,
--- 	VEH_EXT_WINDSCREEN = 6,
--- 	VEH_EXT_WINDSCREEN_R = 7,
--- }
--- ```
--- **Native**: `IS_VEHICLE_WINDOW_INTACT` (`0x46E571A0E20D01F1`)
---@param windowIndex fx.Enum.WindowId|integer The index of the window
---@return boolean result
function Vehicle:isWindowIntact(windowIndex) end

--- Lowers the roof on a convertible vehicle, utilizing any available animations for the action. This native is particularly useful for creating a realistic interaction with convertible vehicles by animating the process of lowering the roof.
---
--- You can check if the vehicle has an convertible roof using [`IS_VEHICLE_A_CONVERTIBLE`](#\_0x52F357A30698BCCE).
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `LOWER_CONVERTIBLE_ROOF` (`0xDED51F703D0FA83D`)
---@param instantlyLower boolean A boolean value indicating whether the roof should be lowered instantly without transitioning through the animation. Set to `false` to lower the roof with the animation or `true` to lower it instantl…
---@return fx.Vehicle self
function Vehicle:lowerConvertibleRoof(instantlyLower) end

--- **Native**: `LOWER_RETRACTABLE_WHEELS` (`0x5335BE58C083E74E`)
---@return fx.Vehicle self
function Vehicle:lowerRetractableWheels() end

--- **Native**: `MODIFY_VEHICLE_TOP_SPEED` (`0x93A3996368C94158`)
---@param value number
---@return fx.Vehicle self
function Vehicle:modifyTopSpeed(value) end

--- ```
--- In the console script dumps, this is only referenced once.
--- NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);
--- ^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.
--- Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?
--- am_plane_takedown.c
--- network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);
--- armenian2.c
--- network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);
--- fm_horde_controler.c
--- network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);
--- fm_mission_controller.c, has 6 hits so not going to list them.
--- Side note, setting the first parameter to 0 seems to mute sound or so?
--- Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.
--- ```
--- **Native**: `NETWORK_EXPLODE_VEHICLE` (`0x301A42153C9AD707`)
---@param isAudible boolean
---@param isInvisible boolean
---@param p3 boolean
---@return fx.Vehicle self
function Vehicle:networkExplode(isAudible, isInvisible, p3) end

--- Fade the given entity back in, usually used after the entity has been faded out with [NETWORK_FADE_OUT_ENTITY](#\_0xDE564951F95E09ED)
---
--- When used on a entity which isn't invisible or faded out then the native will still work, it will just instanly make the ped invisible before fading in.
---
--- **Additional Parameters**:
---
--- *   **flash**: If set to true the entity will flash while fading in.
--- **Native**: `NETWORK_FADE_IN_ENTITY` (`0x1F4ED342ACEFE62D`)
---@param bNetwork boolean When set to true the fade in will be networked.
---@return fx.Vehicle self
function Vehicle:networkFadeIn(bNetwork) end

--- **Native**: `OPEN_BOMB_BAY_DOORS` (`0x87E7F24270732CB1`)
---@return fx.Vehicle self
function Vehicle:openBombBayDoors() end

--- **Native**: `NETWORK_OVERRIDE_COORDS_AND_HEADING` (`0xA7E30DE9272B6D49`)
---@param coords vector3
---@param heading number
---@return fx.Vehicle self
function Vehicle:overrideCoordsAndHeading(coords, heading) end

--- Overrides the vehicle's horn hash.
---
--- When changing this hash on a vehicle, [`_GET_VEHICLE_HORN_HASH`](#\_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [`GET_VEHICLE_DEFAULT_HORN`](#\_0x02165D55000219AC)).
---
--- List of possible hashes (found in decompiled scripts):
---
--- |        signed |     unsigned |      hex     |
--- |--------------:|-------------:|:------------:|
--- |  `1604822495` | `1604822495` | `0x5FA7A5DF` |
--- | `-1262465009` | `3032502287` | `0xB4C0500F` |
--- |  `-889553789` | `3405413507` | `0xCAFA7C83` |
--- | `-1557943086` | `2737024210` | `0xA323ACD2` |
--- | `-1318696617` | `2976270679` | `0xB1664957` |
--- |    `-7740003` | `4287227293` | `0xFF89E59D` |
--- | `-1815146967` | `2479820329` | `0x93CF0E29` |
--- |  `-339919356` | `3955047940` | `0xEBBD3E04` |
--- **Native**: `OVERRIDE_VEH_HORN` (`0x3CDC1E622CCE0356`)
---@param override boolean Must be set to true. If set to false, the default horn hash will be restored.
---@param hornHash integer A horn hash.
---@return fx.Vehicle self
function Vehicle:overrideHorn(override, hornHash) end

--- Overrides whether or not peds can stand on top of the specified vehicle.
---
--- Note this flag is not replicated automatically, you will have to manually do so.
--- **Native**: `OVERRIDE_VEHICLE_PEDS_CAN_STAND_ON_TOP_FLAG` (`0x7FA03E76`)
---@param can boolean Can they?
---@return fx.Vehicle self
function Vehicle:overridePedsCanStandOnTopFlag(can) end

--- **Native**: `PAUSE_PLAYBACK_RECORDED_VEHICLE` (`0x632A689BF42301B1`)
---@return fx.Vehicle self
function Vehicle:pausePlaybackRecorded() end

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
function Vehicle:playAnim(animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

--- **Native**: `PLAY_VEHICLE_DOOR_CLOSE_SOUND` (`0x62A456AA4769EF34`)
---@param doorIndex integer
---@return fx.Vehicle self
function Vehicle:playDoorCloseSound(doorIndex) end

--- **Native**: `PLAY_VEHICLE_DOOR_OPEN_SOUND` (`0x3A539D52857EA82D`)
---@param doorIndex integer
---@return fx.Vehicle self
function Vehicle:playDoorOpenSound(doorIndex) end

--- Plays a preloaded stream back from the specified ped vehicle
--- **Native**: `PLAY_STREAM_FROM_VEHICLE` (`0xB70374A758007DFA`)
---@return fx.Vehicle self
function Vehicle:playStream() end

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
function Vehicle:playSynchronizedAnim(syncedScene, animation, propName, p4, p5, p6, p7) end

--- Detaches the vehicle's windscreen.
--- **Native**: `POP_OUT_VEHICLE_WINDSCREEN` (`0x6D645D59FB5F5AD3`)
---@return fx.Vehicle self
function Vehicle:popOutWindscreen() end

--- ```
--- Called to update entity attachments.
--- ```
--- **Native**: `PROCESS_ENTITY_ATTACHMENTS` (`0xF4080490ADC51C6F`)
---@return fx.Vehicle self
function Vehicle:processAttachments() end

--- Raises the roof on a convertible vehicle, utilizing any available animations for the action. This native is particularly useful for creating a realistic interaction with convertible vehicles by animating the process of raising the roof.
---
--- You can check if the vehicle has an convertible roof using [`IS_VEHICLE_A_CONVERTIBLE`](#\_0x52F357A30698BCCE).
---
--- To lower the convertible roof, you can use [`LOWER_CONVERTIBLE_ROOF`](#\_0xDED51F703D0FA83D).
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `RAISE_CONVERTIBLE_ROOF` (`0x8F5FB35D7E88FC70`)
---@param instantlyRaise boolean A boolean indicating whether the roof should be raised instantly without the animation transition. Set `false` to raise the roof with the animation, or `true` to raise it immediately.
---@return fx.Vehicle self
function Vehicle:raiseConvertibleRoof(instantlyRaise) end

--- **Native**: `RAISE_RETRACTABLE_WHEELS` (`0xF660602546D27BA8`)
---@return fx.Vehicle self
function Vehicle:raiseRetractableWheels() end

--- **Native**: `NETWORK_REGISTER_ENTITY_AS_NETWORKED` (`0x06FAACD625D80CAA`)
---@return fx.Vehicle self
function Vehicle:registerAsNetworked() end

--- This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#\_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#\_0xC59F528E9AB9F339)
--- **Native**: `REGISTER_ENTITY_FOR_CUTSCENE` (`0xE40C1C56DF95C2E8`)
---@param cutsceneEntName string cHandle of cutscene entity, i.e Michael, MP\_1, MP\_4, Lamar
---@param p2 integer
---@param modelHash fx.Model|integer|string Not strictly neccasary, often 0 in R\* scripts
---@param p4 integer 0 for SP, 64 for MP seemingly
---@return fx.Vehicle self
function Vehicle:registerForCutscene(cutsceneEntName, p2, modelHash, p4) end

--- **Native**: `RELEASE_PRELOAD_MODS` (`0x445D79F995508307`)
---@return fx.Vehicle self
function Vehicle:releasePreloadMods() end

--- Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
--- ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
--- **Native**: `RELEASE_SCRIPT_GUID_FROM_ENTITY` (`0x2B3334BCA57CD799`)
---@return fx.Vehicle self
function Vehicle:releaseScriptGuid() end

--- ```
--- Used in am_mp_property_ext and am_mp_property_int
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Ped ped
--- ```
--- **Native**: `REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY` (`0x715135F4B82AC90D`)
---@return fx.Vehicle self
function Vehicle:removeAllStickyBombs() end

--- **Native**: `REMOVE_VEHICLE_CREW_EMBLEM` (`0xD2300034310557E4`)
---@param p1 integer
---@return fx.Vehicle self
function Vehicle:removeCrewEmblem(p1) end

--- **Native**: `REMOVE_DECALS_FROM_VEHICLE` (`0xE91F1B65F2B48D57`)
---@return fx.Vehicle self
function Vehicle:removeDecals() end

--- Removes an entity from its current mix group.
--- **Native**: `REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP` (`0x18EB48CFC41F2EA0`)
---@param fadeOut number Defaults to 0.0
---@return fx.Vehicle self
function Vehicle:removeFromAudioMixGroup(fadeOut) end

--- **Native**: `REMOVE_VEHICLE_HIGH_DETAIL_MODEL` (`0x00689CDE5F7C6787`)
---@return fx.Vehicle self
function Vehicle:removeHighDetailModel() end

--- **Native**: `REMOVE_VEHICLE_MOD` (`0x92D619E420858204`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@return fx.Vehicle self
function Vehicle:removeMod(modType) end

--- **Native**: `REMOVE_PARTICLE_FX_FROM_ENTITY` (`0xB8FEAEEBCC127425`)
---@return fx.Vehicle self
function Vehicle:removeParticleFx() end

--- ```
--- Retracts the hook on the cargobob.
--- Note: after you retract it the natives for dropping the hook no longer work
--- ```
--- **Native**: `REMOVE_PICK_UP_ROPE_FOR_CARGOBOB` (`0x9768CF648F54C804`)
---@return fx.Vehicle self
function Vehicle:removePickUpRopeForCargobob() end

--- Remove the weird shadow applied by [\_SET_VEHICLE_SHADOW_EFFECT](#\_0x2A70BAE8883E4C81)
--- **Native**: `REMOVE_VEHICLE_SHADOW_EFFECT` (`0xF87D9F2301F7D206`)
---@return fx.Vehicle self
function Vehicle:removeShadowEffect() end

--- **Native**: `REMOVE_VEHICLE_STUCK_CHECK` (`0x8386BFB614D06749`)
---@return fx.Vehicle self
function Vehicle:removeStuckCheck() end

--- **Native**: `REMOVE_VEHICLE_UPSIDEDOWN_CHECK` (`0xC53EB42A499A7E90`)
---@return fx.Vehicle self
function Vehicle:removeUpsidedownCheck() end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- **Native**: `REMOVE_VEHICLE_WINDOW` (`0xA711568EEDB43069`)
---@param windowIndex integer
---@return fx.Vehicle self
function Vehicle:removeWindow(windowIndex) end

--- **Native**: `NETWORK_REQUEST_CONTROL_OF_ENTITY` (`0xB69317BF5E782347`)
---@return boolean result
function Vehicle:requestControl() end

--- ```
--- REQUEST_VEHICLE_*
--- ```
--- **Native**: `REQUEST_VEHICLE_DASHBOARD_SCALEFORM_MOVIE` (`0xDBA3C090E3D74690`)
---@return fx.Vehicle self
function Vehicle:requestDashboardScaleformMovie() end

--- **Native**: `REQUEST_VEHICLE_HIGH_DETAIL_MODEL` (`0xA6E9FDCB2C76785E`)
---@return fx.Vehicle self
function Vehicle:requestHighDetailModel() end

--- **Native**: `REQUEST_WEAPON_HIGH_DETAIL_MODEL` (`0x48164DBB970AC3F0`)
---@return fx.Vehicle self
function Vehicle:requestWeaponHighDetailModel() end

--- **Native**: `RESET_ENTITY_ALPHA` (`0x9B1E824FFBB7027A`)
---@return fx.Vehicle self
function Vehicle:resetAlpha() end

--- Resets whether or not peds can stand on top of the specified vehicle.
---
--- Note this flag is not replicated automatically, you will have to manually do so.
--- **Native**: `RESET_VEHICLE_PEDS_CAN_STAND_ON_TOP_FLAG` (`0xDF62CFE2`)
---@return fx.Vehicle self
function Vehicle:resetPedsCanStandOnTopFlag() end

--- Resets the override for [SET_VEHICLE_STARTUP_REV_SOUND](#\_0xF1F8157B8C3F171C)
--- **Native**: `RESET_VEHICLE_STARTUP_REV_SOUND` (`0xD2DCCD8E16E20997`)
---@return fx.Vehicle self
function Vehicle:resetStartupRevSound() end

--- ```
--- The inner function has a switch on the second parameter. It's the stuck timer index.
--- Here's some pseudo code I wrote for the inner function:
--- void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex)
--- {
--- 	switch (timerIndex)
--- 	{
--- 	case 0:
--- unknownClassInVehicle->FirstStuckTimer = (WORD)0u;
--- 	case 1:
--- unknownClassInVehicle->SecondStuckTimer = (WORD)0u;
--- 	case 2:
--- unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;
--- 	case 3:
--- unknownClassInVehicle->FourthStuckTimer = (WORD)0u;
--- 	case 4:
--- unknownClassInVehicle->FirstStuckTimer = (WORD)0u;
--- unknownClassInVehicle->SecondStuckTimer = (WORD)0u;
--- unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;
--- unknownClassInVehicle->FourthStuckTimer = (WORD)0u;
--- break;
--- 	};
--- }
--- ```
--- **Native**: `RESET_VEHICLE_STUCK_TIMER` (`0xD7591B0065AFAA7A`)
---@param nullAttributes integer
---@return fx.Vehicle self
function Vehicle:resetStuckTimer(nullAttributes) end

--- **Native**: `RESET_VEHICLE_WHEELS` (`0x21D2E5662C1F6FED`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:resetWheels(toggle) end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- **Native**: `ROLL_DOWN_WINDOW` (`0x7AD9E6CE657D69E3`)
---@param windowIndex integer
---@return fx.Vehicle self
function Vehicle:rollDownWindow(windowIndex) end

--- ```
--- Roll down all the windows of the vehicle passed through the first parameter.
--- ```
--- **Native**: `ROLL_DOWN_WINDOWS` (`0x85796B0549DDE156`)
---@return fx.Vehicle self
function Vehicle:rollDownWindows() end

--- See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- **Native**: `ROLL_UP_WINDOW` (`0x602E548F46E24D59`)
---@param windowIndex integer
---@return fx.Vehicle self
function Vehicle:rollUpWindow(windowIndex) end

--- This native is used to simulate a high-speed impact for a vehicle when it collides with a breakable object (frag). It's particularly useful in scripted sequences where a vehicle is required to break through a barrier but might not actually be moving at a sufficient speed to do so realistically. Note that this setting is temporary and will reset after one frame, so it needs to be called every frame for a lasting effect.
--- **Native**: `SET_VEHICLE_ACT_AS_IF_HIGH_SPEED_FOR_FRAG_SMASHING` (`0x1F9FB66F3A3842D2`)
---@param actHighSpeed boolean A boolean flag. Set to `true` to make the vehicle act as if it's at high speed for the current frame
---@return fx.Vehicle self
function Vehicle:setActAsIfHighSpeedForFragSmashing(actHighSpeed) end

--- **Native**: `SET_VEHICLE_ACTIVE_DURING_PLAYBACK` (`0xDFFCEF48E511DB48`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setActiveDuringPlayback(toggle) end

--- **Native**: `SET_VEHICLE_ACTIVE_FOR_PED_NAVIGATION` (`0x21115BCD6E44656A`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setActiveForPedNavigation(toggle) end

--- **Native**: `SET_VEHICLE_ALARM` (`0xCDE5E70C1DDB954C`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setAlarm(state) end

--- ```
--- Makes the vehicle accept no passengers.
--- ```
--- **Native**: `SET_VEHICLE_ALLOW_NO_PASSENGERS_LOCKON` (`0x5D14D4154BFE7B2C`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setAllowNoPassengersLockon(toggle) end

--- This native sets the entity's alpha level.
--- **Native**: `SET_ENTITY_ALPHA` (`0x44A0870B7E92D7C0`)
---@param alphaLevel integer The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
---@param skin boolean Whether or not to change the alpha of the entity's skin.
---@return fx.Vehicle self
function Vehicle:setAlpha(alphaLevel, skin) end

--- **Native**: `SET_ENTITY_ALWAYS_PRERENDER` (`0xACAD101E1FB66689`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setAlwaysPrerender(toggle) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_ENTITY_ANGULAR_VELOCITY` (`0x8339643499D1222E`)
---@param coords vector3
---@return fx.Vehicle self
function Vehicle:setAngularVelocity(coords) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `SET_ENTITY_ANIM_CURRENT_TIME` (`0x4487C259F0F70977`)
---@param animDictionary string
---@param animName string
---@param time number
---@return fx.Vehicle self
function Vehicle:setAnimCurrentTime(animDictionary, animName, time) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_ANIM_PHASE` (`0xDDF3CB5A0A4C0B49`)
---@param p1 number
---@param p2 any
---@param p3 boolean
---@return fx.Vehicle self
function Vehicle:setAnimPhase(p1, p2, p3) end

--- **Native**: `SET_ENTITY_ANIM_SPEED` (`0x28D1A16553C51776`)
---@param animDictionary string
---@param animName string
---@param speedMultiplier number
---@return fx.Vehicle self
function Vehicle:setAnimSpeed(animDictionary, animName, speedMultiplier) end

--- Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
---
--- Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
--- **Native**: `SET_ENTITY_AS_MISSION_ENTITY` (`0xAD738C3085FE7E11`)
---@param scriptHostObject boolean Whether or not to assign script info to this entity, if set to false the entity will only be protected from despawning locally.
---@param bGrabFromOtherScript boolean Changes the entity so it's owned by the current script if the entity is already a mission entity. This will only work on entities the machine has control of (non-remote entities).
---@return fx.Vehicle self
function Vehicle:setAsMissionEntity(scriptHostObject, bGrabFromOtherScript) end

--- ```
--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
--- ```
--- **Native**: `SET_VEHICLE_AS_NO_LONGER_NEEDED` (`0x629BFA74418D6239`)
---@return fx.Vehicle self
function Vehicle:setAsNoLongerNeeded() end

--- Vehicle will make a 'rattling' noise when decelerating
--- **Native**: `SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR` (`0x01BB4D577D38BD9E`)
---@param intensity number A value 0.0 - 1.0. Higher the value, the more likely the vehicle is to make the sound while decelerating
---@return fx.Vehicle self
function Vehicle:setAudioBodyDamageFactor(intensity) end

--- **Native**: `SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR` (`0x59E7B488451F4D3A`)
---@param damageFactor number
---@return fx.Vehicle self
function Vehicle:setAudioEngineDamageFactor(damageFactor) end

--- Sets the priority for the given vehicle. This is a hint for the audio system as to what LOD the
--- vehicle should use.
---
--- 'High' priority will bump up the activation range significantly and prevent it
--- from dropping when the vehicle is not within the view frustrum.
---
--- 'Max' will attempt to keep the vehicle at maximum LOD regardless of how far it is from the listener or what it is currently doing. Be careful with this!
---
--- There is a hard limit of 5 simulataneous granular cars (including the player) so we are quite limited on the number
--- we can play at once, so setting vehicles to max priority will reduce the number of engines availble for regular NPC vehicles
---
--- ```cpp
--- enum eAudVehiclePriority {
--- 	AUDIO_VEHICLE_PRIORITY_NORMAL = 0,
--- 	AUDIO_VEHICLE_PRIORITY_MEDIUM = 1,
--- 	AUDIO_VEHICLE_PRIORITY_MAX = 2,
--- 	AUDIO_VEHICLE_PRIORITY_HIGH = 3,
--- }
--- ```
--- **Native**: `SET_AUDIO_VEHICLE_PRIORITY` (`0xE5564483E407F914`)
---@param priority fx.Enum.AudVehiclePriority|integer
---@return fx.Vehicle self
function Vehicle:setAudioPriority(priority) end

--- **Native**: `SET_VEHICLE_AUTOMATICALLY_ATTACHES` (`0x8BA6F76BC53A1493`)
---@param p1 boolean
---@param p2 any
---@return any result
function Vehicle:setAutomaticallyAttaches(p1, p2) end

--- Disables the vehicle from being repaired when a vehicle extra is enabled.
--- **Native**: `SET_VEHICLE_AUTO_REPAIR_DISABLED` (`0x5F3A3574`)
---@param value boolean Setting the value to true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.
---@return fx.Vehicle self
function Vehicle:setAutoRepairDisabled(value) end

--- ```
--- Only works on bikes, both X and Y work in the -1 - 1 range.
--- X forces the bike to turn left or right (-1, 1)
--- Y forces the bike to lean to the left or to the right (-1, 1)
--- Example with X -1/Y 1
--- http://i.imgur.com/TgIuAPJ.jpg
--- ```
--- **Native**: `SET_BIKE_ON_STAND` (`0x9CFA4896C3A53CBB`)
---@param x number
---@param y number
---@return fx.Vehicle self
function Vehicle:setBikeOnStand(x, y) end

--- Sets the anchor state for a boat.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- **Note**: You might want to check if you can use your anchor before with [CAN_ANCHOR_BOAT_HERE](#\_0x26C10ECBDA5D043B).
--- **Native**: `SET_BOAT_ANCHOR` (`0x75DBEC174AEEAD10`)
---@param toggle boolean Set the anchor state `true` deploys the anchor, false `raises` it.
---@return fx.Vehicle self
function Vehicle:setBoatAnchor(toggle) end

--- **Native**: `SET_BOAT_DISABLE_AVOIDANCE` (`0x0A6A279F3AA4FD70`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:setBoatDisableAvoidance(p1) end

--- **Native**: `SET_BOAT_IS_SINKING` (`0xBD32E46AA95C1DD2`)
---@return fx.Vehicle self
function Vehicle:setBoatIsSinking() end

--- Sets the distance from the player at which anchored boats switch between high and low LOD (Level of Detail) buoyancy mode.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_BOAT_LOW_LOD_ANCHOR_DISTANCE` (`0xE842A9398079BD82`)
---@param value number The distance at which the LOD switch occurs. Set to `-1.0` to reset the LOD distance to the default value.
---@return fx.Vehicle self
function Vehicle:setBoatLowLodAnchorDistance(value) end

--- Sets whether a boat should remain anchored even when a player is driving it.
---
--- **Note**: This native is always used with [SET_BOAT_ANCHOR](#\_0x75DBEC174AEEAD10).
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_BOAT_REMAINS_ANCHORED_WHILE_PLAYER_IS_DRIVER` (`0xE3EBAAE484798530`)
---@param toggle boolean Set the anchoring behavior. If `true`, the boat will remain anchored even when a player is driving. If `false`, normal anchoring behavior applies (anchor is raised when a player drives).
---@return fx.Vehicle self
function Vehicle:setBoatRemainsAnchoredWhilePlayerIsDriver(toggle) end

--- **Native**: `SET_BOAT_SINKS_WHEN_WRECKED` (`0x8F719973E1445BA2`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setBoatSinksWhenWrecked(toggle) end

--- ```
--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);
--- SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);
--- Will give a boost-soundeffect.
--- ```
--- **Native**: `SET_VEHICLE_BOOST_ACTIVE` (`0x4A04DE7CAB2739A1`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setBoostActive(toggle) end

--- **Native**: `SET_VEHICLE_BRAKE` (`0xE4E2FD323574965C`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setBrake(toggle) end

--- **Native**: `SET_VEHICLE_BRAKE_LIGHTS` (`0x92B35082E0B42F66`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setBrakeLights(toggle) end

--- Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when `p2` is set to false, instead incrementing arm position by 0.1 (or 10%).
--- **Native**: `SET_VEHICLE_BULLDOZER_ARM_POSITION` (`0xF8EBCCC96ADB9FB7`)
---@param position number
---@param p2 boolean
---@return fx.Vehicle self
function Vehicle:setBulldozerArmPosition(position, p2) end

--- ```
--- On accelerating, spins the driven wheels with the others braked, so you don't go anywhere.
--- ```
--- **Native**: `SET_VEHICLE_BURNOUT` (`0xFB8794444A7D60FB`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setBurnout(toggle) end

--- **Native**: `SET_CAMBERED_WHEELS_DISABLED` (`0x1201E8A3290A3B98`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCamberedWheelsDisabled(toggle) end

--- **Native**: `SET_CAN_AUTO_VAULT_ON_ENTITY` (`0xE12ABE5E3A389A6C`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanAutoVault(toggle) end

--- **Native**: `SET_ENTITY_CAN_BE_DAMAGED` (`0x1760FFA8AB074D66`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanBeDamaged(toggle) end

--- **Native**: `SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP` (`0xE22D8FDE858B8119`)
---@param bCanBeDamaged boolean
---@param relGroup integer
---@return fx.Vehicle self
function Vehicle:setCanBeDamagedByRelationshipGroup(bCanBeDamaged, relGroup) end

--- ```
--- SET_VEHICLE_AL*
--- ```
--- **Native**: `SET_VEHICLE_CAN_BE_LOCKED_ON` (`0x1DDA078D12879EEE`)
---@param canBeLockedOn boolean
---@param unk boolean
---@return fx.Vehicle self
function Vehicle:setCanBeLockedOn(canBeLockedOn, unk) end

--- ```
--- Sets whether the entity can be targeted without being in line-of-sight.
--- ```
--- **Native**: `SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS` (`0xD3997889736FD899`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanBeTargetedWithoutLos(toggle) end

--- ```
--- This has not yet been tested - it's just an assumption of what the types could be.
--- ```
--- **Native**: `SET_VEHICLE_CAN_BE_TARGETTED` (`0x3750146A28097A82`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setCanBeTargetted(state) end

--- **Native**: `SET_VEHICLE_CAN_BE_USED_BY_FLEEING_PEDS` (`0x300504B23BD3B711`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanBeUsedByFleeingPeds(toggle) end

--- **Native**: `SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED` (`0x4C7028F78FFD3681`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setCanBeVisiblyDamaged(state) end

--- **Native**: `NETWORK_SET_ENTITY_CAN_BLEND` (`0xD830567D88A1E873`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanBlend(toggle) end

--- **Native**: `SET_VEHICLE_CAN_BREAK` (`0x59BF8C3D52C92F66`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanBreak(toggle) end

--- **Native**: `SET_CAN_CLIMB_ON_ENTITY` (`0xA80AE305E0A3044F`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanClimb(toggle) end

--- **Native**: `SET_VEHICLE_CAN_DEFORM_WHEELS` (`0x0CDDA42F9E360CA6`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanDeformWheels(toggle) end

--- **Native**: `SET_VEHICLE_CAN_ENGINE_OPERATE_ON_FIRE` (`0x206BC5DC9D1AC70A`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanEngineOperateOnFire(toggle) end

--- **Native**: `SET_VEHICLE_CAN_LEAK_OIL` (`0x51BB2D88D31A914B`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanLeakOil(toggle) end

--- **Native**: `SET_VEHICLE_CAN_LEAK_PETROL` (`0x192547247864DFDD`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanLeakPetrol(toggle) end

--- ```
--- Hardcoded to not work in multiplayer.
--- ```
--- **Native**: `SET_CAN_RESPRAY_VEHICLE` (`0x52BBA29D5EC69356`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setCanRespray(state) end

--- **Native**: `SET_VEHICLE_CAN_SAVE_IN_GARAGE` (`0x428BACCDF5E26EAD`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCanSaveInGarage(toggle) end

--- **Native**: `SET_CAR_BOOT_OPEN` (`0xFC40CBF7B90CA77C`)
---@return fx.Vehicle self
function Vehicle:setCarBootOpen() end

--- Prevents a specified entity from being detached from a Cargobob, even in the event of collisions.
--- **Native**: `SET_CARGOBOB_EXCLUDE_FROM_PICKUP_ENTITY` (`0x1F34B0626C594380`)
---@param entity fx.Entity|integer The entity to remain attached to the Cargobob.
---@return fx.Vehicle self
function Vehicle:setCargobobExcludeFromPickupEntity(entity) end

--- Stops cargobob from being able to detach the attached vehicle.
--- **Native**: `SET_CARGOBOB_FORCE_DONT_DETACH_VEHICLE` (`0x571FEB383F629926`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCargobobForceDontDetach(toggle) end

--- ```
--- Stops the cargobob from being able to attach any vehicle
--- ```
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_CARGOBOB_HOOK_CAN_ATTACH` (`0x94A68DA412C4007D`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCargobobHookCanAttach(toggle) end

--- ```
--- Won't attract or magnetize to any helicopters or planes of course, but that's common sense.
--- ```
--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_ACTIVE` (`0x9A665550F8DA349B`)
---@param isActive boolean
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetActive(isActive) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_EFFECT_RADIUS` (`0xA17BAD153B51547E`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetEffectRadius(p1) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_FALLOFF` (`0x685D5561680D088B`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetFalloff(p1) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_PULL_ROPE_LENGTH` (`0x6D8EAC07506291FB`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetPullRopeLength(p1) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_PULL_STRENGTH` (`0xED8286F71A819BAA`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetPullStrength(p1) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_REDUCED_FALLOFF` (`0x66979ACF5102FD2F`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetReducedFalloff(p1) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_REDUCED_STRENGTH` (`0xE301BD63E9E13CF0`)
---@param vehicle fx.Vehicle|integer
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetReducedStrength(vehicle) end

--- **Native**: `SET_CARGOBOB_PICKUP_MAGNET_STRENGTH` (`0xBCBFCD9D1DAC19E2`)
---@param strength number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupMagnetStrength(strength) end

--- **Native**: `SET_CARGOBOB_PICKUP_ROPE_DAMPING_MULTIPLIER` (`0xCF1182F682F65307`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setCargobobPickupRopeDampingMultiplier(p1) end

--- **Native**: `SET_CARGOBOB_PICKUP_ROPE_TYPE` (`0x0D5F65A8F4EBDAB5`)
---@param state integer
---@return fx.Vehicle self
function Vehicle:setCargobobPickupRopeType(state) end

--- ```
--- Previously named GET_VEHICLE_DEFORMATION_GET_TREE (hash collision)
--- from Decrypted Scripts I found
--- VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/*2*/], 420.0);
--- ```
--- **Native**: `SET_VEHICLE_CEILING_HEIGHT` (`0xA46413066687A328`)
---@param height number
---@return fx.Vehicle self
function Vehicle:setCeilingHeight(height) end

--- **Native**: `SET_CG_AT_BOUNDCENTER` (`0xBE520D9761FF811F`)
---@return fx.Vehicle self
function Vehicle:setCgAtBoundcenter() end

--- ```
--- True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
--- ```
--- **Native**: `SET_ENTITY_CLEANUP_BY_ENGINE` (`0x3910051CCECDB00C`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setCleanupByEngine(toggle) end

--- **Native**: `SET_ENTITY_COLLISION` (`0x1A9205C1B9EE827F`)
---@param toggle boolean
---@param keepPhysics boolean
---@return fx.Vehicle self
function Vehicle:setCollision(toggle, keepPhysics) end

--- colorPrimary & colorSecondary are the paint indexes for the vehicle.
---
--- For a list of valid paint indexes, view: pastebin.com/pwHci0xK
--- **Native**: `SET_VEHICLE_COLOURS` (`0x4F1D4BE3A7F24601`)
---@param colorPrimary integer
---@param colorSecondary integer
---@return fx.Vehicle self
function Vehicle:setColours(colorPrimary, colorSecondary) end

--- **Native**: `SET_ENTITY_COMPLETELY_DISABLE_COLLISION` (`0x9EBC85ED0FFFE51C`)
---@param toggle boolean
---@param keepPhysics boolean
---@return fx.Vehicle self
function Vehicle:setCompletelyDisableCollision(toggle, keepPhysics) end

--- ```
--- Inverts vehicle's controls. So INPUT_VEH_ACCELERATE will be INPUT_VEH_BRAKE and vise versa (same for A/D controls)
--- Doesn't work for planes/helis.
--- ```
--- **Native**: `SET_VEHICLE_CONTROLS_INVERTED` (`0x5B91B229243351A8`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setControlsInverted(state) end

--- Enables or disables the convertible roof on vehicles that support old-style GTA IV roofs, which are not animated. Setting `toggle` to true will apply the roof to the vehicle, and setting it to false will remove the roof, assuming the vehicle has versions with and without a roof.
---
--- If you want to lock or unlock the roof mechanism, use [`SET_CONVERTIBLE_ROOF_LATCH_STATE`](#\_0x1A78AD3D8240536F).
---
--- You can check if the vehicle has a roof with [`DOES_VEHICLE_HAVE_ROOF`](#\_0x8AC862B0B32C5B80).
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- #### Vehicles with both roofed and roofless versions (others may exist; this list is compiled from decompiled scripts).
---
--- *   chino
--- *   voltic
--- *   buccaneer
--- *   buccaneer2
--- *   chino2
--- *   faction
--- *   faction2
--- *   mamba
--- **Native**: `SET_CONVERTIBLE_ROOF` (`0xF39C4F538B5124C2`)
---@param toggle boolean Boolean value where `true` adds the roof and `false` removes it, applicable only if the vehicle has a version with and without a roof.
---@return fx.Vehicle self
function Vehicle:setConvertibleRoof(toggle) end

--- This native is used to latch or unlatch the convertible roof of a vehicle. It allows for direct control over the roof's mechanism without actually opening or closing the roof. This can be useful for scenarios where you need to prepare a vehicle's roof to be opened or closed by another action or to ensure it remains fixed in its current state regardless of other interactions.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_CONVERTIBLE_ROOF_LATCH_STATE` (`0x1A78AD3D8240536F`)
---@param bLatched boolean A boolean value indicating the desired latch state of the roof. Set to `true` to latch (lock) the roof, preventing it from being opened. Set to `false` to unlatch (unlock) the roof, allowing it to be…
---@return fx.Vehicle self
function Vehicle:setConvertibleRoofLatchState(bLatched) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
--- **Native**: `SET_ENTITY_COORDS` (`0x06843DA7060A026B`)
---@param pos vector3 The X coordinate. / The Y coordinate. / The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
---@return fx.Vehicle self
function Vehicle:setCoords(pos, alive, deadFlag, ragdollFlag, clearArea) end

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
---@return fx.Vehicle self
function Vehicle:setCoordsNoOffset(coords, keepTasks, keepIK, doWarp) end

--- **Native**: `SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET` (`0x621873ECE1178967`)
---@param pos vector3
---@param alive boolean
---@param deadFlag boolean
---@param ragdollFlag boolean
---@param clearArea boolean
---@return fx.Vehicle self
function Vehicle:setCoordsWithoutPlantsReset(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- ```
--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
--- ```
--- **Native**: `SET_VEHICLE_CUSTOM_PRIMARY_COLOUR` (`0x7141766F91D15BEA`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Vehicle self
function Vehicle:setCustomPrimaryColour(r, g, b) end

--- ```
--- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
--- ```
--- **Native**: `SET_VEHICLE_CUSTOM_SECONDARY_COLOUR` (`0x36CED73BFED89754`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Vehicle self
function Vehicle:setCustomSecondaryColour(r, g, b) end

--- Apply damage to vehicle at a location. Location is relative to vehicle model (not world).
--- Radius of effect damage applied in a sphere at impact location
--- When `focusOnModel` set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
--- **Native**: `SET_VEHICLE_DAMAGE` (`0xA1DD317EA8FD4F29`)
---@param offset vector3
---@param damage number
---@param radius number the size of the damage sphere to apply
---@param focusOnModel boolean when set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
---@return fx.Vehicle self
function Vehicle:setDamage(offset, damage, radius, focusOnModel) end

--- ```
--- SET_VEHICLE_D*
--- ```
--- **Native**: `SET_VEHICLE_DAMAGE_MODIFIER` (`0x4E20D2A627011E8E`)
---@param p1 number
---@return any result
function Vehicle:setDamageModifier(p1) end

--- **Native**: `SET_DAMPING` (`0xEEA3B200A6FEB65B`)
---@param vertex integer
---@param value number
---@return fx.Vehicle self
function Vehicle:setDamping(vertex, value) end

--- **Native**: `SET_VEHICLE_DASHBOARD_COLOR` (`0x6089CDF6A57F326C`)
---@param color integer
---@return fx.Vehicle self
function Vehicle:setDashboardColor(color) end

--- ```
--- SET_ENTITY_*
--- ```
--- **Native**: `SET_ENTITY_DECALS_DISABLED` (`0x2C2E3DC128F44309`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:setDecalsDisabled(p1) end

--- ```
--- This fixes the deformation of a vehicle but the vehicle health doesn't improve
--- ```
--- **Native**: `SET_VEHICLE_DEFORMATION_FIXED` (`0x953DA1E1B12C0491`)
---@return fx.Vehicle self
function Vehicle:setDeformationFixed() end

--- Only used with the "akula" and "annihilator2" in the decompiled native scripts.
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_DEPLOY_HELI_STUB_WINGS` (`0xB251E0B33E58B424`)
---@param deploy boolean
---@param p2 boolean
---@return fx.Vehicle self
function Vehicle:setDeployHeliStubWings(deploy, p2) end

--- **Native**: `SET_DISABLE_VEHICLE_ENGINE_FIRES` (`0x91A0BD635321F145`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDisableEngineFires(toggle) end

--- Prevents a vehicle from exploding upon sustaining body damage from physical collisions. This can be used to increase the durability of vehicles in high-impact scenarios, such as races or combat situations, by preventing them from being destroyed due to collision-induced body damage.
---
--- For helicopters, you might want to check [`SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE`](#\_0xEDBC8405B3895CC9) instead.
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_DISABLE_EXPLODE_FROM_BODY_DAMAGE_ON_COLLISION` (`0x26E13D440E7F6064`)
---@param disableExplode boolean `true` to disable explosion from body damage on collision; `false` to allow explosions as normal.
---@return fx.Vehicle self
function Vehicle:setDisableExplodeFromBodyDamageOnCollision(disableExplode) end

--- ```
--- True stops vtols from switching modes. Doesn't stop the sound though.
--- ```
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_DISABLE_VEHICLE_FLIGHT_NOZZLE_POSITION` (`0xCE2B43770B655F8F`)
---@param direction boolean
---@return fx.Vehicle self
function Vehicle:setDisableFlightNozzlePosition(direction) end

--- Prevents a helicopter from exploding due to relatively minor body damage.
---
--- ```
--- NativeDB Introduced: v1103
--- ```
--- **Native**: `SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE` (`0xEDBC8405B3895CC9`)
---@param disableExplode boolean `true` to disable explosion from body damage on collision; `false` to allow explosions as normal.
---@return fx.Vehicle self
function Vehicle:setDisableHeliExplodeFromBodyDamage(disableExplode) end

--- Disables wings for `Deluxo` and `Oppressor MK II`. For the Deluxo, it retracts the wings immediately, preventing flight. For the Oppressor Mk II, the wings retract after landing and take-off is not possible, though it can still glide if launched into the air.
--- **Native**: `SET_DISABLE_HOVER_MODE_FLIGHT` (`0x2D55FE374D5FDB91`)
---@param toggle boolean Boolean parameter where setting `true` disables the vehicle's wings, preventing flight. Setting it to `false` allows the vehicle to fly as usual.
---@return fx.Vehicle self
function Vehicle:setDisableHoverModeFlight(toggle) end

--- **Native**: `SET_DISABLE_VEHICLE_PETROL_TANK_DAMAGE` (`0x37C8252A7C92D017`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDisablePetrolTankDamage(toggle) end

--- **Native**: `SET_DISABLE_VEHICLE_PETROL_TANK_FIRES` (`0x465BF26AB9684352`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDisablePetrolTankFires(toggle) end

--- **Native**: `SET_DISABLE_PRETEND_OCCUPANTS` (`0x25367DE49D64CF16`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDisablePretendOccupants(toggle) end

--- **Native**: `SET_DISABLE_SUPERDUMMY_MODE` (`0xB088E9A47AE6EDD5`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:setDisableSuperdummyMode(p1) end

--- **Native**: `SET_VEHICLE_DISABLE_TOWING` (`0x2B6747FAA9DB9D6B`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDisableTowing(toggle) end

--- Disables turret movement when called in a loop. You can still fire and aim. You cannot shoot backwards though.
---
--- ```
--- NativeDB Introduced: v1365
--- ```
--- **Native**: `SET_DISABLE_TURRET_MOVEMENT_THIS_FRAME` (`0xE615BB7A7752C76A`)
---@param turretIdx integer
---@return fx.Vehicle self
function Vehicle:setDisableTurretMovementThisFrame(turretIdx) end

--- R\* used it to "remove" vehicle windows when "nightshark" had some mod, which adding some kind of armored windows. When enabled, you can't break vehicles glass. All your bullets wiil shoot through glass. You also will not able to break the glass with any other way (hitting and etc)
--- **Native**: `SET_DISABLE_VEHICLE_WINDOW_COLLISIONS` (`0x1087BC8EC540DAEB`)
---@param toggle boolean True disables the collision, false enables the collision
---@return fx.Vehicle self
function Vehicle:setDisableWindowCollisions(toggle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `SET_VEHICLE_DOOR_BROKEN` (`0xD4D4F6A4AB575A33`)
---@param doorIndex integer
---@param deleteDoor boolean
---@return fx.Vehicle self
function Vehicle:setDoorBroken(doorIndex, deleteDoor) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `SET_VEHICLE_DOOR_CAN_BREAK` (`0x2FA133A4A9D37ED8`)
---@param doorIndex integer
---@param isBreakable boolean
---@return fx.Vehicle self
function Vehicle:setDoorCanBreak(doorIndex, isBreakable) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `SET_VEHICLE_DOOR_CONTROL` (`0xF2BFA0430F0A0FCB`)
---@param doorIndex integer
---@param speed integer 5 is fast, 1 is slow 3 is medium
---@param angle number
---@return fx.Vehicle self
function Vehicle:setDoorControl(doorIndex, speed, angle) end

--- See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
--- **Native**: `SET_VEHICLE_DOOR_LATCHED` (`0xA5A9653A8D2CAF48`)
---@param doorIndex integer
---@param forceClose boolean
---@param lock boolean
---@param p4 boolean
---@return fx.Vehicle self
function Vehicle:setDoorLatched(doorIndex, forceClose, lock, p4) end

--- Sets the specified door index open on the passed vehicle. See [`IS_VEHICLE_DOOR_FULLY_OPEN`](#\_0x3E933CFF7B111C22).
--- **Native**: `SET_VEHICLE_DOOR_OPEN` (`0x7C65DAC73C35C862`)
---@param doorIndex integer Index of the door you want to open (0-7)
---@param loose boolean Whether the door is "loose" (if true the doors have no "spring" and can be closed easily.)
---@param openInstantly boolean Whether the doors open instantly (if true this native seems to ignore loose)
---@return fx.Vehicle self
function Vehicle:setDoorOpen(doorIndex, loose, openInstantly) end

--- Sets the specified door index shut on the passed vehicle.
---
--- ```cpp
--- enum eDoorId
--- {
--- 	VEH_EXT_DOOR_DSIDE_F = 0,
--- 	VEH_EXT_DOOR_DSIDE_R = 1,
--- 	VEH_EXT_DOOR_PSIDE_F = 2,
--- 	VEH_EXT_DOOR_PSIDE_R = 3,
--- 	VEH_EXT_BONNET = 4,
--- 	VEH_EXT_BOOT = 5,
--- 	// 0x872E72B8 = 0xFFFFFFFF,
--- }
--- ```
--- **Native**: `SET_VEHICLE_DOOR_SHUT` (`0x93D9BD300D7789E5`)
---@param doorIndex fx.Enum.DoorId|integer Index of the door you want to close.
---@param closeInstantly boolean Whether the doors close instantly.
---@return fx.Vehicle self
function Vehicle:setDoorShut(doorIndex, closeInstantly) end

--- Locks the doors of a specified vehicle to a defined lock state, affecting how players and NPCs can interact with the vehicle.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- ```cpp
--- enum eVehicleLockState {
---     // No specific lock state, vehicle behaves according to the game's default settings.
---     VEHICLELOCK_NONE = 0,
---     // Vehicle is fully unlocked, allowing free entry by players and NPCs.
---     VEHICLELOCK_UNLOCKED = 1,
---     // Vehicle is locked, preventing entry by players and NPCs.
---     VEHICLELOCK_LOCKED = 2,
---     // Vehicle locks out only players, allowing NPCs to enter.
---     VEHICLELOCK_LOCKOUT_PLAYER_ONLY = 3,
---     // Vehicle is locked once a player enters, preventing others from entering.
---     VEHICLELOCK_LOCKED_PLAYER_INSIDE = 4,
---     // Vehicle starts in a locked state, but may be unlocked through game events.
---     VEHICLELOCK_LOCKED_INITIALLY = 5,
---     // Forces the vehicle's doors to shut and lock.
---     VEHICLELOCK_FORCE_SHUT_DOORS = 6,
---     // Vehicle is locked but can still be damaged.
---     VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7,
---     // Vehicle is locked, but its trunk/boot remains unlocked.
---     VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED = 8,
---     // Vehicle is locked and does not allow passengers, except for the driver.
---     VEHICLELOCK_LOCKED_NO_PASSENGERS = 9,
---     // Vehicle is completely locked, preventing entry entirely, even if previously inside.
---     VEHICLELOCK_CANNOT_ENTER = 10
--- };
---
--- ```
--- **Native**: `SET_VEHICLE_DOORS_LOCKED` (`0xB664292EAECF7FA6`)
---@param doorLockStatus fx.Enum.VehicleLockState|integer The lock state to apply to the vehicle's doors, see `eVehicleLockState`.
---@return fx.Vehicle self
function Vehicle:setDoorsLocked(doorLockStatus) end

--- **Native**: `SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS` (`0xA2F80B8D040727CC`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDoorsLockedForAllPlayers(toggle) end

--- **Native**: `SET_VEHICLE_DOORS_LOCKED_FOR_NON_SCRIPT_PLAYERS` (`0x9737A37136F07E75`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDoorsLockedForNonScriptPlayers(toggle) end

--- **Native**: `SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER` (`0x517AAF684BB50CD1`)
---@param player fx.Player|integer
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDoorsLockedForPlayer(player, toggle) end

--- **Native**: `SET_VEHICLE_DOORS_LOCKED_FOR_TEAM` (`0xB81F6D4A8F5EEBA8`)
---@param team integer
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDoorsLockedForTeam(team, toggle) end

--- ```
--- NativeDB Introduced: v1365
--- ```
--- **Native**: `SET_VEHICLE_DOORS_LOCKED_FOR_UNK` (`0x203B527D1B77904C`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDoorsLockedForUnk(toggle) end

--- ```
--- Closes all doors of a vehicle:
--- ```
--- **Native**: `SET_VEHICLE_DOORS_SHUT` (`0x781B3D62BB013EF5`)
---@param closeInstantly boolean
---@return fx.Vehicle self
function Vehicle:setDoorsShut(closeInstantly) end

--- Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `SET_ENTITY_DRAW_OUTLINE` (`0x76180407`)
---@param enabled boolean Whether or not to draw an outline.
---@return fx.Vehicle self
function Vehicle:setDrawOutline(enabled) end

--- ```
--- Money pickups are created around cars when they explode. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seem to give the same amount of money.
--- youtu.be/3arlUxzHl5Y
--- i.imgur.com/WrNpYFs.jpg
--- ```
--- **Native**: `SET_VEHICLE_DROPS_MONEY_WHEN_BLOWN_UP` (`0x068F64F2470F9656`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDropsMoneyWhenBlownUp(toggle) end

--- **Native**: `SET_ENTITY_DYNAMIC` (`0x1718DE8E3F2823CA`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setDynamic(toggle) end

--- **Native**: `SET_VEHICLE_ENGINE_CAN_DEGRADE` (`0x983765856F2564F9`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setEngineCanDegrade(toggle) end

--- Starts or stops the engine on the specified vehicle.
--- From what I've tested when I do this to a helicopter the propellers turn off after the engine has started.
--- **Native**: `SET_VEHICLE_ENGINE_ON` (`0x2497C4717C8B881E`)
---@param value boolean true to turn the vehicle on; false to turn it off.
---@param instantly boolean if true, the vehicle will be set to the state immediately; otherwise, the current driver will physically turn on or off the engine.
---@param disableAutoStart boolean If true, the system will prevent the engine from starting when the player got into it.
---@return fx.Vehicle self
function Vehicle:setEngineOn(value, instantly, disableAutoStart) end

--- Incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER`; likely `SET_VEHICLE_ALLOW_*`.
---
--- Toggles a flag related to `SET_VEHICLE_EXCLUSIVE_DRIVER`, however, doesn't enable that feature (or trigger script events related to it).
---
--- See [`_SET_VEHICLE_EXCLUSIVE_DRIVER_2`](#\_0xB5C51B5502E85E83).
---
--- ```
--- NativeDB Removed Parameter 2: int index
--- ```
--- **Native**: `SET_VEHICLE_EXCLUSIVE_DRIVER` (`0x41062318F23ED854`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setExclusiveDriver(toggle) end

--- The **actual** [`SET_VEHICLE_EXCLUSIVE_DRIVER`](#\_0x41062318F23ED854) native.
--- **Native**: `SET_VEHICLE_EXCLUSIVE_DRIVER_2` (`0xB5C51B5502E85E83`)
---@param ped fx.Ped|integer
---@param index integer
---@return fx.Vehicle self
function Vehicle:setExclusiveDriver2(ped, index) end

--- ```
--- Sets a vehicle to be strongly resistant to explosions. p0 is the vehicle; set p1 to false to toggle the effect on/off.
--- ```
--- **Native**: `SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE` (`0x71B0892EC081D60A`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setExplodesOnHighExplosionDamage(toggle) end

--- ```
--- Max value is 32767
--- ```
--- **Native**: `SET_VEHICLE_EXTENDED_REMOVAL_RANGE` (`0x79DF7E806202CE01`)
---@param range integer
---@return fx.Vehicle self
function Vehicle:setExtendedRemovalRange(range) end

--- ```
--- Note: only some vehicle have extras
--- extra ids are from 1 - 9 depending on the vehicle
--- -------------------------------------------------
--- ^ not sure if outdated or simply wrong. Max extra ID for b944 is 14
--- -------------------------------------------------
--- p2 is not a on/off toggle. mostly 0 means on and 1 means off.
--- not sure if it really should be a BOOL.
--- -------------------------------------------------
--- Confirmed p2 does not work as a bool. Changed to int. [0=on, 1=off]
--- ```
--- **Native**: `SET_VEHICLE_EXTRA` (`0x7EE3A3C5E4A40CC9`)
---@param extraId integer
---@param disable boolean
---@return fx.Vehicle self
function Vehicle:setExtra(extraId, disable) end

--- ```
--- They use the same color indexs as SET_VEHICLE_COLOURS.
--- ```
--- **Native**: `SET_VEHICLE_EXTRA_COLOURS` (`0x2036F561ADD12E33`)
---@param pearlescentColor integer
---@param wheelColor integer
---@return fx.Vehicle self
function Vehicle:setExtraColours(pearlescentColor, wheelColor) end

--- Fix a given vehicle.
--- If the vehicle's engine's broken then you cannot fix it with this native.
--- **Native**: `SET_VEHICLE_FIXED` (`0x115722B1B9C14C1C`)
---@return fx.Vehicle self
function Vehicle:setFixed() end

--- This native is a setter for [`GET_VEHICLE_HAS_FLAG`](#\_0xD85C9F57).
--- **Native**: `SET_VEHICLE_FLAG` (`0x63AE1A34`)
---@param flagIndex integer Flag index.
---@param value boolean `true` to enable the flag, `false` to disable it.
---@return boolean result
function Vehicle:setFlag(flagIndex, value) end

--- **Native**: `SET_VEHICLE_FLIGHT_NOZZLE_POSITION_IMMEDIATE` (`0x9AA47FFF660CB932`)
---@param angle number
---@return fx.Vehicle self
function Vehicle:setFlightNozzlePositionImmediate(angle) end

--- ```
--- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.
--- ```
--- **Native**: `SET_FOCUS_ENTITY` (`0x198F77705FA0931D`)
---@return fx.Vehicle self
function Vehicle:setFocus() end

--- **Native**: `SET_VEHICLE_FORCE_AFTERBURNER` (`0xB055A34527CB8FD7`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setForceAfterburner(toggle) end

--- **Native**: `SET_FORCE_HD_VEHICLE` (`0x97CE68CB032583F0`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setForceHd(toggle) end

--- Sets whether a boat should remain in the non-physical, low LOD anchor mode even when a player is driving it.
---
--- **Note**: This native requires [SET_BOAT_REMAINS_ANCHORED_WHILE_PLAYER_IS_DRIVER](#\_0xE3EBAAE484798530) to be set to `true` to work properly.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_FORCE_LOW_LOD_ANCHOR_MODE` (`0xB28B1FE5BFADD7F5`)
---@param toggle boolean Set the forced low LOD anchor mode. If `true`, the boat will remain in low LOD anchor mode even when a player is driving.
---@return fx.Vehicle self
function Vehicle:setForceLowLodAnchorMode(toggle) end

--- ```
--- 0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol
--- ```
--- **Native**: `SET_FORKLIFT_FORK_HEIGHT` (`0x37EBBF3117BD6A25`)
---@param height number
---@return fx.Vehicle self
function Vehicle:setForkliftForkHeight(height) end

--- ```
--- SCALE: Setting the speed to 30 would result in a speed of roughly 60mph, according to speedometer.
--- Speed is in meters per second
--- You can convert meters/s to mph here:
--- http://www.calculateme.com/Speed/MetersperSecond/ToMilesperHour.htm
--- ```
--- **Native**: `SET_VEHICLE_FORWARD_SPEED` (`0xAB54A438726D25D5`)
---@param speed number
---@return fx.Vehicle self
function Vehicle:setForwardSpeed(speed) end

--- ```
--- Seems to be related to the metal parts, not tyres (like i was expecting lol)
--- Must be called every tick.
--- ```
--- **Native**: `SET_VEHICLE_FRICTION_OVERRIDE` (`0x1837AF7C627009BA`)
---@param friction number
---@return fx.Vehicle self
function Vehicle:setFrictionOverride(friction) end

--- ```
--- It switch to highbeam when p1 is set to true.
--- ```
--- **Native**: `SET_VEHICLE_FULLBEAM` (`0x8B7FD87F0DDB421E`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setFullbeam(toggle) end

--- Focuses the camera on the specified vehicle.
--- **Native**: `SET_GAMEPLAY_VEHICLE_HINT` (`0xA2297E18F3E71C2E`)
---@param offset vector3 Position offset
---@param p4 boolean
---@param time integer Effect duration
---@param easeInTime integer Effect fade in duration
---@param easeOutTime integer EFfect fade out duration
---@return fx.Vehicle self
function Vehicle:setGameplayHint(offset, p4, time, easeInTime, easeOutTime) end

--- Sets the vehicles gear ratio on choosen gear, reverse gear needs to be a negative float and forward moving gear needs to be a positive float. Refer to the examples if confused.
--- **Native**: `SET_VEHICLE_GEAR_RATIO` (`0x496EF2F2`)
---@param gear integer The vehicles gear you want to change.
---@param ratio number The gear ratio you want to use.
---@return fx.Vehicle self
function Vehicle:setGearRatio(gear, ratio) end

--- ```
--- Allows creation of CEventShockingPlaneFlyby, CEventShockingHelicopterOverhead, and other(?) Shocking events
--- ```
--- **Native**: `SET_VEHICLE_GENERATES_ENGINE_SHOCKING_EVENTS` (`0x279D50DE5652D935`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setGeneratesEngineShockingEvents(toggle) end

--- **Native**: `NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER` (`0x4BA166079D658ED4`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:setGhostedWithOwner(p1) end

--- **Native**: `SET_VEHICLE_GRAVITY` (`0x89F149B6131E57DA`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setGravity(toggle) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
--- Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
--- **Native**: `SET_VEHICLE_HANDLING_FIELD` (`0x2BA40795`)
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value any The value to set.
---@return fx.Vehicle self
function Vehicle:setHandlingField(class_, fieldName, value) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
--- Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
--- **Native**: `SET_VEHICLE_HANDLING_FLOAT` (`0x488C86D2`)
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value number The floating-point value to set.
---@return fx.Vehicle self
function Vehicle:setHandlingFloat(class_, fieldName, value) end

--- **Native**: `SET_VEHICLE_HANDLING_HASH_FOR_AI` (`0x10655FAB9915623D`)
---@param hash integer|string
---@return fx.Vehicle self
function Vehicle:setHandlingHashForAi(hash) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
--- **Native**: `SET_VEHICLE_HANDLING_INT` (`0xC37F4CF9`)
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value integer The integer value to set.
---@return fx.Vehicle self
function Vehicle:setHandlingInt(class_, fieldName, value) end

--- Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
--- **Native**: `SET_VEHICLE_HANDLING_VECTOR` (`0x12497890`)
---@param class_ string The handling class to set. Only "CHandlingData" is supported at this time.
---@param fieldName string The field name to set. These match the keys in `handling.meta`.
---@param value vector3 The Vector3 value to set.
---@return fx.Vehicle self
function Vehicle:setHandlingVector(class_, fieldName, value) end

--- **Native**: `SET_VEHICLE_HAS_BEEN_DRIVEN_FLAG` (`0x02398B627547189C`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setHasBeenDrivenFlag(toggle) end

--- **Native**: `SET_VEHICLE_HAS_BEEN_OWNED_BY_PLAYER` (`0x2B5F9D2AF1F1722D`)
---@param owned boolean
---@return fx.Vehicle self
function Vehicle:setHasBeenOwnedByPlayer(owned) end

--- **Native**: `SET_ENTITY_HAS_GRAVITY` (`0x4A4722448F18EEF5`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setHasGravity(toggle) end

--- **Native**: `SET_VEHICLE_HAS_MUTED_SIRENS` (`0xD8050E0EB60CF274`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setHasMutedSirens(toggle) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_VEH_HAS_RADIO_OVERRIDE` (`0x3E45765F3FBB582F`)
---@return fx.Vehicle self
function Vehicle:setHasRadioOverride() end

--- ```
--- if true, axles won't bend.
--- ```
--- **Native**: `SET_VEHICLE_HAS_STRONG_AXLES` (`0x92F0CF722BC4202F`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setHasStrongAxles(toggle) end

--- Sets whether the vehicle's lights can be broken.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_VEHICLE_HAS_UNBREAKABLE_LIGHTS` (`0x1AA8A837D2169D94`)
---@param toggle boolean Set the lights' breakability `true` makes lights unbreakable, `false` allows them to break.
---@return fx.Vehicle self
function Vehicle:setHasUnbreakableLights(toggle) end

--- Sets the vehicle headlight shadow flags.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- ```cpp
--- enum eVehicleHeadlightShadowFlags {
---     // Default (Lights can be toggled between off, normal and high beams)
---     NO_HEADLIGHT_SHADOWS = 0,
---     // Lights Disabled (Lights are fully disabled, cannot be toggled)
---     HEADLIGHTS_CAST_DYNAMIC_SHADOWS = 1,
---     // Always On (Lights can be toggled between normal and high beams)
---     HEADLIGHTS_CAST_STATIC_SHADOWS = 2,
---     HEADLIGHTS_CAST_FULL_SHADOWS = 3
--- };
--- ```
--- **Native**: `SET_VEHICLE_HEADLIGHT_SHADOWS` (`0x1FD09E7390A74D54`)
---@param flag fx.Enum.VehicleHeadlightShadowFlags|integer A value from `eVehicleHeadlightShadowFlags` representing the desired headlight shadow flag.
---@return fx.Vehicle self
function Vehicle:setHeadlightShadows(flag) end

--- ```
--- Equivalent of SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);
--- this native works on planes to?
--- ```
--- **Native**: `SET_HELI_BLADES_FULL_SPEED` (`0xA178472EBB8AE60D`)
---@return fx.Vehicle self
function Vehicle:setHeliBladesFullSpeed() end

--- ```
--- Sets the speed of the helicopter blades in percentage of the full speed.
--- vehicleHandle: The helicopter.
--- speed: The speed in percentage, 0.0f being 0% and 1.0f being 100%.
--- ```
--- **Native**: `SET_HELI_BLADES_SPEED` (`0xFD280B4D7F3ABC4D`)
---@param speed number
---@return fx.Vehicle self
function Vehicle:setHeliBladesSpeed(speed) end

--- Set a specific offset for helis chasing target in combat
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_HELI_COMBAT_OFFSET` (`0x0A3F820A9A9A9AC5`)
---@param coords vector3 Offset along the X-axis (left/right) relative to the helicopter's current position and orientation / Offset along the Y-axis (forward/backward) relative to the helicopter's current position and orien…
---@return fx.Vehicle self
function Vehicle:setHeliCombatOffset(coords) end

--- ```
--- value between 0.0 and 1.0
--- ```
--- **Native**: `SET_HELICOPTER_ROLL_PITCH_YAW_MULT` (`0x6E0859B530A365CC`)
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setHelicopterRollPitchYawMult(multiplier) end

--- Makes a helicopter resistant to multiple explosions. When enabled, helicopters can survive two or more explosions.
---
--- ```
--- NativeDB Introduced: 2545
--- ```
--- **Native**: `SET_HELI_RESIST_TO_EXPLOSION` (`0x8074CC1886802912`)
---@param bResistToExplosion boolean Set to `true` to make the helicopter resistant to explosions, or `false` to disable this resistance.
---@return fx.Vehicle self
function Vehicle:setHeliResistToExplosion(bResistToExplosion) end

--- Enables or disables the ability for a helicopter's tail boom to break off.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_HELI_TAIL_BOOM_CAN_BREAK_OFF` (`0x3EC8BF18AA453FE9`)
---@param toggle boolean Determines whether the helicopter's tail boom can break off.
---@return fx.Vehicle self
function Vehicle:setHeliTailBoomCanBreakOff(toggle) end

--- **Native**: `SET_HELI_TURBULENCE_SCALAR` (`0xE6F13851780394DA`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setHeliTurbulenceScalar(p1) end

--- **Native**: `SET_HORN_ENABLED` (`0x76D683C108594D0E`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setHornEnabled(toggle) end

--- ```
--- NativeDB Introduced: v1365
--- ```
--- **Native**: `SET_VEHICLE_HORN_VARIATION` (`0x0350E7E17BA767D0`)
---@param value integer
---@return fx.Vehicle self
function Vehicle:setHornVariation(value) end

--- This native allows opening or closing the wings of the Deluxo/Oppressor. For the Deluxo, wing deployment depends on sufficient altitude.
--- **Native**: `SET_HOVER_MODE_WING_RATIO` (`0x70A252F60A3E036B`)
---@param ratio number Between 0.0 and 1.0. 0.0 is wings closed, 1.0 is wings open.
---@return fx.Vehicle self
function Vehicle:setHoverModeWingRatio(ratio) end

--- **Native**: `SET_HYDRAULIC_RAISED` (`0x28B18377EB6E25F6`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setHydraulicRaised(toggle) end

--- **Native**: `SET_HYDRAULIC_WHEEL_STATE` (`0x8EA86DF356801C7D`)
---@param state integer
---@return fx.Vehicle self
function Vehicle:setHydraulicWheelState(state) end

--- ```
--- Sets vehicle wheel hydraulic states transition. Known states:
--- 0 - reset
--- 1 - raise wheel (uses value arg, works just like _SET_VEHICLE_HYDRAULIC_WHEEL_VALUE)
--- 2 - jump using wheel
--- ```
--- **Native**: `SET_HYDRAULIC_WHEEL_STATE_TRANSITION` (`0xC24075310A8B9CD1`)
---@param wheelId integer
---@param state integer
---@param value number
---@param p4 number
---@return fx.Vehicle self
function Vehicle:setHydraulicWheelStateTransition(wheelId, state, value, p4) end

--- ```
--- Works only on vehicles that support hydraulic.
--- ```
--- **Native**: `SET_HYDRAULIC_WHEEL_VALUE` (`0x84EA99C62CB3EF0C`)
---@param wheelId integer
---@param value number
---@return fx.Vehicle self
function Vehicle:setHydraulicWheelValue(wheelId, value) end

--- **Native**: `SET_ENTITY_ICON_COLOR` (`0x1D5F595CCAE2E238`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return fx.Vehicle self
function Vehicle:setIconColor(red, green, blue, alpha) end

--- **Native**: `SET_ENTITY_ICON_VISIBILITY` (`0xE0E8BEECCA96BA31`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setIconVisibility(toggle) end

--- **Native**: `SET_VEHICLE_INACTIVE_DURING_PLAYBACK` (`0x06582AFF74894C75`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setInactiveDuringPlayback(toggle) end

--- **Native**: `SET_IN_VEHICLE_CAM_STATE_THIS_UPDATE` (`0xE9EA16D6E54CDCA4`)
---@param p1 integer
---@return fx.Vehicle self
function Vehicle:setInCamStateThisUpdate(p1) end

--- ```
--- Sets the turn signal enabled for a vehicle.
--- Set turnSignal to 1 for left light, 0 for right light.
--- ```
--- **Native**: `SET_VEHICLE_INDICATOR_LIGHTS` (`0xB5D45264751B7DF0`)
---@param turnSignal integer
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setIndicatorLights(turnSignal, toggle) end

--- **Native**: `SET_VEHICLE_INDIVIDUAL_DOORS_LOCKED` (`0xBE70724027F85BCD`)
---@param doorIndex fx.Enum.DoorId|integer See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
---@param doorLockStatus integer See eCarLock declared in [`SET_VEHICLE_DOORS_LOCKED`](#\_0xB664292EAECF7FA6)
---@return fx.Vehicle self
function Vehicle:setIndividualDoorsLocked(doorIndex, doorLockStatus) end

--- This native sets whether a specific vehicle influences the player's wanted level when it is involved in an incident that typically triggers a wanted response, such as being marked as a "victim" vehicle.
---
--- This is particularly useful when utilizing the wanted system from GTA, and you want to prevent a vehicle from affecting the wanted level when it is stolen. In the decompiled scripts this native is only used to disable the influence of the vehicle on the wanted level.
--- **Native**: `SET_VEHICLE_INFLUENCES_WANTED_LEVEL` (`0x0AD9E8F87FF7C16F`)
---@param influenceWantedLevel boolean A boolean value. Set to `true` to make the vehicle influence the wanted level; `false` to prevent it from doing so.
---@return fx.Vehicle self
function Vehicle:setInfluencesWantedLevel(influenceWantedLevel) end

--- **Native**: `SET_VEHICLE_INTERIOR_COLOR` (`0xF40DD601A65F7F19`)
---@param color integer
---@return fx.Vehicle self
function Vehicle:setInteriorColor(color) end

--- **Native**: `SET_VEHICLE_INTERIORLIGHT` (`0xBC2042F090AF6AD3`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setInteriorlight(toggle) end

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
---@return fx.Vehicle self
function Vehicle:setInvincible(toggle) end

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
---@return fx.Vehicle self
function Vehicle:setInvisibleToNetwork(toggle) end

--- ```
--- Setting this to false, makes the specified vehicle to where if you press Y your character doesn't even attempt the animation to enter the vehicle. Hence it's not considered aka ignored.
--- ```
--- **Native**: `SET_VEHICLE_IS_CONSIDERED_BY_PLAYER` (`0x31B927BBC44156CD`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setIsConsideredByPlayer(toggle) end

--- ```
--- p1 (toggle) was always 1 (true) except in one case in the b678 scripts.
--- ```
--- **Native**: `SET_VEHICLE_IS_RACING` (`0x07116E24E9D1929D`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setIsRacing(toggle) end

--- **Native**: `SET_VEHICLE_IS_STOLEN` (`0x67B2C79AA7FF5738`)
---@param isStolen boolean
---@return fx.Vehicle self
function Vehicle:setIsStolen(isStolen) end

--- **Native**: `SET_ENTITY_IS_TARGET_PRIORITY` (`0xEA02E132F5C68722`)
---@param p1 boolean
---@param p2 number
---@return fx.Vehicle self
function Vehicle:setIsTargetPriority(p1, p2) end

--- ```
--- Sets the wanted state of this vehicle.
--- ```
--- **Native**: `SET_VEHICLE_IS_WANTED` (`0xF7EC25A3EBEEC726`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setIsWanted(state) end

--- Calling this native will keep a vehicle's engine running after exiting.
--- **Native**: `SET_VEHICLE_KEEP_ENGINE_ON_WHEN_ABANDONED` (`0xB8FBC8B1330CA9B4`)
---@param toggle boolean `true` to keep the engine on, otherwise `false`.
---@return fx.Vehicle self
function Vehicle:setKeepEngineOnWhenAbandoned(toggle) end

--- **Native**: `SET_VEHICLE_KERS_ALLOWED` (`0x99C82F8A139F3E4E`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setKersAllowed(toggle) end

--- **Native**: `SET_LAST_DRIVEN_VEHICLE` (`0xACFB2463CC22BED2`)
---@return fx.Vehicle self
function Vehicle:setLastDriven() end

--- Sets the vehicle lights state. Allowing for different lighting modes.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- ```cpp
--- enum eVehicleLightSetting {
---     // Normal light behavior. Lights cycle through off, then low beams, then high beams.
---     // Note: It's affected by day or night; high beams don't exist in daytime.
---     NO_VEHICLE_LIGHT_OVERRIDE = 0,
---     // Vehicle doesn't have lights, always off.
---     FORCE_VEHICLE_LIGHTS_OFF  = 1,
---     // Vehicle has always-on lights.
---     // During day: Cycles between low beams and high beams.
---     // At night: Cycles between low beams, low beams, and high beams.
---     FORCE_VEHICLE_LIGHTS_ON   = 2,
---     // Sets vehicle lights on. Behaves like normal lights (same as 0).
---     SET_VEHICLE_LIGHTS_ON     = 3,
---     // Sets vehicle lights off. Behaves like normal lights (same as 0).
---     SET_VEHICLE_LIGHTS_OFF    = 4
--- };
--- ```
--- **Native**: `SET_VEHICLE_LIGHTS` (`0x34E710FF01247C5A`)
---@param state fx.Enum.VehicleLightSetting|integer A value from `eVehicleLightSetting` representing the desired light setting.
---@return fx.Vehicle self
function Vehicle:setLights(state) end

--- Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
---
--- Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SET_ENTITY_LOAD_COLLISION_FLAG` (`0x0DC7CABAB1E9B67E`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setLoadCollisionFlag(toggle) end

--- Sets the provided entity not visible for yourself for the current frame.
--- **Native**: `SET_ENTITY_LOCALLY_INVISIBLE` (`0xE135A9FF3F5D05D8`)
---@return fx.Vehicle self
function Vehicle:setLocallyInvisible() end

--- Sets the provided entity visible for yourself for the current frame.
--- **Native**: `SET_ENTITY_LOCALLY_VISIBLE` (`0x241E289B5C059EDC`)
---@return fx.Vehicle self
function Vehicle:setLocallyVisible() end

--- **Native**: `SET_VEHICLE_LOD_MULTIPLIER` (`0x93AE6A61BE015BF1`)
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setLodMultiplier(multiplier) end

--- Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
--- **Native**: `SET_ENTITY_MATRIX` (`0xFB0639B`)
---@param forward vector3
---@param right vector3
---@param up vector3
---@param at vector3
---@return fx.Vehicle self
function Vehicle:setMatrix(forward, right, up, at) end

--- To reset the max speed, set the `speed` value to `0.0` or lower.
--- **Native**: `SET_VEHICLE_MAX_SPEED` (`0xBAA045B4E42F3C06`)
---@param speed number The speed limit in meters per second.
---@return fx.Vehicle self
function Vehicle:setMaxSpeed(speed) end

--- **Native**: `SET_MISSION_TRAIN_COORDS` (`0x591CA673AA6AB736`)
---@param coords vector3
---@return fx.Vehicle self
function Vehicle:setMissionTrainCoords(coords) end

--- ```cpp
--- // eVehicleModType values modified to conform to script native reorganization (see 0x140D25327 in 1604).
--- enum eVehicleModType
--- {
--- 	VMT_SPOILER = 0,
--- 	VMT_BUMPER_F = 1,
--- 	VMT_BUMPER_R = 2,
--- 	VMT_SKIRT = 3,
--- 	VMT_EXHAUST = 4,
--- 	VMT_CHASSIS = 5,
--- 	VMT_GRILL = 6,
--- 	VMT_BONNET = 7,
--- 	VMT_WING_L = 8,
--- 	VMT_WING_R = 9,
--- 	VMT_ROOF = 10,
--- 	VMT_ENGINE = 11,
--- 	VMT_BRAKES = 12,
--- 	VMT_GEARBOX = 13,
--- 	VMT_HORN = 14,
--- 	VMT_SUSPENSION = 15,
--- 	VMT_ARMOUR = 16,
--- 	VMT_NITROUS = 17,
--- 	VMT_TURBO = 18,
--- 	VMT_SUBWOOFER = 19,
--- 	VMT_TYRE_SMOKE = 20,
--- 	VMT_HYDRAULICS = 21,
--- 	VMT_XENON_LIGHTS = 22,
--- 	VMT_WHEELS = 23,
--- 	VMT_WHEELS_REAR_OR_HYDRAULICS = 24,
--- 	VMT_PLTHOLDER = 25,
--- 	VMT_PLTVANITY = 26,
--- 	VMT_INTERIOR1 = 27,
--- 	VMT_INTERIOR2 = 28,
--- 	VMT_INTERIOR3 = 29,
--- 	VMT_INTERIOR4 = 30,
--- 	VMT_INTERIOR5 = 31,
--- 	VMT_SEATS = 32,
--- 	VMT_STEERING = 33,
--- 	VMT_KNOB = 34,
--- 	VMT_PLAQUE = 35,
--- [...]
--- **Native**: `SET_VEHICLE_MOD` (`0x6AF0636DDEDCB6DD`)
---@param modType fx.Enum.VehicleModType|integer
---@param modIndex integer
---@param customTires boolean
---@return fx.Vehicle self
function Vehicle:setMod(modType, modIndex, customTires) end

--- ```
--- paintType:
--- 0: Normal
--- 1: Metallic
--- 2: Pearl
--- 3: Matte
--- 4: Metal
--- 5: Chrome
--- color: number of the color.
--- p3 seems to always be 0.
--- ```
--- **Native**: `SET_VEHICLE_MOD_COLOR_1` (`0x43FEB945EE7F85B8`)
---@param paintType integer
---@param color integer
---@param pearlescentColor integer
---@return fx.Vehicle self
function Vehicle:setModColor1(paintType, color, pearlescentColor) end

--- ```
--- Changes the secondary paint type and color
--- paintType:
--- 0: Normal
--- 1: Metallic
--- 2: Pearl
--- 3: Matte
--- 4: Metal
--- 5: Chrome
--- color: number of the color
--- ```
--- **Native**: `SET_VEHICLE_MOD_COLOR_2` (`0x816562BADFDEC83E`)
---@param paintType integer
---@param color integer
---@return fx.Vehicle self
function Vehicle:setModColor2(paintType, color) end

--- **Native**: `SET_ENTITY_MOTION_BLUR` (`0x295D82A8559F9150`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setMotionBlur(toggle) end

--- This method is utilized solely for debugging purposes and is functional only in debug builds of the game. Please note that its functionality may not be available in the retail version.
--- **Native**: `SET_VEHICLE_NAME_DEBUG` (`0xBFDF984E2C22B94F`)
---@param name string Debug name.
---@return fx.Vehicle self
function Vehicle:setNameDebug(name) end

--- **Native**: `SET_VEHICLE_NEEDS_TO_BE_HOTWIRED` (`0xFBA550EA44404EE6`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setNeedsToBeHotwired(toggle) end

--- ```
--- Sets the neon lights of the specified vehicle on/off.
--- Indices:
--- 0 = Left
--- 1 = Right
--- 2 = Front
--- 3 = Back
--- ```
--- **Native**: `SET_VEHICLE_NEON_LIGHT_ENABLED` (`0x2AA720E4287BF269`)
---@param index integer
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setNeonLightEnabled(index, toggle) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_VEHICLE_NEON_LIGHTS_COLOR_2` (`0xB93B2867F7B479D1`)
---@param color integer
---@return fx.Vehicle self
function Vehicle:setNeonLightsColor2(color) end

--- Sets the color of the neon lights on the specified vehicle.
---
--- RGB values and colour names taken from the decompiled scripts:
---
--- | Colour         |  R  |  G  |  B  |
--- |---------------|:---:|:---:|:---:|
--- | White         | 222 | 222 | 255 |
--- | Blue          | 2   | 21  | 255 |
--- | Electric Blue | 3   | 83  | 255 |
--- | Mint Green    | 0   | 255 | 140 |
--- | Lime Green    | 94  | 255 | 1   |
--- | Yellow        | 255 | 255 | 0   |
--- | Golden Shower | 255 | 150 | 0   |
--- | Orange        | 255 | 62  | 0   |
--- | Red           | 255 | 1   | 1   |
--- | Pony Pink     | 255 | 50  | 100 |
--- | Hot Pink      | 255 | 5   | 190 |
--- | Purple        | 35  | 1   | 255 |
--- | Blacklight    | 15  | 3   | 255 |
--- **Native**: `SET_VEHICLE_NEON_LIGHTS_COLOUR` (`0x8E0A582209A62695`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Vehicle self
function Vehicle:setNeonLightsColour(r, g, b) end

--- **Native**: `SET_NETWORK_VEHICLE_AS_GHOST` (`0x6274C4712850841E`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setNetworkAsGhost(toggle) end

--- ```
--- Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
--- ```
--- **Native**: `SET_NETWORK_ENABLE_VEHICLE_POSITION_CORRECTION` (`0x838DA0936A24ED4D`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setNetworkEnablePositionCorrection(toggle) end

--- ```
--- rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
--- ```
--- **Native**: `SET_NETWORK_VEHICLE_POSITION_UPDATE_MULTIPLIER` (`0xA2A707979FE754DC`)
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setNetworkPositionUpdateMultiplier(multiplier) end

--- ```
--- NativeDB Introduced: 3095
--- ```
---
--- Activates or deactivates the nitrous system in the specified vehicle, based on the boolean value provided.
--- You can clear the nitrous with [`CLEAR_NITROUS`](#\_0xC889AE921400E1ED), if you want to have more control on the nitrous and those settings, use [`SET_OVERRIDE_NITROUS_LEVEL`](#\_0xC8E9B6B71B8E660D)
--- **Native**: `SET_NITROUS_IS_ACTIVE` (`0x465EEA70AF251045`)
---@param isActive boolean A boolean value where `true` activates the nitrous system and `false` deactivates it.
---@return fx.Vehicle self
function Vehicle:setNitrousIsActive(isActive) end

--- ```
--- Calling this function disables collision between two entities.
--- The importance of the order for entity1 and entity2 is unclear.
--- The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--- ```
--- **Native**: `SET_ENTITY_NO_COLLISION_ENTITY` (`0xA53ED5520C07654A`)
---@param entity2 fx.Entity|integer
---@param thisFrameOnly boolean
---@return fx.Vehicle self
function Vehicle:setNoCollisionEntity(entity2, thisFrameOnly) end

--- ```
--- Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.
--- ```
---
--- ```
--- NativeDB Added Parameter 2: float p1
--- ```
--- **Native**: `SET_VEHICLE_ON_GROUND_PROPERLY` (`0x49733E92263139D1`)
---@return boolean result
function Vehicle:setOnGroundProperly() end

--- **Native**: `SET_ENTITY_ONLY_DAMAGED_BY_PLAYER` (`0x79F020FF9EDC0748`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setOnlyDamagedByPlayer(toggle) end

--- **Native**: `SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP` (`0x7022BD828FA0B082`)
---@param p1 boolean
---@param relationshipHash integer|string
---@return fx.Vehicle self
function Vehicle:setOnlyDamagedByRelationshipGroup(p1, relationshipHash) end

--- Enables or disables the opening of a vehicle's rear doors in the event of a sticky bomb explosion. This native is effective for armored vehicles, such as the Stockade (Brinks vehicle), allowing the rear doors to be opened through controlled explosions, which might otherwise remain locked due to the vehicle nature.
--- **Native**: `SET_OPEN_REAR_DOORS_ON_EXPLOSION` (`0x1B212B26DD3C04DF`)
---@param toggle boolean A boolean value where `true` allows the rear doors to open upon explosion, and `false` prevents them from opening.
---@return fx.Vehicle self
function Vehicle:setOpenRearDoorsOnExplosion(toggle) end

--- Set state to true to extend the wings, false to retract them.
--- **Native**: `SET_OPPRESSOR_TRANSFORM_STATE` (`0x544996C0081ABDEB`)
---@param extend boolean Set to true to extend the wings, false to retract them.
---@return fx.Vehicle self
function Vehicle:setOppressorTransformState(extend) end

--- ```
--- Tested on the player's current vehicle. Unless you kill the driver, the vehicle doesn't loose control, however, if enabled, explodeOnImpact is still active. The moment you crash, boom.
--- ```
--- **Native**: `SET_VEHICLE_OUT_OF_CONTROL` (`0xF19D095E42D430CC`)
---@param killDriver boolean
---@param explodeOnImpact boolean
---@return fx.Vehicle self
function Vehicle:setOutOfControl(killDriver, explodeOnImpact) end

--- ```
--- NativeDB Introduced: v1604
--- NativeDB Added Parameter 2 (2060): float durationMod : A multiplier applied to the default nitrous duration (default is 3 seconds).
--- NativeDB Added Parameter 3 (2060): float power : A multiplier applied to the default nitrous power multiplier (default is 3).
--- NativeDB Added Parameter 4 (2060): float rechargeTime : A multiplier applied to the default nitrous recharge rate.
--- NativeDB Added Parameter 5 (2060): BOOL disableSound : A boolean to disable the default nitrous sound when the nitrous is active.
--- ```
---
--- Overrides the default settings of a vehicle's nitrous system, allowing custom control over its performance characteristics.
--- **Native**: `SET_OVERRIDE_NITROUS_LEVEL` (`0xC8E9B6B71B8E660D`)
---@param override boolean A boolean toggle to enable or disable the override settings.
---@return fx.Vehicle self
function Vehicle:setOverrideNitrousLevel(override) end

--- **Native**: `SET_VEHICLE_PARACHUTE_ACTIVE` (`0x0BFFB028B3DD0A97`)
---@param active boolean
---@return fx.Vehicle self
function Vehicle:setParachuteActive(active) end

--- ```
--- parachuteModel = 230075693
--- ```
--- **Native**: `SET_VEHICLE_PARACHUTE_MODEL` (`0x4D610C6B56031351`)
---@param modelHash fx.Model|integer|string
---@return fx.Vehicle self
function Vehicle:setParachuteModel(modelHash) end

--- ```
--- colorIndex = 0 - 7
--- ```
--- **Native**: `SET_VEHICLE_PARACHUTE_TEXTURE_VARIATION` (`0xA74AD2439468C883`)
---@param textureVariation integer
---@return fx.Vehicle self
function Vehicle:setParachuteTextureVariation(textureVariation) end

--- **Native**: `SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE` (`0xACEE6F360FC1F6B6`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:setParticleFxCamInsideNonplayer(p1) end

--- Configures an entity to either allow or prevent it from being picked up by Cargobobs.
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_PICK_UP_BY_CARGOBOB_DISABLED` (`0xD7B80E7C3BEFC396`)
---@param toggle boolean A boolean value where `true` prevents the entity from being picked up by Cargobobs, and `false` allows it.
---@return fx.Vehicle self
function Vehicle:setPickUpByCargobobDisabled(toggle) end

--- ```
--- min: 1.9f, max: 100.0f
--- ```
--- **Native**: `SET_PICKUP_ROPE_LENGTH_FOR_CARGOBOB` (`0x877C1EAEAC531023`)
---@param length1 number
---@param length2 number
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setPickupRopeLengthForCargobob(length1, length2, state) end

--- Set the vehicle's pitch bias. Only works on planes.
--- **Native**: `SET_VEHICLE_PITCH_BIAS` (`0x2A6CC9F2`)
---@param value number Pitch bias value.
---@return fx.Vehicle self
function Vehicle:setPitchBias(value) end

--- ```
--- Works just like SET_VEHICLE_ENGINE_HEALTH, didn't saw any difference. But this native works only for planes.
--- ```
--- **Native**: `SET_PLANE_ENGINE_HEALTH` (`0x2A86A0475B6A1434`)
---@param health number
---@return fx.Vehicle self
function Vehicle:setPlaneEngineHealth(health) end

--- **Native**: `SET_PLANE_PROPELLERS_HEALTH` (`0x4C815EB175086F84`)
---@param health number
---@return fx.Vehicle self
function Vehicle:setPlanePropellersHealth(health) end

--- **Native**: `SET_PLANE_RESIST_TO_EXPLOSION` (`0xE16142B94664DEFD`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setPlaneResistToExplosion(toggle) end

--- Adjusts the scale of damage applied to a specified section of a plane.
--- In the decompiled scripts the `damageScale` is always set to `0f` (maybe to disable damages on the specified section)
---
--- ```cpp
--- enum ePlaneDamageSection {
---     WING_L = 0,
---     WING_R = 1,
---     TAIL = 2,
---     ENGINE_L = 3,
---     ENGINE_R = 4,
---     ELEVATOR_L = 5,
---     ELEVATOR_R = 6,
---     AILERON_L = 7,
---     AILERON_R = 8,
---     RUDDER = 9,
---     RUDDER_2 = 10,
---     AIRBRAKE_L = 11,
---     AIRBRAKE_R = 12
--- }
--- ```
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_PLANE_SECTION_DAMAGE_SCALE` (`0x0BBB9A7A8FFE931B`)
---@param damageSection fx.Enum.PlaneDamageSection|integer Specific section of the plane, as defined in the `ePlaneDamageSection` enum, where the damage scale will be adjusted.
---@param damageScale number A float value representing the scale of damage to be applied to the specified section.
---@return fx.Vehicle self
function Vehicle:setPlaneSectionDamageScale(damageSection, damageScale) end

--- This native sets the turbulence multiplier. It only works for planes.
--- 0.0 = no turbulence at all.
--- 1.0 = heavy turbulence.
---
--- Works by just calling it once, does not need to be called every tick.
--- **Native**: `SET_PLANE_TURBULENCE_MULTIPLIER` (`0xAD2D28A1AFDFF131`)
---@param multiplier number The turbulence multiplier. Value between 0.0 and 1.0
---@return fx.Vehicle self
function Vehicle:setPlaneTurbulenceMultiplier(multiplier) end

--- **Native**: `SET_PLAYBACK_SPEED` (`0x6683AB880E427778`)
---@param speed number
---@return fx.Vehicle self
function Vehicle:setPlaybackSpeed(speed) end

--- Identical to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER with 0 as arguments for p1 and p3.
--- **Native**: `SET_PLAYBACK_TO_USE_AI` (`0xA549C3B37EA28131`)
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@return fx.Vehicle self
function Vehicle:setPlaybackToUseAi(drivingStyle) end

--- ```
--- Time is number of milliseconds before reverting, zero for indefinitely.
--- ```
--- **Native**: `SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER` (`0x6E63860BBB190730`)
---@param time integer
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param p3 boolean
---@return fx.Vehicle self
function Vehicle:setPlaybackToUseAiTryToRevertBackLater(time, drivingStyle, p3) end

--- Enable player vehicle specific alarm disarm/arm sound triggering
--- **Native**: `SET_PLAYER_VEHICLE_ALARM_AUDIO_ACTIVE` (`0x6FDDAD856E36988A`)
---@param active boolean
---@return fx.Vehicle self
function Vehicle:setPlayerAlarmAudioActive(active) end

--- **Native**: `SET_PLAYERS_LAST_VEHICLE` (`0xBCDF8BAF56C87B6A`)
---@return fx.Vehicle self
function Vehicle:setPlayersLast() end

--- Sets flag on vehicle that changes behaviour in relation to when player gets wanted level
--- **Native**: `SET_POLICE_FOCUS_WILL_TRACK_VEHICLE` (`0x4E74E62E0A97E901`)
---@param p1 boolean
---@return fx.Vehicle self
function Vehicle:setPoliceFocusWillTrack(p1) end

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
---@return fx.Vehicle self
function Vehicle:setProofs(bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

--- **Native**: `SET_ENTITY_PROOF_UNK` (`0x15F944730C832252`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setProofUnk(toggle) end

--- **Native**: `SET_VEHICLE_PROVIDES_COVER` (`0x5AFEEDD9BB2899D7`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setProvidesCover(toggle) end

--- ```
--- w is the correct parameter name!
--- ```
--- **Native**: `SET_ENTITY_QUATERNION` (`0x77B21BE7AC540F07`)
---@param coords vector3
---@param w number
---@return fx.Vehicle self
function Vehicle:setQuaternion(coords, w) end

--- ```
--- can't seem to enable radio on cop cars etc
--- ```
--- **Native**: `SET_VEHICLE_RADIO_ENABLED` (`0x3B988190C0AA6C0B`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRadioEnabled(toggle) end

--- **Native**: `SET_VEHICLE_RADIO_LOUD` (`0xBB6F1CAEC68B0BCE`)
---@param loud boolean
---@return fx.Vehicle self
function Vehicle:setRadioLoud(loud) end

--- Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
--- **Native**: `SET_VEH_RADIO_STATION` (`0x1B9C0099CB942AC6`)
---@param radioStation string
---@return fx.Vehicle self
function Vehicle:setRadioStation(radioStation) end

--- **Native**: `SET_VEHICLE_RAMP_LAUNCH_MODIFIER` (`0xEFC13B1CE30D755D`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setRampLaunchModifier(p1) end

--- **Native**: `SET_VEHICLE_RAMP_SIDEWAYS_LAUNCH_MOTION` (`0x1BBAC99C0BC53656`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRampSidewaysLaunchMotion(toggle) end

--- **Native**: `SET_VEHICLE_RAMP_UPWARDS_LAUNCH_MOTION` (`0x756AE6E962168A04`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRampUpwardsLaunchMotion(toggle) end

--- **Native**: `SET_VEHICLE_RECEIVES_RAMP_DAMAGE` (`0x28D034A93FE31BF5`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setReceivesRampDamage(toggle) end

--- **Native**: `SET_ENTITY_RECORDS_COLLISIONS` (`0x0A50A1EEDAD01E65`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRecordsCollisions(toggle) end

--- Lowers the vehicle's stance. Only works for vehicles that support this feature.
---
--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_REDUCE_DRIFT_VEHICLE_SUSPENSION` (`0x3A375167F5782A65`)
---@param enable boolean
---@return fx.Vehicle self
function Vehicle:setReduceDriftSuspension(enable) end

--- ```
--- Reduces grip significantly so it's hard to go anywhere.
--- ```
--- **Native**: `SET_VEHICLE_REDUCE_GRIP` (`0x222FF6A823D122E2`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setReduceGrip(toggle) end

--- Often used in conjunction with: [SET_VEHICLE_REDUCE_GRIP](#\_0x222FF6A823D122E2).
---
--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `SET_VEHICLE_REDUCE_TRACTION` (`0x6DEE944E1EE90CFB`)
---@param val integer
---@return fx.Vehicle self
function Vehicle:setReduceTraction(val) end

--- **Native**: `SET_ENTITY_RENDER_SCORCHED` (`0x730F5F8D3F0F2050`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRenderScorched(toggle) end

--- ```
--- makes the train all jumbled up and derailed as it moves on the tracks (though that wont stop it from its normal operations)
--- ```
--- **Native**: `SET_RENDER_TRAIN_AS_DERAILED` (`0x317B11A312DF5534`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRenderTrainAsDerailed(toggle) end

--- **Native**: `SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK` (`0x694E00132F2823ED`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRequiresMoreExpensiveRiverCheck(toggle) end

--- **Native**: `SET_VEHICLE_ROCKET_BOOST_ACTIVE` (`0x81E1552E35DC3839`)
---@param active boolean
---@return fx.Vehicle self
function Vehicle:setRocketBoostActive(active) end

--- **Native**: `SET_VEHICLE_ROCKET_BOOST_PERCENTAGE` (`0xFEB2DDED3509562E`)
---@param percentage number
---@return fx.Vehicle self
function Vehicle:setRocketBoostPercentage(percentage) end

--- **Native**: `SET_VEHICLE_ROCKET_BOOST_REFILL_TIME` (`0xE00F2AB100B76E89`)
---@param time number
---@return fx.Vehicle self
function Vehicle:setRocketBoostRefillTime(time) end

--- Set the vehicle's roll bias. Only works on planes.
--- **Native**: `SET_VEHICLE_ROLL_BIAS` (`0x264B45DE`)
---@param value number Roll bias value.
---@return fx.Vehicle self
function Vehicle:setRollBias(value) end

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
---@return fx.Vehicle self
function Vehicle:setRotation(pitch, roll, yaw, rotationOrder, bDeadCheck) end

--- **Native**: `SET_VEHICLE_RUDDER_BROKEN` (`0x09606148B6C71DEF`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setRudderBroken(toggle) end

--- ```
--- Only works during nighttime.
--- ```
--- **Native**: `SET_VEHICLE_SEARCHLIGHT` (`0x14E85C5EE7A4D542`)
---@param toggle boolean
---@param canBeUsedByAI boolean
---@return fx.Vehicle self
function Vehicle:setSearchlight(toggle, canBeUsedByAI) end

--- ```
--- Adds some kind of shadow to the vehicle.
--- -1 disables the effect.
--- DISABLE_*
--- ```
--- **Native**: `SET_VEHICLE_SHADOW_EFFECT` (`0xF0E4BA16D1DB546C`)
---@param p1 integer
---@param p2 integer
---@return fx.Vehicle self
function Vehicle:setShadowEffect(p1, p2) end

--- ```
--- If set to TRUE, it seems to suppress door noises and doesn't allow the horn to be continuous.
--- ```
--- **Native**: `SET_VEHICLE_SILENT` (`0x9D44FCCE98450843`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setSilent(toggle) end

--- ```
--- Activate siren on vehicle (Only works if the vehicle has a siren).
--- ```
--- **Native**: `SET_VEHICLE_SIREN` (`0xF4924635A19EB37D`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setSiren(toggle) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_SIREN_KEEP_ON` (`0xF584CF8529B51434`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setSirenKeepOn(toggle) end

--- **Native**: `SET_SIREN_WITH_NO_DRIVER` (`0x1FEF0683B96EBCF2`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setSirenWithNoDriver(toggle) end

--- Allows locking the hover/non-hover mode of a vehicle, such as the flying mode of the `Deluxo`. In the decompiled scripts, this native is used on `oppressor2` but couldn't get it to work on it.
--- **Native**: `SET_SPECIAL_FLIGHT_MODE_ALLOWED` (`0xF1211889DF15A763`)
---@param toggle boolean Boolean parameter where setting `false` locks the current state of the vehicle, preventing transitions such as the `Deluxo` or Oppressor switching between their flying and driving modes. Setting it t…
---@return fx.Vehicle self
function Vehicle:setSpecialFlightModeAllowed(toggle) end

--- Used alongside [`SET_SPECIAL_FLIGHT_MODE_TARGET_RATIO`](#\_0x438B3D7CA026FE91), this function initiates hover transformation for vehicles with a hover mode, like the `Deluxo`, based on a specified ratio (0.0 to 1.0). Incorrect values can glitch the vehicle. Without pairing, vehicles revert to car mode. Ineffective on the `oppressor2`
--- **Native**: `SET_SPECIAL_FLIGHT_MODE_RATIO` (`0xD138FA15C9776837`)
---@param ratio number A value between 0.0 and 1.0 indicating the target state for the vehicle's hover mode transition. In decompiled scripts, a common usage is 0.75 - GetFrameTime(). Exceeding the maximum can cause the `D…
---@return fx.Vehicle self
function Vehicle:setSpecialFlightModeRatio(ratio) end

--- According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
--- Does nothing when used on `oppressor2`.
---
--- For the deluxo:
---
--- *   Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
--- *   Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).
---
--- If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
---
--- This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
---
--- Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
--- **Native**: `SET_SPECIAL_FLIGHT_MODE_TARGET_RATIO` (`0x438B3D7CA026FE91`)
---@param state number The transform state (value between 0.0 and 1.0).
---@return fx.Vehicle self
function Vehicle:setSpecialFlightModeTargetRatio(state) end

--- ```
--- Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.
--- ============================================
--- May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.
--- Btw, func_1333 ends up calling this func which uses this native,
--- void func_1338(int iParam0)//Position
--- {
--- 	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);
--- 	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);
--- 	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);
--- 	VEHICLE::_0xDF594D8D(iParam0, true);
--- }
--- ```
--- **Native**: `SET_VEHICLE_ST` (`0x1CF38D529D7441D9`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setSt(toggle) end

--- Overrides the vehicle's startup engine rev sound.
---
--- You can reset this with [RESET_VEHICLE_STARTUP_REV_SOUND](#\_0xD2DCCD8E16E20997)
--- **Native**: `SET_VEHICLE_STARTUP_REV_SOUND` (`0xF1F8157B8C3F171C`)
---@param soundName string
---@param setName string
---@return fx.Vehicle self
function Vehicle:setStartupRevSound(soundName, setName) end

--- ```
--- Locks the vehicle's steering to the desired angle, explained below.
--- Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.
--- Steer bias:
--- -1.0 = full right
--- 0.0 = centered steering
--- 1.0 = full left
--- ```
--- **Native**: `SET_VEHICLE_STEER_BIAS` (`0x42A8EC77D5150CBE`)
---@param value number
---@return fx.Vehicle self
function Vehicle:setSteerBias(value) end

--- **Native**: `SET_VEHICLE_STEERING_BIAS_SCALAR` (`0x9007A2F21DC108D4`)
---@param scalar number
---@return fx.Vehicle self
function Vehicle:setSteeringBiasScalar(scalar) end

--- ```
--- If set to true, vehicle will not take crash damage, but is still susceptible to damage from bullets and explosives
--- ```
--- **Native**: `SET_VEHICLE_STRONG` (`0x3E8C8727991A8A0B`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setStrong(toggle) end

--- **Native**: `SET_SUBMARINE_CRUSH_DEPTHS` (`0xC59872A5134879C7`)
---@param toggle boolean
---@param depth1 number
---@param depth2 number
---@param depth3 number
---@return fx.Vehicle self
function Vehicle:setSubmarineCrushDepths(toggle, depth1, depth2, depth3) end

--- **Native**: `SET_VEHICLE_TANK_TURRET_POSITION` (`0x56B94C6D7127DFBA`)
---@param position number
---@param p2 boolean
---@return fx.Vehicle self
function Vehicle:setTankTurretPosition(position, p2) end

--- **Native**: `SET_TASK_VEHICLE_GOTO_PLANE_MIN_HEIGHT_ABOVE_TERRAIN` (`0xB893215D8D4C015B`)
---@param height integer
---@return fx.Vehicle self
function Vehicle:setTaskGotoPlaneMinHeightAboveTerrain(height) end

--- ```
--- This is not tested - it's just an assumption.
--- Doesn't seem to work.  I'll try with an int instead. --JT
--- Read the scripts, im dumpass.
--- Doesn't work at all, wether with an bool neither an int
---                             if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {
---                                 VEHICLE::SET_TAXI_LIGHTS(l_115, 1);
---                             }
--- ```
--- **Native**: `SET_TAXI_LIGHTS` (`0x598803E85E8448D9`)
---@param state boolean
---@return fx.Vehicle self
function Vehicle:setTaxiLights(state) end

--- **Native**: `SET_VEHICLE_TIMED_EXPLOSION` (`0x2E0A74E1002380B1`)
---@param ped fx.Ped|integer
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setTimedExplosion(ped, toggle) end

--- ```
--- Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.
--- ```
--- **Native**: `SET_VEHICLE_TOW_TRUCK_ARM_POSITION` (`0xFE54B92A344583CA`)
---@param position number
---@return fx.Vehicle self
function Vehicle:setTowTruckArmPosition(position) end

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
---@return fx.Vehicle self
function Vehicle:setTrafficlightOverride(state) end

--- **Native**: `SET_TRAILER_INVERSE_MASS_SCALE` (`0x2A8F319B392E7B3F`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:setTrailerInverseMassScale(p1) end

--- ```
--- in the decompiled scripts, seems to be always called on the vehicle right after being attached to a trailer.
--- ```
--- **Native**: `SET_TRAILER_LEGS_RAISED` (`0x95CF53B3D687F9FA`)
---@return fx.Vehicle self
function Vehicle:setTrailerLegsRaised() end

--- Sets the ratio that a door is open for on a train.
--- **Native**: `SET_TRAIN_DOOR_OPEN_RATIO` (`0x2468DBE8`)
---@param doorIndex integer Zero-based door index.
---@param ratio number A value between 0.0 (fully closed) and 1.0 (fully open).
---@return fx.Vehicle self
function Vehicle:setTrainDoorOpenRatio(doorIndex, ratio) end

--- Toggles a train's ability to stop at stations
--- **Native**: `SET_TRAIN_STOP_AT_STATIONS` (`0xECB8B577`)
---@param state boolean True to make the train stop at stations. False to make the train not stop at stations
---@return fx.Vehicle self
function Vehicle:setTrainStopAtStations(state) end

--- Affects the playback speed of the submarine car conversion animations. Does not affect hardcoded animations such as the wheels being retracted. In decompiled scripts the only value used for transformRate is 2.5.
--- **Native**: `SET_TRANSFORM_RATE_FOR_ANIMATION` (`0x498218259FB7C72D`)
---@param transformRate number The rate at which the submarine car conversion animations will be played.
---@return fx.Vehicle self
function Vehicle:setTransformRateForAnimation(transformRate) end

--- Changes the key used to transform a vehicle into submarine mode. When set to true, the transformation key switches from the default raise/lower convertible roof key (usually 'H') to the special vehicle transformation key (usually 'X').
---
--- ```
--- NativeDB Introduced: v1365
--- ```
--- **Native**: `SET_TRANSFORM_TO_SUBMARINE_USES_ALTERNATE_INPUT` (`0x41B9FB92EDED32A6`)
---@param useAlternateInput boolean A boolean switch to enable/disable the use of alternate input.
---@return fx.Vehicle self
function Vehicle:setTransformToSubmarineUsesAlternateInput(useAlternateInput) end

--- **Native**: `SET_VEHICLE_TURRET_SPEED_THIS_FRAME` (`0x1093408B4B9D1146`)
---@param speed number
---@return fx.Vehicle self
function Vehicle:setTurretSpeedThisFrame(speed) end

--- ```
--- Toggles specific flag on turret
--- ```
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_VEHICLE_TURRET_UNK` (`0xC60060EB0D8AC7B1`)
---@param index integer
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setTurretUnk(index, toggle) end

--- ```
--- "To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0)
--- to burst all tyres type it 8 times where p1 = 0 to 7.
--- p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.
--- '0 = wheel_lf / bike, plane or jet front
--- '1 = wheel_rf
--- '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left
--- '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right
--- '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left
--- '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right
--- '45 = 6 wheels trailer mid wheel left
--- '47 = 6 wheels trailer mid wheel right
--- ```
--- **Native**: `SET_VEHICLE_TYRE_BURST` (`0xEC6A202EE4960385`)
---@param index fx.Enum.VehicleWheels|integer
---@param onRim boolean
---@param p3 number
---@return fx.Vehicle self
function Vehicle:setTyreBurst(index, onRim, p3) end

--- ```
--- tyreIndex = 0 to 4 on normal vehicles
--- '0 = wheel_lf / bike, plane or jet front
--- '1 = wheel_rf
--- '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left
--- '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right
--- '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left
--- '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right
--- '45 = 6 wheels trailer mid wheel left
--- '47 = 6 wheels trailer mid wheel right
--- ```
--- **Native**: `SET_VEHICLE_TYRE_FIXED` (`0x6E13FC662B882D1D`)
---@param tyreIndex integer
---@return fx.Vehicle self
function Vehicle:setTyreFixed(tyreIndex) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `SET_TYRE_HEALTH` (`0x74C68EF97645E79D`)
---@param wheelIndex integer
---@param health number
---@return fx.Vehicle self
function Vehicle:setTyreHealth(wheelIndex, health) end

--- ```
--- Sets the tire smoke's color of this vehicle.
--- vehicle: The vehicle that is the target of this method.
--- r: The red level in the RGB color code.
--- g: The green level in the RGB color code.
--- b: The blue level in the RGB color code.
--- Note:
--- setting r,g,b to 0 will give the car independance day tyre smoke
--- ```
--- **Native**: `SET_VEHICLE_TYRE_SMOKE_COLOR` (`0xB5BA80F839791C0F`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Vehicle self
function Vehicle:setTyreSmokeColor(r, g, b) end

--- ```
--- Controls how fast the tires wear out.
--- Default values from Rockstar's Open Wheel Race JSON's:
--- "owrtss" (Soft): 2.2
--- "owrtsm" (Medium): 1.7
--- "owrtsh" (Hard): 1.2
--- Usable wheels:
--- 0: wheel_lf
--- 1: wheel_rf
--- 2: wheel_lm1
--- 3: wheel_rm1
--- 4: wheel_lr
--- 5: wheel_rr
--- ```
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `SET_TYRE_SOFTNESS_MULTIPLIER` (`0x392183BB9EA57697`)
---@param wheelIndex integer
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setTyreSoftnessMultiplier(wheelIndex, multiplier) end

--- ```
--- Controls how much traction the wheel loses.
--- Default values from Rockstar's Open Wheel Race JSON's:
--- "owrtds" (Soft): 0.05
--- "owrtdm" (Medium): 0.45
--- "owrtdh" (Hard): 0.8
--- Usable wheels:
--- 0: wheel_lf
--- 1: wheel_rf
--- 2: wheel_lm1
--- 3: wheel_rm1
--- 4: wheel_lr
--- 5: wheel_rr
--- ```
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `SET_TYRE_TRACTION_LOSS_MULTIPLIER` (`0xC970D0E0FC31D768`)
---@param wheelIndex integer
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setTyreTractionLossMultiplier(wheelIndex, multiplier) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `SET_TYRE_WEAR_MULTIPLIER` (`0x01894E2EDE923CA2`)
---@param wheelIndex integer
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setTyreWearMultiplier(wheelIndex, multiplier) end

--- **Native**: `SET_VEHICLE_UNDRIVEABLE` (`0x8ABA6AF54B942B95`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setUndriveable(toggle) end

--- **Native**: `SET_VEHICLE_UNK_DAMAGE_MULTIPLIER` (`0x45A561A9421AB6AD`)
---@param multiplier number
---@return fx.Vehicle self
function Vehicle:setUnkDamageMultiplier(multiplier) end

--- **Native**: `SET_VEHICLE_USE_ALTERNATE_HANDLING` (`0x1D97D1E3A70A649F`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setUseAlternateHandling(toggle) end

--- **Native**: `SET_VEHICLE_USE_CUTSCENE_WHEEL_COMPRESSION` (`0xE023E8AC4EF7C117`)
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@return any result
function Vehicle:setUseCutsceneWheelCompression(p1, p2, p3) end

--- Allows vehicles with the FLAG_JUMPING_CAR flag to jump higher (i.e. Ruiner 2000).
--- **Native**: `SET_USE_HIGHER_VEHICLE_JUMP_FORCE` (`0xF06A16CA55D138D8`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setUseHigherJumpForce(toggle) end

--- ```
--- NativeDB Introduced: v3095
--- ```
---
--- Enables or disables the use of the vehicle's horn button for activating the nitrous system.
--- **Native**: `SET_VEHICLE_USE_HORN_BUTTON_FOR_NITROUS` (`0x1980F68872CC2C3D`)
---@param bToggle boolean If set to `true`, the horn button will activate the nitrous system; if `false`, it will not.
---@return fx.Vehicle self
function Vehicle:setUseHornButtonForNitrous(bToggle) end

--- **Native**: `SET_VEHICLE_USE_PLAYER_LIGHT_SETTINGS` (`0xC45C27EF50F36ADC`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setUsePlayerLightSettings(toggle) end

--- ```
--- vehicle must be a plane
--- ```
--- **Native**: `SET_VEHICLE_USES_LARGE_REAR_RAMP` (`0xCAC66558B944DA67`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setUsesLargeRearRamp(toggle) end

--- Toggle the visibility of a given entity.
--- **Native**: `SET_ENTITY_VISIBLE` (`0xEA1C610A04DB6BBB`)
---@param toggle boolean Whether or not the entity will be visible
---@param unk boolean Always 0 in scripts
---@return fx.Vehicle self
function Vehicle:setVisible(toggle, unk) end

--- ```
--- SET_*
--- Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.
--- Ran after these 2 natives,
--- set_object_targettable(uParam0, 0);
--- set_entity_invincible(uParam0, 1);
--- ```
--- **Native**: `SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE` (`0xDC6F8601FAF2E893`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setWaitForCollisionsBeforeProbe(toggle) end

--- **Native**: `SET_VEHICLE_WEAPON_CAPACITY` (`0x44CD1F493DB2A0A6`)
---@param weaponIndex integer
---@param capacity integer
---@return fx.Vehicle self
function Vehicle:setWeaponCapacity(weaponIndex, capacity) end

--- **Native**: `SET_VEHICLE_WEAPONS_DISABLED` (`0x86B4B6212CB8B627`)
---@param weaponSlot integer
---@return fx.Vehicle self
function Vehicle:setWeaponsDisabled(weaponSlot) end

--- Sets brake pressure of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- Normal values around 1.0f
--- **Native**: `SET_VEHICLE_WHEEL_BRAKE_PRESSURE` (`0xE80F4E31`)
---@param wheelIndex integer
---@param pressure number
---@return fx.Vehicle self
function Vehicle:setWheelBrakePressure(wheelIndex, pressure) end

--- Sets the flags of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `SET_VEHICLE_WHEEL_FLAGS` (`0xD2B9E90D`)
---@param wheelIndex integer
---@param flags integer bit flags
---@return fx.Vehicle self
function Vehicle:setWheelFlags(wheelIndex, flags) end

--- **Native**: `SET_VEHICLE_WHEEL_HEALTH` (`0xB22ECEFD`)
---@param wheelIndex integer
---@param health number
---@return fx.Vehicle self
function Vehicle:setWheelHealth(wheelIndex, health) end

--- Sets whether the wheel is powered.
--- On all wheel drive cars this works to change which wheels receive power, but if a car's fDriveBiasFront doesn't send power to that wheel, it won't get power anyway. This can be fixed by changing the fDriveBiasFront with SET_VEHICLE_HANDLING_FLOAT.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- This is a shortcut to a flag in SET_VEHICLE_WHEEL_FLAGS.
--- **Native**: `SET_VEHICLE_WHEEL_IS_POWERED` (`0xBD5291A0`)
---@param wheelIndex integer
---@param powered boolean
---@return fx.Vehicle self
function Vehicle:setWheelIsPowered(wheelIndex, powered) end

--- Sets power being sent to a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `SET_VEHICLE_WHEEL_POWER` (`0xC6146043`)
---@param wheelIndex integer
---@param power number
---@return fx.Vehicle self
function Vehicle:setWheelPower(wheelIndex, power) end

--- Not sure what this changes, probably determines physical rim size in case the tire is blown.
--- **Native**: `SET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE` (`0xF380E184`)
---@param wheelIndex integer Index of wheel, 0-3.
---@param value number Size of rim collider.
---@return fx.Vehicle self
function Vehicle:setWheelRimColliderSize(wheelIndex, value) end

--- Sets the rotation speed of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `SET_VEHICLE_WHEEL_ROTATION_SPEED` (`0x35ED100D`)
---@param wheelIndex integer
---@param speed number
---@return fx.Vehicle self
function Vehicle:setWheelRotationSpeed(wheelIndex, speed) end

--- **Native**: `SET_VEHICLE_WHEELS_CAN_BREAK` (`0x29B18B4FD460CA8F`)
---@param enabled boolean
---@return fx.Vehicle self
function Vehicle:setWheelsCanBreak(enabled) end

--- **Native**: `SET_VEHICLE_WHEELS_CAN_BREAK_OFF_WHEN_BLOW_UP` (`0xA37B9A517B133349`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setWheelsCanBreakOffWhenBlowUp(toggle) end

--- ```
--- Related to monster trucks in native scripts.
--- ```
---
--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `SET_VEHICLE_WHEELS_DEAL_DAMAGE` (`0x2970EAA18FD5E42F`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setWheelsDealDamage(toggle) end

--- ```
--- Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
--- ```
---
--- ```
--- NativeDB Introduced: v1365
--- ```
--- **Native**: `NETWORK_SET_VEHICLE_WHEELS_DESTRUCTIBLE` (`0x890E2C5ABED7236D`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:setWheelsDestructible(toggle) end

--- Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels.
--- Returns whether change was successful (can be false if trying to set size for non-default wheels).
--- **Native**: `SET_VEHICLE_WHEEL_SIZE` (`0x53AB5C35`)
---@param size number Size of the wheels (usually between 0.5 and 1.5 is reasonable).
---@return boolean result Bool - whether change was successful or not
function Vehicle:setWheelSize(size) end

--- Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
--- **Native**: `SET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE` (`0xB962D05C`)
---@param wheelIndex integer Index of wheel, 0-3.
---@param value number Radius of tire collider.
---@return fx.Vehicle self
function Vehicle:setWheelTireColliderSize(wheelIndex, value) end

--- Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
--- **Native**: `SET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH` (`0x47BD0270`)
---@param wheelIndex integer Index of wheel, 0-3.
---@param value number Width of tire collider.
---@return fx.Vehicle self
function Vehicle:setWheelTireColliderWidth(wheelIndex, value) end

--- Sets the traction vector length of a wheel.
--- Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
--- **Native**: `SET_VEHICLE_WHEEL_TRACTION_VECTOR_LENGTH` (`0x85C85A3A`)
---@param wheelIndex integer
---@param length number
---@return fx.Vehicle self
function Vehicle:setWheelTractionVectorLength(wheelIndex, length) end

--- Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
--- Only works on non-default wheels.
--- Returns whether change was successful (can be false if trying to set width for non-default wheels).
--- **Native**: `SET_VEHICLE_WHEEL_WIDTH` (`0x64C3F1C0`)
---@param width number Width of the wheels (usually between 0.1 and 1.5 is reasonable).
---@return boolean result Bool - whether change was successful or not
function Vehicle:setWheelWidth(width) end

--- Adjusts the offset of the specified wheel relative to the wheel's axle center.
--- Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
--- This function can be especially useful to set the track width of a vehicle, for example:
---
--- ```
--- function SetVehicleFrontTrackWidth(vehicle, width)
--- SetVehicleWheelXOffset(vehicle, 0, -width/2)
--- SetVehicleWheelXOffset(vehicle, 1, width/2)
--- end
--- ```
--- **Native**: `SET_VEHICLE_WHEEL_X_OFFSET` (`0xBD6357D`)
---@param wheelIndex integer
---@param offset number
---@return fx.Vehicle self
function Vehicle:setWheelXOffset(wheelIndex, offset) end

--- **Native**: `SET_VEHICLE_WHEEL_Y_ROTATION` (`0xC6C2171F`)
---@param wheelIndex integer
---@param value number
---@return fx.Vehicle self
function Vehicle:setWheelYRotation(wheelIndex, value) end

--- Sets custom vehicle xenon lights color, allowing to use RGB palette. The game will ignore lights color set by [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07) when custom color is active. This native is not synced between players. Requires xenon lights mod to be set on vehicle.
--- **Native**: `SET_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR` (`0x1683E7F0`)
---@param red integer Red color (0-255).
---@param green integer Green color (0-255).
---@param blue integer Blue color (0-255).
---@return fx.Vehicle self
function Vehicle:setXenonLightsCustomColor(red, green, blue) end

--- ```
--- SET_TIME_POSITION_IN_RECORDING can be emulated by: desired_time - GET_TIME_POSITION_IN_RECORDING(vehicle)
--- ```
--- **Native**: `SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE` (`0x9438F7AD68771A20`)
---@param time number
---@return fx.Vehicle self
function Vehicle:skipTimeInPlaybackRecorded(time) end

--- **Native**: `SKIP_TO_END_AND_STOP_PLAYBACK_RECORDED_VEHICLE` (`0xAB8E2EDA0C0A5883`)
---@return fx.Vehicle self
function Vehicle:skipToEndAndStopPlaybackRecorded() end

--- Smashes a vehicles window. See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
--- **Native**: `SMASH_VEHICLE_WINDOW` (`0x9E5B5E4D2CCD2259`)
---@param windowIndex integer Windows to smash index.
---@return fx.Vehicle self
function Vehicle:smashWindow(windowIndex) end

--- ```
--- SET_*
--- ```
--- **Native**: `SOUND_VEHICLE_HORN_THIS_FRAME` (`0x9C11908013EA4715`)
---@return fx.Vehicle self
function Vehicle:soundHornThisFrame() end

--- **Native**: `STABILISE_ENTITY_ATTACHED_TO_HELI` (`0x374706271354CB18`)
---@param entity fx.Entity|integer
---@param p2 number
---@return fx.Vehicle self
function Vehicle:stabiliseEntityAttachedToHeli(entity, p2) end

--- **Native**: `START_VEHICLE_ALARM` (`0xB8FF7AB45305C345`)
---@return fx.Vehicle self
function Vehicle:startAlarm() end

--- **Native**: `START_ENTITY_FIRE` (`0xF6A9D9708F6F23DF`)
---@return integer result
function Vehicle:startFire() end

--- Sounds the horn for the specified vehicle. Note that if a player is in the vehicle, it will only sound briefly.
--- **Native**: `START_VEHICLE_HORN` (`0x9C8C6504B5B63D2C`)
---@param duration integer The duration to sound the horn, in milliseconds.
---@param mode integer|string The hash of "NORMAL" or "HELDDOWN". Can be 0.
---@param forever boolean
---@return fx.Vehicle self
function Vehicle:startHorn(duration, mode, forever) end

--- p3 is some flag related to 'trailers' (invokes CVehicle::GetTrailer).
---
--- See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
--- **Native**: `START_PLAYBACK_RECORDED_VEHICLE` (`0x3F878F92B3A7A071`)
---@param recording integer
---@param script string
---@param p3 boolean
---@return fx.Vehicle self
function Vehicle:startPlaybackRecorded(recording, script, p3) end

--- ```
--- AI abides by the provided driving style (e.g., stopping at red lights or waiting behind traffic) while executing the specificed vehicle recording.
---
--- 0x1F2E4E06DEA8992B is a related native that deals with the AI physics for such recordings.
--- ```
--- **Native**: `START_PLAYBACK_RECORDED_VEHICLE_USING_AI` (`0x29DE5FA52D00428C`)
---@param recording integer
---@param script string
---@param speed number
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@return fx.Vehicle self
function Vehicle:startPlaybackRecordedUsingAi(recording, script, speed, drivingStyle) end

--- ```
--- flags requires further research, e.g., 0x4/0x8 are related to the AI driving task and 0x20 is internally set and interacts with dynamic entity components.
--- time, often zero and capped at 500, is related to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER
--- ```
--- **Native**: `START_PLAYBACK_RECORDED_VEHICLE_WITH_FLAGS` (`0x7D80FD645D4DA346`)
---@param recording integer
---@param script string
---@param flags integer
---@param time integer
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@return fx.Vehicle self
function Vehicle:startPlaybackRecordedWithFlags(recording, script, flags, time, drivingStyle) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_BOUND` (`0x37181417CE7C8900`)
---@param flags1 integer
---@param flags2 integer
---@return integer result
function Vehicle:startShapeTestBound(flags1, flags2) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_BOUNDING_BOX` (`0x052837721A854EC7`)
---@param flags1 integer
---@param flags2 integer
---@return integer result
function Vehicle:startShapeTestBoundingBox(flags1, flags2) end

--- ```
--- RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
--- ```
--- **Native**: `STOP_ENTITY_ANIM` (`0x28004F88151E03E0`)
---@param animation string
---@param animGroup string
---@param p3 number
---@return any result
function Vehicle:stopAnim(animation, animGroup, p3) end

--- ```
--- Stops CTaskBringVehicleToHalt
--- ```
--- **Native**: `STOP_BRING_VEHICLE_TO_HALT` (`0x7C06330BFDDA182E`)
---@return fx.Vehicle self
function Vehicle:stopBringToHalt() end

--- **Native**: `STOP_ENTITY_FIRE` (`0x7F0DD2EBBB651AFF`)
---@return fx.Vehicle self
function Vehicle:stopFire() end

--- **Native**: `STOP_PLAYBACK_RECORDED_VEHICLE` (`0x54833611C17ABDEA`)
---@return fx.Vehicle self
function Vehicle:stopPlaybackRecorded() end

--- ```
--- p1 sync task id?
--- ```
--- **Native**: `STOP_SYNCHRONIZED_ENTITY_ANIM` (`0x43D3807C077261E3`)
---@param p1 number
---@param p2 boolean
---@return boolean result
function Vehicle:stopSynchronizedAnim(p1, p2) end

--- **Native**: `TASK_EVERYONE_LEAVE_VEHICLE` (`0x7F93691AB4B92272`)
---@return fx.Vehicle self
function Vehicle:taskEveryoneLeave() end

--- **Native**: `TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY` (`0x61E360B7E040D12E`)
---@param entity2 fx.Entity|integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@return fx.Vehicle self
function Vehicle:taskGoStraightToCoordRelativeToEntity(entity2, p2, p3, p4, p5, p6) end

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
---@return fx.Vehicle self
function Vehicle:taskGoToEntity(target, duration, distance, speed, p5, p6) end

--- **Native**: `TASK_LOOK_AT_COORD` (`0x6FA46612594F7973`)
---@param coords vector3
---@param duration integer
---@param p5 any
---@param p6 any
---@return fx.Vehicle self
function Vehicle:taskLookAtCoord(coords, duration, p5, p6) end

--- ```
--- Most probably plays a specific animation on vehicle. For example getting chop out of van etc...
--- Here's how its used -
--- TASK::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");
--- TASK::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");
--- FYI : Speedo is the name of van in which chop was put in the mission.
--- ```
--- **Native**: `TASK_VEHICLE_PLAY_ANIM` (`0x69F5C3BD0F3EBD89`)
---@param animationSet string
---@param animationName string
---@return fx.Vehicle self
function Vehicle:taskPlayAnim(animationSet, animationName) end

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
---@return fx.Vehicle self
function Vehicle:taskShootAtEntity(target, duration, firingPattern) end

--- Enables or disables a vehicle mod by index (`modType`) for a given vehicle.
---
--- `eVehicleModType` enum, used for `modType` index can be found under [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
--- **Native**: `TOGGLE_VEHICLE_MOD` (`0x2A1F4F37F95BAD08`)
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param toggle boolean A bool indicating whether the mod should be enabled/disabled (true/false)
---@return fx.Vehicle self
function Vehicle:toggleMod(modType, toggle) end

--- ```
--- calls from vehicle to net.
--- ```
--- **Native**: `VEH_TO_NET` (`0xB4C94523F023419C`)
---@return integer result
function Vehicle:toNet() end

--- ```
--- in script hook .net
--- Vehicle v = ...;
--- Function.Call(Hash.TRACK_VEHICLE_VISIBILITY, v.Handle);
--- ```
--- **Native**: `TRACK_VEHICLE_VISIBILITY` (`0x64473AEFDCF47DCA`)
---@return fx.Vehicle self
function Vehicle:trackVisibility() end

--- Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
--- **Native**: `TRANSFORM_TO_CAR` (`0x2A69FFD1B42BFF9E`)
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
---@return fx.Vehicle self
function Vehicle:transformToCar(instantly) end

--- Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
--- **Native**: `TRANSFORM_TO_SUBMARINE` (`0xBE4C854FFDB6EEBE`)
---@param instantly boolean If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
---@return fx.Vehicle self
function Vehicle:transformToSubmarine(instantly) end

--- ... When not in a vehicle
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `TRIGGER_SIREN` (`0x66C3FB05206041BA`)
---@return fx.Vehicle self
function Vehicle:triggerSiren() end

--- **Native**: `UNPAUSE_PLAYBACK_RECORDED_VEHICLE` (`0x8879EE09268305D5`)
---@return fx.Vehicle self
function Vehicle:unpausePlaybackRecorded() end

--- **Native**: `NETWORK_UNREGISTER_NETWORKED_ENTITY` (`0x7368E683BB9038D6`)
---@return fx.Vehicle self
function Vehicle:unregisterNetworked() end

--- **Native**: `UPDATE_LIGHTS_ON_ENTITY` (`0xDEADC0DEDEADC0DE`)
---@return fx.Vehicle self
function Vehicle:updateLights() end

--- ```
--- Implemented only for Trains.
--- ```
---
--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_USE_HIGH_PRECISION_VEHICLE_BLENDING` (`0xEC0C1D4922AF9754`)
---@param toggle boolean
---@return fx.Vehicle self
function Vehicle:useHighPrecisionBlending(toggle) end

--- **Native**: `NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME` (`0xCD71A4ECAB22709E`)
---@return fx.Vehicle self
function Vehicle:useLogarithmicBlendingThisFrame() end

--- **Native**: `USE_SIREN_AS_HORN` (`0xFA932DE350266EF8`)
---@param sirenAsHorn boolean
---@return fx.Vehicle self
function Vehicle:useSirenAsHorn(sirenAsHorn) end

--- **Native**: `WASH_DECALS_FROM_VEHICLE` (`0x5B712761429DBC14`)
---@param p1 number
---@return fx.Vehicle self
function Vehicle:washDecals(p1) end

--- **Native**: `VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED` (`0x121F0593E0A431D7`)
---@param speed number
---@return fx.Vehicle self
function Vehicle:waypointPlaybackOverrideSpeed(speed) end

--- **Native**: `VEHICLE_WAYPOINT_PLAYBACK_PAUSE` (`0x8A4E6AC373666BC5`)
---@return fx.Vehicle self
function Vehicle:waypointPlaybackPause() end

--- **Native**: `VEHICLE_WAYPOINT_PLAYBACK_RESUME` (`0xDC04FCAA7839D492`)
---@return fx.Vehicle self
function Vehicle:waypointPlaybackResume() end

--- **Native**: `VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED` (`0x5CEB25A7D2848963`)
---@return fx.Vehicle self
function Vehicle:waypointPlaybackUseDefaultSpeed() end

---@class fx.VehicleStatic
---@overload fun(handle: integer): fx.Vehicle?
---@field hasFilledPopulation boolean (read-only) [HAS_FILLED_VEHICLE_POPULATION]
---@field hasPhoneExplosiveDevice boolean (read-only) [HAS_VEHICLE_PHONE_EXPLOSIVE_DEVICE]
---@field lastDriven? fx.Vehicle (read-only) [GET_LAST_DRIVEN_VEHICLE]
---@field numberOfNumberPlates integer (read-only) [GET_NUMBER_OF_VEHICLE_NUMBER_PLATES]
---@field numWindowTints integer (read-only) [GET_NUM_VEHICLE_WINDOW_TINTS]
---@field playersLast? fx.Vehicle (read-only) [GET_PLAYERS_LAST_VEHICLE] ### Warning This native will return `0` if the last vehicle the player was in was destroyed. ### Alternative You can use [GET_VEHICLE_PED_IS_IN](#\_0x9A9112A0F…
local VehicleStatic = {}

---Loads every train model, creates a train of a trains.xml variation (CREATE_MISSION_TRAIN), releases the models,
---then waits for `readyAsync()`. The position must be on a track. Never yields.
---@param variation integer Variation index of trains.xml (0 to 26 in the base game)
---@param position vector3
---@param direction? boolean Direction along the track, default false
---@param timeoutMs? integer Default 10000
---@return fx.Promise<fx.Vehicle>
function VehicleStatic.createMissionTrainAsync(variation, position, direction, timeoutMs) end

---Loads the model, creates the vehicle, releases the model, then waits for `readyAsync()`. Never yields.
---Rejects on an invalid model (`Vehicle.createAsync: invalid model 'addr'`) or on timeout.
---@param model fx.Model|integer|string Model, name, hash or backtick
---@param position vector3|vector4 vector4: `w` is used as heading when `heading` is nil
---@param heading? number
---@param options? fx.VehicleCreateOptions
---@return fx.Promise<fx.Vehicle>
function VehicleStatic.createAsync(model, position, heading, options) end

---Raw version: immediate CREATE_VEHICLE. Does NOT load the model and waits for nothing.
---Model not loaded: error in debug mode, `nil` otherwise.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.VehicleCreateOptions
---@return fx.Vehicle?
function VehicleStatic.createRaw(model, position, heading, options) end

--- True when value is an fx.Vehicle, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function VehicleStatic.is(value) end

--- **Native**: `ADD_VEHICLE_COMBAT_ANGLED_AVOIDANCE_AREA` (`0x54B0F614960F4A5F`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@return any result
function VehicleStatic.addCombatAngledAvoidanceArea(p0, p1, p2, p3, p4, p5, p6) end

--- **Native**: `ADD_ROAD_NODE_SPEED_ZONE` (`0x2CE544C68FB812A0`)
---@param coords vector3
---@param radius number
---@param speed number
---@param p5 boolean
---@return integer result
function VehicleStatic.addRoadNodeSpeedZone(coords, radius, speed, p5) end

--- **Native**: `ADD_VEHICLE_STUCK_CHECK_WITH_WARP` (`0x2FA9923062DD396C`)
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 boolean
---@param p4 boolean
---@param p5 boolean
---@param p6 any
function VehicleStatic.addStuckCheckWithWarp(p0, p1, p2, p3, p4, p5, p6) end

--- Removes the cargen area of interest and resumes normal cargen spawning.
---
--- You can set the area of interest with [`SET_VEHICLE_GENERATOR_AREA_OF_INTEREST`](#\_0x9A75585FB2E54FAD)
--- **Native**: `CLEAR_VEHICLE_GENERATOR_AREA_OF_INTEREST` (`0x0A436B8643716D14`)
function VehicleStatic.clearGeneratorAreaOfInterest() end

--- **Native**: `CLEAR_LAST_DRIVEN_VEHICLE` (`0xE01903C47C7AC89E`)
function VehicleStatic.clearLastDriven() end

--- **Native**: `CLEAR_VEHICLE_PHONE_EXPLOSIVE_DEVICE` (`0xAA3F739ABDDCF21F`)
function VehicleStatic.clearPhoneExplosiveDevice() end

--- **Native**: `CREATE_ITEMSET` (`0x35AD299F50D91B24`)
---@param distri boolean
---@return fx.Vehicle? result
function VehicleStatic.createItemset(distri) end

--- Train models must be [requested](#\_0x963D27A58DF860AC) before use. See trains.xml (located in `Grand Theft Auto V\update\update.rpf\common\data\levels\gta5\trains.xml`) for freight and metro variations.
---
--- Model names to request can be found by searching `model_name` in the file.
---
--- The `Lua` usage example provided down below has been provided in such way so users can test each and every train variation.
---
--- ### Newly added parameters (seen in 2372 build)
---
--- ```
--- NativeDB Added Parameter 6: BOOL isNetwork
--- NativeDB Added Parameter 7: BOOL netMissionEntity
--- ```
---
--- *   **isNetwork**: Whether to create a network object for the train. If false, the train exists only locally.
--- *   **netMissionEntity**: Whether to register the train as pinned to the script host in the R\* network model.
---
--- ### Train Models:
---
--- *   freight
---
--- ### Carriage Models:
---
--- *   freightcar
--- *   freightcar2 (Added v2372)
--- *   freightcont1
--- *   freightcont2
--- *   freightgrain
--- *   metrotrain
--- *   tankercar
---
--- ### Some train variations (default from trains.xml as of build 2372)
---
--- *   17. Very long train and freight variation.
--- *   18. Freight train only.
--- *   26. Double metro train (with both models flipped opposite to each other). This used to be `25` before the 2802 build, it also used to be `24` before the 2372 build.
--- **Native**: `CREATE_MISSION_TRAIN` (`0x63C6CCA8E68AE8C8`)
---@param variation integer The variation id, these can range from 0 to 26 as of build 2802 (previously `0-25` in build 2372 and `0-24` before that).
---@param coords vector3 Spawn coordinate component.
---@param direction boolean The direction in which the train will go (true or false)
---@return fx.Vehicle? result The train, or nil if the train failed to be created.
function VehicleStatic.createMissionTrain(variation, coords, direction) end

--- ```
--- Creates a script vehicle generator at the given coordinates. Most parameters after the model hash are unknown.
--- Parameters:
--- a/w/s - Generator position
--- heading - Generator heading
--- p4 - Unknown (always 5.0)
--- p5 - Unknown (always 3.0)
--- modelHash - Vehicle model hash
--- p7/8/9/10 - Unknown (always -1)
--- p11 - Unknown (usually TRUE, only one instance of FALSE)
--- p12/13 - Unknown (always FALSE)
--- p14 - Unknown (usally FALSE, only two instances of TRUE)
--- p15 - Unknown (always TRUE)
--- p16 - Unknown (always -1)
--- Vector3 coords = GET_ENTITY_COORDS(PLAYER_PED_ID(), 0);	CREATE_SCRIPT_VEHICLE_GENERATOR(coords.x, coords.y, coords.z, 1.0f, 5.0f, 3.0f, GET_HASH_KEY("adder"), -1. -1, -1, -1, -1, true, false, false, false, true, -1);
--- ```
--- **Native**: `CREATE_SCRIPT_VEHICLE_GENERATOR` (`0x9DEF883114668116`)
---@param coords vector3
---@param heading number
---@param p4 number
---@param p5 number
---@param modelHash fx.Model|integer|string
---@param p7 integer
---@param p8 integer
---@param p9 integer
---@param p10 integer
---@param p11 boolean
---@param p12 boolean
---@param p13 boolean
---@param p14 boolean
---@param p15 boolean
---@param p16 integer
---@return integer result
function VehicleStatic.createScriptGenerator(coords, heading, p4, p5, modelHash, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end

--- **Native**: `DELETE_ALL_TRAINS` (`0x736A718577F39C7D`)
function VehicleStatic.deleteAllTrains() end

--- Removes a scripted vehicle generator.
--- **Native**: `DELETE_SCRIPT_VEHICLE_GENERATOR` (`0x22102C9ABFCF125D`)
---@param vehicleGenerator integer
function VehicleStatic.deleteScriptGenerator(vehicleGenerator) end

--- **Native**: `DETONATE_VEHICLE_PHONE_EXPLOSIVE_DEVICE` (`0xEF49CF0270307CBE`)
function VehicleStatic.detonatePhoneExplosiveDevice() end

--- ```
--- how does this work?
--- ```
--- **Native**: `DISABLE_VEHICLE_WEAPON` (`0xF4FC6A6F67D8D856`)
---@param disabled boolean
---@param weaponHash integer|string
---@param vehicle fx.Vehicle|integer
---@param owner fx.Ped|integer
function VehicleStatic.disableWeapon(disabled, weaponHash, vehicle, owner) end

--- **Native**: `DOES_VEHICLE_EXIST_WITH_DECORATOR` (`0x956B409B984D9BF7`)
---@param decorator string
---@return boolean result
function VehicleStatic.doesExistWithDecorator(decorator) end

--- **Native**: `DOES_SCRIPT_VEHICLE_GENERATOR_EXIST` (`0xF6086BC836400876`)
---@param vehicleGenerator integer
---@return boolean result
function VehicleStatic.doesScriptGeneratorExist(vehicleGenerator) end

--- **Native**: `GET_ALL_VEHICLES` (`0x9B8E1BF04B51F2E8`)
---@param vehArray integer
---@return integer result
---@return integer vehArray
function VehicleStatic.getAllVehicles(vehArray) end

--- **Native**: `GET_VEHICLE_CLASS_ESTIMATED_MAX_SPEED` (`0x00C09F246ABEDD82`)
---@param vehicleClass integer
---@return number result
function VehicleStatic.getClassEstimatedMaxSpeed(vehicleClass) end

--- **Native**: `GET_VEHICLE_CLASS_MAX_ACCELERATION` (`0x2F83E7E45D9EA7AE`)
---@param vehicleClass integer
---@return number result
function VehicleStatic.getClassMaxAcceleration(vehicleClass) end

--- **Native**: `GET_VEHICLE_CLASS_MAX_AGILITY` (`0x4F930AD022D6DE3B`)
---@param vehicleClass integer
---@return number result
function VehicleStatic.getClassMaxAgility(vehicleClass) end

--- **Native**: `GET_VEHICLE_CLASS_MAX_BRAKING` (`0x4BF54C16EC8FEC03`)
---@param vehicleClass integer
---@return number result
function VehicleStatic.getClassMaxBraking(vehicleClass) end

--- **Native**: `GET_VEHICLE_CLASS_MAX_TRACTION` (`0xDBC86D85C5059461`)
---@param vehicleClass integer
---@return number result
function VehicleStatic.getClassMaxTraction(vehicleClass) end

--- ```
--- Example usage
--- VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)
--- x, y, z: Position to get closest vehicle to.
--- radius: Max radius to get a vehicle.
--- modelHash: Limit to vehicles with this model. 0 for any.
--- flags: The bitwise flags altering the function's behaviour.
--- Does not return police cars or helicopters.
--- It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason
--- Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.
--- These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359.
--- Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles
--- Conversion of found flags to binary: pastebin.com/kghNFkRi
--- At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.
--- It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT
--- -------------------------------------------------------------------------
--- Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
--- Use flag 127 to return police cars
--- ```
--- **Native**: `GET_CLOSEST_VEHICLE` (`0xF73EB622C4F1689B`)
---@param coords vector3
---@param radius number
---@param modelHash fx.Model|integer|string
---@param flags integer
---@return fx.Vehicle? result
function VehicleStatic.getClosest(coords, radius, modelHash, flags) end

--- ```
--- paintType:
--- 0: Normal
--- 1: Metallic
--- 2: Pearl
--- 3: Matte
--- 4: Metal
--- 5: Chrome
--- ```
--- **Native**: `GET_NUM_MOD_COLORS` (`0xA551BE18C11A476D`)
---@param paintType integer
---@param p1 boolean
---@return integer result
function VehicleStatic.getNumModColors(paintType, p1) end

--- This native does no interpolation between pathpoints. The same position will be returned for all times up to the next pathpoint in the recording.
---
--- See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
--- **Native**: `GET_POSITION_OF_VEHICLE_RECORDING_AT_TIME` (`0xD242728AA6F0FBA2`)
---@param recording integer
---@param time number
---@param script string
---@return vector3 result
function VehicleStatic.getPositionOfRecordingAtTime(recording, time, script) end

--- **Native**: `GET_POSITION_OF_VEHICLE_RECORDING_ID_AT_TIME` (`0x92523B76657A517D`)
---@param id integer
---@param time number
---@return vector3 result
function VehicleStatic.getPositionOfRecordingIdAtTime(id, time) end

--- **Native**: `GET_RANDOM_VEHICLE_BACK_BUMPER_IN_SPHERE` (`0xB50807EABE20A8DC`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 integer
---@param p5 integer
---@param p6 integer
---@return fx.Vehicle? result
function VehicleStatic.getRandomBackBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

--- **Native**: `GET_RANDOM_VEHICLE_FRONT_BUMPER_IN_SPHERE` (`0xC5574E0AEB86BA68`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 integer
---@param p5 integer
---@param p6 integer
---@return fx.Vehicle? result
function VehicleStatic.getRandomFrontBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

--- ```
--- Gets a random vehicle in a sphere at the specified position, of the specified radius.
--- x: The X-component of the position of the sphere.
--- y: The Y-component of the position of the sphere.
--- z: The Z-component of the position of the sphere.
--- radius: The radius of the sphere. Max is 9999.9004.
--- modelHash: The vehicle model to limit the selection to. Pass 0 for any model.
--- flags: The bitwise flags that modifies the behaviour of this function.
--- ```
--- **Native**: `GET_RANDOM_VEHICLE_IN_SPHERE` (`0x386F6CE5BAF6091C`)
---@param coords vector3
---@param radius number
---@param modelHash fx.Model|integer|string
---@param flags integer
---@return fx.Vehicle? result
function VehicleStatic.getRandomInSphere(coords, radius, modelHash, flags) end

--- ```
--- Not present in the retail version! It's just a nullsub.
--- p0 always true (except in one case)
--- p1 a random vehicle hash loaded in memory
--- successIndicator: 0 if success, -1 if failed
--- ```
--- **Native**: `GET_RANDOM_VEHICLE_MODEL_IN_MEMORY` (`0x055BF0AC0C34F4FD`)
---@param p0 boolean
---@return fx.Model modelHash
---@return integer successIndicator
function VehicleStatic.getRandomModelInMemory(p0) end

--- See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
--- **Native**: `GET_VEHICLE_RECORDING_ID` (`0x21543C612379DB3C`)
---@param recording integer
---@param script string
---@return integer result
function VehicleStatic.getRecordingId(recording, script) end

--- **Native**: `GET_ROTATION_OF_VEHICLE_RECORDING_AT_TIME` (`0x2058206FBE79A8AD`)
---@param recording integer
---@param time number
---@param script string
---@return vector3 result
function VehicleStatic.getRotationOfRecordingAtTime(recording, time, script) end

--- **Native**: `GET_ROTATION_OF_VEHICLE_RECORDING_ID_AT_TIME` (`0xF0F2103EFAF8CBA7`)
---@param id integer
---@param time number
---@return vector3 result
function VehicleStatic.getRotationOfRecordingIdAtTime(id, time) end

--- **Native**: `GET_TOTAL_DURATION_OF_VEHICLE_RECORDING` (`0x0E48D1C262390950`)
---@param recording integer
---@param script string
---@return number result
function VehicleStatic.getTotalDurationOfRecording(recording, script) end

--- **Native**: `GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID` (`0x102D125411A7B6E6`)
---@param id integer
---@return number result
function VehicleStatic.getTotalDurationOfRecordingId(id) end

--- **Native**: `HAS_VEHICLE_ASSET_LOADED` (`0x1BBE0523B8DB9A21`)
---@param vehicleAsset integer
---@return boolean result
function VehicleStatic.hasAssetLoaded(vehicleAsset) end

--- **Native**: `HAS_PRELOAD_MODS_FINISHED` (`0x06F43E5175EB6D96`)
---@param p0 any
---@return boolean result
function VehicleStatic.hasPreloadModsFinished(p0) end

--- **Native**: `HAS_VEHICLE_RECORDING_BEEN_LOADED` (`0x300D614A4C785FC4`)
---@param recording integer
---@param script string
---@return boolean result
function VehicleStatic.hasRecordingBeenLoaded(recording, script) end

--- **Native**: `INSTANTLY_FILL_VEHICLE_POPULATION` (`0x48ADC8A773564670`)
function VehicleStatic.instantlyFillPopulation() end

--- **Native**: `IS_ANY_VEHICLE_NEAR_POINT` (`0x61E1DD6125A3EEE6`)
---@param coords vector3
---@param radius number
---@return boolean result
function VehicleStatic.isAnyNearPoint(coords, radius) end

--- ```
--- Usage:
--- public bool isCopInRange(Vector3 Location, float Range)
---         {
---             return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);
---         }
--- ```
--- **Native**: `IS_COP_VEHICLE_IN_AREA_3D` (`0x7EEF65D5F153E26A`)
---@param x1 number
---@param x2 number
---@param y1 number
---@param y2 number
---@param z1 number
---@param z2 number
---@return boolean result
function VehicleStatic.isCopInArea3d(x1, x2, y1, y2, z1, z2) end

--- ```
--- garageName example "Michael - Beverly Hills"
--- ```
--- **Native**: `IS_VEHICLE_IN_GARAGE_AREA` (`0xCEE4490CD57BB3C2`)
---@param garageName string
---@param vehicle fx.Vehicle|integer
---@return boolean result
function VehicleStatic.isInGarageArea(garageName, vehicle) end

--- **Native**: `IS_VEHICLE_WEAPON_DISABLED` (`0x563B65A643ED072E`)
---@param weaponHash integer|string
---@param vehicle fx.Vehicle|integer
---@param owner fx.Ped|integer
---@return boolean result
function VehicleStatic.isWeaponDisabled(weaponHash, vehicle, owner) end

--- **Native**: `NET_TO_VEH` (`0x367B936610BA360C`)
---@param netHandle integer
---@return fx.Vehicle? result
function VehicleStatic.net(netHandle) end

--- **Native**: `PRELOAD_VEHICLE_MOD` (`0x758F49C24925568A`)
---@param p0 any
---@param modType fx.Enum.VehicleModType|integer Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
---@param p2 any
function VehicleStatic.preloadMod(p0, modType, p2) end

--- **Native**: `REMOVE_VEHICLE_ASSET` (`0xACE699C71AB9DEB5`)
---@param vehicleAsset integer
function VehicleStatic.removeAsset(vehicleAsset) end

--- **Native**: `REMOVE_VEHICLE_COMBAT_AVOIDANCE_AREA` (`0xE30524E1871F481D`)
---@param p0 any
function VehicleStatic.removeCombatAvoidanceArea(p0) end

--- See [REQUEST_VEHICLE_RECORDING](#\_0xAF514CABE74CBF15)
--- **Native**: `REMOVE_VEHICLE_RECORDING` (`0xF1160ACCF98A3FC8`)
---@param recording integer
---@param script string
function VehicleStatic.removeRecording(recording, script) end

--- **Native**: `REMOVE_ROAD_NODE_SPEED_ZONE` (`0x1033371FC8E842A7`)
---@param speedzone integer
---@return boolean result
function VehicleStatic.removeRoadNodeSpeedZone(speedzone) end

--- **Native**: `REMOVE_VEHICLES_FROM_GENERATORS_IN_AREA` (`0x46A1E1A299EC4BBA`)
---@param coords1 vector3
---@param coords2 vector3
---@param unk any
function VehicleStatic.removeVehiclesFromGeneratorsInArea(coords1, coords2, unk) end

--- ```
--- REQUEST_VEHICLE_ASSET(GET_HASH_KEY(cargobob3), 3);
--- vehicle found that have asset's:
--- cargobob3
--- submersible
--- blazer
--- ```
--- **Native**: `REQUEST_VEHICLE_ASSET` (`0x81A15811460FAB3A`)
---@param vehicleHash integer|string
---@param vehicleAsset integer
function VehicleStatic.requestAsset(vehicleHash, vehicleAsset) end

--- ```
--- Request the vehicle recording defined by the lowercase format string "%s%03d.yvr". For example, REQUEST_VEHICLE_RECORDING(1, "FBIs1UBER") corresponds to fbis1uber001.yvr.
--- For all vehicle recording/playback natives, "script" is a common prefix that usually corresponds to the script/mission the recording is used in, "recording" is its int suffix, and "id" (e.g., in native GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID) corresponds to a unique identifier within the recording streaming module.
--- Note that only 24 recordings (hardcoded in multiple places) can ever active at a given time before clobbering begins.
--- ```
--- **Native**: `REQUEST_VEHICLE_RECORDING` (`0xAF514CABE74CBF15`)
---@param recording integer
---@param script string
function VehicleStatic.requestRecording(recording, script) end

--- **Native**: `SET_ALL_VEHICLE_GENERATORS_ACTIVE` (`0x34AD89078831A4BC`)
function VehicleStatic.setAllGeneratorsActive() end

--- **Native**: `SET_ALL_VEHICLE_GENERATORS_ACTIVE_IN_AREA` (`0xC12321827687FE4D`)
---@param coords1 vector3
---@param coords2 vector3
---@param p6 boolean
---@param p7 boolean
function VehicleStatic.setAllGeneratorsActiveInArea(coords1, coords2, p6, p7) end

--- **Native**: `SET_ALL_LOW_PRIORITY_VEHICLE_GENERATORS_ACTIVE` (`0x608207E7A8FB787C`)
---@param active boolean
function VehicleStatic.setAllLowPriorityGeneratorsActive(active) end

--- **Native**: `SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME` (`0x90B6DA738A9A25DA`)
---@param range number Most likely a value between 0.0 and 1.0.
function VehicleStatic.setAmbientRangeMultiplierThisFrame(range) end

--- ```
--- Something to do with "high speed bump severity"?
--- if (!sub_87a46("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER")) {
---     VEHICLE::_84FD40F56075E816(0.0);
---     sub_8795b("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER", 1);
--- }
--- ```
--- **Native**: `SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER` (`0x84FD40F56075E816`)
---@param multiplier number
function VehicleStatic.setCarHighSpeedBumpSeverityMultiplier(multiplier) end

--- **Usage:**
---
--- *   Use this native inside a looped function.
--- *   Values:
---     *   `0.0` = no vehicles on streets
---     *   `1.0` = normal vehicles on streets
---
--- `1.0` Seems to be the maximum.
--- **Native**: `SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME` (`0x245A6883D966D537`)
---@param multiplier number
function VehicleStatic.setDensityMultiplierThisFrame(multiplier) end

--- Disables the additional physics forces applied to BMX bikes that enable them to perform tricks.
---
--- ```
--- NativeDB Introduced: v463
--- ```
--- **Native**: `SET_DISABLE_BMX_EXTRA_TRICK_FORCES` (`0x26D99D5A82FD18E8`)
---@param disableExtraTrickForces boolean Set to `true` to disable the extra forces applied for tricks on BMX bicycles, making the bike behave more like a regular bicycle without trick capabilities. Set to `false` to allow BMX bikes to perfo…
function VehicleStatic.setDisableBmxExtraTrickForces(disableExtraTrickForces) end

--- **Native**: `SET_DISABLE_RANDOM_TRAINS_THIS_FRAME` (`0xD4B8E3D1917BC86B`)
---@param toggle boolean
function VehicleStatic.setDisableRandomTrainsThisFrame(toggle) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `SET_DISABLE_VEHICLE_UNK` (`0x143921E45EC44D62`)
---@param toggle boolean
function VehicleStatic.setDisableUnk(toggle) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `SET_DISABLE_VEHICLE_UNK_2` (`0x211E95CE9903940C`)
---@param toggle boolean
function VehicleStatic.setDisableUnk2(toggle) end

--- ```
--- Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.
--- ```
--- **Native**: `SET_DISTANT_CARS_ENABLED` (`0xF796359A959DF65D`)
---@param toggle boolean
function VehicleStatic.setDistantCarsEnabled(toggle) end

--- Enable/Disables global slipstream physics
--- **Native**: `SET_ENABLE_VEHICLE_SLIPSTREAMING` (`0xE6C0C80B8C867537`)
---@param toggle boolean
function VehicleStatic.setEnableSlipstreaming(toggle) end

--- **Native**: `SET_FAR_DRAW_VEHICLES` (`0x26324F33423F3CC3`)
---@param toggle boolean
function VehicleStatic.setFarDrawVehicles(toggle) end

--- **Native**: `SET_GARBAGE_TRUCKS` (`0x2AFD795EEAC8D30D`)
---@param toggle boolean
function VehicleStatic.setGarbageTrucks(toggle) end

--- Specifies an area of interest where cargens will focus on spawning vehicles
---
--- You can clear the area of interest with [`CLEAR_VEHICLE_GENERATOR_AREA_OF_INTEREST`](#\_0x0A436B8643716D14)
--- **Native**: `SET_VEHICLE_GENERATOR_AREA_OF_INTEREST` (`0x9A75585FB2E54FAD`)
---@param coords vector3 The coordinate of the central point of the area of interest.
---@param radius number The radius around the central point, defining the size of the area of interest
function VehicleStatic.setGeneratorAreaOfInterest(coords, radius) end

--- **Native**: `SET_LIGHTS_CUTOFF_DISTANCE_TWEAK` (`0xBC3CCA5844452B06`)
---@param distance number
function VehicleStatic.setLightsCutoffDistanceTweak(distance) end

--- **Native**: `SET_NUMBER_OF_PARKED_VEHICLES` (`0xCAA15F13EBD417FF`)
---@param value integer
function VehicleStatic.setNumberOfParkedVehicles(value) end

--- **Native**: `SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME` (`0xEAE6DCC7EEE3DB1D`)
---@param multiplier number
function VehicleStatic.setParkedDensityMultiplierThisFrame(multiplier) end

--- **Native**: `SET_RANDOM_BOATS` (`0x84436EC293B1415F`)
---@param toggle boolean
function VehicleStatic.setRandomBoats(toggle) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_RANDOM_BOATS_IN_MP` (`0xDA5E12F728DB30CA`)
---@param toggle boolean
function VehicleStatic.setRandomBoatsInMp(toggle) end

--- **Native**: `SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME` (`0xB3B3359379FE77D3`)
---@param multiplier number
function VehicleStatic.setRandomDensityMultiplierThisFrame(multiplier) end

--- Enables spawning random trains on the preset tracks.
---
--- Requires [`SWITCH_TRAIN_TRACK`](#\_0xFD813BB7DB977F20) and [`SET_TRAIN_TRACK_SPAWN_FREQUENCY`](#\_0x21973BBF8D17EDFA) to be set.
--- **Native**: `SET_RANDOM_TRAINS` (`0x80D9F74197EA47D9`)
---@param toggle boolean Whether to enable random trains.
function VehicleStatic.setRandomTrains(toggle) end

--- ```
--- Only called once in the decompiled scripts. Presumably activates the specified generator.
--- ```
--- **Native**: `SET_SCRIPT_VEHICLE_GENERATOR` (`0xD9D620E0AC6DC4B0`)
---@param vehicleGenerator integer
---@param enabled boolean
function VehicleStatic.setScriptGenerator(vehicleGenerator, enabled) end

--- ```
--- Inverse of 0x95CF53B3D687F9FA
--- ```
---
--- ```
--- NativeDB Added Parameter 1: Vehicle vehicle
--- ```
--- **Native**: `SET_TRAILER_LEGS_LOWERED` (`0x878C75C09FBDB942`)
function VehicleStatic.setTrailerLegsLowered() end

--- ```
--- Only called once inside main_persitant with the parameters, 0
--- ```
--- **Native**: `SET_TRAIN_TRACK_SPAWN_FREQUENCY` (`0x21973BBF8D17EDFA`)
---@param trackIndex integer
---@param frequency integer
function VehicleStatic.setTrainTrackSpawnFrequency(trackIndex, frequency) end

--- **Native**: `STOP_ALL_GARAGE_ACTIVITY` (`0x0F87E938BDF29D66`)
function VehicleStatic.stopAllGarageActivity() end

--- Toggles whether ambient trains can spawn on the specified track or not.
---
--- | trackId | File | Description |
--- | --- | --- | --- |
--- | 0 | `trains1.dat` | Main track around SA |
--- | 1 | `trains2.dat` | Davis Quartz Quarry branch |
--- | 2 | `trains3.dat` | Second track alongside live track along Roy Lewenstein Blv. |
--- | 3 | `trains4.dat` | Metro track circuit |
--- | 4 | `trains5.dat` | Branch in Mirror Park Railyard |
--- | 5 | `trains6.dat` | Branch in Mirror Park Railyard |
--- | 6 | `trains7.dat` | LS branch to Mirror Park Railyard |
--- | 7 | `trains8.dat` | Overground part of metro track along Forum Dr. |
--- | 8 | `trains9.dat` | Branch to Mirror Park Railyard |
--- | 9 | `trains10.dat` | Yankton train |
--- | 10 | `trains11.dat` | Part of metro track near mission row |
--- | 11 | `trains12.dat` | Yankton prologue mission train |
---
--- Tracks IDs `0` and `3` are the main tracks you find trains on during normal gameplay, all the others are used during missions and are not complete tracks.
--- **Native**: `SWITCH_TRAIN_TRACK` (`0xFD813BB7DB977F20`)
---@param trackId integer The internal id of the train track to switch
---@param state boolean Whether ambient trains can spawn or not
function VehicleStatic.switchTrainTrack(trackId, state) end

