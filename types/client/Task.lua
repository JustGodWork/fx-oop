---@meta
---@diagnostic disable
-- fx.Task (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Task
local TaskStatic = {}

--- **Native**: `ADD_COVER_BLOCKING_AREA` (`0x45C597097DD7CB81`)
---@param player vector3
---@param radius vector3
---@param p6 boolean
---@param p7 boolean
---@param p8 boolean
---@param p9 boolean
function TaskStatic.addCoverBlockingArea(player, radius, p6, p7, p8, p9) end

--- **Native**: `ADD_COVER_POINT` (`0xD5C12A75C7B9497F`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 boolean
---@return integer result
function TaskStatic.addCoverPoint(p0, p1, p2, p3, p4, p5, p6, p7) end

--- connects/links 2 [route nodes](#\_0x8EDF950167586B7C)\
--- image representing the cyclic example below:\
--- ![image](https://user-images.githubusercontent.com/55803068/188470866-c32c6a9f-a25d-4772-9b18-5be46e2c14a1.png)
--- **Native**: `ADD_PATROL_ROUTE_LINK` (`0x23083260DEC3A551`)
---@param id1 integer the id representing the first route node
---@param id2 integer the id representing the second route node
function TaskStatic.addPatrolRouteLink(id1, id2) end

--- x2,y2 and z2 are the coordinates to which the ped should look at
--- **Native**: `ADD_PATROL_ROUTE_NODE` (`0x8EDF950167586B7C`)
---@param id integer is an integer that "identifies" the route node for linking to the route with ADD_PATROL_ROUTE_LINK.
---@param guardScenario string can be "WORLD_HUMAN_GUARD_STAND" or "StandGuard"
---@param coords1 vector3 destination
---@param coords2 vector3 coordinates to which the ped should look
---@param waitTime integer written in ms
function TaskStatic.addPatrolRouteNode(id, guardScenario, coords1, coords2, waitTime) end

--- **Native**: `ASSISTED_MOVEMENT_IS_ROUTE_LOADED` (`0x60F9A4393A21F741`)
---@param route string
---@return boolean result
function TaskStatic.assistedMovementIsRouteLoaded(route) end

--- **Native**: `ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME` (`0x13945951E16EF912`)
---@param dist number
function TaskStatic.assistedMovementOverrideLoadDistanceThisFrame(dist) end

--- **Native**: `ASSISTED_MOVEMENT_REMOVE_ROUTE` (`0x3548536485DD792B`)
---@param route string
function TaskStatic.assistedMovementRemoveRoute(route) end

--- ```
--- Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"
--- ```
--- **Native**: `ASSISTED_MOVEMENT_REQUEST_ROUTE` (`0x817268968605947A`)
---@param route string
function TaskStatic.assistedMovementRequestRoute(route) end

--- **Native**: `ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES` (`0xD5002D78B7162E1B`)
---@param route string
---@param props integer
function TaskStatic.assistedMovementSetRouteProperties(route, props) end

--- For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#\_0xE8854A4326B9E12B)
---
--- #### NOTE
---
--- If you fail to call [`CLOSE_SEQUENCE_TASK`](#\_0x39E72BC99E6360CB) and `CLEAR_SEQUENCE_TASK` the sequence system can get stuck in a broken state until you restart your client.
--- **Native**: `CLEAR_SEQUENCE_TASK` (`0x3841422E9C488D8C`)
---@param taskSequenceId integer The task sequence to clear
---@return integer taskSequenceId The task sequence to clear
function TaskStatic.clearSequenceTask(taskSequenceId) end

--- **Native**: `CLOSE_PATROL_ROUTE` (`0xB043ECA801B8CBC1`)
function TaskStatic.closePatrolRoute() end

--- For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#\_0xE8854A4326B9E12B)
---
--- #### NOTE
---
--- If you fail to call `CLOSE_SEQUENCE_TASK` and [`CLEAR_SEQUENCE_TASK`](#\_0x3841422E9C488D8C) this can get stuck in a broken state until you restart your client.
--- **Native**: `CLOSE_SEQUENCE_TASK` (`0x39E72BC99E6360CB`)
---@param taskSequenceId integer The task sequence to close
function TaskStatic.closeSequenceTask(taskSequenceId) end

--- **Native**: `CREATE_PATROL_ROUTE` (`0xAF8A443CCC8018DC`)
function TaskStatic.createPatrolRoute() end

--- ```
--- From the b617d scripts:
--- TASK::DELETE_PATROL_ROUTE("miss_merc0");
--- TASK::DELETE_PATROL_ROUTE("miss_merc1");
--- TASK::DELETE_PATROL_ROUTE("miss_merc2");
--- TASK::DELETE_PATROL_ROUTE("miss_dock");
--- ```
--- **Native**: `DELETE_PATROL_ROUTE` (`0x7767DD9D65E91319`)
---@param patrolRoute string
function TaskStatic.deletePatrolRoute(patrolRoute) end

--- **Native**: `DOES_SCENARIO_EXIST_IN_AREA` (`0x5A59271FFADD33C1`)
---@param coords vector3
---@param radius number
---@param b boolean
---@return boolean result
function TaskStatic.doesScenarioExistInArea(coords, radius, b) end

--- ```
--- Occurrences in the b617d scripts:
--- "ARMY_GUARD",
--- "ARMY_HELI",
--- "Cinema_Downtown",
--- "Cinema_Morningwood",
--- "Cinema_Textile",
--- "City_Banks",
--- "Countryside_Banks",
--- "DEALERSHIP",
--- "GRAPESEED_PLANES",
--- "KORTZ_SECURITY",
--- "LOST_BIKERS",
--- "LSA_Planes",
--- "LSA_Planes",
--- "MP_POLICE",
--- "Observatory_Bikers",
--- "POLICE_POUND1",
--- "POLICE_POUND2",
--- "POLICE_POUND3",
--- "POLICE_POUND4",
--- "POLICE_POUND5"
--- "QUARRY",
--- "SANDY_PLANES",
--- "SCRAP_SECURITY",
--- "SEW_MACHINE",
--- "SOLOMON_GATE",
--- "Triathlon_1_Start",
--- "Triathlon_2_Start",
--- "Triathlon_3_Start"
--- Sometimes used with IS_SCENARIO_GROUP_ENABLED:
--- if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
--- else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
--- ```
--- **Native**: `DOES_SCENARIO_GROUP_EXIST` (`0xF9034C136C9E00D3`)
---@param scenarioGroup string
---@return boolean result
function TaskStatic.doesScenarioGroupExist(scenarioGroup) end

--- **Native**: `DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA` (`0x0A9D0C2A3BBC86C1`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 string
---@param p4 number
---@param p5 boolean
---@return boolean result
function TaskStatic.doesScenarioOfTypeExistInArea(p0, p1, p2, p3, p4, p5) end

--- ```
--- Checks if there is a cover point at position
--- ```
--- **Native**: `DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS` (`0xA98B8E3C088E5A31`)
---@param coords vector3
---@return boolean result
function TaskStatic.doesScriptedCoverPointExistAtCoords(coords) end

--- **Native**: `GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK` (`0x3A8CADC7D37AACC5`)
---@param p0 integer
---@return string result
function TaskStatic.getClipSetForScriptedGunTask(p0) end

--- **Native**: `GET_PED_WAYPOINT_DISTANCE` (`0xE6A877C64CAF1BC5`)
---@param p0 any
---@return number result
function TaskStatic.getPedWaypointDistance(p0) end

--- **Native**: `GET_SCRIPTED_COVER_POINT_COORDS` (`0x594A1028FC2A3E85`)
---@param coverpoint integer
---@return vector3 result
function TaskStatic.getScriptedCoverPointCoords(coverpoint) end

--- **Native**: `GET_WAYPOINT_DISTANCE_ALONG_ROUTE` (`0xA5B769058763E497`)
---@param p0 string
---@param p1 integer
---@return number result
function TaskStatic.getWaypointDistanceAlongRoute(p0, p1) end

--- ```
---  Occurrences in the b617d scripts:
---  "ARMY_GUARD",
---  "ARMY_HELI",
---  "BLIMP",
---  "Cinema_Downtown",
---  "Cinema_Morningwood",
---  "Cinema_Textile",
---  "City_Banks",
---  "Countryside_Banks",
---  "DEALERSHIP",
---  "KORTZ_SECURITY",
---  "LSA_Planes",
---  "MP_POLICE",
---  "Observatory_Bikers",
---  "POLICE_POUND1",
---  "POLICE_POUND2",
---  "POLICE_POUND3",
---  "POLICE_POUND4",
---  "POLICE_POUND5",
---  "Rampage1",
---  "SANDY_PLANES",
---  "SCRAP_SECURITY",
---  "SEW_MACHINE",
---  "SOLOMON_GATE"
--- Sometimes used with DOES_SCENARIO_GROUP_EXIST:
--- if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
--- else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
--- ```
--- **Native**: `IS_SCENARIO_GROUP_ENABLED` (`0x367A09DED4E05B99`)
---@param scenarioGroup string
---@return boolean result
function TaskStatic.isScenarioGroupEnabled(scenarioGroup) end

--- **Native**: `IS_SCENARIO_OCCUPIED` (`0x788756D73AC2E07C`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
---@return boolean result
function TaskStatic.isScenarioOccupied(p0, p1, p2, p3, p4) end

--- ```
--- Occurrences in the b617d scripts:
--- "PROP_HUMAN_SEAT_CHAIR",
--- "WORLD_HUMAN_DRINKING",
--- "WORLD_HUMAN_HANG_OUT_STREET",
--- "WORLD_HUMAN_SMOKING",
--- "WORLD_MOUNTAIN_LION_WANDER",
--- "WORLD_HUMAN_DRINKING"
--- Sometimes used together with MISC::IS_STRING_NULL_OR_EMPTY in the scripts.
--- scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
--- ```
--- **Native**: `IS_SCENARIO_TYPE_ENABLED` (`0x3A815DB3EA088722`)
---@param scenarioType string
---@return boolean result
function TaskStatic.isScenarioTypeEnabled(scenarioType) end

--- **Native**: `IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED` (`0xE03B3F2D3DC59B64`)
---@param p0 any
---@return boolean result
function TaskStatic.isWaypointPlaybackGoingOnForPed(p0) end

--- **Native**: `GET_IS_WAYPOINT_RECORDING_LOADED` (`0xCB4E8BE8A0063C5D`)
---@param name string
---@return boolean result
function TaskStatic.isWaypointRecordingLoaded(name) end

--- ```
--- The patrol route name must starts with "miss_" to be properly created.
---
---  patrolRoutes found in the b617d scripts:
---  "miss_Ass0",
---  "miss_Ass1",
---  "miss_Ass2",
---  "miss_Ass3",
---  "miss_Ass4",
---  "miss_Ass5",
---  "miss_Ass6",
---  "MISS_PATROL_6",
---  "MISS_PATROL_7",
---  "MISS_PATROL_8",
---  "MISS_PATROL_9",
---  "miss_Tower_01",
---  "miss_Tower_02",
---  "miss_Tower_03",
---  "miss_Tower_04",
---  "miss_Tower_05",
---  "miss_Tower_06",
---  "miss_Tower_07",
---  "miss_Tower_08",
---  "miss_Tower_10"
--- ```
--- **Native**: `OPEN_PATROL_ROUTE` (`0xA36BFB5EE89F3D82`)
---@param patrolRoute string
function TaskStatic.openPatrolRoute(patrolRoute) end

--- ### NOTE
---
--- If this returns 0 that means it failed to get a sequence id.
---
--- If you fail to call [`CLOSE_SEQUENCE_TASK`](#\_0x39E72BC99E6360CB) and [`CLEAR_SEQUENCE_TASK`](#\_0x3841422E9C488D8C) the sequence system can get stuck in a broken state until you restart your client.
--- **Native**: `OPEN_SEQUENCE_TASK` (`0xE8854A4326B9E12B`)
---@param taskSequenceId integer The reference to bind to, in Lua/JS this will be returned as a value
---@return integer taskSequenceId The reference to bind to, in Lua/JS this will be returned as a value
function TaskStatic.openSequenceTask(taskSequenceId) end

--- **Native**: `PLAY_ENTITY_SCRIPTED_ANIM` (`0x77A1EEC547E7FCF1`)
---@param p0 any
---@param p4 number
---@param p5 number
---@return any p1
---@return any p2
---@return any p3
function TaskStatic.playEntityScriptedAnim(p0, p4, p5) end

--- **Native**: `REMOVE_ALL_COVER_BLOCKING_AREAS` (`0xDB6708C0B46F56D8`)
function TaskStatic.removeAllCoverBlockingAreas() end

--- **Native**: `REMOVE_COVER_POINT` (`0xAE287C923D891715`)
---@param coverpoint integer
function TaskStatic.removeCoverPoint(coverpoint) end

--- **Native**: `REMOVE_WAYPOINT_RECORDING` (`0xFF1B8B4AA1C25DC8`)
---@param name string
function TaskStatic.removeWaypointRecording(name) end

--- ```
--- For a full list of the points, see here: goo.gl/wIH0vn
--- Max number of loaded recordings is 32.
--- ```
--- **Native**: `REQUEST_WAYPOINT_RECORDING` (`0x9EEFB62EB27B5792`)
---@param name string
function TaskStatic.requestWaypointRecording(name) end

--- **Native**: `RESET_EXCLUSIVE_SCENARIO_GROUP` (`0x4202BBCB8684563D`)
function TaskStatic.resetExclusiveScenarioGroup() end

--- **Native**: `RESET_SCENARIO_GROUPS_ENABLED` (`0xDD902D0349AFAD3A`)
function TaskStatic.resetScenarioGroupsEnabled() end

--- **Native**: `RESET_SCENARIO_TYPES_ENABLED` (`0x0D40EE2A7F2B2D6D`)
function TaskStatic.resetScenarioTypesEnabled() end

--- **Native**: `SET_ANIM_LOOPED` (`0x70033C3CC29A1FF4`)
---@param p0 any
---@param p1 boolean
---@param p2 any
---@param p3 boolean
function TaskStatic.setAnimLooped(p0, p1, p2, p3) end

--- **Native**: `SET_ANIM_RATE` (`0x032D49C5E359C847`)
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 boolean
function TaskStatic.setAnimRate(p0, p1, p2, p3) end

--- **Native**: `SET_ANIM_WEIGHT` (`0x207F1A47C0342F48`)
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 any
---@param p4 boolean
function TaskStatic.setAnimWeight(p0, p1, p2, p3, p4) end

--- **Native**: `SET_DRIVE_TASK_MAX_CRUISE_SPEED` (`0x404A5AA9B9F0B746`)
---@param p0 any
---@param p1 number
function TaskStatic.setDriveTaskMaxCruiseSpeed(p0, p1) end

--- ```
--- Groups found in the scripts used with this native:
--- "AMMUNATION",
--- "QUARRY",
--- "Triathlon_1",
--- "Triathlon_2",
--- "Triathlon_3"
--- ```
--- **Native**: `SET_EXCLUSIVE_SCENARIO_GROUP` (`0x535E97E1F7FC0C6A`)
---@param scenarioGroup string
function TaskStatic.setExclusiveScenarioGroup(scenarioGroup) end

--- ```
--- Birds will try to reach the given height.
--- ```
--- **Native**: `SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT` (`0x6C6B148586F934F7`)
---@param height number
function TaskStatic.setGlobalMinBirdFlightHeight(height) end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `SET_NEXT_DESIRED_MOVE_STATE` (`0xF1B9F16E89E2C93A`)
---@param p0 number
function TaskStatic.setNextDesiredMoveState(p0) end

--- **Native**: `SET_PED_WAYPOINT_ROUTE_OFFSET` (`0xED98E10B0AFCE4B4`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return any result
function TaskStatic.setPedWaypointRouteOffset(p0, p1, p2, p3) end

--- ```
--- Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU
--- ```
--- **Native**: `SET_SCENARIO_GROUP_ENABLED` (`0x02C8E5B49848664E`)
---@param scenarioGroup string
---@param p1 boolean
function TaskStatic.setScenarioGroupEnabled(scenarioGroup, p1) end

--- ```
--- seems to enable/disable specific scenario-types from happening in the game world.
--- Here are some scenario types from the scripts:
--- "WORLD_MOUNTAIN_LION_REST"
--- "WORLD_MOUNTAIN_LION_WANDER"
--- "DRIVE"
--- "WORLD_VEHICLE_POLICE_BIKE"
--- "WORLD_VEHICLE_POLICE_CAR"
--- "WORLD_VEHICLE_POLICE_NEXT_TO_CAR"
--- "WORLD_VEHICLE_DRIVE_SOLO"
--- "WORLD_VEHICLE_BIKER"
--- "WORLD_VEHICLE_DRIVE_PASSENGERS"
--- "WORLD_VEHICLE_SALTON_DIRT_BIKE"
--- "WORLD_VEHICLE_BICYCLE_MOUNTAIN"
--- "PROP_HUMAN_SEAT_CHAIR"
--- "WORLD_VEHICLE_ATTRACTOR"
--- "WORLD_HUMAN_LEANING"
--- "WORLD_HUMAN_HANG_OUT_STREET"
--- "WORLD_HUMAN_DRINKING"
--- "WORLD_HUMAN_SMOKING"
--- "WORLD_HUMAN_GUARD_STAND"
--- "WORLD_HUMAN_CLIPBOARD"
--- "WORLD_HUMAN_HIKER"
--- "WORLD_VEHICLE_EMPTY"
--- "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"
--- "WORLD_HUMAN_PAPARAZZI"
--- "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"
--- "WORLD_VEHICLE_PARK_PARALLEL"
--- "WORLD_VEHICLE_CONSTRUCTION_SOLO"
--- "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"
--- "WORLD_VEHICLE_TRUCK_LOGS"
--- scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
--- ```
--- **Native**: `SET_SCENARIO_TYPE_ENABLED` (`0xEB47EC4E34FB7EE1`)
---@param scenarioType string
---@param toggle boolean
function TaskStatic.setScenarioTypeEnabled(scenarioType, toggle) end

--- **Native**: `SET_SEQUENCE_TO_REPEAT` (`0x58C70CF3A41E4AE7`)
---@param taskSequenceId integer
---@param repeat_ boolean
function TaskStatic.setSequenceToRepeat(taskSequenceId, repeat_) end

--- **Native**: `TASK_CLEAR_DEFENSIVE_AREA` (`0x95A6C46A31D1917D`)
---@param p0 any
function TaskStatic.taskClearDefensiveArea(p0) end

--- **Native**: `TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED` (`0x2BBA30B854534A0C`)
---@param p0 any
---@param p1 number
---@param p2 any
---@param p3 any
function TaskStatic.taskCombatHatedTargetsAroundPedTimed(p0, p1, p2, p3) end

--- **Native**: `TASK_COMBAT_PED_TIMED` (`0x944F30DCB7096BDE`)
---@param p0 any
---@param ped fx.Ped|integer
---@param p2 integer
---@param p3 any
function TaskStatic.taskCombatPedTimed(p0, ped, p2, p3) end

--- **Native**: `TASK_EXIT_COVER` (`0x79B258E397854D29`)
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
function TaskStatic.taskExitCover(p0, p1, p2, p3, p4) end

--- Adds a new point to the current point route; a maximum of 8 points can be added.
---
--- Call [TASK_FLUSH_ROUTE](#\_0x841142A1376E9006) before the first call to this. Call [TASK_FOLLOW_POINT_ROUTE](#\_0x595583281858626E) to make the Ped go the route.
--- **Native**: `TASK_EXTEND_ROUTE` (`0x1E7889778264843A`)
---@param coords vector3
function TaskStatic.taskExtendRoute(coords) end

--- Clears the current point route. Call this before [TASK_EXTEND_ROUTE](#\_0x1E7889778264843A) and [TASK_FOLLOW_POINT_ROUTE](#\_0x595583281858626E).
--- **Native**: `TASK_FLUSH_ROUTE` (`0x841142A1376E9006`)
function TaskStatic.taskFlushRoute() end

--- **Native**: `TASK_FOLLOW_WAYPOINT_RECORDING` (`0x0759591819534F7B`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function TaskStatic.taskFollowWaypointRecording(p0, p1, p2, p3, p4) end

--- **Native**: `TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD` (`0x04701832B739DCE5`)
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 number
---@param p8 number
---@param p9 boolean
---@param p10 boolean
---@param p11 any
function TaskStatic.taskGoToEntityWhileAimingAtCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- **Native**: `TASK_GUARD_ASSIGNED_DEFENSIVE_AREA` (`0xD2A207EEBDF9889B`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
function TaskStatic.taskGuardAssignedDefensiveArea(p0, p1, p2, p3, p4, p5, p6) end

--- **Native**: `TASK_SEEK_COVER_TO_COVER_POINT` (`0xD43D95C7A869447F`)
---@param p0 any
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
---@param p6 boolean
function TaskStatic.taskSeekCoverToCoverPoint(p0, p1, p2, p3, p4, p5, p6) end

--- **Native**: `TASK_SET_SPHERE_DEFENSIVE_AREA` (`0x933C06518B52A9A4`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
function TaskStatic.taskSetSphereDefensiveArea(p0, p1, p2, p3, p4) end

--- Used in am_vehicle_spawn.ysc and am_mp_submarine.ysc.
--- p0 is always 0, p5 is always 1
--- p1 is the vehicle handle of the submarine. Submarine must have a driver, but the ped handle is not passed to the native.
--- Speed can be set by calling SET_DRIVE_TASK_CRUISE_SPEED after
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `TASK_SUBMARINE_GOTO_AND_STOP` (`0xC22B40579A498CA4`)
---@param p0 any
---@param submarine fx.Vehicle|integer
---@param coords vector3
---@param p5 any
function TaskStatic.taskSubmarineGotoAndStop(p0, submarine, coords, p5) end

--- **Native**: `TASK_SWEEP_AIM_POSITION` (`0x7AFE8FDC10BC07D2`)
---@param p0 any
---@param p5 any
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
---@return any p1
---@return any p2
---@return any p3
---@return any p4
function TaskStatic.taskSweepAimPosition(p0, p5, p6, p7, p8, p9, p10) end

--- ```
--- used in sequence task
--- both parameters seems to be always 0
--- ```
--- **Native**: `TASK_TOGGLE_DUCK` (`0xAC96609B9995EDF8`)
---@param p0 boolean
---@param p1 boolean
function TaskStatic.taskToggleDuck(p0, p1) end

--- **Native**: `TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD` (`0x9FDA1B3D7E7028B3`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
function TaskStatic.taskUseNearestScenarioChainToCoord(p0, p1, p2, p3, p4, p5) end

--- **Native**: `TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP` (`0x97A28E63F0BA5631`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 any
function TaskStatic.taskUseNearestScenarioChainToCoordWarp(p0, p1, p2, p3, p4, p5) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `TASK_WANDER_SPECIFIC` (`0x6919A2F136426098`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function TaskStatic.taskWanderSpecific(p0, p1, p2, p3) end

--- **Native**: `UPDATE_TASK_SWEEP_AIM_POSITION` (`0xBB106883F5201FC4`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
function TaskStatic.updateTaskSweepAimPosition(p0, p1, p2, p3) end

--- **Native**: `USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE` (`0x5A353B8E6B1095B5`)
---@param name string Waypoint recording name.
---@param p1 boolean
---@param p2 number
---@param p3 number
function TaskStatic.useWaypointRecordingAsAssistedMovementRoute(name, p1, p2, p3) end

--- **Native**: `WAYPOINT_PLAYBACK_GET_IS_PAUSED` (`0x701375A7D43F01CB`)
---@param p0 any
---@return boolean result
function TaskStatic.waypointPlaybackGetIsPaused(p0) end

--- **Native**: `WAYPOINT_PLAYBACK_OVERRIDE_SPEED` (`0x7D7D2B47FA788E85`)
---@param p0 any
---@param p1 number
---@param p2 boolean
function TaskStatic.waypointPlaybackOverrideSpeed(p0, p1, p2) end

--- **Native**: `WAYPOINT_PLAYBACK_PAUSE` (`0x0F342546AA06FED5`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function TaskStatic.waypointPlaybackPause(p0, p1, p2) end

--- **Native**: `WAYPOINT_PLAYBACK_RESUME` (`0x244F70C84C547D2D`)
---@param p0 any
---@param p1 boolean
---@param p2 any
---@param p3 any
function TaskStatic.waypointPlaybackResume(p0, p1, p2, p3) end

--- **Native**: `WAYPOINT_PLAYBACK_START_AIMING_AT_COORD` (`0x8968400D900ED8B3`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
function TaskStatic.waypointPlaybackStartAimingAtCoord(p0, p1, p2, p3, p4) end

--- **Native**: `WAYPOINT_PLAYBACK_START_AIMING_AT_PED` (`0x20E330937C399D29`)
---@param p0 any
---@param p1 any
---@param p2 boolean
function TaskStatic.waypointPlaybackStartAimingAtPed(p0, p1, p2) end

--- **Native**: `WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD` (`0x057A25CFCC9DB671`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
---@param p5 any
function TaskStatic.waypointPlaybackStartShootingAtCoord(p0, p1, p2, p3, p4, p5) end

--- **Native**: `WAYPOINT_PLAYBACK_START_SHOOTING_AT_PED` (`0xE70BA7B90F8390DC`)
---@param p0 any
---@param p1 any
---@param p2 boolean
---@param p3 any
function TaskStatic.waypointPlaybackStartShootingAtPed(p0, p1, p2, p3) end

--- **Native**: `WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING` (`0x47EFA040EBB8E2EA`)
---@param p0 any
function TaskStatic.waypointPlaybackStopAimingOrShooting(p0) end

--- **Native**: `WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED` (`0x6599D834B12D0800`)
---@param p0 any
function TaskStatic.waypointPlaybackUseDefaultSpeed(p0) end

--- ```
--- For a full list of the points, see here: goo.gl/wIH0vn
--- ```
--- **Native**: `WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT` (`0xB629A298081F876F`)
---@param name string
---@param coords vector3
---@param point integer
---@return boolean result
---@return integer point
function TaskStatic.waypointRecordingGetClosestWaypoint(name, coords, point) end

--- ```
--- For a full list of the points, see here: goo.gl/wIH0vn
--- ```
--- **Native**: `WAYPOINT_RECORDING_GET_COORD` (`0x2FB897405C90B361`)
---@param name string
---@param point integer
---@param coord vector3
---@return boolean result
---@return vector3 coord
function TaskStatic.waypointRecordingGetCoord(name, point, coord) end

--- ```
--- For a full list of the points, see here: goo.gl/wIH0vn
--- ```
--- **Native**: `WAYPOINT_RECORDING_GET_NUM_POINTS` (`0x5343532C01A07234`)
---@param name string
---@param points integer
---@return boolean result
---@return integer points
function TaskStatic.waypointRecordingGetNumPoints(name, points) end

--- **Native**: `WAYPOINT_RECORDING_GET_SPEED_AT_POINT` (`0x005622AEBC33ACA9`)
---@param name string
---@param point integer
---@return number result
function TaskStatic.waypointRecordingGetSpeedAtPoint(name, point) end

