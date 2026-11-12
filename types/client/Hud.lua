---@meta
---@diagnostic disable
-- fx.Hud (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.TextOptions
---@field scale? number Default 0.35
---@field font? fx.Enum.TextFonts|integer Default 4
---@field color? integer[]|{r: integer, g: integer, b: integer, a?: integer} Default white
---@field shadow? boolean Default true
---@field outline? boolean Default false
---@field centre? boolean Default true

---@class fx.NotifyPicture
---@field dict string Texture dictionary (e.g. "CHAR_DEFAULT")
---@field name? string Texture name (defaults to dict)
---@field sender? string
---@field subject? string
---@field icon? integer

---@class fx.NotifyOptions
---@field important? boolean Blink
---@field background? integer HUD colour index (THEFEED_SET_NEXT_POST_BACKGROUND_COLOR)
---@field picture? fx.NotifyPicture
---@class fx.Hud
---@field currentFrontendMenuVersion integer (read-only) [GET_CURRENT_FRONTEND_MENU_VERSION]
---@field currentWebpageId integer (read-only) [GET_CURRENT_WEBPAGE_ID]
---@field currentWebsiteId integer (read-only) [GET_CURRENT_WEBSITE_ID]
---@field defaultScriptRendertargetRenderId integer (read-only) [GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID]
---@field hasDirectorModeBeenTriggered boolean (read-only) [HAS_DIRECTOR_MODE_BEEN_TRIGGERED]
---@field isFrontendReadyForControl boolean (read-only) [IS_FRONTEND_READY_FOR_CONTROL]
---@field isHelpMessageBeingDisplayed boolean (read-only) [IS_HELP_MESSAGE_BEING_DISPLAYED]
---@field isHelpMessageFadingOut boolean (read-only) [IS_HELP_MESSAGE_FADING_OUT]
---@field isHelpMessageOnScreen boolean (read-only) [IS_HELP_MESSAGE_ON_SCREEN]
---@field isHoveringOverMissionCreatorBlip boolean (read-only) [IS_HOVERING_OVER_MISSION_CREATOR_BLIP]
---@field isHudHidden boolean (read-only) [IS_HUD_HIDDEN]
---@field isHudPreferenceSwitchedOn boolean (read-only) [IS_HUD_PREFERENCE_SWITCHED_ON]
---@field isMessageBeingDisplayed boolean (read-only) [IS_MESSAGE_BEING_DISPLAYED]
---@field isMinimapRendering boolean (read-only) [IS_MINIMAP_RENDERING]
---@field isMouseRolledOverInstructionalButtons boolean (read-only) [IS_MOUSE_ROLLED_OVER_INSTRUCTIONAL_BUTTONS] **Note:** The buttons need to support mouse (with the `TOGGLE_MOUSE_SUPPORT` scaleform movie method) for it to return `true`.
---@field isMpGamerTagMovieActive boolean (read-only) [IS_MP_GAMER_TAG_MOVIE_ACTIVE]
---@field isMultiplayerChatActive boolean (read-only) [IS_MULTIPLAYER_CHAT_ACTIVE]
---@field isOnlinePoliciesMenuActive boolean (read-only) [IS_ONLINE_POLICIES_MENU_ACTIVE] Returns the same as `IS_SOCIAL_CLUB_ACTIVE`.
---@field isPausemapInInteriorMode boolean (read-only) [IS_PAUSEMAP_IN_INTERIOR_MODE]
---@field isPauseMenuActive boolean (read-only) [IS_PAUSE_MENU_ACTIVE]
---@field isPauseMenuRestarting boolean (read-only) [IS_PAUSE_MENU_RESTARTING]
---@field isRadarHidden boolean (read-only) [IS_RADAR_HIDDEN]
---@field isRadarPreferenceSwitchedOn boolean (read-only) [IS_RADAR_PREFERENCE_SWITCHED_ON]
---@field isReportugcMenuOpen boolean (read-only) [IS_REPORTUGC_MENU_OPEN]
---@field isSocialClubActive boolean (read-only) [IS_SOCIAL_CLUB_ACTIVE]
---@field isSubtitlePreferenceSwitchedOn boolean (read-only) [IS_SUBTITLE_PREFERENCE_SWITCHED_ON]
---@field isWarningMessageActive boolean (read-only) [IS_WARNING_MESSAGE_ACTIVE] Returns true if a Warning Message or ReportUGC menu is active.
---@field isWarningMessageActive2 boolean (read-only) [IS_WARNING_MESSAGE_ACTIVE_2]
---@field isWaypointActive boolean (read-only) [IS_WAYPOINT_ACTIVE]
---@field minimapFowDiscoveryRatio number (read-only) [GET_MINIMAP_FOW_DISCOVERY_RATIO]
---@field numberOfActiveBlips integer (read-only) [GET_NUMBER_OF_ACTIVE_BLIPS]
---@field pauseMenuCursorPosition vector3 (read-only) [GET_PAUSE_MENU_CURSOR_POSITION] Name between `GET_ONSCREEN_KEYBOARD_RESULT` and `GET_PAUSE_MENU_STATE`. Likely, `GET_PAUSE_MENU_*`.
---@field pauseMenuState fx.Enum.PauseMenuState (read-only) [GET_PAUSE_MENU_STATE]
---@field standardBlipEnumId integer (read-only) [GET_STANDARD_BLIP_ENUM_ID]
---@field warningMessageTitleHash integer (read-only) [GET_WARNING_MESSAGE_TITLE_HASH]
---@field waypointBlipEnumId integer (read-only) [GET_WAYPOINT_BLIP_ENUM_ID]
local HudStatic = {}

---Feed notification (above the minimap). Texts over 99 bytes are split into UTF-8-safe chunks.
---@param text string
---@param options? fx.NotifyOptions
---@return integer notificationId
function HudStatic.notify(text, options) end

---Help text (top left). `duration` -1 (default): the game's default display time; `options.loop` keeps it until it is
---replaced or cleared.
---@param text string
---@param duration? integer
---@param options? { beep?: boolean, loop?: boolean }
function HudStatic.help(text, duration, options) end

---Subtitle (bottom centre), replaces the current one.
---@param text string
---@param duration? integer ms, default 2500
function HudStatic.subtitle(text, duration) end

---2D text at screen coordinates (0..1). Call EVERY FRAME.
---@param text string
---@param x number
---@param y number
---@param options? fx.TextOptions
function HudStatic.drawText(text, x, y, options) end

---3D text anchored at a world position. Call EVERY FRAME. Each call uses a draw origin: the game allows 32 per
---frame, shared by every resource, so beyond that texts are misplaced or missing.
---@param text string
---@param position vector3
---@param options? fx.TextOptions
function HudStatic.drawText3d(text, position, options) end

--- Does stuff like this:\
--- gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617\
--- Example:\
--- int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");\
--- ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);\
--- BOOL p1 is a toggle to define the game in pause.\
--- int p2 is unknown but -1 always works, not sure why though.\
--- \[30/03/2017] ins1de :\
--- the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.\
--- Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);\
--- Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.
---
--- Below is a list of all known Frontend Menu Hashes.
---
--- *   FE_MENU_VERSION_SP_PAUSE
--- *   FE_MENU_VERSION_MP_PAUSE
--- *   FE_MENU_VERSION_CREATOR_PAUSE
--- *   FE_MENU_VERSION_CUTSCENE_PAUSE
--- *   FE_MENU_VERSION_SAVEGAME
--- *   FE_MENU_VERSION_PRE_LOBBY
--- *   FE_MENU_VERSION_LOBBY
--- *   FE_MENU_VERSION_MP_CHARACTER_SELECT
--- *   FE_MENU_VERSION_MP_CHARACTER_CREATION
--- *   FE_MENU_VERSION_EMPTY
--- *   FE_MENU_VERSION_EMPTY_NO_BACKGROUND
--- *   FE_MENU_VERSION_TEXT_SELECTION
--- *   FE_MENU_VERSION_CORONA
--- *   FE_MENU_VERSION_CORONA_LOBBY
--- *   FE_MENU_VERSION_CORONA_JOINED_PLAYERS
--- *   FE_MENU_VERSION_CORONA_INVITE_PLAYERS
--- *   FE_MENU_VERSION_CORONA_INVITE_FRIENDS
--- *   FE_MENU_VERSION_CORONA_INVITE_CREWS
--- *   FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS
--- *   FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS
--- *   FE_MENU_VERSION_CORONA_RACE
--- *   FE_MENU_VERSION_CORONA_BETTING
--- *   FE_MENU_VERSION_JOINING_SCREEN
--- *   FE_MENU_VERSION_LANDING_MENU
--- *   FE_MENU_VERSION_LANDING_KEYMAPPING_MENU
--- **Native**: `ACTIVATE_FRONTEND_MENU` (`0xEF01D36B9C9D0C7B`)
---@param menuhash integer|string
---@param togglePause boolean
---@param component integer
function HudStatic.activateFrontendMenu(menuhash, togglePause, component) end

--- **Native**: `ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS` (`0x60296AF4BA14ABC5`)
---@param addToBrief boolean Toggles if the next help message will be shown in Pause Menu > Info > Help.
function HudStatic.addNextMessageToPreviousBriefs(addToBrief) end

--- **Native**: `ADD_POINT_TO_GPS_CUSTOM_ROUTE` (`0x311438A071DD9B1A`)
---@param coords vector3
function HudStatic.addPointToGpsCustomRoute(coords) end

--- **Native**: `ADD_POINT_TO_GPS_MULTI_ROUTE` (`0xA905192A6781C41B`)
---@param coords vector3
function HudStatic.addPointToGpsMultiRoute(coords) end

--- Adds a float to a text component placeholder, replacing `~1~` in the current text command's text label.
---
--- ![Example output](https://i.imgur.com/jvuQ0II.png)
--- **Native**: `ADD_TEXT_COMPONENT_FLOAT` (`0xE7DCB5B874BCD96E`)
---@param value number The number to substitute in the label.
---@param decimalPlaces integer How many decimal places to add
function HudStatic.addTextComponentFloat(value, decimalPlaces) end

--- **Native**: `ADD_TEXT_COMPONENT_FORMATTED_INTEGER` (`0x0E4C749FF9DE9CC4`)
---@param value integer The integer to add to the string
---@param commaSeparated boolean Whether or not to add comma seperators. So if true 1000 would become 1,000.
function HudStatic.addTextComponentFormattedInteger(value, commaSeparated) end

--- **Native**: `ADD_TEXT_COMPONENT_INTEGER` (`0x03B504CF259931BC`)
---@param value integer
function HudStatic.addTextComponentInteger(value) end

--- Certain characters like `<` will have to be escaped using html entities (e.g. `&lt;`), otherwise the text wont display properly.
--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_KEYBOARD_DISPLAY` (`0x5F68520888E69014`)
---@param string_ string
function HudStatic.addTextComponentSubstringKeyboardDisplay(string_) end

--- ```
--- p1 was always -1
--- ```
--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_PHONE_NUMBER` (`0x761B77454205A61D`)
---@param p0 string
---@param p1 integer
function HudStatic.addTextComponentSubstringPhoneNumber(p0, p1) end

--- Adds an arbitrary string as a text component placeholder, replacing `~a~` in the current text command's text label.
---
--- See the documentation on text formatting for more information.
--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME` (`0x6C188BE134E074AA`)
---@param text string A string to add of up to 99 characters. This can contain additional `~` formatting directives.
function HudStatic.addTextComponentSubstringPlayerName(text) end

--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL` (`0xC63CD5D2920ACBE7`)
---@param labelName string
function HudStatic.addTextComponentSubstringTextLabel(labelName) end

--- ```
--- It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key
--- ```
--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY` (`0x17299B63C7683A2B`)
---@param gxtEntryHash integer|string
function HudStatic.addTextComponentSubstringTextLabelHashKey(gxtEntryHash) end

--- ```
--- Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.
--- ```
--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_TIME` (`0x1115F16B8AB9E8BF`)
---@param timestamp integer
---@param flags integer
function HudStatic.addTextComponentSubstringTime(timestamp, flags) end

--- ```
--- This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)
--- ```
--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE` (`0x94CF4AC034C9C986`)
---@param website string
function HudStatic.addTextComponentSubstringWebsite(website) end

--- Allows opening the pause menu this frame, when the player is dead.
--- **Native**: `ALLOW_PAUSE_MENU_WHEN_DEAD_THIS_FRAME` (`0xCC3FDDED67BCFC63`)
function HudStatic.allowPauseMenuWhenDeadThisFrame() end

--- **Native**: `ALLOW_SONAR_BLIPS` (`0x60734CC207C9833C`)
---@param toggle boolean
function HudStatic.allowSonarBlips(toggle) end

--- ```
--- Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here
--- BEGIN_TEXT_COMMAND_PRINT
--- e.g
--- void StartLoadingMessage(char *text, int spinnerType = 3)
--- 	{
--- _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- _SHOW_LOADING_PROMPT(spinnerType);
--- 	}
--- /*OR*/
--- 	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)
--- 	{
--- _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- _SHOW_LOADING_PROMPT(spinnerType);
--- WAIT(timeMs);
--- _REMOVE_LOADING_PROMPT();
--- 	}
--- These are some localized strings used in the loading spinner.
--- "PM_WAIT"                   = Please Wait
--- "CELEB_WPLYRS"              = Waiting For Players.
--- "CELL_SPINNER2"             = Scanning storage.
--- "ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.
--- "ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.
--- "FM_COR_AUTOD"                        = Just spinner no text
--- "FM_IHELP_WAT2"                        = Waiting for other players
--- "FM_JIP_WAITO"                            = Game options are being set
--- "FMMC_DOWNLOAD"                    = Downloading
--- "FMMC_PLYLOAD"                         = Loading
--- "FMMC_STARTTRAN"                    = Launching session
--- "HUD_QUITTING"                           =  Quiting session
--- "KILL_STRIP_IDM"                         = Waiting for to accept
--- "MP_SPINLOADING"                      = Loading
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_BUSYSPINNER_ON` (`0xABA17D7CE615ADBF`)
---@param string_ string
function HudStatic.beginTextCommandBusyspinnerOn(string_) end

--- ```
--- clears a print text command with this text
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_CLEAR_PRINT` (`0xE124FA80A759019C`)
---@param text string
function HudStatic.beginTextCommandClearPrint(text) end

--- ```
--- Used to be known as _SET_TEXT_COMPONENT_FORMAT
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_DISPLAY_HELP` (`0x8509B634FBE7DA11`)
---@param inputType string
function HudStatic.beginTextCommandDisplayHelp(inputType) end

--- ```
--- The following were found in the decompiled script files:
--- STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3
--- ESDOLLA
--- ESMINDOLLA - cash (negative)
--- Used to be known as _SET_TEXT_ENTRY
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_DISPLAY_TEXT` (`0x25FBB336DF1804CB`)
---@param text string
function HudStatic.beginTextCommandDisplayText(text) end

--- ```
--- BEGIN_TEXT_COMMAND_*
--- Example:
--- _BEGIN_TEXT_COMMAND_GET_WIDTH("NUMBER");
--- ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);
--- float width = _END_TEXT_COMMAND_GET_WIDTH(1);
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_GET_WIDTH` (`0x54CE8AC98E120CAB`)
---@param text string
function HudStatic.beginTextCommandGetWidth(text) end

--- ```
--- nothin doin.
--- BOOL Message(char* text)
--- 	{
--- BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();
--- 	}
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED` (`0x853648FD1063A213`)
---@param text string
function HudStatic.beginTextCommandIsMessageDisplayed(text) end

--- **Native**: `BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED` (`0x0A24DA3A41B718F5`)
---@param labelName string Text entry name. This can be created using [`AddTextEntry`](#\_0x32CA01C3).
function HudStatic.beginTextCommandIsThisHelpMessageBeingDisplayed(labelName) end

--- ```
--- get's line count
--- int GetLineCount(char *text, float x, float y)
--- 	{
--- _BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");
---                 ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);
--- 	}
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_LINE_COUNT` (`0x521FB041D93DD0E4`)
---@param entry string
function HudStatic.beginTextCommandLineCount(entry) end

--- **Native**: `BEGIN_TEXT_COMMAND_OBJECTIVE` (`0x23D69E0465570028`)
---@param p0 string
function HudStatic.beginTextCommandObjective(p0) end

--- **Native**: `BEGIN_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT` (`0x8F9EE5687F8EECCD`)
---@param gxtEntry string
function HudStatic.beginTextCommandOverrideButtonText(gxtEntry) end

--- ```
--- Used to be known as _SET_TEXT_ENTRY_2
--- void ShowSubtitle(char *text)
--- {
--- 	BEGIN_TEXT_COMMAND_PRINT("STRING");
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- 	END_TEXT_COMMAND_PRINT(2000, 1);
--- }
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_PRINT` (`0xB87A37EEB7FAA67D`)
---@param GxtEntry string
function HudStatic.beginTextCommandPrint(GxtEntry) end

--- Starts a text command to change the name of a blip displayed in the pause menu.
---
--- This should be paired with [`END_TEXT_COMMAND_SET_BLIP_NAME`](#\_0xBC38B49BCB83BC9B), once adding all required text components.
--- **Native**: `BEGIN_TEXT_COMMAND_SET_BLIP_NAME` (`0xF9113A30DE5C6670`)
---@param textLabel string The text label to set.
function HudStatic.beginTextCommandSetBlipName(textLabel) end

--- Declares the entry type of a notification, for example "STRING".
--- int ShowNotification(char \*text)
--- {
--- BEGIN_TEXT_COMMAND_THEFEED_POST("STRING");
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- return \_DRAW_NOTIFICATION(1, 1);
--- }
--- **Native**: `BEGIN_TEXT_COMMAND_THEFEED_POST` (`0x202709F4C58A0424`)
---@param text string The text label to use.
function HudStatic.beginTextCommandThefeedPost(text) end

--- **Native**: `BUSYSPINNER_IS_DISPLAYING` (`0xB2A592B04648A9CB`)
---@return boolean result
function HudStatic.busyspinnerIsDisplaying() end

--- **Native**: `BUSYSPINNER_IS_ON` (`0xD422FCC5F239A915`)
---@return boolean result
function HudStatic.busyspinnerIsOn() end

--- ```
--- Removes the loading prompt at the bottom right of the screen.
--- ```
--- **Native**: `BUSYSPINNER_OFF` (`0x10D373323E5B9C0D`)
function HudStatic.busyspinnerOff() end

--- ```
--- Displays cash change notifications on HUD.
--- ```
--- **Native**: `CHANGE_FAKE_MP_CASH` (`0x0772DF77852C2E30`)
---@param cash integer
---@param bank integer
function HudStatic.changeFakeMpCash(cash, bank) end

--- **Native**: `CLEAR_ADDITIONAL_TEXT` (`0x2A179DF17CCF04CD`)
---@param p0 integer
---@param p1 boolean
function HudStatic.clearAdditionalText(p0, p1) end

--- Clears all active blip routes that have been set with [`SetBlipRoute`](#\_0x3E160C90).
--- **Native**: `CLEAR_ALL_BLIP_ROUTES` (`0xD12882D3FF82BF11`)
function HudStatic.clearAllBlipRoutes() end

--- **Native**: `CLEAR_ALL_HELP_MESSAGES` (`0x6178F68A87A4D3A0`)
function HudStatic.clearAllHelpMessages() end

--- **Native**: `CLEAR_BRIEF` (`0x9D292F73ADBD9313`)
function HudStatic.clearBrief() end

--- **Native**: `CLEAR_DYNAMIC_PAUSE_MENU_ERROR_MESSAGE` (`0x7792424AA0EAC32E`)
function HudStatic.clearDynamicPauseMenuErrorMessage() end

--- **Native**: `CLEAR_FLOATING_HELP` (`0x50085246ABD3FEFA`)
---@param hudIndex integer
---@param p1 boolean
function HudStatic.clearFloatingHelp(hudIndex, p1) end

--- **Native**: `CLEAR_GPS_CUSTOM_ROUTE` (`0xE6DE0561D9232A64`)
function HudStatic.clearGpsCustomRoute() end

--- ```
--- Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.
--- Doesn't seem like the flags are actually read by the game at all.
--- ```
--- **Native**: `CLEAR_GPS_FLAGS` (`0x21986729D6A3A830`)
function HudStatic.clearGpsFlags() end

--- Does the same as [`SET_GPS_MULTI_ROUTE_RENDER(false)`](#\_0x3DDA37128DD1ACA8)
--- **Native**: `CLEAR_GPS_MULTI_ROUTE` (`0x67EEDEA1B9BAFD94`)
function HudStatic.clearGpsMultiRoute() end

--- **Native**: `CLEAR_GPS_PLAYER_WAYPOINT` (`0xFF4FB7C8CDFA3DA7`)
function HudStatic.clearGpsPlayerWaypoint() end

--- ```
--- Does the same as SET_RACE_TRACK_RENDER(false);
--- ```
--- **Native**: `CLEAR_GPS_RACE_TRACK` (`0x7AA5B4CE533C858B`)
function HudStatic.clearGpsRaceTrack() end

--- **Native**: `CLEAR_HELP` (`0x8DFCED7A656F8802`)
---@param toggle boolean
function HudStatic.clearHelp(toggle) end

--- **Native**: `CLEAR_PED_IN_PAUSE_MENU` (`0x5E62BE5DC58E9E06`)
function HudStatic.clearPedInPauseMenu() end

--- **Native**: `CLEAR_PRINTS` (`0xCC33FA791322B9D9`)
function HudStatic.clearPrints() end

--- **Native**: `CLEAR_RACE_GALLERY_BLIPS` (`0x2708FC083123F9FF`)
function HudStatic.clearRaceGalleryBlips() end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `CLEAR_REMINDER_MESSAGE` (`0xB57D8DD645CFA2CF`)
function HudStatic.clearReminderMessage() end

--- **Native**: `CLEAR_SMALL_PRINTS` (`0x2CEA2839313C09AC`)
function HudStatic.clearSmallPrints() end

--- ```
--- p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z
--- ```
--- **Native**: `CLEAR_THIS_PRINT` (`0xCF708001E1E536DD`)
---@param p0 string
function HudStatic.clearThisPrint(p0) end

--- **Native**: `CLOSE_MULTIPLAYER_CHAT` (`0x1AC8F4AD40E22127`)
function HudStatic.closeMultiplayerChat() end

--- **Native**: `CLOSE_SOCIAL_CLUB_MENU` (`0xD2B32BE3FC1626C6`)
function HudStatic.closeSocialClubMenu() end

--- **Native**: `DELETE_WAYPOINT` (`0xD8E694757BCEA8E9`)
function HudStatic.deleteWaypoint() end

--- **Native**: `DISABLE_FRONTEND_THIS_FRAME` (`0x6D3465A73092F0E6`)
function HudStatic.disableFrontendThisFrame() end

--- If true is passed, the player won't be able to open the multiplayer chat
--- **Native**: `DISABLE_MULTIPLAYER_CHAT` (`0x1DB21A44B09E8BA3`)
---@param disable boolean
function HudStatic.disableMultiplayerChat(disable) end

--- **Native**: `DISPLAY_AMMO_THIS_FRAME` (`0xA5E78BA2B1331C55`)
---@param display boolean
function HudStatic.displayAmmoThisFrame(display) end

--- **Native**: `DISPLAY_AREA_NAME` (`0x276B6CE369C33678`)
---@param toggle boolean
function HudStatic.displayAreaName(toggle) end

--- ```
--- "DISPLAY_CASH(true);" makes the cash amount render on the screen when appropriate
--- "DISPLAY_CASH(false);" disables cash amount rendering
--- ```
--- **Native**: `DISPLAY_CASH` (`0x96DEC8D5430208B7`)
---@param display boolean
function HudStatic.displayCash(display) end

--- Shows a help message for one frame.
--- Do note that this message doesn't get added to the Pause Menu info section.
--- **Native**: `DISPLAY_HELP_TEXT_THIS_FRAME` (`0x960C9FF8F616E41C`)
---@param pTextLabel string Text label for this message.
---@param bCurvedWindow boolean Unused parameter.
function HudStatic.displayHelpTextThisFrame(pTextLabel, bCurvedWindow) end

--- ```
--- If Hud should be displayed
--- ```
--- **Native**: `DISPLAY_HUD` (`0xA6294919E56FF02A`)
---@param toggle boolean
function HudStatic.displayHud(toggle) end

--- Enables drawing some hud components, such as help labels, this frame, when the player is dead.
--- **Native**: `DISPLAY_HUD_WHEN_DEAD_THIS_FRAME` (`0x7669F9E39DC17063`)
function HudStatic.displayHudWhenDeadThisFrame() end

--- **Native**: `DISPLAY_HUD_WHEN_PAUSED_THIS_FRAME` (`0x402F9ED62087E898`)
function HudStatic.displayHudWhenPausedThisFrame() end

--- Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
--- **Native**: `HUD_DISPLAY_LOADING_SCREEN_TIPS` (`0x488043841BBE156F`)
function HudStatic.displayLoadingScreenTips() end

--- Toggles whether or not name labels are shown on the expanded minimap next to player blips, like in GTA:O.
--- Doesn't need to be called every frame.
--- Preview: https://i.imgur.com/DfqKWfJ.png
--- Make sure to call SET_BLIP_CATEGORY with index 7 for this to work on the desired blip.
--- **Native**: `DISPLAY_PLAYER_NAME_TAGS_ON_BLIPS` (`0x82CEDC33687E1F50`)
---@param toggle boolean the toggle boolean
function HudStatic.displayPlayerNameTagsOnBlips(toggle) end

--- ```
--- If Minimap / Radar should be displayed.
--- ```
--- **Native**: `DISPLAY_RADAR` (`0xA0EBB943C300E693`)
---@param toggle boolean
function HudStatic.displayRadar(toggle) end

--- ```
--- Displays the crosshair for this frame.
--- ```
--- **Native**: `DISPLAY_SNIPER_SCOPE_THIS_FRAME` (`0x73115226F4814E62`)
function HudStatic.displaySniperScopeThisFrame() end

--- **Native**: `DOES_TEXT_BLOCK_EXIST` (`0x1C7302E725259789`)
---@param gxt string
---@return boolean result
function HudStatic.doesTextBlockExist(gxt) end

--- ```
--- Checks if the passed gxt name exists in the game files.
--- ```
--- **Native**: `DOES_TEXT_LABEL_EXIST` (`0xAC09CA973C564252`)
---@param gxt string
---@return boolean result
function HudStatic.doesTextLabelExist(gxt) end

--- ```
--- When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.
--- ```
--- **Native**: `DONT_TILT_MINIMAP_THIS_FRAME` (`0x6D14BFDC33B34F55`)
function HudStatic.dontTiltMinimapThisFrame() end

--- ```cpp
--- enum eBusySpinnerType
--- {
--- 	BUSY_SPINNER_LEFT = 0,
--- 	BUSY_SPINNER_LEFT_2 = 1,
--- 	BUSY_SPINNER_LEFT_3 = 2,
--- 	BUSY_SPINNER_SAVE = 3,
--- 	BUSY_SPINNER_RIGHT = 4,
--- };
--- ```
--- **Native**: `END_TEXT_COMMAND_BUSYSPINNER_ON` (`0xBD12F8228410D9B4`)
---@param busySpinnerType fx.Enum.BusySpinnerType|integer
function HudStatic.endTextCommandBusyspinnerOn(busySpinnerType) end

--- **Native**: `END_TEXT_COMMAND_CLEAR_PRINT` (`0xFCC75460ABA29378`)
function HudStatic.endTextCommandClearPrint() end

--- **Native**: `END_TEXT_COMMAND_DISPLAY_HELP` (`0x238FFE5C7B0498A6`)
---@param shape integer 0 for a normal rectangle shape, 1 and 2 has rounded edges, and can be used for floating help text hud component `FLOATING_HELP_TEXT_1` and `FLOATING_HELP_TEXT_2`. Use 1 for `FLOATING_HELP_TEXT_1` and…
---@param loop boolean If this is true, the message will stay forever unless you call [`CLEAR_ALL_HELP_MESSAGES`](#\_0x6178F68A87A4D3A0).
---@param beep boolean If this is true, the beeping sound will play. Beeping sound name is `INFO` in sound set `HUD_FRONTEND_DEFAULT_SOUNDSET`.
---@param duration integer Duration in ms of how long this help message should display for. -1 for default.
function HudStatic.endTextCommandDisplayHelp(shape, loop, beep, duration) end

--- ```
--- After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.
--- ```
---
--- ```
--- NativeDB Added Parameter 3: int p2
--- ```
--- **Native**: `END_TEXT_COMMAND_DISPLAY_TEXT` (`0xCD015E5BB0D96A57`)
---@param x number
---@param y number
function HudStatic.endTextCommandDisplayText(x, y) end

--- ```
--- END_TEXT_COMMAND_*
--- In scripts font most of the time is passed as 1.
--- Use _BEGIN_TEXT_GET_COMMAND_GET_WIDTH
--- param is not font from what i've tested
--- ```
--- **Native**: `END_TEXT_COMMAND_GET_WIDTH` (`0x85F061DA64ED2F67`)
---@param p0 boolean
---@return number result
function HudStatic.endTextCommandGetWidth(p0) end

--- **Native**: `END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED` (`0x8A9BA1AB3E237613`)
---@return boolean result
function HudStatic.endTextCommandIsMessageDisplayed() end

--- Returns whether a specific help message is being displayed or not.
---
--- ```cpp
--- enum HudIndexes {
---     HELP_TEXT = 0,
---     FLOATING_HELP_TEXT_1 = 1,
---     FLOATING_HELP_TEXT_2 = 2,
--- }
--- ```
--- **Native**: `END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED` (`0x10BDDBFC529428DD`)
---@param hudIndex fx.Enum.HudIndexes|integer The hud index for help message.
---@return boolean result `true`: Indicates if the specific help message has been displayed.\ `false`: Indicates that the specific help message is still being displayed.
function HudStatic.endTextCommandIsThisHelpMessageBeingDisplayed(hudIndex) end

--- ```
--- END_TEXT_COMMAND_*
--- Determines how many lines the text string will use when drawn on screen.
--- Must use 0x521FB041D93DD0E4 for setting up
--- ```
--- **Native**: `END_TEXT_COMMAND_LINE_COUNT` (`0x9040DFB09BE75706`)
---@param x number
---@param y number
---@return integer result
function HudStatic.endTextCommandLineCount(x, y) end

--- **Native**: `END_TEXT_COMMAND_OBJECTIVE` (`0xCFDBDF5AE59BA0F4`)
---@param p0 boolean
function HudStatic.endTextCommandObjective(p0) end

--- **Native**: `END_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT` (`0xA86911979638106F`)
---@param buttonIndex integer Index of the instructional button
function HudStatic.endTextCommandOverrideButtonText(buttonIndex) end

--- ```
--- Draws the subtitle at middle center of the screen.
--- int duration = time in milliseconds to show text on screen before disappearing
--- drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished
--- Used to be known as _DRAW_SUBTITLE_TIMED
--- ```
--- **Native**: `END_TEXT_COMMAND_PRINT` (`0x9D77056A530643F6`)
---@param duration integer
---@param drawImmediately boolean
function HudStatic.endTextCommandPrint(duration, drawImmediately) end

--- Shows an "award" notification above the minimap, lua example result:
---
--- ![](https://i.imgur.com/e2DNaKX.png)
---
--- Old description:
---
--- ```
--- Example:
--- UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");
--- UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_AWARD` (`0xAA295B6F28BD587D`)
---@param textureDict string The texture dictionary name for the icon on the left.
---@param textureName string The texture name for the icon on the left.
---@param rpBonus integer The gained "RP" amount that will be displayed on the right side of the notification.
---@param colorOverlay integer Hudcolor overlay that gets applied on top of the notification, conflicts with text/image visibility in most cases if set to something other than 0.
---@param titleLabel string The label that will be displayed at the top of the notification (title).
---@return integer result The notification handle.
function HudStatic.endTextCommandThefeedPostAward(textureDict, textureName, rpBonus, colorOverlay, titleLabel) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_CREW_RANKUP` (`0x8EFCCF6EC66D85E4`)
---@param chTitle string
---@param clanTxd string
---@param clanTxn string
---@param isImportant boolean
---@param showSubtitle boolean
---@return integer result
function HudStatic.endTextCommandThefeedPostCrewRankup(chTitle, clanTxd, clanTxn, isImportant, showSubtitle) end

--- ```
--- This function and the one below it are for after you receive an invite, not sending it.
--- p0 = 1 or 0
--- nothin doin.
--- int invite(Player player)
--- 	{
--- int iVar2, iVar3;
--- networkHandleMgr handle;
--- NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);
--- networkClanMgr clan;
--- char *playerName = GET_PLAYER_NAME(player);
--- _SET_NOTIFICATION_TEXT_ENTRY("STRING");
--- _SET_NOTIFACTION_COLOR_NEXT(0);
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);
--- if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))
--- {
--- 	iVar2 = 0;
--- 	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)
--- 	{
--- iVar2 = 1;
--- 	}
--- 	if (clan.unk21 > 0)
--- 	{
--- iVar3 = 0;
--- 	}
--- 	else
--- 	{
--- iVar3 = 1;
--- 	}
--- 	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);
--- 	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 /*unused*/, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);
--- }
--- 	}
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_CREWTAG` (`0x97C9E4E7024A8F2C`)
---@param crewTypeIsPrivate boolean
---@param crewTagContainsRockstar boolean
---@param rank integer
---@param hasFounderStatus boolean
---@param isImportant boolean
---@param clanHandle integer
---@param r integer
---@param g integer
---@param b integer
---@return integer result
---@return integer crewTag
function HudStatic.endTextCommandThefeedPostCrewtag(crewTypeIsPrivate, crewTagContainsRockstar, rank, hasFounderStatus, isImportant, clanHandle, r, g, b) end

--- ```
--- p0 = 1 or 0
--- crashes my game...
--- this is for sending invites to network players - jobs/apartment/ect...
--- return notification handle
--- int invite(Player player)
--- 	{
--- networkHandleMgr netHandle;
--- networkClanMgr clan;
--- char *playerName = GET_PLAYER_NAME(player);
--- _SET_NOTIFICATION_TEXT_ENTRY("STRING");
--- _SET_NOTIFACTION_COLOR_NEXT(1);
--- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);
--- NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);
--- if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))
--- {
--- 	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);
--- 	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);
--- }
--- 	}
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_CREWTAG_WITH_GAME_NAME` (`0x137BC35589E34E1E`)
---@param crewTypeIsPrivate boolean
---@param crewTagContainsRockstar boolean
---@param rank integer
---@param isLeader boolean
---@param isImportant boolean
---@param clanHandle integer
---@param gamerStr string
---@param r integer
---@param g integer
---@param b integer
---@return integer result
---@return integer crewTag
function HudStatic.endTextCommandThefeedPostCrewtagWithGameName(crewTypeIsPrivate, crewTagContainsRockstar, rank, isLeader, isImportant, clanHandle, gamerStr, r, g, b) end

--- Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).
---
--- Texture dictionary and texture name parameters are usually the same exact value.
---
--- Example result:
---
--- ![](https://i.imgur.com/LviutDl.png)
---
--- Old description with list of possible icons and texture names:
---
--- ```
--- List of picNames: pastebin.com/XdpJVbHz
--- flash is a bool for fading in.
--- iconTypes:
--- 1 : Chat Box
--- 2 : Email
--- 3 : Add Friend Request
--- 4 : Nothing
--- 5 : Nothing
--- 6 : Nothing
--- 7 : Right Jumping Arrow
--- 8 : RP Icon
--- 9 : $ Icon
--- "sender" is the very top header. This can be any old string.
--- "subject" is the header under the sender.
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT` (`0x1CCD9A37359072CF`)
---@param textureDict string The texture dictionary for the icon.
---@param textureName string The texture name for the icon.
---@param flash boolean Flash, doesn't seem to work no matter what.
---@param iconType integer The icon type, see the list in the description below.
---@param sender string The notification title.
---@param subject string The notification subtitle.
---@return integer result The notification handle.
function HudStatic.endTextCommandThefeedPostMessagetext(textureDict, textureName, flash, iconType, sender, subject) end

--- This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.
--- Needs more research.
--- Only one type of usage in the scripts:
--- HUD::\_C6F580E4C94926AC("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a\_0);
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_GXT_ENTRY` (`0xC6F580E4C94926AC`)
---@param txdName string
---@param textureName string
---@param flash boolean
---@param iconType integer
---@param sender string
---@param subject string
---@return integer result
function HudStatic.endTextCommandThefeedPostMessagetextGxtEntry(txdName, textureName, flash, iconType, sender, subject) end

--- Example, only occurrence in the scripts:
---
--- ```
--- v_8 = UI::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);
--- ```
---
--- Example result:
--- ![](https://i.imgur.com/YrN4Bcm.png)
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU` (`0x1E6611149DB3DB6B`)
---@param picTxd string
---@param picTxn string
---@param flash boolean
---@param iconType integer The icon type, you can find those here: [`END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT`](#\_0x1CCD9A37359072CF)
---@param nameStr string
---@param subtitleStr string
---@param durationMultiplier number 1.0 is normal, 2.0 is twice as long, and 0.5 is half its normal display time.
---@return integer result
function HudStatic.endTextCommandThefeedPostMessagetextTu(picTxd, picTxn, flash, iconType, nameStr, subtitleStr, durationMultiplier) end

--- ```
--- List of picNames pastebin.com/XdpJVbHz
--- flash is a bool for fading in.
--- iconTypes:
--- 1 : Chat Box
--- 2 : Email
--- 3 : Add Friend Request
--- 4 : Nothing
--- 5 : Nothing
--- 6 : Nothing
--- 7 : Right Jumping Arrow
--- 8 : RP Icon
--- 9 : $ Icon
--- "sender" is the very top header. This can be any old string.
--- "subject" is the header under the sender.
--- "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.
--- "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG` (`0x5CBF7BADE20DB93E`)
---@param picTxd string
---@param picTxn string
---@param flash boolean
---@param iconType integer
---@param nameStr string
---@param subtitleStr string
---@param duration number
---@param crewPackedStr string
---@return integer result
function HudStatic.endTextCommandThefeedPostMessagetextWithCrewTag(picTxd, picTxn, flash, iconType, nameStr, subtitleStr, duration, crewPackedStr) end

--- ```
--- List of picNames: pastebin.com/XdpJVbHz
--- flash is a bool for fading in.
--- iconTypes:
--- 1 : Chat Box
--- 2 : Email
--- 3 : Add Friend Request
--- 4 : Nothing
--- 5 : Nothing
--- 6 : Nothing
--- 7 : Right Jumping Arrow
--- 8 : RP Icon
--- 9 : $ Icon
--- "sender" is the very top header. This can be any old string.
--- "subject" is the header under the sender.
--- "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.
--- "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)
--- iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.
--- int IconNotification(char *text, char *text2, char *Subject)
--- {
--- 	_SET_NOTIFICATION_TEXT_ENTRY("STRING");
--- 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
--- 	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);
--- 	return _DRAW_NOTIFICATION(1, 1);
--- }
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON` (`0x531B84E7DA981FB6`)
---@param picTxd string
---@param picTxn string
---@param flash boolean
---@param iconType1 integer
---@param nameStr string
---@param subtitleStr string
---@param duration number
---@param crewPackedStr string
---@param iconType2 integer
---@param textColor integer
---@return integer result
function HudStatic.endTextCommandThefeedPostMessagetextWithCrewTagAndAdditionalIcon(picTxd, picTxn, flash, iconType1, nameStr, subtitleStr, duration, crewPackedStr, iconType2, textColor) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_MPTICKER` (`0xF020C96915705B3A`)
---@param blink boolean
---@param bHasTokens boolean
---@return integer result
function HudStatic.endTextCommandThefeedPostMpticker(blink, bHasTokens) end

--- ```
--- returns a notification handle, prints out a notification like below:
--- type range: 0
--- if you set type to 1, image goes from 0 - 39 - Xbox you can add text to
--- example:
--- UI::_0xD202B92CBF1D816F(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_REPLAY_ICON` (`0xD202B92CBF1D816F`)
---@param eType integer
---@param iIcon integer
---@param sTitle string
---@return integer result
function HudStatic.endTextCommandThefeedPostReplayIcon(eType, iIcon, sTitle) end

--- ```
--- returns a notification handle, prints out a notification like below:
--- type range: 0 - 2
--- if you set type to 1, button accepts "~INPUT_SOMETHING~"
--- example:
--- HUD::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");
--- - imgur.com/UPy0Ial
--- Examples from the scripts:
--- l_D1[1/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
--- l_D1[2/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");
--- l_D1[1/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
--- l_D1[2/*1*/]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT` (`0xDD6CB2CCE7C2735C`)
---@param type_ integer
---@param button string
---@param text string
---@return integer result
function HudStatic.endTextCommandThefeedPostReplayInput(type_, button, text) end

--- [List of picture names](https://pastebin.com/XdpJVbHz)
---
--- Example result:
---
--- ![](https://i.imgur.com/SdEZ22m.png)
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_STATS` (`0x2B7E9A4EAAA93C89`)
---@param statTitle string
---@param iconEnum integer
---@param stepVal boolean
---@param barValue integer
---@param isImportant boolean
---@param picTxd string
---@param picTxn string
---@return integer result The notification handle.
function HudStatic.endTextCommandThefeedPostStats(statTitle, iconEnum, stepVal, barValue, isImportant, picTxd, picTxn) end

--- Example output preview:
---
--- ![](https://i.imgur.com/TJvqkYq.png)
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_TICKER` (`0x2ED7843F8F801023`)
---@param isImportant boolean Makes the notification flash on the screen.
---@param bHasTokens boolean Makes the notification appear in the "Pause Menu > Info/Brief > Notifications" section.
---@return integer result The notification handle.
function HudStatic.endTextCommandThefeedPostTicker(isImportant, bHasTokens) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED` (`0x44FA03975424A0EE`)
---@param blink boolean
---@param bHasTokens boolean
---@return integer result
function HudStatic.endTextCommandThefeedPostTickerForced(blink, bHasTokens) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS` (`0x378E809BF61EC840`)
---@param isImportant boolean
---@param bHasTokens boolean
---@return integer result
function HudStatic.endTextCommandThefeedPostTickerWithTokens(isImportant, bHasTokens) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_UNLOCK` (`0x33EE12743CCD6343`)
---@param chTitle string
---@param iconType integer
---@param chSubtitle string
---@return any result
function HudStatic.endTextCommandThefeedPostUnlock(chTitle, iconType, chSubtitle) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU` (`0xC8F3AAF93D0600BF`)
---@param chTitle string
---@param iconType integer
---@param chSubtitle string
---@param isImportant boolean
---@return any result
function HudStatic.endTextCommandThefeedPostUnlockTu(chTitle, iconType, chSubtitle, isImportant) end

--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU_WITH_COLOR` (`0x7AE0589093A2E088`)
---@param chTitle string
---@param iconType integer
---@param chSubtitle string
---@param isImportant boolean
---@param titleColor integer
---@param p5 boolean
---@return any result
function HudStatic.endTextCommandThefeedPostUnlockTuWithColor(chTitle, iconType, chSubtitle, isImportant, titleColor, p5) end

--- ```
--- NativeDB Added Parameter 7: int hudColorIndex1
--- NativeDB Added Parameter 8: int hudColorIndex2
--- ```
--- **Native**: `END_TEXT_COMMAND_THEFEED_POST_VERSUS_TU` (`0xB6871B0555B02996`)
---@param ch1TXD string
---@param ch1TXN string
---@param val1 integer
---@param ch2TXD string
---@param ch2TXN string
---@param val2 integer
---@return integer result
function HudStatic.endTextCommandThefeedPostVersusTu(ch1TXD, ch1TXN, val1, ch2TXD, ch2TXN, val2) end

--- **Native**: `FLAG_PLAYER_CONTEXT_IN_TOURNAMENT` (`0xCEF214315D276FD1`)
---@param toggle boolean
function HudStatic.flagPlayerContextInTournament(toggle) end

--- **Native**: `FLASH_ABILITY_BAR` (`0x02CFBA0C9E9275CE`)
---@param millisecondsToFlash integer
function HudStatic.flashAbilityBar(millisecondsToFlash) end

--- ```
--- adds a short flash to the Radar/Minimap
--- Usage: UI.FLASH_MINIMAP_DISPLAY
--- ```
--- **Native**: `FLASH_MINIMAP_DISPLAY` (`0xF2DD778C22B15BDA`)
function HudStatic.flashMinimapDisplay() end

--- **Native**: `FLASH_MINIMAP_DISPLAY_WITH_COLOR` (`0x6B1DE27EE78E6A19`)
---@param hudColorIndex integer
function HudStatic.flashMinimapDisplayWithColor(hudColorIndex) end

--- **Native**: `FLASH_WANTED_DISPLAY` (`0xA18AFB39081B6A1F`)
---@param p0 boolean
function HudStatic.flashWantedDisplay(p0) end

--- **Native**: `FORCE_CLOSE_REPORTUGC_MENU` (`0xEE4C0E6DBC6F2C6F`)
function HudStatic.forceCloseReportugcMenu() end

--- **Native**: `FORCE_CLOSE_TEXT_INPUT_BOX` (`0x8817605C2BA76200`)
function HudStatic.forceCloseTextInputBox() end

--- ```
--- Doesn't actually return anything.
--- ```
--- **Native**: `FORCE_SONAR_BLIPS_THIS_FRAME` (`0x1121BFA1A1A522A8`)
---@return any result
function HudStatic.forceSonarBlipsThisFrame() end

--- ```
--- Forces the weapon wheel to show/hide.
--- ```
--- **Native**: `HUD_FORCE_WEAPON_WHEEL` (`0xEB354E5376BC81A7`)
---@param show boolean
function HudStatic.forceWeaponWheel(show) end

--- Gets a localized string literal from a label name. This is used to get the filename of the audio conversation associated with the provided label name.
--- **Native**: `GET_FILENAME_FOR_AUDIO_CONVERSATION` (`0x7B5280EBA9840C72`)
---@param labelName string The label name for which the audio conversation filename is requested.
---@return string result Returns the filename associated with the provided labelName.
function HudStatic.getFilenameForAudioConversation(labelName) end

--- ```
--- Returns the ActionScript flagValue.
--- ActionScript flags are global flags that scaleforms use
--- Flags found during testing
--- 0: Returns 1 if the web_browser keyboard is open, otherwise 0
--- 1: Returns 1 if the player has clicked back twice on the opening page, otherwise 0 (web_browser)
--- 2: Returns how many links the player has clicked in the web_browser scaleform, returns 0 when the browser gets closed
--- 9: Returns the current selection on the mobile phone scaleform
--- There are 20 flags in total.
--- ```
--- **Native**: `GET_GLOBAL_ACTIONSCRIPT_FLAG` (`0xE3B05614DCE1D014`)
---@param flagIndex integer
---@return integer result
function HudStatic.getGlobalActionscriptFlag(flagIndex) end

--- Gets hud color RGBA parameter values by passing a hud color index (hudColorIndex).
---
--- HUD colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
--- **Native**: `GET_HUD_COLOUR` (`0x7C9C91AB74A0360F`)
---@param hudColorIndex integer
---@return integer r
---@return integer g
---@return integer b
---@return integer a
function HudStatic.getHudColour(hudColorIndex) end

--- **Native**: `GET_HUD_COMPONENT_POSITION` (`0x223CA69A8C4417FD`)
---@param id integer
---@return vector3 result
function HudStatic.getHudComponentPosition(id) end

--- ```
--- World to relative screen coords
--- this world to screen will keep the text on screen. it will keep it in the screen pos
--- ```
--- **Native**: `GET_HUD_SCREEN_POSITION_FROM_WORLD_POSITION` (`0xF9904D11F1ACBEC3`)
---@param world vector3
---@return boolean result
---@return number screenX
---@return number screenY
function HudStatic.getHudScreenPositionFromWorldPosition(world) end

--- ```
--- Returns the length of the string passed (much like strlen).
--- ```
--- **Native**: `GET_LENGTH_OF_LITERAL_STRING` (`0xF030907CCBB8A9FD`)
---@param string_ string
---@return integer result
function HudStatic.getLengthOfLiteralString(string_) end

--- **Native**: `GET_LENGTH_OF_LITERAL_STRING_IN_BYTES` (`0x43E4111189E54F0E`)
---@param string_ string
---@return integer result
function HudStatic.getLengthOfLiteralStringInBytes(string_) end

--- ```
--- Returns the string length of the string from the gxt string .
--- ```
--- **Native**: `GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL` (`0x801BD273D3A23F74`)
---@param gxt string
---@return integer result
function HudStatic.getLengthOfStringWithThisTextLabel(gxt) end

--- ```
--- p0 was always 0xAE2602A3.
--- ```
--- **Native**: `GET_MENU_PED_BOOL_STAT` (`0x052991E59076E4E4`)
---@param p0 integer|string
---@param p1 any
---@return boolean result
---@return any p1
function HudStatic.getMenuPedBoolStat(p0, p1) end

--- **Native**: `GET_MENU_PED_FLOAT_STAT` (`0x5FBD7095FE7AE57F`)
---@param p0 any
---@param p1 number
---@return boolean result
---@return number p1
function HudStatic.getMenuPedFloatStat(p0, p1) end

--- **Native**: `GET_MENU_PED_INT_STAT` (`0xEF4CED81CEBEDC6D`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p1
function HudStatic.getMenuPedIntStat(p0, p1) end

--- **Native**: `GET_MENU_PED_MASKED_INT_STAT` (`0x90A6526CF0381030`)
---@param p0 any
---@param p2 any
---@param p3 any
---@return boolean result
---@return any p1
function HudStatic.getMenuPedMaskedIntStat(p0, p2, p3) end

--- **Native**: `GET_MINIMAP_FOW_COORDINATE_IS_REVEALED` (`0x6E31B91145873922`)
---@param coords vector3
---@return boolean result
function HudStatic.getMinimapFowCoordinateIsRevealed(coords) end

--- **Native**: `GET_NAMED_RENDERTARGET_RENDER_ID` (`0x1A6478B61C6BDC3B`)
---@param name string
---@return integer result
function HudStatic.getNamedRendertargetRenderId(name) end

--- **Native**: `GET_PAUSE_MENU_SELECTION` (`0x36C1451A88A09630`)
---@return integer lastItemMenuId
---@return integer selectedItemUniqueId
function HudStatic.getPauseMenuSelection() end

--- ```
--- lastItemMenuId: this is the menuID of the last selected item minus 1000 (lastItem.menuID - 1000)
--- selectedItemMenuId: same as lastItemMenuId except for the currently selected menu item
--- selectedItemUniqueId: this is uniqueID of the currently selected menu item
--- when the pausemenu is closed:
--- lastItemMenuId = -1
--- selectedItemMenuId = -1
--- selectedItemUniqueId = 0
--- when the header gains focus:
--- lastItemMenuId updates as normal or 0 if the pausemenu was just opened
--- selectedItemMenuId becomes a unique id for the pausemenu page that focus was taken from (?) or 0 if the pausemenu was just opened
--- selectedItemUniqueId = -1
--- when focus is moved from the header to a pausemenu page:
--- lastItemMenuId becomes a unique id for the pausemenu page that focus was moved to (?)
--- selectedItemMenuId = -1
--- selectedItemUniqueId updates as normal
--- ```
--- **Native**: `GET_PAUSE_MENU_SELECTION_DATA` (`0x7E17BE53E1AAABAF`)
---@return integer lastItemMenuId
---@return integer selectedItemMenuId
---@return integer selectedItemUniqueId
function HudStatic.getPauseMenuSelectionData() end

--- ```
--- This gets the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.
--- Old name: _GET_TEXT_SCALE_HEIGHT
--- ```
--- **Native**: `GET_RENDERED_CHARACTER_HEIGHT` (`0xDB88A37483346780`)
---@param size number
---@param font integer
---@return number result
function HudStatic.getRenderedCharacterHeight(size, font) end

--- Converts the hash of a street name into a readable string. To retrieve a hash for a given (street) coordinate, see [`GET_STREET_NAME_AT_COORD`](#\_0x2EB41072B4C1E4C0).
--- **Native**: `GET_STREET_NAME_FROM_HASH_KEY` (`0xD0EF8A959B8A4CB9`)
---@param hash integer|string
---@return string result
function HudStatic.getStreetNameFromHashKey(hash) end

--- ```
--- Returns a substring of a specified length starting at a specified position.
--- Example:
--- // Get "STRING" text from "MY_STRING"
--- subStr = HUD::_GET_TEXT_SUBSTRING("MY_STRING", 3, 6);
--- ```
--- **Native**: `GET_TEXT_SUBSTRING` (`0x169BD9382084C8C0`)
---@param text string
---@param position integer
---@param length integer
---@return string result
function HudStatic.getTextSubstring(text, position, length) end

--- ```
--- Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.
--- NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69
--- Example:
--- // Condensed example of how Rockstar uses this function
--- strLen = HUD::GET_LENGTH_OF_LITERAL_STRING(MISC::GET_ONSCREEN_KEYBOARD_RESULT());
--- subStr = HUD::_GET_TEXT_SUBSTRING_SAFE(MISC::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);
--- --
--- "fm_race_creator.ysc", line 85115:
--- // parameters modified for clarity
--- BOOL sub_8e5aa(char *text, int length) {
---     for (i = 0; i <= (length - 2); i += 1) {
---         if (!MISC::ARE_STRINGS_EQUAL(HUD::_GET_TEXT_SUBSTRING_SAFE(text, i, i + 1, 1), " ")) {
---             return FALSE;
---         }
---     }
---     return TRUE;
--- }
--- ```
--- **Native**: `GET_TEXT_SUBSTRING_SAFE` (`0xB2798643312205C5`)
---@param text string
---@param position integer
---@param length integer
---@param maxLength integer
---@return string result
function HudStatic.getTextSubstringSafe(text, position, length, maxLength) end

--- ```
--- Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).
--- Example:
--- // Get "STRING" text from "MY_STRING"
--- subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);
--- // Overflows are possibly replaced with underscores (needs verification)
--- subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?
--- ```
--- **Native**: `GET_TEXT_SUBSTRING_SLICE` (`0xCE94AEBA5D82908A`)
---@param text string
---@param startPosition integer
---@param endPosition integer
---@return string result
function HudStatic.getTextSubstringSlice(text, startPosition, endPosition) end

--- **Native**: `HAS_ADDITIONAL_TEXT_LOADED` (`0x02245FE4BED318B8`)
---@param slot integer
---@return boolean result
function HudStatic.hasAdditionalTextLoaded(slot) end

--- ```
--- Checks if the specified gxt has loaded into the passed slot.
--- ```
--- **Native**: `HAS_THIS_ADDITIONAL_TEXT_LOADED` (`0xADBF060E2B30C5BC`)
---@param gxt string
---@param slot integer
---@return boolean result
function HudStatic.hasThisAdditionalTextLoaded(gxt, slot) end

--- ```
--- HIDE_*_THIS_FRAME
---
--- Hides area and vehicle name HUD components for one frame.
--- ```
--- **Native**: `HIDE_AREA_AND_VEHICLE_NAME_THIS_FRAME` (`0xA4DEDE28B1814289`)
function HudStatic.hideAreaAndVehicleNameThisFrame() end

--- **Native**: `HIDE_HELP_TEXT_THIS_FRAME` (`0xD46923FC481CA285`)
function HudStatic.hideHelpTextThisFrame() end

--- ```
--- I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)
--- ```
--- **Native**: `HIDE_HUD_AND_RADAR_THIS_FRAME` (`0x719FF505F097FD20`)
function HudStatic.hideHudAndRadarThisFrame() end

--- This function hides various HUD (Heads-up Display) components.
---
--- Listed below are the integers and the corresponding HUD component.
---
--- *   1 : WANTED_STARS
--- *   2 : WEAPON_ICON
--- *   3 : CASH
--- *   4 : MP_CASH
--- *   5 : MP_MESSAGE
--- *   6 : VEHICLE_NAME
--- *   7 : AREA_NAME
--- *   8 : VEHICLE_CLASS
--- *   9 : STREET_NAME
--- *   10 : HELP_TEXT
--- *   11 : FLOATING_HELP_TEXT\_1
--- *   12 : FLOATING_HELP_TEXT\_2
--- *   13 : CASH_CHANGE
--- *   14 : RETICLE
--- *   15 : SUBTITLE_TEXT
--- *   16 : RADIO_STATIONS
--- *   17 : SAVING_GAME
--- *   18 : GAME_STREAM
--- *   19 : WEAPON_WHEEL
--- *   20 : WEAPON_WHEEL_STATS
--- *   21 : HUD_COMPONENTS
--- *   22 : HUD_WEAPONS
---
--- These integers also work for the [`SHOW_HUD_COMPONENT_THIS_FRAME`](#\_0x0B4DF1FA60C0E664) native, but instead shows the HUD Component.
--- **Native**: `HIDE_HUD_COMPONENT_THIS_FRAME` (`0x6806C51AD12B83B8`)
---@param id integer
function HudStatic.hideHudComponentThisFrame(id) end

--- **Native**: `HIDE_LOADING_ON_FADE_THIS_FRAME` (`0x4B0311D3CDC4648F`)
function HudStatic.hideLoadingOnFadeThisFrame() end

--- **Native**: `HIDE_MINIMAP_EXTERIOR_MAP_THIS_FRAME` (`0x5FBAE526203990C9`)
function HudStatic.hideMinimapExteriorMapThisFrame() end

--- **Native**: `HIDE_MINIMAP_INTERIOR_MAP_THIS_FRAME` (`0x20FE7FDFEEAD38C0`)
function HudStatic.hideMinimapInteriorMapThisFrame() end

--- **Native**: `HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME` (`0xE374C498D8BADC14`)
---@param id integer
function HudStatic.hideScriptedHudComponentThisFrame(id) end

--- **Native**: `IS_FLOATING_HELP_TEXT_ON_SCREEN` (`0x2432784ACA090DA4`)
---@param hudIndex integer
---@return boolean result
function HudStatic.isFloatingHelpTextOnScreen(hudIndex) end

--- ```
--- Full list of components below
--- HUD = 0;
--- HUD_WANTED_STARS = 1;
--- HUD_WEAPON_ICON = 2;
--- HUD_CASH = 3;
--- HUD_MP_CASH = 4;
--- HUD_MP_MESSAGE = 5;
--- HUD_VEHICLE_NAME = 6;
--- HUD_AREA_NAME = 7;
--- HUD_VEHICLE_CLASS = 8;
--- HUD_STREET_NAME = 9;
--- HUD_HELP_TEXT = 10;
--- HUD_FLOATING_HELP_TEXT_1 = 11;
--- HUD_FLOATING_HELP_TEXT_2 = 12;
--- HUD_CASH_CHANGE = 13;
--- HUD_RETICLE = 14;
--- HUD_SUBTITLE_TEXT = 15;
--- HUD_RADIO_STATIONS = 16;
--- HUD_SAVING_GAME = 17;
--- HUD_GAME_STREAM = 18;
--- HUD_WEAPON_WHEEL = 19;
--- HUD_WEAPON_WHEEL_STATS = 20;
--- MAX_HUD_COMPONENTS = 21;
--- MAX_HUD_WEAPONS = 22;
--- MAX_SCRIPTED_HUD_COMPONENTS = 141;
--- ```
--- **Native**: `IS_HUD_COMPONENT_ACTIVE` (`0xBC4C9EA5391ECC0D`)
---@param id integer
---@return boolean result
function HudStatic.isHudComponentActive(id) end

--- **Native**: `IS_MP_GAMER_TAG_ACTIVE` (`0x4E929E7A5796FD26`)
---@param gamerTagId integer
---@return boolean result
function HudStatic.isMpGamerTagActive(gamerTagId) end

--- **Native**: `IS_MP_GAMER_TAG_FREE` (`0x595B5178E412E199`)
---@param gamerTagId integer
---@return boolean result
function HudStatic.isMpGamerTagFree(gamerTagId) end

--- **Native**: `IS_NAMED_RENDERTARGET_REGISTERED` (`0x78DCDC15C9F116B4`)
---@param name string
---@return boolean result
function HudStatic.isNamedRendertargetRegistered(name) end

--- **Native**: `IS_NAVIGATING_MENU_CONTENT` (`0x4E3CD0EF8A489541`)
---@return any result
function HudStatic.isNavigatingMenuContent() end

--- **Native**: `IS_SCRIPTED_HUD_COMPONENT_ACTIVE` (`0xDD100EB17A94FF65`)
---@param id integer
---@return boolean result
function HudStatic.isScriptedHudComponentActive(id) end

--- **Native**: `IS_SCRIPTED_HUD_COMPONENT_HIDDEN_THIS_FRAME` (`0x09C0403ED9A751C2`)
---@param id integer
---@return boolean result
function HudStatic.isScriptedHudComponentHiddenThisFrame(id) end

--- **Native**: `IS_STREAMING_ADDITIONAL_TEXT` (`0x8B6817B71B85EBF0`)
---@param p0 integer
---@return boolean result
function HudStatic.isStreamingAdditionalText(p0) end

--- ```
--- IS_*
--- ```
--- **Native**: `IS_VALID_MP_GAMER_TAG_MOVIE` (`0xEB709A36958ABE0D`)
---@param gamerTagId integer
---@return boolean result
function HudStatic.isValidMpGamerTagMovie(gamerTagId) end

--- ```
--- Locks the minimap to the specified angle in integer degrees.
--- angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.
--- ```
--- **Native**: `LOCK_MINIMAP_ANGLE` (`0x299FAEBB108AE05B`)
---@param angle integer
function HudStatic.lockMinimapAngle(angle) end

--- ```
--- Locks the minimap to the specified world position.
--- ```
--- **Native**: `LOCK_MINIMAP_POSITION` (`0x1279E861A329E73F`)
---@param x number
---@param y number
function HudStatic.lockMinimapPosition(x, y) end

--- ```
--- Not present in retail version of the game, actual definiton seems to be
--- _LOG_DEBUG_INFO(const char* category, const char* debugText);
--- ```
--- **Native**: `LOG_DEBUG_INFO` (`0x2162C446DFDF38FD`)
---@param p0 string
function HudStatic.logDebugInfo(p0) end

--- **Native**: `OPEN_ONLINE_POLICIES_MENU` (`0x805D7CBB36FD6C4C`)
function HudStatic.openOnlinePoliciesMenu() end

--- ```
--- Shows a menu for reporting UGC content.
--- ```
--- **Native**: `OPEN_REPORTUGC_MENU` (`0x523A590C1A3CC0D3`)
function HudStatic.openReportugcMenu() end

--- Uses the `SOCIAL_CLUB2` scaleform.
--- **Native**: `OPEN_SOCIAL_CLUB_MENU` (`0x75D3691713C3B05A`)
function HudStatic.openSocialClubMenu() end

--- **Native**: `OVERRIDE_MULTIPLAYER_CHAT_COLOUR` (`0xF47E567B3630DD12`)
---@param p0 integer
---@param hudColor integer
function HudStatic.overrideMultiplayerChatColour(p0, hudColor) end

--- **Native**: `OVERRIDE_MULTIPLAYER_CHAT_PREFIX` (`0x6A1738B4323FE2D9`)
---@param gxtEntryHash integer|string
function HudStatic.overrideMultiplayerChatPrefix(gxtEntryHash) end

--- Activates the specified frontend menu context.
---
--- pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'.
---
--- The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.
---
--- The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.
---
--- This basically allows you to hide certain menu sections, or things like instructional buttons.
---
--- See the old description below for more info.
---
--- ***
---
--- > Seems to add/set the current menu context (to show/hide buttons?)
--- > Pausemenu.xml:
--- > `<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>`
--- > Code:
--- >
--- > ```
--- > if (...) {
--- >     sub_bbd34(a_0, 0, "FM_BET_HELP");
--- >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
--- >     UI::OBJECT_DECAL_TOGGLE(${bet_locked});
--- > } else {
--- >     sub_bbd34(a_0, 0, "");
--- >     UI::OBJECT_DECAL_TOGGLE(${bet_available});
--- >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
--- > }
--- > ```
--- >
--- > OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
--- > // Old
--- > Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.
--- **Native**: `PAUSE_MENU_ACTIVATE_CONTEXT` (`0xDD564BDD0472C936`)
---@param hash integer|string Context name hash.
function HudStatic.pauseMenuActivateContext(hash) end

--- Sets current pause menu page/component to the specified value.
--- Available page IDs: https://pastebin.com/qxuhwjPT
--- **Native**: `PAUSE_MENUCEPTION_GO_DEEPER` (`0x77F16B447824DA6C`)
---@param pageId integer
function HudStatic.pauseMenuceptionGoDeeper(pageId) end

--- Forces the Pause Menu to back out of unique pages such as Awards, Unlocks, Key Bindings etc
--- **Native**: `PAUSE_MENUCEPTION_THE_KICK` (`0xCDCA26E80FAECB8F`)
function HudStatic.pauseMenuceptionTheKick() end

--- **Native**: `PAUSE_MENU_DEACTIVATE_CONTEXT` (`0x444D8CF241EC25C5`)
---@param contextHash integer|string
function HudStatic.pauseMenuDeactivateContext(contextHash) end

--- Disables the loading spinner in Pause Menu when switching from one header tab to another.
--- **Native**: `PAUSE_MENU_DISABLE_BUSYSPINNER` (`0x9245E81072704B8A`)
---@param toggle boolean true to disable and false to re-enable the loading icon.
function HudStatic.pauseMenuDisableBusyspinner(toggle) end

--- If mouse is hovering on a slot, it returns the slot's index, else it returns -1.
--- **Native**: `PAUSE_MENU_GET_INDEX_OF_MOUSE_HOVERED_SLOT` (`0x359AF31A4B52F5ED`)
---@return integer result
function HudStatic.pauseMenuGetIndexOfMouseHoveredSlot() end

--- If mouse is hovering on a slot, it returns uniqueid of that slot, else it returns -1.
--- **Native**: `PAUSE_MENU_GET_UNIQUE_ID_OF_MOUSE_HOVERED_SLOT` (`0x13C4B962653A5280`)
---@return integer result
function HudStatic.pauseMenuGetUniqueIdOfMouseHoveredSlot() end

--- **Native**: `PAUSE_MENU_IS_CONTEXT_ACTIVE` (`0x84698AB38D0C6636`)
---@param contextHash integer|string
---@return boolean result
function HudStatic.pauseMenuIsContextActive(contextHash) end

--- **Native**: `PAUSE_MENU_IS_CONTEXT_MENU_ACTIVE` (`0x2A25ADC48F87841F`)
---@return any result
function HudStatic.pauseMenuIsContextMenuActive() end

--- Updates instructional buttons in Pause Menu after menu contexts have been toggled. p0 purpose is currently unknown, only 0 is used in scripts.
--- **Native**: `PAUSE_MENU_REDRAW_INSTRUCTIONAL_BUTTONS` (`0x4895BDEA16E7C080`)
---@param p0 integer
function HudStatic.pauseMenuRedrawInstructionalButtons(p0) end

--- Sets a loading icon in the pause menu.
--- **Native**: `PAUSE_MENU_SET_BUSY_SPINNER` (`0xC78E239AC5B2DDB9`)
---@param bVisible boolean Sets or removes this spinner.
---@param iColumnID integer Location of this spinner (0 - 17). Indexes can be found in `common:\data\ui\frontend.xml`, `PauseMenu\PersistentData\Spinner\Offsets`. If `bVisible` is `false`, this will be ignored.
---@param iSpinnerIndex integer Index of this spinner. Can have a maximum of three spinners at a time.
function HudStatic.pauseMenuSetBusySpinner(bVisible, iColumnID, iSpinnerIndex) end

--- Shows this warning message when trying to switch pause menu header tabs: https://i.imgur.com/8qmfztu.png
--- **Native**: `PAUSE_MENU_SET_WARN_ON_TAB_CHANGE` (`0xF06EBB91A81E09E3`)
---@param setWarn boolean Wether to show the message or not.
function HudStatic.pauseMenuSetWarnOnTabChange(setWarn) end

--- Toggles pause menu map rendering.
--- **Native**: `PAUSE_TOGGLE_FULLSCREEN_MAP` (`0x2DE6C5E2E996F178`)
---@param enabled boolean
function HudStatic.pauseToggleFullscreenMap(enabled) end

--- **Native**: `PRELOAD_BUSYSPINNER` (`0xC65AB383CD91DF98`)
function HudStatic.preloadBusyspinner() end

--- ```
--- Add a BLIP_GALLERY at the specific coordinate. Used in fm_maintain_transition_players to display race track points.
--- ```
--- **Native**: `RACE_GALLERY_ADD_BLIP` (`0x551DF99658DB6EE8`)
---@param coords vector3
---@return any result
function HudStatic.raceGalleryAddBlip(coords) end

--- ```
--- If toggle is true, the map is shown in full screen
--- If toggle is false, the map is shown in normal mode
--- ```
--- **Native**: `RACE_GALLERY_FULLSCREEN` (`0x5354C5BA2EA868A4`)
---@param toggle boolean
function HudStatic.raceGalleryFullscreen(toggle) end

--- ```
--- Sets the sprite of the next BLIP_GALLERY blip, values used in the native scripts: 143 (ObjectiveBlue), 144 (ObjectiveGreen), 145 (ObjectiveRed), 146 (ObjectiveYellow).
--- ```
--- **Native**: `RACE_GALLERY_NEXT_BLIP_SPRITE` (`0x1EAE6DD17B7A5EFA`)
---@param spriteId integer
function HudStatic.raceGalleryNextBlipSprite(spriteId) end

--- **Native**: `REFRESH_WAYPOINT` (`0x81FA173F170560D1`)
function HudStatic.refreshWaypoint() end

--- **Native**: `REGISTER_NAMED_RENDERTARGET` (`0x57D9C12635E25CE3`)
---@param name string
---@param p1 boolean
---@return boolean result
function HudStatic.registerNamedRendertarget(name, p1) end

--- Enables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard if they were disabled using the native below.
---
--- To disable the keys, use [`0xEC9264727EEC0F28`](#\_0xEC9264727EEC0F28).
--- **Native**: `RELEASE_CONTROL_OF_FRONTEND` (`0x14621BB1DF14E2B2`)
function HudStatic.releaseControlOfFrontend() end

--- **Native**: `RELEASE_NAMED_RENDERTARGET` (`0xE9F6FFE837354DD4`)
---@param name string
---@return boolean result
function HudStatic.releaseNamedRendertarget(name) end

--- Forces the map menu to reload.
--- **Native**: `RELOAD_MAP_MENU` (`0x2916A928514C9827`)
function HudStatic.reloadMapMenu() end

--- Removes the gamer tag associated with the provided ID. This does not happen instantly. Use [IS_MP_GAMER_TAG_FREE](#\_0x595B5178E412E199) to determine when the ID is free for reuse.
--- **Native**: `REMOVE_MP_GAMER_TAG` (`0x31698AA80E0223F8`)
---@param gamerTagId integer A player ID with a gamer tag or a fake gamer tag ID.
function HudStatic.removeMpGamerTag(gamerTagId) end

--- **Native**: `REMOVE_MULTIPLAYER_BANK_CASH` (`0xC7C6789AA1CFEDD0`)
function HudStatic.removeMultiplayerBankCash() end

--- ```
--- Removes multiplayer cash hud each frame
--- ```
--- **Native**: `REMOVE_MULTIPLAYER_HUD_CASH` (`0x968F270E39141ECA`)
function HudStatic.removeMultiplayerHudCash() end

--- **Native**: `REMOVE_MULTIPLAYER_WALLET_CASH` (`0x95CF81BD06EE1887`)
function HudStatic.removeMultiplayerWalletCash() end

--- **Native**: `REMOVE_WARNING_MESSAGE_LIST_ITEMS` (`0x6EF54AB721DC6242`)
function HudStatic.removeWarningMessageListItems() end

--- Changes the hud color at a given index (hudColorIndex) by another one (hudColorIndex2).
---
--- HUD colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
--- **Native**: `REPLACE_HUD_COLOUR` (`0x1CCC708F0F850613`)
---@param hudColorIndex integer
---@param hudColorIndex2 integer
function HudStatic.replaceHudColour(hudColorIndex, hudColorIndex2) end

--- Hud colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
--- **Native**: `REPLACE_HUD_COLOUR_WITH_RGBA` (`0xF314CF4F0211894E`)
---@param hudColorIndex integer
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function HudStatic.replaceHudColourWithRgba(hudColorIndex, r, g, b, a) end

--- ```
--- Request a gxt into the passed slot.
--- ```
--- **Native**: `REQUEST_ADDITIONAL_TEXT` (`0x71A78003C8E71424`)
---@param gxt string
---@param slot integer
function HudStatic.requestAdditionalText(gxt, slot) end

--- **Native**: `REQUEST_ADDITIONAL_TEXT_FOR_DLC` (`0x6009F9F1AE90D8A6`)
---@param gxt string
---@param slot integer
function HudStatic.requestAdditionalTextForDlc(gxt, slot) end

--- **Native**: `RESET_GLOBAL_ACTIONSCRIPT_FLAG` (`0xB99C4E4D9499DF29`)
---@param flagIndex integer
function HudStatic.resetGlobalActionscriptFlag(flagIndex) end

--- **Native**: `RESET_HUD_COMPONENT_VALUES` (`0x450930E616475D0D`)
---@param id integer
function HudStatic.resetHudComponentValues(id) end

--- **Native**: `RESET_RETICULE_VALUES` (`0x12782CE0A636E9F0`)
function HudStatic.resetReticuleValues() end

--- Changes the current frontend menu to the desired frontend menu version.
--- **Native**: `RESTART_FRONTEND_MENU` (`0x10706DC6AD2D49C0`)
---@param menuHash integer|string Hash of the frontend menu. See [`ACTIVATE_FRONTEND_MENU`](#\_0xEF01D36B9C9D0C7B) for the list of available menus.
---@param highlightedTab integer Menu ID (from PauseMenuLUT (in pause_menu_sp_content.gfx files), but the value - 1000) of which tab to have highlighted on the header, or -1.
function HudStatic.restartFrontendMenu(menuHash, highlightedTab) end

--- **Native**: `SET_ABILITY_BAR_VALUE` (`0x9969599CCFF5D85E`)
---@param value number
---@param maxValue number
function HudStatic.setAbilityBarValue(value, maxValue) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_ABILITY_BAR_VISIBILITY_IN_MULTIPLAYER` (`0x1DFEDD15019315A9`)
---@param visible boolean
function HudStatic.setAbilityBarVisibilityInMultiplayer(visible) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `SET_ALLOW_ABILITY_BAR_IN_MULTIPLAYER` (`0x889329C80FE5963C`)
---@param toggle boolean
function HudStatic.setAllowAbilityBarInMultiplayer(toggle) end

--- **NOTE:** This must be called before you open the text input box.
--- **Native**: `SET_ALLOW_COMMA_ON_TEXT_INPUT` (`0x577599CCED639CA2`)
---@param allow boolean Toggles if the comma can be used in conjuction with the `filename` text input box type.
function HudStatic.setAllowCommaOnTextInput(allow) end

--- Toggles the big minimap state like in GTA:Online.
---
--- To get the current state of the minimap, use [`IS_BIGMAP_ACTIVE`](#\_0xFFF65C63).
--- **Native**: `SET_BIGMAP_ACTIVE` (`0x231C8F89D0539D8F`)
---@param toggleBigMap boolean Enable or disable the expanded minimap.
---@param showFullMap boolean Enable or disable the full map from being shown on the minimap, requires p0 to be true.
function HudStatic.setBigmapActive(toggleBigMap, showFullMap) end

--- **Native**: `SET_COLOUR_OF_NEXT_TEXT_COMPONENT` (`0x39BBF623FC803EAC`)
---@param hudColor integer
function HudStatic.setColourOfNextTextComponent(hudColor) end

--- Set a custom color for the MP HUD, providing a way to customize the HUD's appearance similar to character color changes in MP.
---
--- ```cpp
--- enum eHudColours {
---     HUD_COLOUR_PURE_WHITE = 0,
---     HUD_COLOUR_WHITE = 1,
---     HUD_COLOUR_BLACK = 2,
---     HUD_COLOUR_GREY = 3,
---     HUD_COLOUR_GREYLIGHT = 4,
---     HUD_COLOUR_GREYDARK = 5,
---     HUD_COLOUR_RED = 6,
---     HUD_COLOUR_REDLIGHT = 7,
---     HUD_COLOUR_REDDARK = 8,
---     HUD_COLOUR_BLUE = 9,
---     HUD_COLOUR_BLUELIGHT = 10,
---     HUD_COLOUR_BLUEDARK = 11,
---     HUD_COLOUR_YELLOW = 12,
---     HUD_COLOUR_YELLOWLIGHT = 13,
---     HUD_COLOUR_YELLOWDARK = 14,
---     HUD_COLOUR_ORANGE = 15,
---     HUD_COLOUR_ORANGELIGHT = 16,
---     HUD_COLOUR_ORANGEDARK = 17,
---     HUD_COLOUR_GREEN = 18,
---     HUD_COLOUR_GREENLIGHT = 19,
---     HUD_COLOUR_GREENDARK = 20,
---     HUD_COLOUR_PURPLE = 21,
---     HUD_COLOUR_PURPLELIGHT = 22,
---     HUD_COLOUR_PURPLEDARK = 23,
---     HUD_COLOUR_PINK = 24,
---     HUD_COLOUR_STAR = 25,
---     HUD_COLOUR_STARLIGHT = 26,
---     HUD_COLOUR_STARDARK = 27,
---     HUD_COLOUR_NET_PLAYER1 = 28,
---     HUD_COLOUR_NET_PLAYER2 = 29,
---     HUD_COLOUR_NET_PLAYER3 = 30,
---     HUD_COLOUR_NET_PLAYER4 = 31,
---     HUD_COLOUR_NET_PLAYER5 = 32,
---     HUD_COLOUR_NET_PLAYER6 = 33,
---     HUD_COLOUR_NET_PLAYER7 = 34,
---     HUD_COLOUR_NET_PLAYER8 = 35,
--- [...]
--- **Native**: `SET_CUSTOM_MP_HUD_COLOR` (`0x2ACCB195F3CCD9DE`)
---@param hudColorId fx.Enum.HudColours|integer The ID of the custom HUD color. Use -1 (`HUD_COLOUR_INVALID`) to clear the custom color. Refer to the `eHudColours` enum for valid color IDs.
function HudStatic.setCustomMpHudColor(hudColorId) end

--- ```
--- SET_*
--- ```
--- **Native**: `SET_DIRECTOR_MODE_CLEAR_TRIGGERED_FLAG` (`0x2632482FD6B9AB87`)
function HudStatic.setDirectorModeClearTriggeredFlag() end

--- Overrides the position of the main player blip for the current frame.
--- **Native**: `SET_FAKE_PAUSEMAP_PLAYER_POSITION_THIS_FRAME` (`0x77E2DD177910E1CF`)
---@param x number X coord of the position.
---@param y number Y coord of the position.
function HudStatic.setFakePausemapPlayerPositionThisFrame(x, y) end

--- **Native**: `SET_FLOATING_HELP_TEXT_SCREEN_POSITION` (`0x7679CC1BCEBE3D4C`)
---@param hudIndex integer
---@param x number
---@param y number
function HudStatic.setFloatingHelpTextScreenPosition(hudIndex, x, y) end

--- ### Arrow Positions
---
--- *   0 = Off / No arrow
--- *   1 = Top
--- *   2 = Left
--- *   3 = Bottom
--- *   4 = Right
---
--- ### Note
---
--- Any numeric value greater than 4 will result in a right arrow (Index 4)
---
--- ### Important
---
--- Needs to be called every frame
---
--- ![Preview of the provided example code](https://forum.cfx.re/uploads/default/original/4X/7/f/3/7f319bc93c3a00b8829bd4ac8dddc235fbf3a9ef.png)
--- **Native**: `SET_FLOATING_HELP_TEXT_STYLE` (`0x788E7FD431BD67F1`)
---@param hudIndex integer The hud index for the floating help message
---@param style integer Value 0 won't show an arrow at all. Values 1, 2 and -2 will display an arrow.
---@param hudColor integer https://docs.fivem.net/docs/game-references/hud-colors/
---@param alpha integer Value for the help box opacity, from 0-255. Anything greater will simply ignore the alpha value. Always 191 in R\* scripts.
---@param arrowPosition integer Used to set the arrow positon. No value will hide the arrow
---@param boxOffset integer Offset for the floating help box. Note: Arrow stays fixed
function HudStatic.setFloatingHelpTextStyle(hudIndex, style, hudColor, alpha, arrowPosition, boxOffset) end

--- **Native**: `SET_FLOATING_HELP_TEXT_TO_ENTITY` (`0xB094BC1DB4018240`)
---@param hudIndex integer
---@param entity fx.Entity|integer
---@param offsetX number
---@param offsetY number
function HudStatic.setFloatingHelpTextToEntity(hudIndex, entity, offsetX, offsetY) end

--- **Native**: `SET_FLOATING_HELP_TEXT_WORLD_POSITION` (`0x784BA7E0ECEB4178`)
---@param hudIndex integer
---@param coords vector3
function HudStatic.setFloatingHelpTextWorldPosition(hudIndex, coords) end

--- **Native**: `SET_FRONTEND_ACTIVE` (`0x745711A75AB09277`)
---@param active boolean
function HudStatic.setFrontendActive(active) end

--- **Native**: `SET_GPS_CUSTOM_ROUTE_RENDER` (`0x900086F371220B6F`)
---@param toggle boolean
---@param radarThickness integer The width of the GPS route on the radar
---@param mapThickness integer The width of the GPS route on the map
function HudStatic.setGpsCustomRouteRender(toggle, radarThickness, mapThickness) end

--- ```
--- Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.
--- Doesn't seem like the flags are actually read by the game at all.
--- ```
--- **Native**: `SET_GPS_FLAGS` (`0x5B440763A4C8D15B`)
---@param p0 integer
---@param p1 number
function HudStatic.setGpsFlags(p0, p1) end

--- **Native**: `SET_GPS_FLASHES` (`0x320D0E0D936A0E9B`)
---@param toggle boolean
function HudStatic.setGpsFlashes(toggle) end

--- **Native**: `SET_GPS_MULTI_ROUTE_RENDER` (`0x3DDA37128DD1ACA8`)
---@param toggle boolean
function HudStatic.setGpsMultiRouteRender(toggle) end

--- **Native**: `SET_HEALTH_HUD_DISPLAY_VALUES` (`0x3F5CC444DCAAA8F2`)
---@param health integer
---@param capacity integer
---@param wasAdded boolean
function HudStatic.setHealthHudDisplayValues(health, capacity, wasAdded) end

--- **Native**: `SET_HELP_MESSAGE_TEXT_STYLE` (`0xB9C362BABECDDC7A`)
---@param style integer
---@param hudColor integer
---@param alpha integer
---@param p3 integer
---@param p4 integer
function HudStatic.setHelpMessageTextStyle(style, hudColor, alpha, p3, p4) end

--- **Native**: `SET_HUD_COMPONENT_POSITION` (`0xAABB1F56E2A17CED`)
---@param id integer
---@param x number
---@param y number
function HudStatic.setHudComponentPosition(id, x, y) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_INTERIOR_ZOOM_LEVEL_DECREASED` (`0x7EC8ABA5E74B3D7A`)
---@param toggle boolean
function HudStatic.setInteriorZoomLevelDecreased(toggle) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_INTERIOR_ZOOM_LEVEL_INCREASED` (`0x504DFE62A1692296`)
---@param toggle boolean
function HudStatic.setInteriorZoomLevelIncreased(toggle) end

--- **Native**: `SET_MAIN_PLAYER_BLIP_COLOUR` (`0x7B21E0BB01E8224A`)
---@param color integer
function HudStatic.setMainPlayerBlipColour(color) end

--- **Native**: `SET_MAX_ARMOUR_HUD_DISPLAY` (`0x06A320535F5F0248`)
---@param maximumValue integer
function HudStatic.setMaxArmourHudDisplay(maximumValue) end

--- **Native**: `SET_MAX_HEALTH_HUD_DISPLAY` (`0x975D66A0BC17064C`)
---@param maximumValue integer
function HudStatic.setMaxHealthHudDisplay(maximumValue) end

--- ```
--- Argument must be 0.0f or above 38.0f, or it will be ignored.
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SET_MINIMAP_ALTITUDE_INDICATOR_LEVEL` (`0xD201F3FF917A506D`)
---@param altitude number
---@param p1 boolean
function HudStatic.setMinimapAltitudeIndicatorLevel(altitude, p1) end

--- **Native**: `SET_MINIMAP_BLOCK_WAYPOINT` (`0x58FADDED207897DC`)
---@param toggle boolean
function HudStatic.setMinimapBlockWaypoint(toggle) end

--- This native is used to colorize/toggle certain map components like the army base.
---
--- Component IDs 6 through 14 are used by the freemode event King of the Castle in GTA Online.
---
--- ### An incomplete list of component IDs:
---
--- *   **0**: Los Santos International Airport yellow runway markers
--- *   **1**: Sandy Shores Airfield yellow runway markers
--- *   **2**: McKenzie Field yellow runway markers
--- *   **6**: Vespucci Beach lifeguard building
--- *   **7**: Top level zone of Alien Camp (Hippy Camp)
--- *   **8**: Paleto Bay fire station drill tower
--- *   **9** Land Act Dam tower
--- *   **10** Pala Springs Aerial Tramway
--- *   **11** Galileo Observatory power unit
--- *   **12** Small zone (empty "interior") near Central Los Santos Medical Center
--- *   **13** Richman Mansion grotto
--- *   **14** 2 Alien Camp (Hippy Camp) circles
--- *   **15** Fort Zancudo
--- **Native**: `SET_MINIMAP_COMPONENT` (`0x75A9A10948D1DEA6`)
---@param componentID integer The component ID to change.
---@param toggle boolean True to enable/colorize, false to disable.
---@param hudColor integer The hudcolor index, the list of hud colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/).
---@return integer result Hardcoded to always return 1 (int)
function HudStatic.setMinimapComponent(componentID, toggle, hudColor) end

--- **Native**: `SET_MINIMAP_FOW_REVEAL_COORDINATE` (`0x0923DBF87DFF735E`)
---@param coords vector3
function HudStatic.setMinimapFowRevealCoordinate(coords) end

--- Not much is known so far on what it does *exactly*.
--- All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.
---
--- You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
--- You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.
---
--- Use [`SET_MINIMAP_GOLF_COURSE_OFF()`](#\_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
--- **Native**: `SET_MINIMAP_GOLF_COURSE` (`0x71BDB63DBAF8DA59`)
---@param hole integer The ID of the hole to draw on the map. ID starts with 1 for hole 1, 2 for hole 2, etc. 0 disables the golf map behaviour.
function HudStatic.setMinimapGolfCourse(hole) end

--- **Native**: `SET_MINIMAP_GOLF_COURSE_OFF` (`0x35EDD5B2E3FF01C0`)
function HudStatic.setMinimapGolfCourseOff() end

--- ```
--- If true, the entire map will be revealed.
--- ```
--- **Native**: `SET_MINIMAP_HIDE_FOW` (`0xF8DEE0A5600CBB93`)
---@param toggle boolean
function HudStatic.setMinimapHideFow(toggle) end

--- ```
--- Toggles the North Yankton map
--- ```
--- **Native**: `SET_MINIMAP_IN_PROLOGUE` (`0x9133955F1A2DA957`)
---@param toggle boolean
function HudStatic.setMinimapInPrologue(toggle) end

--- **Native**: `SET_MINIMAP_IN_SPECTATOR_MODE` (`0x1A5CD7752DD28CD3`)
---@param toggle boolean
---@param ped fx.Ped|integer
function HudStatic.setMinimapInSpectatorMode(toggle, ped) end

--- Enables or disables the sonar sweep animation on the minimap.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `SET_MINIMAP_SONAR_SWEEP` (`0x6B50FC8749632EC1`)
---@param toggle boolean A boolean value where `true` activates the sonar sweep animation on the minimap, and `false` turns it off.
function HudStatic.setMinimapSonarSweep(toggle) end

--- **Native**: `SET_MISSION_NAME` (`0x5F28ECF5FC84772F`)
---@param p0 boolean
---@param name string
function HudStatic.setMissionName(p0, name) end

--- **Native**: `SET_MISSION_NAME_2` (`0xE45087D85F468BC2`)
---@param p0 boolean
---@param name string
function HudStatic.setMissionName2(p0, name) end

--- Changes the mouse style.
---
--- ```cpp
--- enum eMousePointerStyle {
--- 	ARROW = 1,
--- 	ARROW_DIMMED = 2,
--- 	HAND_OPEN = 3,
--- 	HAND_GRAB = 4,
--- 	HAND_MIDDLE_FINGER = 5,
--- 	ARROW_LEFT = 6,
--- 	ARROW_RIGHT = 7,
--- 	ARROW_UP = 8,
--- 	ARROW_DOWN = 9,
--- 	ARROW_TRIMMING = 10,
--- 	ARROW_PLUS = 11,
--- 	ARROW_MINUS = 12
--- };
--- ```
--- **Native**: `SET_MOUSE_CURSOR_STYLE` (`0x8DB8CFFD58B62552`)
---@param style fx.Enum.MousePointerStyle|integer Which sprite to change to, see declared enum `eMousePointerStyle`.
function HudStatic.setMouseCursorStyle(style) end

--- Sets the mouse pointer to be active on current frame.
--- **Native**: `SET_MOUSE_CURSOR_THIS_FRAME` (`0xAAE7CE1D63167423`)
function HudStatic.setMouseCursorThisFrame() end

--- Toggles the visibility of the cursor. Do note that if the game loses focus and then regains it, the cursor will become visible again.
--- **Native**: `SET_MOUSE_CURSOR_VISIBLE` (`0x98215325A695E78A`)
---@param isVisible boolean If the mouse cursor is visible
function HudStatic.setMouseCursorVisible(isVisible) end

--- ```
--- Sets flag's sprite transparency. 0-255.
--- ```
--- **Native**: `SET_MP_GAMER_TAG_ALPHA` (`0xD48FE545CD46F857`)
---@param gamerTagId integer
---@param component integer
---@param alpha integer
function HudStatic.setMpGamerTagAlpha(gamerTagId, component, alpha) end

--- **Native**: `SET_MP_GAMER_TAG_BIG_TEXT` (`0x7B7723747CCB55B6`)
---@param gamerTagId integer
---@param string_ string
function HudStatic.setMpGamerTagBigText(gamerTagId, string_) end

--- Sets a gamer tag's component colour
--- **Native**: `SET_MP_GAMER_TAG_COLOUR` (`0x613ED644950626AE`)
---@param gamerTagId integer a gamerTagId obtained using for example: [`CREATE_FAKE_MP_GAMER_TAG`](#\_0xBFEFE3321A3F5015).
---@param component integer a component id, see the full list here: [link](https://docs.fivem.net/docs/game-references/gamer-tags/#components-list)
---@param hudColorIndex integer a hud color index, see the full list here: [link](https://docs.fivem.net/docs/game-references/hud-colors/)
function HudStatic.setMpGamerTagColour(gamerTagId, component, hudColorIndex) end

--- By default, the player health value shown by a gamer tag's health bar is synchronised with the health of the ped it is attached to.
--- This native disables that behaviour, allowing [`_SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH`](#\_0x1563FE35E9928E67) to have an effect.
--- **Native**: `SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC` (`0xD29EC58C2F6B5014`)
---@param gamerTagId integer
---@param toggle boolean If player health synchronisation should be disabled.
function HudStatic.setMpGamerTagDisablePlayerHealthSync(gamerTagId, toggle) end

--- Should be enabled as component (2). Has 0 alpha by default.
--- **Native**: `SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR` (`0x3158C77A7E888AB4`)
---@param gamerTagId integer a gamerTagId obtained using for example: [CREATE_FAKE_MP_GAMER_TAG](https://runtime.fivem.net/doc/natives/?\_0xBFEFE3321A3F5015)
---@param hudColorIndex integer a hud color index, see the full list here: [link](https://docs.fivem.net/docs/game-references/hud-colors/)
function HudStatic.setMpGamerTagHealthBarColour(gamerTagId, hudColorIndex) end

--- ```
--- displays wanted star above head
--- ```
--- **Native**: `SET_MP_GAMER_TAG_MP_BAG_LARGE_COUNT` (`0x9C16459B2324B2CF`)
---@param gamerTagId integer
---@param count integer
function HudStatic.setMpGamerTagMpBagLargeCount(gamerTagId, count) end

--- **Native**: `SET_MP_GAMER_TAG_NAME` (`0xDEA2B8283BAA3944`)
---@param gamerTagId integer
---@param string_ string
function HudStatic.setMpGamerTagName(gamerTagId, string_) end

--- Manually sets the player health value for a gamer tag, using the maximum health to calculate what percentage of the bar should be filled.
--- Has no effect unless [\_SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC](#\_0xD29EC58C2F6B5014) has been called prior to disable synchronisation with the attached ped.
--- **Native**: `SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH` (`0x1563FE35E9928E67`)
---@param gamerTagId integer
---@param health integer The amount the health the player has.
---@param maximumHealth integer The maximum amount of health the player could have.
function HudStatic.setMpGamerTagOverridePlayerHealth(gamerTagId, health, maximumHealth) end

--- Sets the health bar of a gamer tag to show the health of the last (or current) vehicle of the ped the gamer tag is attached to.
--- The vehicle health value is stored separate from the player health and using it won't clear any player health overrides.
--- **Native**: `SET_MP_GAMER_TAG_USE_VEHICLE_HEALTH` (`0xA67F9C46D612B6F1`)
---@param gamerTagId integer
---@param toggle boolean If vehicle health should be displayed instead of player health.
function HudStatic.setMpGamerTagUseVehicleHealth(gamerTagId, toggle) end

--- ```cpp
--- enum eMpGamerTagComponent
--- {
--- 	MP_TAG_GAMER_NAME = 0,
--- 	MP_TAG_CREW_TAG = 1,
--- 	MP_TAG_HEALTH_ARMOUR = 2,
--- 	MP_TAG_BIG_TEXT = 3,
--- 	MP_TAG_AUDIO_ICON = 4,
--- 	MP_TAG_USING_MENU = 5,
--- 	MP_TAG_PASSIVE_MODE = 6,
--- 	MP_TAG_WANTED_STARS = 7,
--- 	MP_TAG_DRIVER = 8,
--- 	MP_TAG_CO_DRIVER = 9,
--- 	MP_TAG_TAGGED = 10,
--- 	MP_TAG_GAMER_NAME_NEARBY = 11,
--- 	MP_TAG_ARROW = 12,
--- 	MP_TAG_PACKAGES = 13,
--- 	MP_TAG_INV_IF_PED_FOLLOWING = 14,
--- 	MP_TAG_RANK_TEXT = 15,
--- 	MP_TAG_TYPING = 16,
--- 	MP_TAG_BAG_LARGE = 17,
--- 	MP_TAG_ARROW = 18,
--- 	MP_TAG_GANG_CEO = 19,
--- 	MP_TAG_GANG_BIKER = 20,
--- 	MP_TAG_BIKER_ARROW = 21,
--- 	MP_TAG_MC_ROLE_PRESIDENT = 22,
--- 	MP_TAG_MC_ROLE_VICE_PRESIDENT = 23,
--- 	MP_TAG_MC_ROLE_ROAD_CAPTAIN = 24,
--- 	MP_TAG_MC_ROLE_SARGEANT = 25,
--- 	MP_TAG_MC_ROLE_ENFORCER = 26,
--- 	MP_TAG_MC_ROLE_PROSPECT = 27,
--- 	MP_TAG_TRANSMITTER = 28,
--- 	MP_TAG_BOMB = 29
--- };
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `SET_MP_GAMER_TAG_VISIBILITY` (`0x63BB75ABEDC1F6A0`)
---@param gamerTagId fx.Enum.MpGamerTagComponent|integer
---@param component fx.Enum.MpGamerTagComponent|integer
---@param toggle boolean
function HudStatic.setMpGamerTagVisibility(gamerTagId, component, toggle) end

--- Sets the visibility of all components of the gamer tag to the specified value.
--- **Native**: `SET_MP_GAMER_TAG_VISIBILITY_ALL` (`0xEE76FF7E6A0166B0`)
---@param gamerTagId integer
---@param toggle boolean The new visibility state of all gamer tag components.
function HudStatic.setMpGamerTagVisibilityAll(gamerTagId, toggle) end

--- ```
--- displays wanted star above head
--- ```
--- **Native**: `SET_MP_GAMER_TAG_WANTED_LEVEL` (`0xCF228E2AA03099C3`)
---@param gamerTagId integer
---@param wantedlvl integer
function HudStatic.setMpGamerTagWantedLevel(gamerTagId, wantedlvl) end

--- Preview image:
---
--- ![](https://i.imgur.com/1BTmdyv.png)
---
--- To change the bank balance use [`STAT_SET_INT`](#\_0xB3271D7AB655B441) with "BANK_BALANCE" to whatever value you need to.
--- **Native**: `SET_MULTIPLAYER_BANK_CASH` (`0xDD21B55DF695CD0A`)
function HudStatic.setMultiplayerBankCash() end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `SET_MULTIPLAYER_HUD_CASH` (`0xFD1D220394BCB824`)
---@param p0 integer
---@param p1 integer
function HudStatic.setMultiplayerHudCash(p0, p1) end

--- Preview image:
---
--- ![](https://i.imgur.com/1BTmdyv.png)
---
--- To change money value use [`STAT_SET_INT`](#\_0xB3271D7AB655B441) with "MP0\_WALLET_BALANCE" to whatever value you need to.
--- **Native**: `SET_MULTIPLAYER_WALLET_CASH` (`0xC2D15BEF167E27BC`)
function HudStatic.setMultiplayerWalletCash() end

--- **Native**: `SET_NEW_WAYPOINT` (`0xFE43368D2AA4F2FC`)
---@param x number
---@param y number
function HudStatic.setNewWaypoint(x, y) end

--- Toggles the light state for the pause menu ped in frontend menus.
---
--- This is used by R\* in combination with [`SET_PAUSE_MENU_PED_SLEEP_STATE`](#\_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.
---
--- Example:
--- On: ![lights on](https://vespura.com/hi/i/2019-04-01\_16-09\_540ee\_1015.png)
--- Off: ![lights off](https://vespura.com/hi/i/2019-04-01\_16-10\_8b5e7\_1016.png)
--- **Native**: `SET_PAUSE_MENU_PED_LIGHTING` (`0x3CA6050692BC61B0`)
---@param state boolean True enables the light, false disables the light.
function HudStatic.setPauseMenuPedLighting(state) end

--- Toggles the pause menu ped sleep state for frontend menus.
---
--- [Example GIF](https://vespura.com/hi/i/2019-04-01\_15-51\_8ed38\_1014.gif)
--- **Native**: `SET_PAUSE_MENU_PED_SLEEP_STATE` (`0xECF128344E9FF9F1`)
---@param state boolean 0 will make the ped slowly fall asleep, 1 will slowly wake the ped up.
function HudStatic.setPauseMenuPedSleepState(state) end

--- ```
--- If toggle is true, hides special ability bar / character name in the pause menu
--- If toggle is false, shows special ability bar / character name in the pause menu
--- SET_PLAYER_*
--- ```
--- **Native**: `SET_PLAYER_IS_IN_DIRECTOR_MODE` (`0x808519373FD336A3`)
---@param toggle boolean
function HudStatic.setPlayerIsInDirectorMode(toggle) end

--- **Native**: `SET_RACE_TRACK_RENDER` (`0x1EAC5F91BCBC5073`)
---@param toggle boolean
function HudStatic.setRaceTrackRender(toggle) end

--- **Native**: `SET_RADAR_AS_EXTERIOR_THIS_FRAME` (`0xE81B7D2A3DAB2D81`)
function HudStatic.setRadarAsExteriorThisFrame() end

--- ```
--- List of interior hashes: pastebin.com/1FUyXNqY
--- Not for every interior zoom > 0 available.
--- ```
--- **Native**: `SET_RADAR_AS_INTERIOR_THIS_FRAME` (`0x59E727A1C9D3E31A`)
---@param interior integer|string
---@param x number
---@param y number
---@param heading integer
---@param zoom integer
function HudStatic.setRadarAsInteriorThisFrame(interior, x, y, heading, zoom) end

--- ```
--- zoomLevel ranges from 0 to 200
--- ```
--- **Native**: `SET_RADAR_ZOOM` (`0x096EF57A0C999BBA`)
---@param zoomLevel integer
function HudStatic.setRadarZoom(zoomLevel) end

--- **Native**: `SET_RADAR_ZOOM_PRECISE` (`0xBD12C5EEE184C337`)
---@param zoom number
function HudStatic.setRadarZoomPrecise(zoom) end

--- **Native**: `SET_RADAR_ZOOM_TO_DISTANCE` (`0xCB7CC0D58405AD41`)
---@param zoom number
function HudStatic.setRadarZoomToDistance(zoom) end

--- ```
--- Sets the color of HUD_COLOUR_SCRIPT_VARIABLE_2
--- ```
--- **Native**: `SET_SCRIPT_VARIABLE_2_HUD_COLOUR` (`0x16A304E6CB2BFAB9`)
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function HudStatic.setScriptVariable2HudColour(r, g, b, a) end

--- ```
--- Sets the color of HUD_COLOUR_SCRIPT_VARIABLE
--- ```
--- **Native**: `SET_SCRIPT_VARIABLE_HUD_COLOUR` (`0xD68A5FF8A3A89874`)
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function HudStatic.setScriptVariableHudColour(r, g, b, a) end

--- ```
--- HUD::SET_SOCIAL_CLUB_TOUR("Gallery");
--- HUD::SET_SOCIAL_CLUB_TOUR("Missions");
--- HUD::SET_SOCIAL_CLUB_TOUR("General");
--- HUD::SET_SOCIAL_CLUB_TOUR("Playlists");
--- ```
--- **Native**: `SET_SOCIAL_CLUB_TOUR` (`0x9E778248D6685FE0`)
---@param name string
function HudStatic.setSocialClubTour(name) end

--- **Native**: `SET_TEXT_CENTRE` (`0xC02F4DBFB51D988B`)
---@param align boolean
function HudStatic.setTextCentre(align) end

--- ```
--- colors you input not same as you think?
--- A: for some reason its R B G A
--- ```
--- **Native**: `SET_TEXT_COLOUR` (`0xBE6B23FFA53FB442`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function HudStatic.setTextColour(red, green, blue, alpha) end

--- distance - shadow distance in pixels, both horizontal and vertical
--- r, g, b, a - color
--- **Native**: `SET_TEXT_DROPSHADOW` (`0x465C84BC39F1C351`)
---@param distance integer Shadow distance in pixels, both horizontal and vertical.
---@param r integer Red color.
---@param g integer Green color.
---@param b integer Blue color.
---@param a integer Alpha.
function HudStatic.setTextDropshadow(distance, r, g, b, a) end

--- **Native**: `SET_TEXT_DROP_SHADOW` (`0x1CA3E9EAC9D93E5E`)
function HudStatic.setTextDropShadow() end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `SET_TEXT_EDGE` (`0x441603240D202FA6`)
---@param p0 integer
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function HudStatic.setTextEdge(p0, r, g, b, a) end

--- ```cpp
--- enum eTextFonts
--- {
---     FONT_STANDARD = 0,
---     FONT_CURSIVE = 1,
---     FONT_ROCKSTAR_TAG = 2,
---     FONT_LEADERBOAR0D = 3,
---     FONT_CONDENSED = 4,
---     FONT_STYLE_FIXED_WIDTH_NUMBERS = 5,
---     FONT_CONDENSED_NOT_GAMERNAME = 6,
---     FONT_STYLE_PRICEDOWN = 7,
---     FONT_STYLE_TAXI = 8,
--- }
--- ```
--- **Native**: `SET_TEXT_FONT` (`0x66E0276CC5F6B9DA`)
---@param fontType fx.Enum.TextFonts|integer
function HudStatic.setTextFont(fontType) end

--- Toggles if the text input box can be opened with [`DISPLAY_ONSCREEN_KEYBOARD`](#\_0x00DC833F2568DBF6).
--- **Native**: `SET_TEXT_INPUT_BOX_ENABLED` (`0x1185A8087587322C`)
---@param state boolean
function HudStatic.setTextInputBoxEnabled(state) end

--- ```
--- Types -
--- 0: Center-Justify
--- 1: Left-Justify
--- 2: Right-Justify
--- Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen
--- ```
--- **Native**: `SET_TEXT_JUSTIFICATION` (`0x4E096588B13FFECA`)
---@param justifyType integer
function HudStatic.setTextJustification(justifyType) end

--- **Native**: `SET_TEXT_LEADING` (`0xA50ABC31E3CDFAFF`)
---@param p0 integer
function HudStatic.setTextLeading(p0) end

--- **Native**: `SET_TEXT_OUTLINE` (`0x2513DFB0FB8400FE`)
function HudStatic.setTextOutline() end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `SET_TEXT_PROPORTIONAL` (`0x038C1F517D7FDCF8`)
---@param p0 boolean
function HudStatic.setTextProportional(p0) end

--- **Native**: `SET_TEXT_RENDER_ID` (`0x5F15302936E07111`)
---@param renderId integer
function HudStatic.setTextRenderId(renderId) end

--- **Native**: `SET_TEXT_RIGHT_JUSTIFY` (`0x6B3C4650BC8BEE47`)
---@param toggle boolean
function HudStatic.setTextRightJustify(toggle) end

--- ```
--- Size range : 0F to 1.0F
--- p0 is unknown and doesn't seem to have an effect, yet in the game scripts it changes to 1.0F sometimes.
--- ```
--- **Native**: `SET_TEXT_SCALE` (`0x07C837F9A01C34C9`)
---@param scale number
---@param size number
function HudStatic.setTextScale(scale, size) end

--- ```
--- It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.
--- start - left boundry on screen position (0.0 - 1.0)
--- end - right boundry on screen position (0.0 - 1.0)
--- ```
--- **Native**: `SET_TEXT_WRAP` (`0x63145D9C883A1A70`)
---@param start number
---@param end_ number
function HudStatic.setTextWrap(start, end_) end

--- Switches the display of the in-game minimap to the Cayo Perico map. This native needs to be called every frame to maintain the toggled state effectively.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `SET_USE_ISLAND_MAP` (`0x5E1460624D194A38`)
---@param toggle boolean A boolean value where `true` switches the minimap to the Cayo Perico map, and `false` reverts it to the standard map.
function HudStatic.setUseIslandMap(toggle) end

--- Sets a global mode which makes the pause menu map show 'Destination' instead of 'Waypoint' in the key legend on the
--- bottom of the screen.
---
--- <!--
---
--- Name guess:
---
---   - alphabetical function order, below [SET_USER_RADIO_CONTROL_ENABLED, SET_USE_HI_DOF], above SET_VARIABLE_ON_SOUND.
---
--- -->
--- **Native**: `SET_USE_WAYPOINT_AS_DESTINATION` (`0x6CDD58146A436083`)
---@param toggle boolean `true` to show 'Destination', `false` to show 'Waypoint' (the default)
function HudStatic.setUseWaypointAsDestination(toggle) end

--- ```cpp
--- enum eInstructionalButtonTypes
--- {
---     NONE = 0,
---     SELECT = 1,
---     OK = 2,
---     YES = 4,
---     BACK = 8,
---     BACK_SELECT = 9,
---     BACK_OK = 10,
---     BACK_YES = 12,
---     CANCEL = 16,
---     CANCEL_SELECT = 17,
---     CANCEL_OK = 18,
---     CANCEL_YES = 20,
---     NO = 32,
---     NO_SELECT = 33,
---     NO_OK = 34,
---     YES_NO = 36,
---     RETRY = 64,
---     RETRY_SELECT = 65,
---     RETRY_OK = 66,
---     RETRY_YES = 68,
---     RETRY_BACK = 72,
---     RETRY_BACK_SELECT = 73,
---     RETRY_BACK_OK = 74,
---     RETRY_BACK_YES = 76,
---     RETRY_CANCEL = 80,
---     RETRY_CANCEL_SELECT = 81,
---     RETRY_CANCEL_OK = 82,
---     RETRY_CANCEL_YES = 84,
---     SKIP = 256,
---     SKIP_SELECT = 257,
---     SKIP_OK = 258,
---     SKIP_YES = 260,
---     SKIP_BACK = 264,
---     SKIP_BACK_SELECT = 265,
---     SKIP_BACK_OK = 266,
---     SKIP_BACK_YES = 268,
---     SKIP_CANCEL = 272,
--- [...]
--- **Native**: `SET_WARNING_MESSAGE` (`0x7B1776B3B53F8D74`)
---@param entryLine1 string The text label to display as the first line of the warning message.
---@param instructionalKey fx.Enum.InstructionalButtonTypes|integer This is an enum, check the description for a list.
---@param entryLine2 string The text label to display as the second line of the warning message.
---@param p3 boolean Purpose unknown.
---@param p4 integer Purpose unknown.
---@param background string Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
---@param p6 string Purpose unknown.
---@param showBg boolean Purpose unknown.
---@param errorCode integer When not 0, adds a field displaying the value as 'error code' to the warning message.
function HudStatic.setWarningMessage(entryLine1, instructionalKey, entryLine2, p3, p4, background, p6, showBg, errorCode) end

--- ```
--- Param names copied from the corresponding scaleform function "SET_LIST_ROW"
--- ```
--- **Native**: `SET_WARNING_MESSAGE_LIST_ROW` (`0x0C5A80A9E096D529`)
---@param index integer
---@param name string
---@param cash integer
---@param rp integer
---@param lvl integer
---@param colour integer
---@return boolean result
function HudStatic.setWarningMessageListRow(index, name, cash, rp, lvl, colour) end

--- instructionalKey enum list:
---
--- ```
--- Buttons = {
---       Empty = 0,
---       Select = 1, -- (RETURN)
---       Ok = 2, -- (RETURN)
---       Yes = 4, -- (RETURN)
---       Back = 8, -- (ESC)
---       Cancel = 16, -- (ESC)
---       No = 32, -- (ESC)
---       RetrySpace = 64, -- (SPACE)
---       Restart = 128, -- (SPACE)
---       Skip = 256, -- (SPACE)
---       Quit = 512, -- (ESC)
---       Adjust = 1024, -- (ARROWS)
---       SpaceKey = 2048, -- (SPACE)
---       Share = 4096, -- (SPACE)
---       SignIn = 8192, -- (SPACE)
---       Continue = 16384, -- (RETURN)
---       AdjustLeftRight = 32768, -- (SCROLL L/R)
---       AdjustUpDown = 65536, -- (SCROLL U/D)
---       Overwrite = 131072, -- (SPACE)
---       SocialClubSignup = 262144, -- (RETURN)
---       Confirm = 524288, -- (RETURN)
---       Queue = 1048576, -- (RETURN)
---       RetryReturn = 2097152, -- (RETURN)
---       BackEsc = 4194304, -- (ESC)
---       SocialClub = 8388608, -- (RETURN)
---       Spectate = 16777216, -- (SPACE)
---       OkEsc = 33554432, -- (ESC)
---       CancelTransfer = 67108864, -- (ESC)
---       LoadingSpinner = 134217728,
---       NoReturnToGTA = 268435456, -- (ESC)
---       CancelEsc = 536870912, -- (ESC)
--- }
---
--- Alt = {
---       Empty = 0,
---       No = 1, -- (SPACE)
--- [...]
--- **Native**: `SET_WARNING_MESSAGE_WITH_ALERT` (`0x15803FEC3B9A872B`)
---@param labelTitle string Label of the alert's title.
---@param labelMsg string Label of the alert's message.
---@param p2 integer This is an enum, check the description for a list.
---@param p3 integer This is an enum, check the description for a list.
---@param labelMsg2 string Label of another message line
---@param p5 boolean usually 0
---@param p6 integer usually -1
---@param p7 integer usually 0
---@param p8 string unknown label
---@param p9 string unknown label
---@param background boolean Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
---@param errorCode integer Error code, shown at the bottom left if set to value other than 0.
function HudStatic.setWarningMessageWithAlert(labelTitle, labelMsg, p2, p3, labelMsg2, p5, p6, p7, p8, p9, background, errorCode) end

--- ```
--- You can only use text entries. No custom text.
--- C# Example :
--- Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);
--- you can recreate this easily with scaleforms
--- ---------------
--- Fixed native name, from before nativedb restoration.
--- ```
---
--- ```
--- NativeDB Added Parameter 10: Any p9
--- ```
--- **Native**: `SET_WARNING_MESSAGE_WITH_HEADER` (`0xDC38CC1E35B6A5D7`)
---@param titleMsg string
---@param entryLine1 string
---@param flags integer
---@param promptMsg string
---@param p4 boolean
---@param p5 any
---@param background boolean
---@param showBg boolean
---@return any p7
function HudStatic.setWarningMessageWithHeader(titleMsg, entryLine1, flags, promptMsg, p4, p5, background, showBg) end

--- ```
--- You can only use text entries. No custom text.
--- ```
---
--- ```
--- NativeDB Added Parameter 11: Any p10
--- ```
--- **Native**: `SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS` (`0x701919482C74B5AB`)
---@param entryHeader string
---@param entryLine1 string
---@param instructionalKey any
---@param entryLine2 string
---@param p4 boolean
---@param p5 any
---@param p6 any
---@param p9 boolean
---@return any p7
---@return any p8
function HudStatic.setWarningMessageWithHeaderAndSubstringFlags(entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, p6, p9) end

--- Sets a warning message for one frame with header and upper buttons bit field that don't fit the standard 32 bit set.
--- **Native**: `SET_WARNING_MESSAGE_WITH_HEADER_EXTENDED` (`0x38B55259C2E078ED`)
---@param headerTextLabel string Text label to set on the header/title.
---@param line1TextLabel string Text label to set on the first line of the body..
---@param buttonsBitField integer Bit field of the button flags. See [`SET_WARNING_MESSAGE`](#\_0x7B1776B3B53F8D74).
---@param buttonsBitFieldUpper integer Bit field of the upper button flags. See [`SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS_EXTENDED`](#\_0x15803FEC3B9A872B).
---@param line2TextLabel string Text label to set on the second line of the body.
---@param addNumber boolean If number should be inserted into `~1~` in the body.
---@param numberToAdd integer What number to insert into `~1~` in the body.
---@param firstSubstring string First substring text label to insert into `~a~` in the body.
---@param secondSubstring string Second substring text label to insert into `~a~` in the body.
---@param showBackground boolean Bool indicating if the message should have a black background.
---@param errorCode integer Error number to show at the bottom of the message. `0` is the default.
function HudStatic.setWarningMessageWithHeaderExtended(headerTextLabel, line1TextLabel, buttonsBitField, buttonsBitFieldUpper, line2TextLabel, addNumber, numberToAdd, firstSubstring, secondSubstring, showBackground, errorCode) end

--- ```
--- This native removes the current waypoint from the map.
--- Example:
--- C#:
--- Function.Call(Hash.SET_WAYPOINT_OFF);
--- C++:
--- HUD::SET_WAYPOINT_OFF();
--- ```
--- **Native**: `SET_WAYPOINT_OFF` (`0xA7E4E2D361C2627F`)
function HudStatic.setWaypointOff() end

--- ```
--- Set the active slotIndex in the wheel weapon to the slot associated with the provided Weapon hash
--- ```
--- **Native**: `HUD_SET_WEAPON_WHEEL_TOP_SLOT` (`0x72C1056D678BB7D8`)
---@param weaponHash integer|string
function HudStatic.setWeaponWheelTopSlot(weaponHash) end

--- **Native**: `SET_WIDESCREEN_FORMAT` (`0xC3B07BA00A83B0F1`)
---@param p0 any
function HudStatic.setWidescreenFormat(p0) end

--- Controls the visibility of the "Contact" instructional buttons on the map screen.
---
--- ```
--- NativeDB Introduced: 2545
--- ```
--- **Native**: `SHOW_CONTACT_INSTRUCTIONAL_BUTTON` (`0xC772A904CDE1186F`)
---@param toggle boolean Set to `true` to show the instructional buttons, or `false` to hide them.
function HudStatic.showContactInstructionalButton(toggle) end

--- This function shows various HUD (Heads-up Display) components.
---
--- Listed below are the integers and the corresponding HUD component.
---
--- *   1 : WANTED_STARS
--- *   2 : WEAPON_ICON
--- *   3 : CASH
--- *   4 : MP_CASH
--- *   5 : MP_MESSAGE
--- *   6 : VEHICLE_NAME
--- *   7 : AREA_NAME
--- *   8 : VEHICLE_CLASS
--- *   9 : STREET_NAME
--- *   10 : HELP_TEXT
--- *   11 : FLOATING_HELP_TEXT\_1
--- *   12 : FLOATING_HELP_TEXT\_2
--- *   13 : CASH_CHANGE
--- *   14 : RETICLE
--- *   15 : SUBTITLE_TEXT
--- *   16 : RADIO_STATIONS
--- *   17 : SAVING_GAME
--- *   18 : GAME_STREAM
--- *   19 : WEAPON_WHEEL
--- *   20 : WEAPON_WHEEL_STATS
--- *   21 : HUD_COMPONENTS
--- *   22 : HUD_WEAPONS
---
--- These integers also work for the [`HIDE_HUD_COMPONENT_THIS_FRAME`](#\_0x6806C51AD12B83B8) native, but instead hides the HUD component.
--- **Native**: `SHOW_HUD_COMPONENT_THIS_FRAME` (`0x0B4DF1FA60C0E664`)
---@param id integer
function HudStatic.showHudComponentThisFrame(id) end

--- SHOW_\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `SHOW_SCRIPTED_HUD_COMPONENT_THIS_FRAME` (`0x4F38DCA127DAAEA2`)
---@param id integer
function HudStatic.showScriptedHudComponentThisFrame(id) end

--- **Native**: `SHOW_SIGNIN_UI` (`0x60E892BA4F5BDCA4`)
function HudStatic.showSigninUi() end

--- **Native**: `SHOW_START_MISSION_INSTRUCTIONAL_BUTTON` (`0xF1A6C18B35BCADE6`)
---@param p0 boolean
function HudStatic.showStartMissionInstructionalButton(p0) end

--- Starts a new GPS custom-route, allowing you to plot lines on the map.
--- Lines are drawn directly between points.
--- The GPS custom route works like the GPS multi route, except it does not follow roads.
---
--- **Example result:**
---
--- ![](https://i.imgur.com/BDm5pzt.png)
--- **Native**: `START_GPS_CUSTOM_ROUTE` (`0xDB34E8D56FC13B08`)
---@param hudColor integer The HUD color of the GPS path.
---@param displayOnFoot boolean Draws the path regardless if the player is in a vehicle or not.
---@param followPlayer boolean Draw the path partially between the previous and next point based on the players position between them. When false, the GPS appears to not disappear after the last leg is completed.
function HudStatic.startGpsCustomRoute(hudColor, displayOnFoot, followPlayer) end

--- Starts a new GPS multi-route, allowing you to create custom GPS paths.
--- GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
--- Once the player has passed a point, the GPS will no longer force its path through it.
---
--- Works independently from the player-placed waypoint and blip routes.
---
--- **Example result:**
---
--- ![](https://i.imgur.com/ZZHQatX.png)
--- **Native**: `START_GPS_MULTI_ROUTE` (`0x3D3D15AF7BCAAF83`)
---@param hudColor integer The HUD color of the GPS path.
---@param routeFromPlayer boolean Makes the GPS draw a path from the player to the next point, rather than the original path from the previous point.
---@param displayOnFoot boolean Draws the GPS path regardless if the player is in a vehicle or not.
function HudStatic.startGpsMultiRoute(hudColor, routeFromPlayer, displayOnFoot) end

--- **Native**: `SUPPRESS_FRONTEND_RENDERING_THIS_FRAME` (`0xBA751764F0821256`)
function HudStatic.suppressFrontendRenderingThisFrame() end

--- Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.
---
--- To enable the keys again, use [`0x14621BB1DF14E2B2`](#\_0x14621BB1DF14E2B2).
--- **Native**: `TAKE_CONTROL_OF_FRONTEND` (`0xEC9264727EEC0F28`)
function HudStatic.takeControlOfFrontend() end

--- **Native**: `THEFEED_CLEAR_FROZEN_POST` (`0x80FE4F3AB4E1B62A`)
function HudStatic.thefeedClearFrozenPost() end

--- ```
--- Displays "normal" notifications again after calling `_0x56C8B608CFD49854` (those that were drawn before calling this native too), though those will have a weird offset and stay on screen forever (tested with notifications created from same script).
--- ```
--- **Native**: `THEFEED_COMMENT_TELEPORT_POOL_OFF` (`0xADED7F5748ACAFE6`)
function HudStatic.thefeedCommentTeleportPoolOff() end

--- ```
--- Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
--- ```
--- **Native**: `THEFEED_COMMENT_TELEPORT_POOL_ON` (`0x56C8B608CFD49854`)
function HudStatic.thefeedCommentTeleportPoolOn() end

--- Stops loading screen tips shown by invoking either `0x488043841BBE156F` or `0x15CFA549788D35EF`
--- **Native**: `THEFEED_DISABLE_LOADING_SCREEN_TIPS` (`0x32888337579A5970`)
function HudStatic.thefeedDisableLoadingScreenTips() end

--- Displays loading screen tips, requires `0x56C8B608CFD49854` to be called beforehand.
--- **Native**: `THEFEED_DISPLAY_LOADING_SCREEN_TIPS` (`0x15CFA549788D35EF`)
function HudStatic.thefeedDisplayLoadingScreenTips() end

--- **Native**: `THEFEED_FLUSH_QUEUE` (`0xA8FDB297A8D25FBA`)
function HudStatic.thefeedFlushQueue() end

--- Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
--- **Native**: `THEFEED_FORCE_RENDER_OFF` (`0x583049884A2EEE3C`)
function HudStatic.thefeedForceRenderOff() end

--- **Native**: `THEFEED_FORCE_RENDER_ON` (`0xA13C11E1B5C06BFC`)
function HudStatic.thefeedForceRenderOn() end

--- ```
--- Requires manual management of game stream handles (i.e., 0xBE4390CB40B3E627).
--- ```
--- **Native**: `THEFEED_FREEZE_NEXT_POST` (`0xFDEC055AB549E328`)
function HudStatic.thefeedFreezeNextPost() end

--- ```
--- Returns the handle for the notification currently displayed on the screen. Name may be a hash collision, but describes the function accurately.
--- ```
--- **Native**: `THEFEED_GET_FIRST_VISIBLE_DELETE_REMAINING` (`0x82352748437638CA`)
---@return integer result
function HudStatic.thefeedGetFirstVisibleDeleteRemaining() end

--- Once called each frame hides all above radar notifications.
--- **Native**: `THEFEED_HIDE_THIS_FRAME` (`0x25F87B30C382FCA7`)
function HudStatic.thefeedHideThisFrame() end

--- **Native**: `THEFEED_IS_PAUSED` (`0xA9CBFD40B3FA3010`)
---@return boolean result
function HudStatic.thefeedIsPaused() end

--- **Native**: `THEFEED_ONLY_SHOW_TOOLTIPS` (`0x6F1554B0CC2089FA`)
---@param toggle boolean
function HudStatic.thefeedOnlyShowTooltips(toggle) end

--- **Native**: `THEFEED_PAUSE` (`0xFDB423997FA30340`)
function HudStatic.thefeedPause() end

--- ```
--- Removes a notification instantly instead of waiting for it to disappear
--- ```
--- **Native**: `THEFEED_REMOVE_ITEM` (`0xBE4390CB40B3E627`)
---@param notificationId integer
function HudStatic.thefeedRemoveItem(notificationId) end

--- **Native**: `THEFEED_RESET_ALL_PARAMETERS` (`0xFDD85225B2DEA55E`)
function HudStatic.thefeedResetAllParameters() end

--- **Native**: `THEFEED_RESUME` (`0xE1CD1E48E025E661`)
function HudStatic.thefeedResume() end

--- **Native**: `THEFEED_SET_ANIMPOSTFX_COLOR` (`0x17430B918701C342`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function HudStatic.thefeedSetAnimpostfxColor(red, green, blue, alpha) end

--- Related to notification color flashing, setting p0 to 0 invalidates a `_SET_NOTIFICATION_FLASH_COLOR` call for the target notification.
--- **Native**: `THEFEED_SET_ANIMPOSTFX_COUNT` (`0x17AD8C9706BDD88A`)
---@param count integer
function HudStatic.thefeedSetAnimpostfxCount(count) end

--- ```
--- Requires GAME_STREAM_ENUMS.MSGTEXT. Default sounds: "DPAD_WEAPON_SCROLL" and "HUD_FRONTEND_DEFAULT_SOUNDSET"
--- ```
--- **Native**: `THEFEED_SET_ANIMPOSTFX_SOUND` (`0x4A0C7C9BB10ABB36`)
---@param toggle boolean
function HudStatic.thefeedSetAnimpostfxSound(toggle) end

--- ```
--- If true, remove all feed components instantly. Otherwise tween/animate close each component
--- ```
--- **Native**: `THEFEED_SET_FLUSH_ANIMPOSTFX` (`0xBAE4F9B97CD43B30`)
---@param toggle boolean
function HudStatic.thefeedSetFlushAnimpostfx(toggle) end

--- ```
--- From the decompiled scripts:
--- HUD::_92F0DA1E27DB96DC(6);
--- HUD::_92F0DA1E27DB96DC(184);
--- HUD::_92F0DA1E27DB96DC(190);
--- sets background color for the next notification
--- 6 = red
--- 184 = green
--- 190 = yellow
--- Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15
--- ```
--- **Native**: `THEFEED_SET_NEXT_POST_BACKGROUND_COLOR` (`0x92F0DA1E27DB96DC`)
---@param hudColorIndex integer
function HudStatic.thefeedSetNextPostBackgroundColor(hudColorIndex) end

--- **Native**: `THEFEED_SET_SCRIPTED_MENU_HEIGHT` (`0x55598D21339CB998`)
---@param pos number
function HudStatic.thefeedSetScriptedMenuHeight(pos) end

--- **Native**: `THEFEED_SPS_EXTEND_WIDESCREEN_OFF` (`0xB695E2CD0A2DA9EE`)
function HudStatic.thefeedSpsExtendWidescreenOff() end

--- **Native**: `THEFEED_SPS_EXTEND_WIDESCREEN_ON` (`0xD4438C0564490E63`)
function HudStatic.thefeedSpsExtendWidescreenOn() end

--- ```
--- Used in the native scripts to reference "GET_PEDHEADSHOT_TXD_STRING" and "CHAR_DEFAULT".
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `THEFEED_UPDATE_ITEM_TEXTURE` (`0x317EBA71D7543F52`)
---@param txdString1 string
---@param txnString1 string
---@param txdString2 string
---@param txnString2 string
function HudStatic.thefeedUpdateItemTexture(txdString1, txnString1, txdString2, txnString2) end

--- **Native**: `TOGGLE_STEALTH_RADAR` (`0x6AFDFB93754950C7`)
---@param toggle boolean
function HudStatic.toggleStealthRadar(toggle) end

--- **Native**: `TRIGGER_SONAR_BLIP` (`0x72DD432F3CDFC0EE`)
---@param pos vector3
---@param radius number
---@param p4 integer
function HudStatic.triggerSonarBlip(pos, radius, p4) end

--- **Native**: `UNLOCK_MINIMAP_ANGLE` (`0x8183455E16C42E3A`)
function HudStatic.unlockMinimapAngle() end

--- **Native**: `UNLOCK_MINIMAP_POSITION` (`0x3E93E06DB8EF1F30`)
function HudStatic.unlockMinimapPosition() end

--- ```
--- Related to displaying cash on the HUD
--- Always called before HUD::CHANGE_FAKE_MP_CASH in decompiled scripts
--- ```
--- **Native**: `USE_FAKE_MP_CASH` (`0x170F541E1CADD1DE`)
---@param p0 boolean
function HudStatic.useFakeMpCash(p0) end

--- ```
--- Returns the weapon hash to the selected/highlighted weapon in the wheel
--- ```
--- **Native**: `HUD_WEAPON_WHEEL_GET_SELECTED_HASH` (`0xA48931185F0536FE`)
---@return integer result
function HudStatic.weaponWheelGetSelectedHash() end

--- ```
--- Returns the weapon hash active in a specific weapon wheel slotList
--- ```
--- **Native**: `HUD_WEAPON_WHEEL_GET_SLOT_HASH` (`0xA13E93403F26C812`)
---@param weaponTypeIndex integer
---@return integer result
function HudStatic.weaponWheelGetSlotHash(weaponTypeIndex) end

--- ```
--- Sets a global that disables many weapon input tasks (shooting, aiming, etc.). Does not work with vehicle weapons, only used in selector.ysc
--- ```
--- **Native**: `HUD_WEAPON_WHEEL_IGNORE_CONTROL_INPUT` (`0x14C9FDCC41F81F63`)
---@param toggle boolean
function HudStatic.weaponWheelIgnoreControlInput(toggle) end

--- ```
--- Calling this each frame, stops the player from receiving a weapon via the weapon wheel.
--- ```
--- **Native**: `HUD_WEAPON_WHEEL_IGNORE_SELECTION` (`0x0AFC4AF510774B47`)
function HudStatic.weaponWheelIgnoreSelection() end

