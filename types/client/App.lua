---@meta
---@diagnostic disable
-- fx.App (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.App
---@field deletedFileStatus integer (read-only) [APP_GET_DELETED_FILE_STATUS]
---@field hasLinkedSocialClubAccount boolean (read-only) [APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT]
local AppStatic = {}

--- **Native**: `APP_CLEAR_BLOCK` (`0x5FE1DF3342DB7DBA`)
function AppStatic.clearBlock() end

--- **Native**: `APP_CLOSE_APP` (`0xE41C65E07A5F05FC`)
function AppStatic.closeApp() end

--- **Native**: `APP_CLOSE_BLOCK` (`0xE8E3FCF72EAC0EF8`)
function AppStatic.closeBlock() end

--- **Native**: `APP_DATA_VALID` (`0x846AA8E7D55EE5B6`)
---@return boolean result
function AppStatic.dataValid() end

--- **Native**: `APP_DELETE_APP_DATA` (`0x44151AEA95C8A003`)
---@param appName string
---@return boolean result
function AppStatic.deleteAppData(appName) end

--- **Native**: `APP_GET_FLOAT` (`0x1514FB24C02C2322`)
---@param property string
---@return number result
function AppStatic.getFloat(property) end

--- **Native**: `APP_GET_INT` (`0xD3A58A12C77D9D4B`)
---@param property string
---@return integer result
function AppStatic.getInt(property) end

--- **Native**: `APP_GET_STRING` (`0x749B023950D2311C`)
---@param property string
---@return string result
function AppStatic.getString(property) end

--- **Native**: `APP_HAS_SYNCED_DATA` (`0xCA52279A7271517F`)
---@param appName string
---@return boolean result
function AppStatic.hasSyncedData(appName) end

--- **Native**: `APP_SAVE_DATA` (`0x95C5D356CDA6E85F`)
function AppStatic.saveData() end

--- ```
--- Called in the gamescripts like:
--- APP::APP_SET_APP("car");
--- APP::APP_SET_APP("dog");
--- ```
--- **Native**: `APP_SET_APP` (`0xCFD0406ADAF90D2B`)
---@param appName string
function AppStatic.setApp(appName) end

--- **Native**: `APP_SET_BLOCK` (`0x262AB456A3D21F93`)
---@param blockName string
function AppStatic.setBlock(blockName) end

--- **Native**: `APP_SET_FLOAT` (`0x25D7687C68E0DAA4`)
---@param property string
---@param value number
function AppStatic.setFloat(property, value) end

--- **Native**: `APP_SET_INT` (`0x607E8E3D3E4F9611`)
---@param property string
---@param value integer
function AppStatic.setInt(property, value) end

--- **Native**: `APP_SET_STRING` (`0x3FF2FCEC4B7721B4`)
---@param property string
---@param value string
function AppStatic.setString(property, value) end

