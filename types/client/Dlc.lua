---@meta
---@diagnostic disable
-- fx.Dlc (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Dlc
---@field extraContentPackHasBeenInstalled boolean (read-only) [GET_EXTRA_CONTENT_PACK_HAS_BEEN_INSTALLED]
---@field isLoadingScreenActive boolean (read-only) [GET_IS_LOADING_SCREEN_ACTIVE]
local DlcStatic = {}

--- ```
--- Sets the value of the specified variable to 0.
--- Always returns true.
--- ```
--- **Native**: `HAS_CLOUD_REQUESTS_FINISHED` (`0x46E2B844905BC5F0`)
---@param unused any
---@return boolean result
---@return boolean variable
function DlcStatic.hasCloudRequestsFinished(unused) end

--- ```
--- Example:
--- DLC::IS_DLC_PRESENT($\mpbusiness2\);
--- ($ = gethashkey)
--- bruteforce these:
--- 0xB119F6D
--- 0x96F02EE6
--- ```
--- **Native**: `IS_DLC_PRESENT` (`0x812595A0644CE1DE`)
---@param dlcHash integer|string
---@return boolean result
function DlcStatic.isDlcPresent(dlcHash) end

--- ```
--- This loads the GTA:O dlc map parts (high end garages, apartments).
--- Works in singleplayer.
--- In order to use GTA:O heist IPL's you have to call this native with the following params: SET_INSTANCE_PRIORITY_MODE(1);
--- ```
--- **Native**: `ON_ENTER_MP` (`0x0888C3502DBBEEF5`)
function DlcStatic.onEnterMp() end

--- ```
--- Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).
--- The original (and wrong) definition is below:
--- This unload the GTA:O DLC map parts (like high end garages/apartments).
--- Works in singleplayer.
--- ```
--- **Native**: `ON_ENTER_SP` (`0xD7C10C4A637992C9`)
function DlcStatic.onEnterSp() end

