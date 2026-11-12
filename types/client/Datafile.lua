---@meta
---@diagnostic disable
-- fx.Datafile (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Datafile
---@field fileDict string (read-only) [DATAFILE_GET_FILE_DICT]
---@field isSavePending boolean (read-only) [DATAFILE_IS_SAVE_PENDING]
local DatafileStatic = {}

--- **Native**: `DATAFILE_CLEAR_WATCH_LIST` (`0x6CC86E78358D5119`)
function DatafileStatic.clearWatchList() end

--- **Native**: `DATAARRAY_ADD_BOOL` (`0xF8B0F5A43E928C76`)
---@param value boolean
---@return any arrayData
function DatafileStatic.dataarrayAddBool(value) end

--- **Native**: `DATAARRAY_ADD_DICT` (`0x6889498B3E19C797`)
---@param arrayData any
---@return any result
---@return any arrayData
function DatafileStatic.dataarrayAddDict(arrayData) end

--- **Native**: `DATAARRAY_ADD_FLOAT` (`0x57A995FD75D37F56`)
---@param value number
---@return any arrayData
function DatafileStatic.dataarrayAddFloat(value) end

--- **Native**: `DATAARRAY_ADD_INT` (`0xCABDB751D86FE93B`)
---@param value integer
---@return any arrayData
function DatafileStatic.dataarrayAddInt(value) end

--- **Native**: `DATAARRAY_ADD_STRING` (`0x2F0661C155AEEEAA`)
---@param value string
---@return any arrayData
function DatafileStatic.dataarrayAddString(value) end

--- **Native**: `DATAARRAY_ADD_VECTOR` (`0x407F8D034F70F0C2`)
---@param value vector3
---@return any arrayData
function DatafileStatic.dataarrayAddVector(value) end

--- **Native**: `DATAARRAY_GET_BOOL` (`0x50C1B2874E50C114`)
---@param arrayIndex integer
---@return boolean result
---@return any arrayData
function DatafileStatic.dataarrayGetBool(arrayIndex) end

--- **Native**: `DATAARRAY_GET_COUNT` (`0x065DB281590CEA2D`)
---@param arrayData any
---@return integer result
---@return any arrayData
function DatafileStatic.dataarrayGetCount(arrayData) end

--- **Native**: `DATAARRAY_GET_DICT` (`0x8B5FADCC4E3A145F`)
---@param arrayIndex integer
---@return any result
---@return any arrayData
function DatafileStatic.dataarrayGetDict(arrayIndex) end

--- **Native**: `DATAARRAY_GET_FLOAT` (`0xC0C527B525D7CFB5`)
---@param arrayIndex integer
---@return number result
---@return any arrayData
function DatafileStatic.dataarrayGetFloat(arrayIndex) end

--- **Native**: `DATAARRAY_GET_INT` (`0x3E5AE19425CD74BE`)
---@param arrayIndex integer
---@return integer result
---@return any arrayData
function DatafileStatic.dataarrayGetInt(arrayIndex) end

--- **Native**: `DATAARRAY_GET_STRING` (`0xD3F2FFEB8D836F52`)
---@param arrayIndex integer
---@return string result
---@return any arrayData
function DatafileStatic.dataarrayGetString(arrayIndex) end

--- ```
--- Types:
--- 1 = Boolean
--- 2 = Integer
--- 3 = Float
--- 4 = String
--- 5 = Vector3
--- 6 = Object
--- 7 = Array
--- ```
--- **Native**: `DATAARRAY_GET_TYPE` (`0x3A0014ADB172A3C5`)
---@param arrayIndex integer
---@return integer result
---@return any arrayData
function DatafileStatic.dataarrayGetType(arrayIndex) end

--- **Native**: `DATAARRAY_GET_VECTOR` (`0x8D2064E5B64A628A`)
---@param arrayIndex integer
---@return vector3 result
---@return any arrayData
function DatafileStatic.dataarrayGetVector(arrayIndex) end

--- **Native**: `DATADICT_CREATE_ARRAY` (`0x5B11728527CA6E5F`)
---@param key string
---@return any result
---@return any objectData
function DatafileStatic.datadictCreateArray(key) end

--- **Native**: `DATADICT_CREATE_DICT` (`0xA358F56F10732EE1`)
---@param key string
---@return any result
---@return any objectData
function DatafileStatic.datadictCreateDict(key) end

--- **Native**: `DATADICT_GET_ARRAY` (`0x7A983AA9DA2659ED`)
---@param key string
---@return any result
---@return any objectData
function DatafileStatic.datadictGetArray(key) end

--- **Native**: `DATADICT_GET_BOOL` (`0x1186940ED72FFEEC`)
---@param key string
---@return boolean result
---@return any objectData
function DatafileStatic.datadictGetBool(key) end

--- **Native**: `DATADICT_GET_DICT` (`0xB6B9DDC412FCEEE2`)
---@param key string
---@return any result
---@return any objectData
function DatafileStatic.datadictGetDict(key) end

--- **Native**: `DATADICT_GET_FLOAT` (`0x06610343E73B9727`)
---@param key string
---@return number result
---@return any objectData
function DatafileStatic.datadictGetFloat(key) end

--- **Native**: `DATADICT_GET_INT` (`0x78F06F6B1FB5A80C`)
---@param key string
---@return integer result
---@return any objectData
function DatafileStatic.datadictGetInt(key) end

--- **Native**: `DATADICT_GET_STRING` (`0x3D2FD9E763B24472`)
---@param key string
---@return string result
---@return any objectData
function DatafileStatic.datadictGetString(key) end

--- ```
--- Types:
--- 1 = Boolean
--- 2 = Integer
--- 3 = Float
--- 4 = String
--- 5 = Vector3
--- 6 = Object
--- 7 = Array
--- ```
--- **Native**: `DATADICT_GET_TYPE` (`0x031C55ED33227371`)
---@param key string
---@return integer result
---@return any objectData
function DatafileStatic.datadictGetType(key) end

--- **Native**: `DATADICT_GET_VECTOR` (`0x46CD3CB66E0825CC`)
---@param key string
---@return vector3 result
---@return any objectData
function DatafileStatic.datadictGetVector(key) end

--- **Native**: `DATADICT_SET_BOOL` (`0x35124302A556A325`)
---@param key string
---@param value boolean
---@return any objectData
function DatafileStatic.datadictSetBool(key, value) end

--- **Native**: `DATADICT_SET_FLOAT` (`0xC27E1CC2D795105E`)
---@param key string
---@param value number
---@return any objectData
function DatafileStatic.datadictSetFloat(key, value) end

--- **Native**: `DATADICT_SET_INT` (`0xE7E035450A7948D5`)
---@param key string
---@param value integer
---@return any objectData
function DatafileStatic.datadictSetInt(key, value) end

--- **Native**: `DATADICT_SET_STRING` (`0x8FF3847DADD8E30C`)
---@param key string
---@param value string
---@return any objectData
function DatafileStatic.datadictSetString(key, value) end

--- **Native**: `DATADICT_SET_VECTOR` (`0x4CD49B76338C7DEE`)
---@param key string
---@param value vector3
---@return any objectData
function DatafileStatic.datadictSetVector(key, value) end

--- ```
--- NativeDB Added Parameter 1: int p0
--- ```
--- **Native**: `DATAFILE_CREATE` (`0xD27058A1CA2B13EE`)
function DatafileStatic.datafileCreate() end

--- ```
--- NativeDB Added Parameter 1: int p0
--- ```
--- **Native**: `DATAFILE_DELETE` (`0x9AB9C1CFC8862DFB`)
function DatafileStatic.datafileDelete() end

--- **Native**: `DATAFILE_DELETE_REQUESTED_FILE` (`0x8F5EA1C01D65A100`)
---@param p0 any
---@return boolean result
function DatafileStatic.deleteRequestedFile(p0) end

--- **Native**: `DATAFILE_FLUSH_MISSION_HEADER` (`0xC55854C7D7274882`)
function DatafileStatic.flushMissionHeader() end

--- **Native**: `DATAFILE_HAS_LOADED_FILE_DATA` (`0x15FF52B809DB2353`)
---@param p0 any
---@return boolean result
function DatafileStatic.hasLoadedFileData(p0) end

--- **Native**: `DATAFILE_HAS_VALID_FILE_DATA` (`0xF8CC1EBE0B62E29F`)
---@param p0 any
---@return boolean result
function DatafileStatic.hasValidFileData(p0) end

--- **Native**: `DATAFILE_IS_VALID_REQUEST_ID` (`0xFCCAE5B92A830878`)
---@param index integer
---@return boolean result
function DatafileStatic.isValidRequestId(index) end

--- ```
--- Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
--- Returns whether or not the file was successfully loaded.
--- Example:
--- DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `DATAFILE_LOAD_OFFLINE_UGC` (`0xC5238C011AF405E4`)
---@param filename string
---@return boolean result
function DatafileStatic.loadOfflineUgc(filename) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `DATAFILE_SELECT_ACTIVE_FILE` (`0x22DA66936E0FFF37`)
---@param p0 any
---@return boolean result
function DatafileStatic.selectActiveFile(p0) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `DATAFILE_SELECT_CREATOR_STATS` (`0x01095C95CD46B624`)
---@param p0 integer
---@return boolean result
function DatafileStatic.selectCreatorStats(p0) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `DATAFILE_SELECT_UGC_DATA` (`0xA69AC4ADE82B57A4`)
---@param p0 integer
---@return boolean result
function DatafileStatic.selectUgcData(p0) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `DATAFILE_SELECT_UGC_PLAYER_DATA` (`0x52818819057F2B40`)
---@param p0 integer
---@return boolean result
function DatafileStatic.selectUgcPlayerData(p0) end

--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `DATAFILE_SELECT_UGC_STATS` (`0x9CB0BFA7A9342C3D`)
---@param p0 integer
---@param p1 boolean
---@return boolean result
function DatafileStatic.selectUgcStats(p0, p1) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `DATAFILE_START_SAVE_TO_CLOUD` (`0x83BCCE3224735F05`)
---@param filename string
---@return boolean result
function DatafileStatic.startSaveToCloud(filename) end

--- ```
--- NativeDB Added Parameter 1: int p0
--- ```
--- **Native**: `DATAFILE_STORE_MISSION_HEADER` (`0x2ED61456317B8178`)
function DatafileStatic.storeMissionHeader() end

--- ```
--- NativeDB Added Parameter 8: Any p7
--- ```
--- **Native**: `UGC_CREATE_CONTENT` (`0xC84527E235FCA219`)
---@param data string
---@param dataCount integer
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@param publish boolean
---@return boolean result
function DatafileStatic.ugcCreateContent(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish) end

--- ```
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `UGC_CREATE_MISSION` (`0xA5EFC3E847D60507`)
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@param publish boolean
---@return boolean result
function DatafileStatic.ugcCreateMission(contentName, description, tagsCsv, contentTypeName, publish) end

--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `UGC_SET_PLAYER_DATA` (`0x692D808C34A82143`)
---@param contentId string
---@param rating number
---@param contentTypeName string
---@return boolean result
function DatafileStatic.ugcSetPlayerData(contentId, rating, contentTypeName) end

--- ```
--- NativeDB Added Parameter 8: Any p7
--- ```
--- **Native**: `UGC_UPDATE_CONTENT` (`0x648E7A5434AF7969`)
---@param contentId string
---@param dataCount integer
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@return boolean result
---@return any data
function DatafileStatic.ugcUpdateContent(contentId, dataCount, contentName, description, tagsCsv, contentTypeName) end

--- ```
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `UGC_UPDATE_MISSION` (`0x4645DE9980999E93`)
---@param contentId string
---@param contentName string
---@param description string
---@param tagsCsv string
---@param contentTypeName string
---@return boolean result
function DatafileStatic.ugcUpdateMission(contentId, contentName, description, tagsCsv, contentTypeName) end

--- **Native**: `DATAFILE_UPDATE_SAVE_TO_CLOUD` (`0x4DFDD9EB705F8140`)
---@param p0 boolean
---@return boolean result
---@return boolean p0
function DatafileStatic.updateSaveToCloud(p0) end

--- ```
--- Adds the given request ID to the watch list.
--- ```
--- **Native**: `DATAFILE_WATCH_REQUEST_ID` (`0xAD6875BBC0FC899C`)
---@param id integer
function DatafileStatic.watchRequestId(id) end

