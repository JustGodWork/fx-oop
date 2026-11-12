---@meta
---@diagnostic disable
-- fx.Socialclub (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Socialclub
---@field isRockstarMessageReadyForScript boolean (read-only) [IS_ROCKSTAR_MESSAGE_READY_FOR_SCRIPT]
---@field nickname string (read-only) [SC_GET_NICKNAME]
local SocialclubStatic = {}

--- **Native**: `SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST` (`0x55DF6DB45179236E`)
function SocialclubStatic.emailMessageClearRecipList() end

--- **Native**: `SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST` (`0x2330C12A7A605D16`)
---@param networkHandle integer
---@return integer networkHandle
function SocialclubStatic.emailMessagePushGamerToRecipList(networkHandle) end

--- ```
--- sfink: from scripts:
--- func_720(socialclub::_0x8416FE4E4629D7D7("bIgnoreCheaterOverride"));
--- func_719(socialclub::_0x8416FE4E4629D7D7("bIgnoreBadSportOverride"));
--- ```
--- **Native**: `SC_GAMERDATA_GET_BOOL` (`0x8416FE4E4629D7D7`)
---@param name string
---@return boolean result
function SocialclubStatic.gamerdataGetBool(name) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SC_GAMERDATA_GET_FLOAT` (`0xA770C8EEC6FB2AC5`)
---@param name string
---@param outValue number
---@return boolean result
---@return number outValue
function SocialclubStatic.gamerdataGetFloat(name, outValue) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SC_GAMERDATA_GET_INT` (`0xC85A7127E7AD02AA`)
---@param name string
---@param outValue integer
---@return boolean result
---@return integer outValue
function SocialclubStatic.gamerdataGetInt(name, outValue) end

--- ```
--- Same as HAS_ACHIEVEMENT_BEEN_PASSED
--- ```
--- **Native**: `SC_GET_HAS_ACHIEVEMENT_BEEN_PASSED` (`0x418DC16FAE452C1C`)
---@param achievement integer
---@return boolean result
function SocialclubStatic.hasAchievementBeenPassed(achievement) end

--- **Native**: `SC_INBOX_GET_EMAILS` (`0x040ADDCBAFA1018A`)
---@param offset integer
---@param limit integer
function SocialclubStatic.inboxGetEmails(offset, limit) end

--- **Native**: `SC_INBOX_GET_MESSAGE_IS_READ_AT_INDEX` (`0x93028F1DB42BFD08`)
---@param msgIndex integer
---@return boolean result
function SocialclubStatic.inboxGetMessageIsReadAtIndex(msgIndex) end

--- **Native**: `SC_INBOX_GET_MESSAGE_TYPE_AT_INDEX` (`0xBB8EA16ECBC976C4`)
---@param msgIndex integer
---@return integer result
function SocialclubStatic.inboxGetMessageTypeAtIndex(msgIndex) end

--- **Native**: `SC_INBOX_GET_TOTAL_NUM_MESSAGES` (`0x03A93FF1A2CA0864`)
---@return integer result
function SocialclubStatic.inboxGetTotalNumMessages() end

--- **Native**: `SC_INBOX_MESSAGE_DO_APPLY` (`0x9A2C8064B6C1E41A`)
---@param p0 integer
---@return boolean result
function SocialclubStatic.inboxMessageDoApply(p0) end

--- **Native**: `SC_INBOX_MESSAGE_GET_BOUNTY_DATA` (`0x87E0052F08BD64E6`)
---@param index integer
---@param outData integer
---@return boolean result
---@return integer outData
function SocialclubStatic.inboxMessageGetBountyData(index, outData) end

--- **Native**: `SC_INBOX_MESSAGE_GET_DATA_BOOL` (`0xFFE5C16F402D851D`)
---@param p0 integer
---@param p1 string
---@return boolean result
function SocialclubStatic.inboxMessageGetDataBool(p0, p1) end

--- **Native**: `SC_INBOX_MESSAGE_GET_DATA_INT` (`0xA00EFE4082C4056E`)
---@param p0 integer
---@param context string
---@param out integer
---@return boolean result
---@return integer out
function SocialclubStatic.inboxMessageGetDataInt(p0, context, out) end

--- **Native**: `SC_INBOX_MESSAGE_GET_DATA_STRING` (`0x7572EF42FC6A9B6D`)
---@param p0 integer
---@param context string
---@param out string
---@return boolean result
function SocialclubStatic.inboxMessageGetDataString(p0, context, out) end

--- **Native**: `SC_INBOX_MESSAGE_GET_STRING` (`0xF3E31D16CBDCB304`)
---@param p0 integer
---@return string result
function SocialclubStatic.inboxMessageGetString(p0) end

--- **Native**: `SC_INBOX_MESSAGE_GET_UGCDATA` (`0x69D82604A1A5A254`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p1
function SocialclubStatic.inboxMessageGetUgcdata(p0, p1) end

--- **Native**: `SC_INBOX_MESSAGE_POP` (`0x2C015348CF19CA1D`)
---@param p0 integer
---@return boolean result
function SocialclubStatic.inboxMessagePop(p0) end

--- **Native**: `SC_INBOX_MESSAGE_PUSH_GAMER_TO_EVENT_RECIP_LIST` (`0xDA024BDBD600F44A`)
---@param networkHandle integer
---@return integer networkHandle
function SocialclubStatic.inboxMessagePushGamerToEventRecipList(networkHandle) end

--- **Native**: `SC_INBOX_MESSAGE_SEND_BOUNTY_PRESENCE_EVENT` (`0x6AFD2CD753FEEF83`)
---@param data string
---@return boolean result
function SocialclubStatic.inboxMessageSendBountyPresenceEvent(data) end

--- **Native**: `SC_INBOX_MESSAGE_SEND_UGC_STAT_UPDATE_EVENT` (`0xA68D3D229F4F3B06`)
---@param data string
function SocialclubStatic.inboxMessageSendUgcStatUpdateEvent(data) end

--- Social Club native to add license plate for the user
--- **Native**: `SC_LICENSEPLATE_ADD` (`0x1989C6E6F67E76A8`)
---@param plateText string
---@param plateData string
---@param tokenOut integer
---@return boolean result
---@return integer tokenOut
function SocialclubStatic.licenseplateAdd(plateText, plateData, tokenOut) end

--- Returns true if the add license plate text request is still pending.
--- **Native**: `SC_LICENSEPLATE_GET_ADD_IS_PENDING` (`0x07C61676E5BB52CD`)
---@param token integer
---@return boolean result
function SocialclubStatic.licenseplateGetAddIsPending(token) end

--- Returns a status for adding the license plate
--- **Native**: `SC_LICENSEPLATE_GET_ADD_STATUS` (`0x8147FFF6A718E1AD`)
---@param token integer
---@return integer result
function SocialclubStatic.licenseplateGetAddStatus(token) end

--- Gets number of plates in the response of the get license plates request.
--- Range: \[0, count) can be used as second argument to \_0x1D4446A62D35B0D0 and \_0x2E89990DDFF670C3
--- **Native**: `SC_LICENSEPLATE_GET_COUNT` (`0x700569DBA175A77C`)
---@param token integer
---@return integer result
function SocialclubStatic.licenseplateGetCount(token) end

--- Checks if the "is valid license plate" request is still pending.
--- **Native**: `SC_LICENSEPLATE_GET_ISVALID_IS_PENDING` (`0xD302E99EDF0449CF`)
---@param token integer
---@return boolean result
function SocialclubStatic.licenseplateGetIsvalidIsPending(token) end

--- Gets the status of the is valid license plate request
--- **Native**: `SC_LICENSEPLATE_GET_ISVALID_STATUS` (`0x5C4EBFFA98BDB41C`)
---@param token integer
---@return integer result
function SocialclubStatic.licenseplateGetIsvalidStatus(token) end

--- Gets license plate text related to the get license plate info request
--- **Native**: `SC_LICENSEPLATE_GET_PLATE` (`0x1D4446A62D35B0D0`)
---@param token integer
---@param plateIndex integer The plate index from the list of result plates. Use SC_LICENSEPLATE_GET_COUNT for the number of plates.
---@return string result
function SocialclubStatic.licenseplateGetPlate(token, plateIndex) end

--- Gets license plate data related to the get license plate info request
--- **Native**: `SC_LICENSEPLATE_GET_PLATE_DATA` (`0x2E89990DDFF670C3`)
---@param token integer
---@param plateIndex integer The plate index from the list of result plates. Use SC_LICENSEPLATE_GET_COUNT for the number of plates.
---@return string result
function SocialclubStatic.licenseplateGetPlateData(token, plateIndex) end

--- SC native to start a request for if license plate text is valid
--- **Native**: `SC_LICENSEPLATE_ISVALID` (`0x0F73393BAC7E6730`)
---@param plateText string
---@param tokenOut integer
---@return boolean result
---@return integer tokenOut
function SocialclubStatic.licenseplateIsvalid(plateText, tokenOut) end

--- Changes the license plate for the user (no insert).
--- **Native**: `SC_LICENSEPLATE_SET_PLATE_DATA` (`0xD0EE05FE193646EA`)
---@param oldPlateText string
---@param newPlateText string
---@param plateData string
---@return boolean result
function SocialclubStatic.licenseplateSetPlateData(oldPlateText, newPlateText, plateData) end

--- ```
--- NativeDB Introduced: v323
--- NativeDB Added Parameter 1: Hash attrHash
--- NativeDB Added Parameter 2: float value
--- ```
--- **Native**: `SC_PRESENCE_ATTR_SET_FLOAT` (`0xC4C4575F62534A24`)
---@return boolean result
function SocialclubStatic.presenceAttrSetFloat() end

--- **Native**: `SC_PRESENCE_ATTR_SET_INT` (`0x1F1E9682483697C7`)
---@param attrHash integer|string
---@param value integer
---@return boolean result
function SocialclubStatic.presenceAttrSetInt(attrHash, value) end

--- **Native**: `SC_PRESENCE_ATTR_SET_STRING` (`0x287F1F75D2803595`)
---@param attrHash integer|string
---@param value string
---@return boolean result
function SocialclubStatic.presenceAttrSetString(attrHash, value) end

--- Starts a task to check an entered string for profanity on the ROS/Social Club services.
---
--- See also: [`SC_PROFANITY_GET_CHECK_IS_VALID`](#\_0x1753344C770358AE) and [`SC_PROFANITY_GET_CHECK_IS_PENDING`](#\_0x82E4A58BABC15AE7).
--- **Native**: `SC_PROFANITY_CHECK_STRING` (`0x75632C5ECD7ED843`)
---@param string_ string
---@param token integer
---@return boolean result
---@return integer token
function SocialclubStatic.profanityCheckString(string_, token) end

--- **Native**: `SC_PROFANITY_CHECK_UGC_STRING` (`0xEB2BF817463DFA28`)
---@param string_ string
---@param token integer
---@return boolean result
---@return integer token
function SocialclubStatic.profanityCheckUgcString(string_, token) end

--- **Native**: `SC_PROFANITY_GET_CHECK_IS_PENDING` (`0x82E4A58BABC15AE7`)
---@param token integer
---@return boolean result
function SocialclubStatic.profanityGetCheckIsPending(token) end

--- **Native**: `SC_PROFANITY_GET_CHECK_IS_VALID` (`0x1753344C770358AE`)
---@param token integer
---@return boolean result
function SocialclubStatic.profanityGetCheckIsValid(token) end

--- **Native**: `SC_PROFANITY_GET_STRING_PASSED` (`0x85535ACF97FC0969`)
---@param token integer
---@return boolean result
function SocialclubStatic.profanityGetStringPassed(token) end

--- **Native**: `SC_PROFANITY_GET_STRING_STATUS` (`0x930DE22F07B1CCE3`)
---@param token integer
---@return integer result
function SocialclubStatic.profanityGetStringStatus(token) end

--- **Native**: `ROCKSTAR_MESSAGE_GET_STRING` (`0xDF649C4E9AFDD788`)
---@return string result
function SocialclubStatic.rockstarMessageGetString() end

--- **Native**: `SET_HANDLE_ROCKSTAR_MESSAGE_VIA_SCRIPT` (`0xBFA0A56A817C6C7D`)
---@param toggle boolean
function SocialclubStatic.setHandleRockstarMessageViaScript(toggle) end

