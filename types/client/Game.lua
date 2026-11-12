---@meta
---@diagnostic disable
-- fx.Game (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.KeyboardOptions
---@field title? string Text shown above the input
---@field default? string Initial text
---@field max? integer Maximum length, 1 to 255, default 64
---@field timeout? integer Milliseconds before the keyboard is closed and the promise rejects (default: no limit)
---@class fx.Game
---@field allocatedStackSize integer (read-only) [GET_ALLOCATED_STACK_SIZE]
---@field areProfileSettingsValid boolean (read-only) [ARE_PROFILE_SETTINGS_VALID]
---@field benchmarkIterationsFromCommandLine integer (read-only) [GET_BENCHMARK_ITERATIONS_FROM_COMMAND_LINE]
---@field benchmarkPassFromCommandLine integer (read-only) [GET_BENCHMARK_PASS_FROM_COMMAND_LINE]
---@field benchmarkTime number (read-only) [GET_BENCHMARK_TIME]
---@field cloudHatOpacity number (read-only) [GET_CLOUD_HAT_OPACITY]
---@field fakeWantedLevel integer [GET_FAKE_WANTED_LEVEL / SET_FAKE_WANTED_LEVEL]
---@field frameCount integer (read-only) [GET_FRAME_COUNT] Gets the number of the current frame being displayed.
---@field frameTime number (read-only) [GET_FRAME_TIME] Gets the high precision frame time of the last frame in seconds. *note: the example above is way less precise.*
---@field gameTimer integer (read-only) [GET_GAME_TIMER]
---@field globalCharBuffer string (read-only) [GET_GLOBAL_CHAR_BUFFER]
---@field hasAsyncInstallFinished boolean (read-only) [HAS_ASYNC_INSTALL_FINISHED]
---@field hasResumedFromSuspend boolean (read-only) [HAS_RESUMED_FROM_SUSPEND]
---@field indexOfCurrentLevel integer (read-only) [GET_INDEX_OF_CURRENT_LEVEL]
---@field isAussieVersion boolean (read-only) [IS_AUSSIE_VERSION]
---@field isAutoSaveInProgress boolean (read-only) [IS_AUTO_SAVE_IN_PROGRESS]
---@field isAutoSaveOff boolean (read-only) [GET_IS_AUTO_SAVE_OFF]
---@field isCommandLineBenchmarkValueSet boolean (read-only) [IS_COMMAND_LINE_BENCHMARK_VALUE_SET]
---@field isDurangoVersion boolean (read-only) [IS_DURANGO_VERSION]
---@field isFrontendFading boolean (read-only) [IS_FRONTEND_FADING]
---@field isInPowerSavingMode boolean (read-only) [IS_IN_POWER_SAVING_MODE]
---@field isJapaneseVersion boolean (read-only) [IS_JAPANESE_VERSION]
---@field isMemoryCardInUse boolean (read-only) [IS_MEMORY_CARD_IN_USE]
---@field isMinigameInProgress boolean (read-only) [IS_MINIGAME_IN_PROGRESS]
---@field isOrbisVersion boolean (read-only) [IS_ORBIS_VERSION]
---@field isPcVersion boolean (read-only) [IS_PC_VERSION]
---@field isPlayerInAnimalForm boolean (read-only) [GET_IS_PLAYER_IN_ANIMAL_FORM]
---@field isPs3Version boolean (read-only) [IS_PS3_VERSION]
---@field isSniperInverted boolean (read-only) [IS_SNIPER_INVERTED]
---@field isSteamVersion boolean (read-only) [IS_STEAM_VERSION]
---@field isStuntJumpInProgress boolean (read-only) [IS_STUNT_JUMP_IN_PROGRESS]
---@field isStuntJumpMessageShowing boolean (read-only) [IS_STUNT_JUMP_MESSAGE_SHOWING]
---@field isThisAMinigameScript boolean (read-only) [IS_THIS_A_MINIGAME_SCRIPT]
---@field isXbox360Version boolean (read-only) [IS_XBOX360_VERSION]
---@field missionFlag boolean [GET_MISSION_FLAG / SET_MISSION_FLAG]
---@field nextWeatherTypeHashName integer (read-only) [GET_NEXT_WEATHER_TYPE_HASH_NAME] Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---@field numSuccessfulStuntJumps integer (read-only) [GET_NUM_SUCCESSFUL_STUNT_JUMPS]
---@field onscreenKeyboardResult string (read-only) [GET_ONSCREEN_KEYBOARD_RESULT]
---@field powerSavingModeDuration integer (read-only) [GET_POWER_SAVING_MODE_DURATION]
---@field prevWeatherTypeHashName integer (read-only) [GET_PREV_WEATHER_TYPE_HASH_NAME] Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---@field rainLevel number [GET_RAIN_LEVEL / SET_RAIN_LEVEL]
---@field randomEventFlag boolean [GET_RANDOM_EVENT_FLAG / SET_RANDOM_EVENT_FLAG]
---@field replayStatCount integer (read-only) [GET_REPLAY_STAT_COUNT]
---@field replayStatMissionType integer (read-only) [GET_REPLAY_STAT_MISSION_TYPE]
---@field snowLevel number [GET_SNOW_LEVEL / SET_SNOW_LEVEL]
---@field statusOfMissionRepeatSave integer (read-only) [GET_STATUS_OF_MISSION_REPEAT_SAVE]
---@field totalSuccessfulStuntJumps integer (read-only) [GET_TOTAL_SUCCESSFUL_STUNT_JUMPS]
---@field windDirection vector3 (read-only) [GET_WIND_DIRECTION] Used for hunting in singleplayer and for golfing in both sp and online. The [`GET_HEADING_FROM_VECTOR_2D`](#\_0x2FFB6B224F4B2926) native can be used to get the…
---@field windSpeed number [GET_WIND_SPEED / SET_WIND_SPEED]
local GameStatic = {}

---Shows the onscreen keyboard. Resolves with the text, or nil when the player cancels. Never yields.
---Only one keyboard can be open at a time on the client, whatever the resource: a second call rejects.
---@param options? fx.KeyboardOptions
---@return fx.Promise<string?>
function GameStatic.keyboardAsync(options) end

--- **Native**: `ABSF` (`0x73D57CFFDD12C355`)
---@param value number
---@return number result
function GameStatic.absf(value) end

--- **Native**: `ABSI` (`0xF0D31AD191A74F87`)
---@param value integer
---@return integer result
function GameStatic.absi(value) end

--- **Native**: `ACOS` (`0x1D08B970013C34B6`)
---@param p0 number
---@return number result
function GameStatic.acos(p0) end

--- Creates and opens a new activity feed post to start filling in.
---
--- **Note**: This is a PS4 related native, resulting in a nullsub on the PC platform. This native won't do anything when invoked.
--- **Native**: `ACTIVITY_FEED_CREATE` (`0x4DCDF92BF64236CD`)
---@param captionString string The main text or caption for the activity feed post. This is the primary message displayed in the feed entry.
---@param condensedCaptionString string A shorter or condensed version of the caption, used in cases where space is limited or a brief summary is required.
function GameStatic.activityFeedCreate(captionString, condensedCaptionString) end

--- To remove, see: [`REMOVE_DISPATCH_SPAWN_BLOCKING_AREA`](#\_0x264AC28B01B353A5).
---
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- **Native**: `ADD_DISPATCH_SPAWN_BLOCKING_ANGLED_AREA` (`0x918C7B2D2FF3928B`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return any result
function GameStatic.addDispatchSpawnBlockingAngledArea(coords1, coords2, width) end

--- **Native**: `ADD_DISPATCH_SPAWN_BLOCKING_AREA` (`0x2D4259F1FEB81DA9`)
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return any result
function GameStatic.addDispatchSpawnBlockingArea(x1, y1, x2, y2) end

--- ```
--- Returns the index of the newly created hospital spawn point.
--- p3 might be radius?
--- ```
--- **Native**: `ADD_HOSPITAL_RESTART` (`0x1F464EF988465A81`)
---@param coords vector3
---@param p3 number
---@param p4 any
---@return integer result
function GameStatic.addHospitalRestart(coords, p3, p4) end

--- **Native**: `ADD_POLICE_RESTART` (`0x452736765B31FC4B`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 any
---@return any result
function GameStatic.addPoliceRestart(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Added Parameter 10: BOOL p9
--- ```
--- **Native**: `ADD_POP_MULTIPLIER_AREA` (`0x67F6413D3220E18D`)
---@param coords1 vector3
---@param coords2 vector3
---@param p6 number
---@param p7 number
---@param p8 boolean
---@return integer result
function GameStatic.addPopMultiplierArea(coords1, coords2, p6, p7, p8) end

--- ```
--- This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
--- ```
--- **Native**: `ADD_POP_MULTIPLIER_SPHERE` (`0x32C7A7E8C43A1F80`)
---@param coords vector3
---@param radius number
---@param pedMultiplier number
---@param vehicleMultiplier number
---@param p6 boolean
---@param p7 boolean
---@return integer result
function GameStatic.addPopMultiplierSphere(coords, radius, pedMultiplier, vehicleMultiplier, p6, p7) end

--- **Native**: `ADD_REPLAY_STAT_VALUE` (`0x69FE6DC87BD2A5E9`)
---@param value any
function GameStatic.addReplayStatValue(value) end

--- See description of [`ADD_STUNT_JUMP_ANGLED`](#\_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
--- **Native**: `ADD_STUNT_JUMP` (`0x1A992DA297A4630C`)
---@param coords1 vector3 Jump entry left far bottom corner coordinate .
---@param coords2 vector3 Jump entry right near top corner coordinate .
---@param coords3 vector3 Landing zone end coordinate .
---@param coords4 vector3 Landing zone start coordinate .
---@param cam vector3 Stuntcam (cinematic) coordinate .
---@param unk1 integer Unknown, always 150.
---@param unk2 integer Unknown, always 0.
---@param unk3 integer Unknown, always 0.
---@return integer result The ID of the stunt jump that was added.
function GameStatic.addStuntJump(coords1, coords2, coords3, coords4, cam, unk1, unk2, unk3) end

--- Creates a new stunt jump.
---
--- The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.
---
--- Info about the specific 'parameter sections':
---
--- **x1, y1, z1, x2, y2, z2 and radius1:**
---
--- First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.
---
--- **x3, y3, z3, x4, y4, z4 and radius2:**
---
--- Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).
---
--- **camX, camY and camZ:**
---
--- The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.
---
--- **unk1, unk2 and unk3:**
---
--- Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.
---
--- Visualized example in-game:
---
--- ![](https://d.fivem.dev/2019-03-15\_18-24\_c7802\_846.png)
---
--- Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): https://pastebin.com/EW1jBPkY
--- **Native**: `ADD_STUNT_JUMP_ANGLED` (`0xBBE5D803A5360CBF`)
---@param coords1 vector3 Entry zone bottom left corner .
---@param coords2 vector3 Entry zone top right corner .
---@param radius1 number Probably a "feather" radius for entry zone, you need to enter the jump within the min/max coordinates, or within this radius of those two coordinates.
---@param coords3 vector3 Landing zone start corner coordinate .
---@param coords4 vector3 Landing zone end corner coordinate .
---@param radius2 number Probably a "feather" radius for landing zone, you need to land within the min/max coordinates, or within this radius of those two coordinates.
---@param cam vector3 Stunt (cinematic) camera position.
---@param unk1 integer always 150
---@param unk2 integer always 0
---@param unk3 integer always 0
---@return integer result The ID of the stuntjump that was created.
function GameStatic.addStuntJumpAngled(coords1, coords2, radius1, coords3, coords4, radius2, cam, unk1, unk2, unk3) end

--- ```
--- Adds a point related to CTacticalAnalysis
--- ```
--- **Native**: `ADD_TACTICAL_ANALYSIS_POINT` (`0xB8721407EE9C3FF6`)
---@param coords vector3
function GameStatic.addTacticalAnalysisPoint(coords) end

--- **Native**: `ALLOW_MISSION_CREATOR_WARP` (`0xDEA36202FC3382DF`)
---@param toggle boolean
function GameStatic.allowMissionCreatorWarp(toggle) end

--- **Native**: `ARE_STRINGS_EQUAL` (`0x0C515FAB3FF9EA92`)
---@param string1 string
---@param string2 string
---@return boolean result
function GameStatic.areStringsEqual(string1, string2) end

--- **Native**: `ASIN` (`0xC843060B5765DCE7`)
---@param value number
---@return number result Returns the inverse sine in radians of the specified value
function GameStatic.asin(value) end

--- **Native**: `ATAN` (`0xA9D1795CD5043663`)
---@param p0 number
---@return number result
function GameStatic.atan(p0) end

--- **Native**: `ATAN2` (`0x8927CBF9D22261A4`)
---@param p0 number
---@param p1 number
---@return number result
function GameStatic.atan2(p0, p1) end

--- **Native**: `BEGIN_REPLAY_STATS` (`0xE0E500246FF73D66`)
---@param p0 any
---@param p1 any
function GameStatic.beginReplayStats(p0, p1) end

--- **Native**: `BLOCK_DISPATCH_SERVICE_RESOURCE_CREATION` (`0x9B2BD3773123EA2F`)
---@param dispatchService integer
---@param toggle boolean
function GameStatic.blockDispatchServiceResourceCreation(dispatchService, toggle) end

--- Closes the onscreen keyboard on console versions of the game.
---
--- **NOTE:** Do not use this native in FiveM/PC, because [`UPDATE_ONSCREEN_KEYBOARD`](#\_0x0CF2B696BBF945AE) value doesn't get cleaned up and stays as `0`.
--- You should use [`FORCE_CLOSE_TEXT_INPUT_BOX`](#\_0x8817605C2BA76200) instead.
--- **Native**: `CANCEL_ONSCREEN_KEYBOARD` (`0x58A39BE597CE99CD`)
function GameStatic.cancelOnscreenKeyboard() end

--- **Native**: `CANCEL_STUNT_JUMP` (`0xE6B7B0ACD4E4B75E`)
function GameStatic.cancelStuntJump() end

--- **Native**: `CLEANUP_ASYNC_INSTALL` (`0xC79AE21974B01FB2`)
function GameStatic.cleanupAsyncInstall() end

--- ```
--- NativeDB Added Parameter 13: Any p12
--- ```
--- **Native**: `CLEAR_ANGLED_AREA_OF_VEHICLES` (`0x11DB3500F042A8AA`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p7 boolean
---@param p8 boolean
---@param p9 boolean
---@param p10 boolean
---@param p11 boolean
function GameStatic.clearAngledAreaOfVehicles(coords1, coords2, width, p7, p8, p9, p10, p11) end

--- ```
--- Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);
--- ```
--- **Native**: `CLEAR_AREA` (`0xA56F01F3765B93A0`)
---@param coords vector3
---@param radius number
---@param p4 boolean
---@param ignoreCopCars boolean
---@param ignoreObjects boolean
---@param p7 boolean
function GameStatic.clearArea(coords, radius, p4, ignoreCopCars, ignoreObjects, p7) end

--- ```
--- MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
--- ```
--- **Native**: `CLEAR_AREA_LEAVE_VEHICLE_HEALTH` (`0x957838AAF91BD12D`)
---@param coords vector3
---@param radius number
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
---@param p7 boolean
function GameStatic.clearAreaLeaveVehicleHealth(coords, radius, p4, p5, p6, p7) end

--- Clears an area of cops at the given coordinates and radius.
--- **Native**: `CLEAR_AREA_OF_COPS` (`0x04F8FC8FCF58F88D`)
---@param coords vector3 The coordinate of where to clear cops.
---@param radius number The area radius to clear cops.
---@param createNetEvent boolean specifies whether a `CClearAreaEvent` event of should be created for online use.
function GameStatic.clearAreaOfCops(coords, radius, createNetEvent) end

--- ```
--- I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.
--- ```
--- **Native**: `CLEAR_AREA_OF_OBJECTS` (`0xDD9B9B385AAC7F5B`)
---@param coords vector3
---@param radius number
---@param flags integer
function GameStatic.clearAreaOfObjects(coords, radius, flags) end

--- Clears an area of peds at the given coordinates and radius.
--- **Native**: `CLEAR_AREA_OF_PEDS` (`0xBE31FD6CE464AC59`)
---@param coords vector3 The coordinate of where to clear peds.
---@param radius number The area radius to clear peds.
---@param createNetEvent boolean specifies whether a `CClearAreaEvent` event of should be created for online use.
function GameStatic.clearAreaOfPeds(coords, radius, createNetEvent) end

--- Clears an area of projectiles at the given coordinates and radius.
--- **Native**: `CLEAR_AREA_OF_PROJECTILES` (`0x0A1CB9094635D1A6`)
---@param coords vector3 The coordinate of where to clear projectiles.
---@param radius number The area radius to clear projectiles.
---@param createNetEvent boolean specifies whether a `CClearAreaEvent` event of should be created for online use.
function GameStatic.clearAreaOfProjectiles(coords, radius, createNetEvent) end

--- ```
--- Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);
--- ```
---
--- ```
--- NativeDB Added Parameter 10: BOOL p9
--- ```
--- **Native**: `CLEAR_AREA_OF_VEHICLES` (`0x01C7B9B38428AEB6`)
---@param coords vector3
---@param radius number
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
---@param p7 boolean
---@param p8 boolean
function GameStatic.clearAreaOfVehicles(coords, radius, p4, p5, p6, p7, p8) end

--- ```
--- This sets bit [offset] of [address] to off.
--- Example:
--- MISC::CLEAR_BIT(&bitAddress, 1);
--- To check if this bit has been enabled:
--- MISC::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
--- ```
--- **Native**: `CLEAR_BIT` (`0xE80492A9AC099A93`)
---@param offset integer
---@return integer address
function GameStatic.clearBit(offset) end

--- **Native**: `CLEAR_CLOUD_HAT` (`0x957E790EA1727B64`)
function GameStatic.clearCloudHat() end

--- **Native**: `CLEAR_OVERRIDE_WEATHER` (`0x338D2E3477711050`)
function GameStatic.clearOverrideWeather() end

--- **Native**: `CLEAR_REPLAY_STATS` (`0x1B1AB132A16FDA55`)
function GameStatic.clearReplayStats() end

--- **Native**: `CLEAR_RESTART_CUSTOM_POSITION` (`0xA2716D40842EAF79`)
function GameStatic.clearRestartCustomPosition() end

--- **Native**: `CLEAR_TACTICAL_ANALYSIS_POINTS` (`0xB3CD58CCA6CDA852`)
function GameStatic.clearTacticalAnalysisPoints() end

--- Clears the active weather type after a specific amount of time determined by `transitionTimeInMs`.
--- **Native**: `CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK` (`0x0CF97F497FE7D048`)
---@param transitionTimeInMs integer Transition time in milliseconds.
function GameStatic.clearWeatherTypeNowPersistNetwork(transitionTimeInMs) end

--- **Native**: `CLEAR_WEATHER_TYPE_PERSIST` (`0xCCC39339BEF76CF5`)
function GameStatic.clearWeatherTypePersist() end

--- ```
--- Compares two strings up to a specified number of characters.
--- Parameters:
--- str1 - String to be compared.
--- str2 - String to be compared.
--- matchCase - Comparison will be case-sensitive.
--- maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.
--- Returns:
--- A value indicating the relationship between the strings:
--- <0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)
--- 0 - The contents of both strings are equal.
--- >0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)
--- Examples:
--- MISC::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal
--- MISC::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal
--- MISC::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal
--- MISC::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'
--- MISC::COMPARE_STRINGS("A", "A", true, 1); // 0; equal
--- When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:
--- MISC::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'
--- MISC::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'
--- ```
--- **Native**: `COMPARE_STRINGS` (`0x1E34710ECD4AB0EB`)
---@param str1 string
---@param str2 string
---@param matchCase boolean
---@param maxLength integer
---@return integer result
function GameStatic.compareStrings(str1, str2, matchCase, maxLength) end

--- **Native**: `COPY_MEMORY` (`0x213AEB2B90CBA7AC`)
---@param src any
---@param size integer
---@return any dst
function GameStatic.copyMemory(src, size) end

--- ```
--- NativeDB Added Parameter 8: Any p7
--- NativeDB Added Parameter 9: Any p8
--- ```
--- **Native**: `CREATE_INCIDENT` (`0x3F892CAF67444AE7`)
---@param dispatchService integer Refer to [ENABLE_DISPATCH_SERVICE](#\_0xDC0F817884CDD856) for dispatch types
---@param coords vector3
---@param numUnits integer
---@param radius number
---@param outIncidentID integer
---@return boolean result
---@return integer outIncidentID
function GameStatic.createIncident(dispatchService, coords, numUnits, radius, outIncidentID) end

--- ```
--- NativeDB Added Parameter 6: Any p5
--- NativeDB Added Parameter 7: Any p6
--- ```
--- **Native**: `CREATE_INCIDENT_WITH_ENTITY` (`0x05983472F0494E60`)
---@param dispatchService integer Refer to [ENABLE_DISPATCH_SERVICE](#\_0xDC0F817884CDD856) for dispatch types
---@param ped fx.Ped|integer
---@param numUnits integer
---@param radius number
---@param outIncidentID integer
---@return boolean result Returns true if the incident was succesfully made
---@return integer outIncidentID
function GameStatic.createIncidentWithEntity(dispatchService, ped, numUnits, radius, outIncidentID) end

--- ```
--- Delete an incident with a given id.
--- =======================================================
--- Correction, I have change this to int, instead of int*
--- as it doesn't use a pointer to the createdIncident.
--- If you try it you will crash (or) freeze.
--- =======================================================
--- ```
--- **Native**: `DELETE_INCIDENT` (`0x556C1AA270D5A207`)
---@param incidentId integer
function GameStatic.deleteIncident(incidentId) end

--- **Native**: `DELETE_STUNT_JUMP` (`0xDC518000E39DAE1F`)
---@param p0 integer
function GameStatic.deleteStuntJump(p0) end

--- ```
--- The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.
--- ```
--- **Native**: `DISABLE_HOSPITAL_RESTART` (`0xC8535819C450EBA8`)
---@param hospitalIndex integer
---@param toggle boolean
function GameStatic.disableHospitalRestart(hospitalIndex, toggle) end

--- ```
--- Disables the spawn point at the police house on the specified index.
--- policeIndex: The police house index.
--- toggle: true to enable the spawn point, false to disable.
--- - Nacorpio
--- ```
--- **Native**: `DISABLE_POLICE_RESTART` (`0x23285DED6EBD7EA3`)
---@param policeIndex integer
---@param toggle boolean
function GameStatic.disablePoliceRestart(policeIndex, toggle) end

--- **Native**: `DISABLE_STUNT_JUMP_SET` (`0xA5272EBEDD4747F6`)
---@param p0 integer
function GameStatic.disableStuntJumpSet(p0) end

--- Displays a text input box.
---
--- ```cpp
--- enum eKeyboardType
--- {
---   ONSCREEN_KEYBOARD_ENGLISH = 0,
---   ONSCREEN_KEYBOARD_LOCALISED = 1,
---   ONSCREEN_KEYBOARD_PASSWORD = 2,
---   ONSCREEN_KEYBOARD_GAMERTAG = 3,
---   ONSCREEN_KEYBOARD_EMAIL = 4,
---   ONSCREEN_KEYBOARD_BASIC_ENGLISH = 5,
---   ONSCREEN_KEYBOARD_FILENAME = 6
--- };
--- ```
--- **Native**: `DISPLAY_ONSCREEN_KEYBOARD` (`0x00DC833F2568DBF6`)
---@param keyboardType fx.Enum.KeyboardType|integer See the list above. Default is `0`.
---@param windowTitle string Text label for the title of the box.
---@param description string Has no use on PC.
---@param defaultText string Default text that is written in the input field.
---@param defaultConcat1 string
---@param defaultConcat2 string
---@param defaultConcat3 string
---@param maxInputLength integer Max number of characters that can be typed (2 - 256).
function GameStatic.displayOnscreenKeyboard(keyboardType, windowTitle, description, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) end

--- Displays the text input box with support for input with 500 characters.
--- **Native**: `DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING` (`0xCA78CFA0366592FE`)
---@param keyboardType integer See [`DISPLAY_ONSCREEN_KEYBOARD`](#\_0x00DC833F2568DBF6)
---@param windowTitle string Text label of the window title.
---@param description string Unused on PC.
---@param defaultText string Default text that is written in the input field.
---@param defaultConcat1 string
---@param defaultConcat2 string
---@param defaultConcat3 string
---@param defaultConcat4 string
---@param defaultConcat5 string
---@param defaultConcat6 string
---@param defaultConcat7 string
---@param maxInputLength integer Value between 2 - 500.
function GameStatic.displayOnscreenKeyboardWithLongerInitialString(keyboardType, windowTitle, description, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength) end

--- **Native**: `DO_AUTO_SAVE` (`0x50EEAAD86232EE55`)
function GameStatic.doAutoSave() end

--- **Native**: `DOES_POP_MULTIPLIER_AREA_EXIST` (`0x1327E2FE9746BAEE`)
---@param id integer
---@return boolean result
function GameStatic.doesPopMultiplierAreaExist(id) end

--- **Native**: `DOES_POP_MULTIPLIER_SPHERE_EXIST` (`0x171BAFB3C60389F4`)
---@param id integer
---@return boolean result
function GameStatic.doesPopMultiplierSphereExist(id) end

--- Enables or disables the specified 'dispatch service' type. 'Dispatch services' are used for spawning AI response peds/vehicles for events such as a fire in the street (type 3 - DT_FireDepartment), or gunfire in a gang area (type 11 - DT_Gangs).
---
--- List of dispatch services:
---
--- ```cpp
--- enum eDispatchType
--- {
--- 	DT_Invalid = 0,
--- 	DT_PoliceAutomobile = 1,
--- 	DT_PoliceHelicopter = 2,
--- 	DT_FireDepartment = 3,
--- 	DT_SwatAutomobile = 4,
--- 	DT_AmbulanceDepartment = 5,
--- 	DT_PoliceRiders = 6,
--- 	DT_PoliceVehicleRequest = 7,
--- 	DT_PoliceRoadBlock = 8,
--- 	DT_PoliceAutomobileWaitPulledOver = 9,
--- 	DT_PoliceAutomobileWaitCruising = 10,
--- 	DT_Gangs = 11,
--- 	DT_SwatHelicopter = 13,
--- 	DT_PoliceBoat = 14,
--- 	DT_ArmyVehicle = 15,
--- 	DT_BikerBackup = 15
--- };
--- ```
---
--- Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#\_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.
--- **Native**: `ENABLE_DISPATCH_SERVICE` (`0xDC0F817884CDD856`)
---@param dispatchService fx.Enum.DispatchType|integer The ID of the dispatch service to toggle.
---@param toggle boolean True to enable the dispatch service, false to disable the dispatch service.
function GameStatic.enableDispatchService(dispatchService, toggle) end

--- **Native**: `ENABLE_STUNT_JUMP_SET` (`0xE369A5783B866016`)
---@param p0 integer
function GameStatic.enableStuntJumpSet(p0) end

--- **Native**: `END_REPLAY_STATS` (`0xA23E821FBDF8A5F2`)
function GameStatic.endReplayStats() end

--- ```
--- Finds a position ahead of the player by predicting the players next actions.
--- The positions match path finding node positions.
--- When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.
--- ```
--- **Native**: `FIND_SPAWN_POINT_IN_DIRECTION` (`0x6874E2190B0C1972`)
---@param pos vector3
---@param dir vector3
---@param distance number
---@param spawnPoint vector3
---@return boolean result
---@return vector3 spawnPoint
function GameStatic.findSpawnPointInDirection(pos, dir, distance, spawnPoint) end

--- ```
--- Sets the localplayer playerinfo state back to playing (State 0)
--- States are:
--- -1: "Invalid"
--- 0: "Playing"
--- 1: "Died"
--- 2: "Arrested"
--- 3: "Failed Mission"
--- 4: "Left Game"
--- 5: "Respawn"
--- 6: "In MP Cutscene"
--- ```
--- **Native**: `FORCE_GAME_STATE_PLAYING` (`0xC0AA53F866B3134D`)
function GameStatic.forceGameStatePlaying() end

--- ```
--- creates single lightning+thunder at random position
--- ```
--- **Native**: `FORCE_LIGHTNING_FLASH` (`0xF6062E089251C898`)
function GameStatic.forceLightningFlash() end

--- **Native**: `GET_ANGLE_BETWEEN_2D_VECTORS` (`0x186FC4BE848E1C92`)
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number result
function GameStatic.getAngleBetween2dVectors(x1, y1, x2, y2) end

--- **Native**: `GET_BASE_ELEMENT_METADATA` (`0xB335F761606DB47C`)
---@param p3 any
---@param p4 boolean
---@return boolean result
---@return any p1
---@return any p2
function GameStatic.getBaseElementMetadata(p3, p4) end

--- **Native**: `GET_BITS_IN_RANGE` (`0x53158863FCC0893A`)
---@param var integer
---@param rangeStart integer
---@param rangeEnd integer
---@return integer result
function GameStatic.getBitsInRange(var, rangeStart, rangeEnd) end

--- **Native**: `GET_COORDS_OF_PROJECTILE_TYPE_IN_AREA` (`0x8D7A43EC6A5FEA45`)
---@param coords1 vector3
---@param coords2 vector3
---@param projectileHash integer|string
---@param ownedByPlayer boolean
---@return boolean result
---@return vector3 projectilePos
function GameStatic.getCoordsOfProjectileTypeInArea(coords1, coords2, projectileHash, ownedByPlayer) end

--- Returns the distance between two three-dimensional points, optionally ignoring the Z values.
--- If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.
--- Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
--- **Native**: `GET_DISTANCE_BETWEEN_COORDS` (`0xF1B760881820C952`)
---@param coords1 vector3 The coordinate of the first point.
---@param coords2 vector3 The coordinate of the second point.
---@param useZ boolean Whether or not to use the Z coordinate.
---@return number result The distance between the passed points in units.
function GameStatic.getDistanceBetweenCoords(coords1, coords2, useZ) end

--- Attempts to identify the highest ground Z-coordinate and determine the corresponding surface normal directly beneath a specified 3D coordinate.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD` (`0x8BDC7BFC57A81E76`)
---@param coords vector3 -coordinate of the point to check.
---@return boolean result Returns `true` if ground is found below the given coordinates and the surface normal could be determined, otherwise `false`.
---@return number groundZ A pointer to a float where the ground Z-coordinate will be stored if found.
---@return vector3 normal A pointer to a Vector3 structure where the surface normal at the ground point will be stored.
function GameStatic.getGroundZAndNormalFor3dCoord(coords) end

--- Determines the highest ground Z-coordinate directly below a specified 3D coordinate, excluding any objects at that point. Optionally, water can be considered as ground when determining the highest point.
---
--- ```
--- NativeDB Added Parameter 6: BOOL ignoreDistToWaterLevelCheck - If set to true, the distance to the water level will be ignored when checking for water as ground.
--- ```
---
--- ```
--- NativeDB Introduced: v505
--- ```
--- **Native**: `GET_GROUND_Z_EXCLUDING_OBJECTS_FOR_3D_COORD` (`0x9E82F0F362881B29`)
---@param coords vector3 -coordinate of the point to check.
---@param waterAsGround boolean If set to `true`, water will be included in the check, and its height will be returned if it is higher than the ground level.
---@return boolean result Returns `true` if ground (or water, if specified) is found below the given coordinates, otherwise `false`.
---@return number groundZ A pointer to a float where the ground Z-coordinate will be stored if found.
function GameStatic.getGroundZExcludingObjectsFor3dCoord(coords, waterAsGround) end

--- This native gets the ground level (ground elevation) and returns the Z coordinate that represents it.
--- Note: This native can only calculate the elevation when the coordinates are within the render distance of the client.
---
--- ```
--- NativeDB Added Parameter 6: BOOL p5
--- ```
--- **Native**: `GET_GROUND_Z_FOR_3D_COORD` (`0xC906A7DAB05C8D2B`)
---@param coords vector3 Position on the -axis to get ground elevation.
---@param includeWater boolean Determines if the top water level at the specified position should be considered the ground elevation. (It would only matter if the specified position is located above or under the water)
---@return boolean result This native\`s first return value (retval) will return true if the ground elevation has been found, and the second (groundZ) will return the z-coord which represents the ground elevation at the speci…
---@return number groundZ
function GameStatic.getGroundZFor3dCoord(coords, includeWater) end

--- This native converts its past string to hash. It is hashed using jenkins one at a time method.
--- **Native**: `GET_HASH_KEY` (`0xD24D37CC275948CC`)
---@param string_ string The string to hash.
---@return integer result The hash of `string`.
function GameStatic.getHashKey(string_) end

--- ```
--- dx = x1 - x2
--- dy = y1 - y2
--- ```
--- **Native**: `GET_HEADING_FROM_VECTOR_2D` (`0x2FFB6B224F4B2926`)
---@param dx number
---@param dy number
---@return number result
function GameStatic.getHeadingFromVector2d(dx, dy) end

--- Determines whether a line segment intersects a plane and, if so, returns the parameter value at which this intersection occurs.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `GET_LINE_PLANE_INTERSECTION` (`0xF56DFB7B61BE7276`)
---@param coords1 vector3 The X-coordinate of the first point of the line segment. / The Y-coordinate of the first point of the line segment. / The Z-coordinate of the first point of the line segment. Together, `x1`, `y1`, an…
---@param coords2 vector3 The X-coordinate of the second point of the line segment. / The Y-coordinate of the second point of the line segment. / The Z-coordinate of the second point of the line segment. Together, `x2`, `y2`,…
---@param plane vector3 The X-coordinate of a point on the plane. This, along with `planeY` and `planeZ`, specifies a point that lies on the plane's surface. / The Y-coordinate of a point on the plane. / The Z-coordinate of…
---@param planeNormal vector3 The X-component of the plane's normal vector. The normal vector is perpendicular to the plane's surface and defines its orientation. / The Y-component of the plane's normal vector. / The Z-component …
---@param intersectionParameter number A pointer to a float. This parameter is used to return the value of `t` at which the line segment intersects the plane. The value of `t` is a scalar multiplier that can be used to calculate the exact…
---@return boolean result Returns `true` if the line segment intersects the plane, in which case the `intersectionParameter` will contain the intersection point's parameter value. Returns `false` if there is no intersection, …
---@return number intersectionParameter A pointer to a float. This parameter is used to return the value of `t` at which the line segment intersects the plane. The value of `t` is a scalar multiplier that can be used to calculate the exact…
function GameStatic.getLinePlaneIntersection(coords1, coords2, plane, planeNormal, intersectionParameter) end

--- **Native**: `GET_NUMBER_OF_FREE_STACKS_OF_THIS_SIZE` (`0xFEAD16FC8F9DFC0F`)
---@param stackSize integer
---@return integer result
function GameStatic.getNumberOfFreeStacksOfThisSize(stackSize) end

--- **Native**: `GET_NUM_DISPATCHED_UNITS_FOR_PLAYER` (`0xEB4A0C2D56441717`)
---@param dispatchService integer
---@return integer result
function GameStatic.getNumDispatchedUnitsForPlayer(dispatchService) end

--- **Native**: `GET_PROFILE_SETTING` (`0xC488FF2356EA7791`)
---@param profileSetting integer
---@return integer result
function GameStatic.getProfileSetting(profileSetting) end

--- **Native**: `GET_RANDOM_FLOAT_IN_RANGE` (`0x313CE5879CEB6FCD`)
---@param startRange number
---@param endRange number
---@return number result
function GameStatic.getRandomFloatInRange(startRange, endRange) end

--- **Native**: `GET_RANDOM_INT_IN_RANGE` (`0xD53343AA4FB7DD28`)
---@param startRange integer
---@param endRange integer
---@return integer result
function GameStatic.getRandomIntInRange(startRange, endRange) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `GET_RANDOM_INT_IN_RANGE_2` (`0xF2D49816A804D134`)
---@param startRange integer
---@param endRange integer
---@return integer result
function GameStatic.getRandomIntInRange2(startRange, endRange) end

--- **Native**: `GET_REPLAY_STAT_AT_INDEX` (`0x8098C8D6597AAE18`)
---@param index integer
---@return integer result
function GameStatic.getReplayStatAtIndex(index) end

--- **Native**: `GET_SIZE_OF_SAVE_DATA` (`0xA09F896CE912481F`)
---@param p0 boolean
---@return integer result
function GameStatic.getSizeOfSaveData(p0) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- **Native**: `GET_WEATHER_TYPE_TRANSITION` (`0xF3BBE884A14BB413`)
---@return integer weatherType1
---@return integer weatherType2
---@return number percentWeather2
function GameStatic.getWeatherTypeTransition() end

--- ```
--- p3 - possibly radius?
--- ```
--- **Native**: `HAS_BULLET_IMPACTED_IN_AREA` (`0x9870ACFB89A90995`)
---@param coords vector3
---@param p3 number
---@param p4 boolean
---@param p5 boolean
---@return boolean result
function GameStatic.hasBulletImpactedInArea(coords, p3, p4, p5) end

--- **Native**: `HAS_BULLET_IMPACTED_IN_BOX` (`0xDC8C5D7CFEAB8394`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 boolean
---@return boolean result
function GameStatic.hasBulletImpactedInBox(p0, p1, p2, p3, p4, p5, p6, p7) end

--- ```
--- This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/
--- INT_SCORES_SCORTED was a hash collision
--- ```
--- **Native**: `HAS_BUTTON_COMBINATION_JUST_BEEN_ENTERED` (`0x071E2A839DE82D90`)
---@param hash integer|string
---@param amount integer
---@return boolean result
function GameStatic.hasButtonCombinationJustBeenEntered(hash, amount) end

--- ```
--- Get inputted "Cheat code", for example:
--- while (TRUE)
--- {
---     if (MISC::_557E43C447E700A8(${fugitive}))
---     {
---        // Do something.
---     }
---     SYSTEM::WAIT(0);
--- }
--- Calling this will also set the last saved string hash to zero.
--- ```
--- **Native**: `HAS_CHEAT_STRING_JUST_BEEN_ENTERED` (`0x557E43C447E700A8`)
---@param hash integer|string
---@return boolean result
function GameStatic.hasCheatStringJustBeenEntered(hash) end

--- **Native**: `HAVE_CREDITS_REACHED_END` (`0x075F1D57402C93BA`)
---@return boolean result
function GameStatic.haveCreditsReachedEnd() end

--- **Native**: `IGNORE_NEXT_RESTART` (`0x21FFB63D8C615361`)
---@param toggle boolean
function GameStatic.ignoreNextRestart(toggle) end

--- **Native**: `IS_AREA_OCCUPIED` (`0xA61B4DF533DCB56E`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 boolean
---@param p8 boolean
---@param p9 boolean
---@param p10 boolean
---@param p11 any
---@param p12 boolean
---@return boolean result
function GameStatic.isAreaOccupied(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

--- ```
--- Returns bit's boolean state from [offset] of [address].
--- Example:
--- MISC::IS_BIT_SET(bitAddress, 1);
--- To enable and disable bits, see:
--- MISC::SET_BIT(&bitAddress, 1);   // enable
--- MISC::CLEAR_BIT(&bitAddress, 1); // disable
--- ```
--- **Native**: `IS_BIT_SET` (`0xA921AA820C25702F`)
---@param address integer
---@param offset integer
---@return boolean result
function GameStatic.isBitSet(address, offset) end

--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---
--- For projectiles, see: [`IS_PROJECTILE_TYPE_IN_ANGLED_AREA`](#\_0xF0BC12401061DEA0)
--- **Native**: `IS_BULLET_IN_ANGLED_AREA` (`0x1A8B5F3C01E2B477`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param ownedByPlayer boolean
---@return boolean result True if a bullet, as maintained by a pool within CWeaponManager, has been fired into the defined angled area.
function GameStatic.isBulletInAngledArea(coords1, coords2, width, ownedByPlayer) end

--- **Native**: `IS_BULLET_IN_AREA` (`0x3F2023999AD51C1F`)
---@param coords vector3
---@param radius number
---@param ownedByPlayer boolean
---@return boolean result
function GameStatic.isBulletInArea(coords, radius, ownedByPlayer) end

--- **Native**: `IS_BULLET_IN_BOX` (`0xDE0F6D7450D37351`)
---@param coords1 vector3
---@param coords2 vector3
---@param ownedByPlayer boolean
---@return boolean result
function GameStatic.isBulletInBox(coords1, coords2, ownedByPlayer) end

--- ```
--- =======================================================
--- Correction, I have change this to int, instead of int*
--- as it doesn't use a pointer to the createdIncident.
--- If you try it you will crash (or) freeze.
--- =======================================================
--- ```
--- **Native**: `IS_INCIDENT_VALID` (`0xC8BC6461E629BEAA`)
---@param incidentId integer
---@return boolean result
function GameStatic.isIncidentValid(incidentId) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- **Native**: `IS_NEXT_WEATHER_TYPE` (`0x2FAA3A30BEC0F25D`)
---@param weatherType string
---@return boolean result
function GameStatic.isNextWeatherType(weatherType) end

--- **Native**: `IS_POINT_OBSCURED_BY_A_MISSION_ENTITY` (`0xE54E209C35FFA18D`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@return boolean result
function GameStatic.isPointObscuredByAMissionEntity(p0, p1, p2, p3, p4, p5, p6) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `IS_POP_MULTIPLIER_AREA_UNK` (`0x1312F4B242609CE3`)
---@param id integer
---@return boolean result
function GameStatic.isPopMultiplierAreaUnk(id) end

--- The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.
--- **Native**: `IS_POSITION_OCCUPIED` (`0xADCDE75E1C60F32D`)
---@param coords vector3 coordinate of the position to check.
---@param range number The range, seems to not be very accurate during testing.
---@param p4 boolean Unknown, when set to true it seems to always return true no matter what I try.
---@param checkVehicles boolean Check for any vehicles in that area.
---@param checkPeds boolean Check for any peds in that area.
---@param p7 boolean Unknown.
---@param p8 boolean Unknown.
---@param ignoreEntity fx.Entity|integer This entity will be ignored if it's in the area. Set to 0 if you don't want to exclude any entities.
---@param p10 boolean Unknown.
---@return boolean result Returns true if there is anything in that location matching the provided parameters.
function GameStatic.isPositionOccupied(coords, range, p4, checkVehicles, checkPeds, p7, p8, ignoreEntity, p10) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- **Native**: `IS_PREV_WEATHER_TYPE` (`0x44F28F86433B10A9`)
---@param weatherType string
---@return boolean result
function GameStatic.isPrevWeatherType(weatherType) end

--- ```
--- Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.
--- ownedByPlayer = only projectiles fired by the player will be detected.
--- ```
--- **Native**: `IS_PROJECTILE_IN_AREA` (`0x5270A8FBC098C3F8`)
---@param coords1 vector3
---@param coords2 vector3
---@param ownedByPlayer boolean
---@return boolean result
function GameStatic.isProjectileInArea(coords1, coords2, ownedByPlayer) end

--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
---
--- ```
--- NativeDB Removed Parameter 7: float p7
--- ```
--- **Native**: `IS_PROJECTILE_TYPE_IN_ANGLED_AREA` (`0xF0BC12401061DEA0`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param p7 number
---@param weaponHash integer|string
---@param ownedByPlayer boolean
---@return boolean result
function GameStatic.isProjectileTypeInAngledArea(coords1, coords2, width, p7, weaponHash, ownedByPlayer) end

--- ```
--- Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a axis-aligned bounding box.
--- ```
--- **Native**: `IS_PROJECTILE_TYPE_IN_AREA` (`0x2E0DC353342C4A6D`)
---@param coords1 vector3
---@param coords2 vector3
---@param type_ integer
---@param ownedByPlayer boolean
---@return boolean result
function GameStatic.isProjectileTypeInArea(coords1, coords2, type_, ownedByPlayer) end

--- **Native**: `IS_PROJECTILE_TYPE_WITHIN_DISTANCE` (`0x34318593248C8FB2`)
---@param coords vector3
---@param projHash integer|string
---@param radius number
---@param ownedByPlayer boolean
---@return boolean result
function GameStatic.isProjectileTypeWithinDistance(coords, projHash, radius, ownedByPlayer) end

--- ```
--- Determines whether there is a sniper bullet within the specified coordinates. The coordinates form an axis-aligned bounding box.
--- ```
--- **Native**: `IS_SNIPER_BULLET_IN_AREA` (`0xFEFCF11B01287125`)
---@param coords1 vector3
---@param coords2 vector3
---@return boolean result
function GameStatic.isSniperBulletInArea(coords1, coords2) end

--- **Native**: `IS_STRING_NULL` (`0xF22B6C47C6EAB066`)
---@param string_ string
---@return boolean result
function GameStatic.isStringNull(string_) end

--- **Native**: `IS_STRING_NULL_OR_EMPTY` (`0xCA042B6957743895`)
---@param string_ string
---@return boolean result
function GameStatic.isStringNullOrEmpty(string_) end

--- ```
--- Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
--- ```
--- **Native**: `LANDING_MENU_IS_ACTIVE` (`0x3BBBD13E5041A79E`)
---@return boolean result
function GameStatic.landingMenuIsActive() end

--- ```
--- The following cloudhats are useable:
--- altostratus
--- Cirrus
--- cirrocumulus
--- Clear 01
--- Cloudy 01
--- Contrails
--- Horizon
--- horizonband1
--- horizonband2
--- horizonband3
--- horsey
--- Nimbus
--- Puffs
--- RAIN
--- Snowy 01
--- Stormy 01
--- stratoscumulus
--- Stripey
--- shower
--- Wispy
--- ```
--- **Native**: `LOAD_CLOUD_HAT` (`0xFC4842A34657BFCB`)
---@param name string
---@param transitionTime number
function GameStatic.loadCloudHat(name, transitionTime) end

--- ```cpp
--- enum eFontBitField
--- {
---   FONT_BIT_STANDARD = 1,
---   FONT_BIT_CURSIVE = 2,
---   FONT_BIT_ROCKSTAR_TAG = 4
---   FONT_BIT_LEADERBOARD = 8
---   FONT_BIT_CONDENSED = 16
---   FONT_BIT_FIXED_WIDTH_NUMBERS = 32
---   FONT_BIT_CONDENSED_NOT_GAMERNAME = 64
---   FONT_BIT_PRICEDOWN = 128
--- };
--- ```
--- **Native**: `NEXT_ONSCREEN_KEYBOARD_RESULT_WILL_DISPLAY_USING_THESE_FONTS` (`0x3ED1438C1F5C6612`)
---@param fontBitField fx.Enum.FontBitField|integer See the list above.
function GameStatic.nextOnscreenKeyboardResultWillDisplayUsingTheseFonts(fontBitField) end

--- **Native**: `OVERRIDE_SAVE_HOUSE` (`0x1162EA8AE9D24EEA`)
---@param p0 boolean
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 boolean
---@return boolean result
---@return vector3 p6
---@return number p7
function GameStatic.overrideSaveHouse(p0, p1, p2, p3, p4, p5) end

--- **Native**: `PAUSE_DEATH_ARREST_RESTART` (`0x2C2B3493FBF51C71`)
---@param toggle boolean
function GameStatic.pauseDeathArrestRestart(toggle) end

--- ```
--- spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called
--- ```
--- **Native**: `POPULATE_NOW` (`0x7472BB270D7B4F3E`)
function GameStatic.populateNow() end

--- ```
--- Found in the scripts:
--- MISC::_11B56FBBF7224868("CONTRAILS");
--- ```
--- **Native**: `PRELOAD_CLOUD_HAT` (`0x11B56FBBF7224868`)
---@param name string
function GameStatic.preloadCloudHat(name) end

--- **Native**: `QUEUE_MISSION_REPEAT_LOAD` (`0x72DE52178C291CB5`)
---@return boolean result
function GameStatic.queueMissionRepeatLoad() end

--- Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
--- **Native**: `QUEUE_MISSION_REPEAT_SAVE` (`0x44A0BDC559B35F6E`)
---@return boolean result Returns true if the message isn't currently on screen.
function GameStatic.queueMissionRepeatSave() end

--- Quits the game.
--- **Native**: `QUIT_GAME` (`0xEB6891F03362FB12`)
function GameStatic.quitGame() end

--- **Native**: `REGISTER_BOOL_TO_SAVE` (`0xC8F4131414C835A1`)
---@param name string
---@return any p0
function GameStatic.registerBoolToSave(name) end

--- **Native**: `REGISTER_ENUM_TO_SAVE` (`0x10C2FA78D0E128A1`)
---@param name string
---@return any p0
function GameStatic.registerEnumToSave(name) end

--- **Native**: `REGISTER_FLOAT_TO_SAVE` (`0x7CAEC29ECB5DFEBB`)
---@param name string
---@return any p0
function GameStatic.registerFloatToSave(name) end

--- **Native**: `REGISTER_INT64_TO_SAVE` (`0xA735353C77334EA0`)
---@param name string
---@return any p0
function GameStatic.registerInt64ToSave(name) end

--- **Native**: `REGISTER_INT_TO_SAVE` (`0x34C9EE5986258415`)
---@param name string
---@return any p0
function GameStatic.registerIntToSave(name) end

--- **Native**: `REGISTER_SAVE_HOUSE` (`0xC0714D0A7EEECA54`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p5 any
---@param p6 any
---@return any result
---@return any p4
function GameStatic.registerSaveHouse(p0, p1, p2, p3, p5, p6) end

--- **Native**: `REGISTER_TEXT_LABEL_TO_SAVE` (`0xEDB1232C5BEAE62F`)
---@param name string
---@return any p0
function GameStatic.registerTextLabelToSave(name) end

--- ```
--- Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?
--- MISC::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");
--- MISC::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");
--- MISC::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");
--- "tl" prefix sounds like "Text Label"
--- ```
--- **Native**: `REGISTER_TEXT_LABEL_TO_SAVE_2` (`0x6F7794F28C6B2535`)
---@param name string
---@return any p0
function GameStatic.registerTextLabelToSave2(name) end

--- **Native**: `REMOVE_DISPATCH_SPAWN_BLOCKING_AREA` (`0x264AC28B01B353A5`)
---@param p0 any
function GameStatic.removeDispatchSpawnBlockingArea(p0) end

--- **Native**: `REMOVE_POP_MULTIPLIER_AREA` (`0xB129E447A2EDA4BF`)
---@param id integer
---@param p1 boolean
function GameStatic.removePopMultiplierArea(id, p1) end

--- **Native**: `REMOVE_POP_MULTIPLIER_SPHERE` (`0xE6869BECDD8F2403`)
---@param id integer
---@param p1 boolean
function GameStatic.removePopMultiplierSphere(id, p1) end

--- ```
--- Appears to remove stealth kill action from memory
--- ```
--- **Native**: `REMOVE_STEALTH_KILL` (`0xA6A12939F16D85BE`)
---@param hash integer|string
---@param p1 boolean
function GameStatic.removeStealthKill(hash, p1) end

--- ```
--- Begins with RESET_*. Next character in the name is either D or E.
--- ```
--- **Native**: `RESET_BENCHMARK_RECORDING` (`0x437138B6A830166A`)
function GameStatic.resetBenchmarkRecording() end

--- **Native**: `RESET_DISPATCH_IDEAL_SPAWN_DISTANCE` (`0x77A84429DD9F0A15`)
function GameStatic.resetDispatchIdealSpawnDistance() end

--- **Native**: `RESET_DISPATCH_SPAWN_BLOCKING_AREAS` (`0xAC7BFD5C1D83EA75`)
function GameStatic.resetDispatchSpawnBlockingAreas() end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `RESET_DISPATCH_SPAWN_LOCATION` (`0x5896F2BD5683A4E1`)
function GameStatic.resetDispatchSpawnLocation() end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `RESET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS` (`0xEB2DB0CAD13154B3`)
---@param p0 any
function GameStatic.resetDispatchTimeBetweenSpawnAttempts(p0) end

--- In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows the `Disconnecting from GTA Online` warning screen message and quits the game.
--- After quitting, the game process is started again (as the name implies).
--- **Native**: `RESTART_GAME` (`0xE574A662ACAEFBB1`)
function GameStatic.restartGame() end

--- ```
--- Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
--- ```
--- **Native**: `SAVE_BENCHMARK_RECORDING` (`0x37DEB0AA183FB6D8`)
function GameStatic.saveBenchmarkRecording() end

--- Initializes a script race in GTA:Online and sets up the helper split time system.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SCRIPT_RACE_INIT` (`0x0A60017F841A54F2`)
---@param numCheckpoints integer The total number of checkpoints in the race
---@param numLaps integer The total number of laps in the race.
---@param numPlayers integer The total number of players participating in the race.
---@param localPlayer fx.Player|integer Local player in the race.
function GameStatic.scriptRaceInit(numCheckpoints, numLaps, numPlayers, localPlayer) end

--- **Native**: `SCRIPT_RACE_SHUTDOWN` (`0x1FF6BF9A63E5757F`)
function GameStatic.scriptRaceShutdown() end

--- ```
--- This sets bit [offset] of [address] to on.
--- The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.
--- Example:
--- MISC::SET_BIT(&bitAddress, 1);
--- To check if this bit has been enabled:
--- MISC::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards
--- Please note, this method may assign a value to [address] when used.
--- ```
--- **Native**: `SET_BIT` (`0x933D6A9EEC1BACD0`)
---@param offset integer
---@return integer address
function GameStatic.setBit(offset) end

--- **Native**: `SET_BITS_IN_RANGE` (`0x8EF07E15701D61ED`)
---@param rangeStart integer
---@param rangeEnd integer
---@param p3 integer
---@return integer var
function GameStatic.setBitsInRange(rangeStart, rangeEnd, p3) end

--- Allows modification of the cloud opacity. It can also be used in other contexts, such as when the player is in a switch state [`IS_PLAYER_SWITCH_IN_PROGRESS`](#\_0xD9D2CFFF49FAB35F).
--- **Native**: `SET_CLOUDS_ALPHA` (`0xF36199225D6D8C86`)
---@param opacity number The opacity value to set for clouds.
function GameStatic.setCloudsAlpha(opacity) end

--- Overrides the cloud settings, which are normally controlled by the weather, with the specified named version. This native allows for custom cloud formations and behaviors that deviate from the default settings associated with the game's current weather conditions.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_CLOUD_SETTINGS_OVERRIDE` (`0x02DEAAC8F8EA7FE7`)
---@param overrideSettingsName string The name of the cloud settings to use. Use a empty string to clear the override and return to the default settings.
function GameStatic.setCloudSettingsOverride(overrideSettingsName) end

--- **Native**: `SET_CREDITS_ACTIVE` (`0xB938B7E6D3C0620C`)
---@param toggle boolean
function GameStatic.setCreditsActive(toggle) end

--- **Native**: `SET_DISPATCH_IDEAL_SPAWN_DISTANCE` (`0x6FE601A64180D423`)
---@param p0 number
function GameStatic.setDispatchIdealSpawnDistance(p0) end

--- **Native**: `SET_DISPATCH_SPAWN_LOCATION` (`0xD10F442036302D50`)
---@param coords vector3
function GameStatic.setDispatchSpawnLocation(coords) end

--- **Native**: `SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS` (`0x44F7CBC1BEB3327D`)
---@param p0 any
---@param p1 number
function GameStatic.setDispatchTimeBetweenSpawnAttempts(p0, p1) end

--- **Native**: `SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER` (`0x48838ED9937A15D1`)
---@param p0 any
---@param p1 number
function GameStatic.setDispatchTimeBetweenSpawnAttemptsMultiplier(p0, p1) end

--- ```
--- Sets whether the game should fade in after the player dies or is arrested.
--- ```
--- **Native**: `SET_FADE_IN_AFTER_DEATH_ARREST` (`0xDA66D2796BA33F12`)
---@param toggle boolean
function GameStatic.setFadeInAfterDeathArrest(toggle) end

--- **Native**: `SET_FADE_IN_AFTER_LOAD` (`0xF3D78F59DFE18D79`)
---@param toggle boolean
function GameStatic.setFadeInAfterLoad(toggle) end

--- ```
--- Sets whether the game should fade out after the player is arrested.
--- ```
--- **Native**: `SET_FADE_OUT_AFTER_ARREST` (`0x1E0B4DC0D990A4E7`)
---@param toggle boolean
function GameStatic.setFadeOutAfterArrest(toggle) end

--- ```
--- Sets whether the game should fade out after the player dies.
--- ```
--- **Native**: `SET_FADE_OUT_AFTER_DEATH` (`0x4A18E01DF2C87B86`)
---@param toggle boolean
function GameStatic.setFadeOutAfterDeath(toggle) end

--- ```
--- Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe
--- ```
--- **Native**: `SET_GAME_PAUSED` (`0x577D1284D6873711`)
---@param toggle boolean
function GameStatic.setGamePaused(toggle) end

--- ```cpp
--- enum eGravityLevel
--- {
---     GRAV_EARTH = 0, // earth gravity 9.8m/s2
---     GRAV_MOON = 1, // moon gravity 2.4m/s2
---     GRAV_LOW = 2, // very low gravity
---     GRAV_ZERO = 3 // zero gravity
--- }
--- ```
--- **Native**: `SET_GRAVITY_LEVEL` (`0x740E14FAD5842351`)
---@param level fx.Enum.GravityLevel|integer
function GameStatic.setGravityLevel(level) end

--- **Native**: `SET_INCIDENT_REQUESTED_UNITS` (`0xB08B85D860E7BA3C`)
---@param incidentId integer
---@param dispatchService integer
---@param numUnits integer
function GameStatic.setIncidentRequestedUnits(incidentId, dispatchService, numUnits) end

--- ```
--- SET_INCIDENT_*
--- ```
--- **Native**: `SET_INCIDENT_UNK` (`0xD261BA3E7E998072`)
---@param incidentId integer
---@param p1 number
function GameStatic.setIncidentUnk(incidentId, p1) end

--- ```
--- Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
--- ```
--- **Native**: `SET_INSTANCE_PRIORITY_HINT` (`0xC5F0A8EBD3F361CE`)
---@param flag integer
function GameStatic.setInstancePriorityHint(flag) end

--- Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
--- **Native**: `SET_INSTANCE_PRIORITY_MODE` (`0x9BAE5AD2508DF078`)
---@param toggle integer toggles the instance priority mode
function GameStatic.setInstancePriorityMode(toggle) end

--- **Native**: `SET_MINIGAME_IN_PROGRESS` (`0x19E00D7322C6F85B`)
---@param toggle boolean
function GameStatic.setMinigameInProgress(toggle) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- **Native**: `SET_OVERRIDE_WEATHER` (`0xA43D5C6FE51ADBEF`)
---@param weatherType string
function GameStatic.setOverrideWeather(weatherType) end

--- ```
--- If toggle is true, the ped's head is shown in the pause menu
--- If toggle is false, the ped's head is not shown in the pause menu
--- ```
--- **Native**: `SET_PLAYER_IS_IN_ANIMAL_FORM` (`0x4EBB7E87AA0DBED4`)
---@param toggle boolean
function GameStatic.setPlayerIsInAnimalForm(toggle) end

--- ```
--- SET_PLAYER_*
--- ```
--- **Native**: `SET_PLAYER_ROCKSTAR_EDITOR_DISABLED` (`0x9D8D44ADBBA61EF2`)
---@param toggle boolean
function GameStatic.setPlayerRockstarEditorDisabled(toggle) end

--- **Native**: `SET_RANDOM_SEED` (`0x444D98F98C11F3EC`)
---@param seed integer
function GameStatic.setRandomSeed(seed) end

--- **Native**: `SET_RANDOM_WEATHER_TYPE` (`0x8B05F884CF7E8020`)
function GameStatic.setRandomWeatherType() end

--- **Native**: `SET_RESTART_CUSTOM_POSITION` (`0x706B5EDCAA7FA663`)
---@param coords vector3
---@param heading number
function GameStatic.setRestartCustomPosition(coords, heading) end

--- Activates riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
--- **Native**: `SET_RIOT_MODE_ENABLED` (`0x2587A48BC88DFADF`)
---@param toggle boolean Turn on or off riot mode. Set to `true` to enable riot mode.
function GameStatic.setRiotModeEnabled(toggle) end

--- **Native**: `SET_SAVE_HOUSE` (`0x4F548CABEAE553BC`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function GameStatic.setSaveHouse(p0, p1, p2) end

--- ```
--- ignoreVehicle - bypasses vehicle check of the local player (it will not open if you are in a vehicle and this is set to false)
--- ```
--- **Native**: `SET_SAVE_MENU_ACTIVE` (`0xC9BF75D28165FF77`)
---@param ignoreVehicle boolean
function GameStatic.setSaveMenuActive(ignoreVehicle) end

--- **Native**: `NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME` (`0x9243BAC96D64C050`)
function GameStatic.setScriptIsSafeForNetworkGame() end

--- **Native**: `SET_STUNT_JUMPS_CAN_TRIGGER` (`0xD79185689F8FD5DF`)
---@param toggle boolean
function GameStatic.setStuntJumpsCanTrigger(toggle) end

--- **Native**: `SET_THIS_SCRIPT_CAN_BE_PAUSED` (`0xAA391C728106F7AF`)
---@param toggle boolean
function GameStatic.setThisScriptCanBePaused(toggle) end

--- Normally, blips can only be removed by the script or resource that created them. However, this native function allows a script to bypass this logic and remove blips from any script.
--- **Native**: `SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT` (`0xB98236CAAECEF897`)
---@param toggle boolean Bool indicating if the script that called this native can remove blips created by other scripts.
function GameStatic.setThisScriptCanRemoveBlipsCreatedByAnyScript(toggle) end

--- ```
--- Maximum value is 1.
--- At a value of 0 the game will still run at a minimum time scale.
--- Slow Motion 1: 0.6
--- Slow Motion 2: 0.4
--- Slow Motion 3: 0.2
--- ```
--- **Native**: `SET_TIME_SCALE` (`0x1D408577D440E81E`)
---@param timeScale number
function GameStatic.setTimeScale(timeScale) end

--- Immediately changes the game's weather to the specified type, which will then persist for one cycle before the game resumes its natural weather progression.
---
--- **Note:** This native is not supported in networked sessions. Please refer to [`SET_OVERRIDE_WEATHER`](#\_0xA43D5C6FE51ADBEF) or [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) if you want to override weather in networked sessions.
---
--- ```
--- NativeDB Introduced: v323
--- ```
---
--- **Weather Types:**
---
--- *   CLEAR
--- *   EXTRASUNNY
--- *   CLOUDS
--- *   OVERCAST
--- *   RAIN
--- *   CLEARING
--- *   THUNDER
--- *   SMOG
--- *   FOGGY
--- *   XMAS
--- *   SNOW
--- *   SNOWLIGHT
--- *   BLIZZARD
--- *   HALLOWEEN
--- *   NEUTRAL
--- **Native**: `SET_WEATHER_TYPE_NOW` (`0x29B487C359E19889`)
---@param weatherType string The weather type to set. This should be one of the predefined weather type strings.
function GameStatic.setWeatherTypeNow(weatherType) end

--- Refer to [`SET_WEATHER_TYPE_NOW`](#\_0x29B487C359E19889) for weather types.
--- **Native**: `SET_WEATHER_TYPE_NOW_PERSIST` (`0xED712CA327900C8A`)
---@param weatherType string
function GameStatic.setWeatherTypeNowPersist(weatherType) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
--- **Native**: `SET_WEATHER_TYPE_OVERTIME_PERSIST` (`0xFB5045B7C42B75BF`)
---@param weatherType string The weather type to override to.
---@param time number A float on how long to take to transition (in seconds).
function GameStatic.setWeatherTypeOvertimePersist(weatherType, time) end

--- Sets the current weather type to persist indefinitely until changed.
---
--- **Note:** This native is not supported in networked sessions. Please refer to [`SET_OVERRIDE_WEATHER`](#\_0xA43D5C6FE51ADBEF) or [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) if you want to override weather in networked sessions.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_WEATHER_TYPE_PERSIST` (`0x704983DF373B198F`)
---@param weatherType string The weather type to be set as persistent. Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for a list of weather type strings.
function GameStatic.setWeatherTypePersist(weatherType) end

--- Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
---
--- ```
--- Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:
--- execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);
--- ```
--- **Native**: `SET_WEATHER_TYPE_TRANSITION` (`0x578C752848ECFA0C`)
---@param weatherType1 integer|string
---@param weatherType2 integer|string
---@param percentWeather2 number
function GameStatic.setWeatherTypeTransition(weatherType1, weatherType2, percentWeather2) end

--- Sets the the raw wind speed value. The wind speed will stay persistent until it is reset (see examples).
--- **Native**: `SET_WIND` (`0xAC3A74E8384A9919`)
---@param speed number The wind speed (clamped to between 0.0 and 1.0)
function GameStatic.setWind(speed) end

--- Sets the wind direction. The wind direction will stay persistent until it is reset (see examples).
--- **Native**: `SET_WIND_DIRECTION` (`0xEB0F4468467B4528`)
---@param direction number the [wind direction](https://en.wikipedia.org/wiki/Wind_direction) in radians
function GameStatic.setWindDirection(direction) end

--- Shoots a bullet from the first vector to the second vector. The weapon used as weaponHash should already be loaded via REQUEST_WEAPON_ASSET, otherwise the bullet may fail to materialise.
--- **Native**: `SHOOT_SINGLE_BULLET_BETWEEN_COORDS` (`0x867654CBC7606F2C`)
---@param coords1 vector3 The coordinate to start the shot at.
---@param coords2 vector3 The coordinate the shot should end up at.
---@param damage integer The amount of damage the bullet carries.
---@param pureAccuracy boolean Whether the bullet should have pinpoint accuracy.
---@param weaponHash integer|string Hash of the weapon the bullet is used as ammunition for.
---@param ownerPed fx.Ped|integer Owner of the bullet, e.g. if the bullet kills someone the kill feed shows 'X was shot by ownerPed.'
---@param isAudible boolean Whether the bullet should be audible. Optional, defaults to true
---@param isInvisible boolean Whether the bullet should be invisible. Optional, defaults to false
---@param speed number Speed the bullet should fly at. Optional
function GameStatic.shootSingleBulletBetweenCoords(coords1, coords2, damage, pureAccuracy, weaponHash, ownerPed, isAudible, isInvisible, speed) end

--- ```
--- entity - entity to ignore
--- ```
---
--- ```
--- NativeDB Added Parameter 15: Any p14
--- ```
--- **Native**: `SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY` (`0xE3A7742E0B7A2F8B`)
---@param coords1 vector3
---@param coords2 vector3
---@param damage integer
---@param p7 boolean
---@param weaponHash integer|string
---@param ownerPed fx.Ped|integer
---@param isAudible boolean
---@param isInvisible boolean
---@param speed number
---@param entity fx.Entity|integer
function GameStatic.shootSingleBulletBetweenCoordsIgnoreEntity(coords1, coords2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity) end

--- ```
--- NativeDB Added Parameter 19: Any p18
--- NativeDB Added Parameter 20: Any p19
--- NativeDB Added Parameter 21: Any p20
--- ```
--- **Native**: `SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY_NEW` (`0xBFE5756E7407064A`)
---@param coords1 vector3
---@param coords2 vector3
---@param damage integer
---@param p7 boolean
---@param weaponHash integer|string
---@param ownerPed fx.Ped|integer
---@param isAudible boolean
---@param isInvisible boolean
---@param speed number
---@param entity fx.Entity|integer
---@param p14 boolean
---@param p15 boolean
---@param p16 boolean
---@param p17 boolean
function GameStatic.shootSingleBulletBetweenCoordsIgnoreEntityNew(coords1, coords2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, p16, p17) end

--- Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
--- **Native**: `SHOULD_USE_METRIC_MEASUREMENTS` (`0xD3D15555431AB793`)
---@return boolean result Returns true if the game is using the metric measurement system, false if imperial is used.
function GameStatic.shouldUseMetricMeasurements() end

--- This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
--- **Native**: `SLERP_NEAR_QUATERNION` (`0xF2F6A2FA49278625`)
---@param t number acceleration differenzial (am_rollercoaster.c func\_134)
---@param coords vector3 rotation parameter (maybe axys)
---@param w number rotation parameter (maybe X axys)
---@param coords1 vector3 rotation parameter (maybe axys)
---@param w1 number rotation parameter (maybe Y axys)
---@return number outX output value calculated (X)
---@return number outY output value calculated (Y)
---@return number outZ output value calculated (Z)
---@return number outW output value calculated (W)
function GameStatic.slerpNearQuaternion(t, coords, w, coords1, w1) end

--- ```
--- Begins with START_*. Next character in the name is either D or E.
--- ```
--- **Native**: `START_BENCHMARK_RECORDING` (`0x92790862E36C2ADA`)
function GameStatic.startBenchmarkRecording() end

--- **Native**: `START_SAVE_ARRAY_WITH_SIZE` (`0x60FE567DF1B1AF9D`)
---@param size integer
---@param arrayName string
---@return any p0
function GameStatic.startSaveArrayWithSize(size, arrayName) end

--- **Native**: `START_SAVE_DATA` (`0xA9575F812C6A7997`)
---@param p1 any
---@param p2 boolean
---@return any p0
function GameStatic.startSaveData(p1, p2) end

--- **Native**: `START_SAVE_STRUCT_WITH_SIZE` (`0xBF737600CDDBEADD`)
---@param size integer
---@param structName string
---@return any p0
function GameStatic.startSaveStructWithSize(size, structName) end

--- ```
--- Begins with STOP_*. Next character in the name is either D or E.
--- ```
--- **Native**: `STOP_BENCHMARK_RECORDING` (`0xC7DB36C24634F52B`)
function GameStatic.stopBenchmarkRecording() end

--- **Native**: `STOP_SAVE_ARRAY` (`0x04456F95153C6BE4`)
function GameStatic.stopSaveArray() end

--- **Native**: `STOP_SAVE_DATA` (`0x74E20C9145FB66FD`)
function GameStatic.stopSaveData() end

--- **Native**: `STOP_SAVE_STRUCT` (`0xEB1774DF12BB9F12`)
function GameStatic.stopSaveStruct() end

--- ```
--- Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.
--- If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.
--- ```
--- **Native**: `STRING_TO_INT` (`0x5A5F40FE637EB584`)
---@param string_ string
---@param outInteger integer
---@return boolean result
---@return integer outInteger
function GameStatic.stringToInt(string_, outInteger) end

--- Suppresses or enables a specific type of random event for the current frame.
---
--- ```cpp
--- enum eEventType {
---     RC_PED_STEAL_VEHICLE = 0,
---     RC_PED_JAY_WALK_LIGHT = 1,
---     RC_COP_PURSUE = 2,
---     RC_COP_PURSUE_VEHICLE_FLEE_SPAWNED = 3,
---     RC_COP_VEHICLE_DRIVING_FAST = 4,
---     RC_COP_VEHICLE_DRIVING_SLOW = 5,
---     RC_DRIVER_RECKLESS = 6,
---     RC_DRIVER_PRO = 7,
---     RC_PED_PURSUE_WHEN_HIT_BY_CAR = 8
--- }
--- ```
--- **Native**: `SUPRESS_RANDOM_EVENT_THIS_FRAME` (`0x1EAE0A6E978894A2`)
---@param eventType fx.Enum.EventType|integer The type of the event to be suppressed or enabled. Use the `eEventType` enum for specific event types.
---@param enable boolean Set to `false` to suppress the event for this frame; set to `true` to enable it.
function GameStatic.supressRandomEventThisFrame(eventType, enable) end

--- **Native**: `TAN` (`0x632106CC96E82E91`)
---@param p0 number
---@return number result
function GameStatic.tan(p0) end

--- For a full list, see [here](https://gist.github.com/4mmonium/f76f3ecef649ed275b260b433ea84494).
--- **Native**: `TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME` (`0x9DC711BC69C548DF`)
---@param scriptName string
function GameStatic.terminateAllScriptsWithThisName(scriptName) end

--- Enable/disable optional stunt camera.
---
--- ```
--- NativeDB Introduced: v757
--- ```
--- **Native**: `TOGGLE_SHOW_OPTIONAL_STUNT_JUMP_CAMERA` (`0xFB80AB299D2EE1BD`)
---@param toggle boolean Set to `true` to enable the optional stunt jump camera angles, or `false` to disable them and use the default camera view.
function GameStatic.toggleShowOptionalStuntJumpCamera(toggle) end

--- Returns whether the In-Game Pause Menu Launched the Benchmark Tests.
--- **Native**: `UI_STARTED_END_USER_BENCHMARK` (`0xEA2F2061875EED90`)
---@return boolean result Returns true if the current frontend menu is `FE_MENU_VERSION_SP_PAUSE`, `false` otherwise.
function GameStatic.uiStartedEndUserBenchmark() end

--- ```
--- Called 4 times in the b617d scripts:
--- MISC::_A74802FB8D0B7814("CONTRAILS", 0);
--- ```
--- **Native**: `UNLOAD_CLOUD_HAT` (`0xA74802FB8D0B7814`)
---@param name string
---@param p1 number
function GameStatic.unloadCloudHat(name, p1) end

--- Returns the current state of the text input box.
---
--- ```cpp
--- enum eOSKStatus
--- {
---   OSK_INVALID = -1,
---   OSK_PENDING = 0,
---   OSK_SUCCESS = 1,
---   OSK_CANCELLED = 2,
---   OSK_FAILED = 3
--- };
--- ```
--- **Native**: `UPDATE_ONSCREEN_KEYBOARD` (`0x0CF2B696BBF945AE`)
---@return fx.Enum.OSKStatus result Returns a value from the list above.
function GameStatic.updateOnscreenKeyboard() end

--- **Native**: `USING_MISSION_CREATOR` (`0xF14878FC50BEC6EE`)
---@param toggle boolean
function GameStatic.usingMissionCreator(toggle) end

--- **Native**: `WATER_OVERRIDE_FADE_IN` (`0xA8434F1DFF41D6E7`)
---@param p0 number
function GameStatic.waterOverrideFadeIn(p0) end

--- **Native**: `WATER_OVERRIDE_FADE_OUT` (`0xC3C221ADDDE31A11`)
---@param p0 number
function GameStatic.waterOverrideFadeOut(p0) end

--- **Native**: `WATER_OVERRIDE_SET_OCEANNOISEMINAMPLITUDE` (`0x31727907B2C43C55`)
---@param minAmplitude number
function GameStatic.waterOverrideSetOceannoiseminamplitude(minAmplitude) end

--- **Native**: `WATER_OVERRIDE_SET_OCEANWAVEAMPLITUDE` (`0x405591EC8FD9096D`)
---@param amplitude number
function GameStatic.waterOverrideSetOceanwaveamplitude(amplitude) end

--- **Native**: `WATER_OVERRIDE_SET_OCEANWAVEMAXAMPLITUDE` (`0xB3E6360DDE733E82`)
---@param maxAmplitude number
function GameStatic.waterOverrideSetOceanwavemaxamplitude(maxAmplitude) end

--- **Native**: `WATER_OVERRIDE_SET_OCEANWAVEMINAMPLITUDE` (`0xF751B16FB32ABC1D`)
---@param minAmplitude number
function GameStatic.waterOverrideSetOceanwaveminamplitude(minAmplitude) end

--- **Native**: `WATER_OVERRIDE_SET_RIPPLEBUMPINESS` (`0x7C9C0B1EEB1F9072`)
---@param bumpiness number
function GameStatic.waterOverrideSetRipplebumpiness(bumpiness) end

--- **Native**: `WATER_OVERRIDE_SET_RIPPLEDISTURB` (`0xB9854DFDE0D833D6`)
---@param disturb number
function GameStatic.waterOverrideSetRippledisturb(disturb) end

--- **Native**: `WATER_OVERRIDE_SET_RIPPLEMAXBUMPINESS` (`0x9F5E6BB6B34540DA`)
---@param maxBumpiness number
function GameStatic.waterOverrideSetRipplemaxbumpiness(maxBumpiness) end

--- **Native**: `WATER_OVERRIDE_SET_RIPPLEMINBUMPINESS` (`0x6216B116083A7CB4`)
---@param minBumpiness number
function GameStatic.waterOverrideSetRippleminbumpiness(minBumpiness) end

--- **Native**: `WATER_OVERRIDE_SET_SHOREWAVEAMPLITUDE` (`0xB8F87EAD7533B176`)
---@param amplitude number
function GameStatic.waterOverrideSetShorewaveamplitude(amplitude) end

--- **Native**: `WATER_OVERRIDE_SET_SHOREWAVEMAXAMPLITUDE` (`0xA7A1127490312C36`)
---@param maxAmplitude number
function GameStatic.waterOverrideSetShorewavemaxamplitude(maxAmplitude) end

--- **Native**: `WATER_OVERRIDE_SET_SHOREWAVEMINAMPLITUDE` (`0xC3EAD29AB273ECE8`)
---@param minAmplitude number
function GameStatic.waterOverrideSetShorewaveminamplitude(minAmplitude) end

--- ```
--- This seems to edit the water wave, intensity around your current location.
--- 0.0f = Normal
--- 1.0f = So Calm and Smooth, a boat will stay still.
--- 3.0f = Really Intense.
--- ```
--- **Native**: `WATER_OVERRIDE_SET_STRENGTH` (`0xC54A08C85AE4D410`)
---@param strength number
function GameStatic.waterOverrideSetStrength(strength) end

