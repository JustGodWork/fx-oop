---@meta
---@diagnostic disable
-- fx.Script (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Script
---@field hashOfThisScriptName integer (read-only) [GET_HASH_OF_THIS_SCRIPT_NAME]
---@field idOfThisThread integer (read-only) [GET_ID_OF_THIS_THREAD]
---@field noLoadingScreen boolean [GET_NO_LOADING_SCREEN / SET_NO_LOADING_SCREEN]
---@field thisScriptName string (read-only) [GET_THIS_SCRIPT_NAME]
local ScriptStatic = {}

--- ```
--- Deletes the given context from the background scripts context map.
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `BG_END_CONTEXT` (`0xDC2BACD920D0A0DD`)
---@param contextName string
function ScriptStatic.bgEndContext(contextName) end

--- ```
--- Hashed version of 0xDC2BACD920D0A0DD.
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `BG_END_CONTEXT_HASH` (`0x107E5CC7CA942BC1`)
---@param contextHash integer|string
function ScriptStatic.bgEndContextHash(contextHash) end

--- ```
--- Inserts the given context into the background scripts context map.
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `BG_START_CONTEXT` (`0x9D5A25BADB742ACD`)
---@param contextName string
function ScriptStatic.bgStartContext(contextName) end

--- ```
--- Hashed version of 0x9D5A25BADB742ACD.
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `BG_START_CONTEXT_HASH` (`0x75B18E49607874C7`)
---@param contextHash integer|string
function ScriptStatic.bgStartContextHash(contextHash) end

--- **Native**: `DOES_SCRIPT_EXIST` (`0xFC04745FBE67C19A`)
---@param scriptName string
---@return boolean result
function ScriptStatic.doesScriptExist(scriptName) end

--- **Native**: `DOES_SCRIPT_WITH_NAME_HASH_EXIST` (`0xF86AA3C56BA31381`)
---@param scriptHash integer|string
---@return boolean result
function ScriptStatic.doesScriptWithNameHashExist(scriptHash) end

--- ```
--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- ```
--- **Native**: `GET_EVENT_AT_INDEX` (`0xD8F66A3A60C62153`)
---@param eventGroup integer
---@param eventIndex integer
---@return integer result
function ScriptStatic.getEventAtIndex(eventGroup, eventIndex) end

--- ```
--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--- ```
--- **Native**: `GET_EVENT_DATA` (`0x2902843FCD2B2D79`)
---@param eventGroup integer
---@param eventIndex integer
---@param eventDataSize integer
---@return boolean result
---@return integer eventData
function ScriptStatic.getEventData(eventGroup, eventIndex, eventDataSize) end

--- ```
--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- ```
--- **Native**: `GET_EVENT_EXISTS` (`0x936E6168A9BCEDB5`)
---@param eventGroup integer
---@param eventIndex integer
---@return boolean result
function ScriptStatic.getEventExists(eventGroup, eventIndex) end

--- **Native**: `GET_NAME_OF_THREAD` (`0x05A42BA9FC8DA96B`)
---@param threadId integer
---@return string result
function ScriptStatic.getNameOfThread(threadId) end

--- ```
--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- ```
--- **Native**: `GET_NUMBER_OF_EVENTS` (`0x5F92A689A06620AA`)
---@param eventGroup integer
---@return integer result
function ScriptStatic.getNumberOfEvents(eventGroup) end

--- ```
--- Gets the number of instances of the specified script is currently running.
--- Actually returns numRefs - 1.
--- if (program)
--- 	v3 = rage::scrProgram::GetNumRefs(program) - 1;
--- return v3;
--- ```
--- **Native**: `GET_NUMBER_OF_REFERENCES_OF_SCRIPT_WITH_NAME_HASH` (`0x2C83A9DA6BFFC4F9`)
---@param scriptHash integer|string
---@return integer result
function ScriptStatic.getNumberOfReferencesOfScriptWithNameHash(scriptHash) end

--- Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.
--- **Native**: `HAS_SCRIPT_LOADED` (`0xE6CC9F3BA0FB9EF1`)
---@param scriptName string
---@return boolean result
function ScriptStatic.hasScriptLoaded(scriptName) end

--- **Native**: `HAS_SCRIPT_WITH_NAME_HASH_LOADED` (`0x5F0F0C783EB16C04`)
---@param scriptHash integer|string
---@return boolean result
function ScriptStatic.hasScriptWithNameHashLoaded(scriptHash) end

--- **Native**: `IS_THREAD_ACTIVE` (`0x46E9AE36D8FA6417`)
---@param threadId integer
---@return boolean result
function ScriptStatic.isThreadActive(threadId) end

--- Updates the display of the MP/SP loading buttons, and locks the state so that other options are not displayed or changed. This can only be done once.
--- **Native**: `LOCK_LOADING_SCREEN_BUTTONS` (`0xB1577667C3708F9B`)
function ScriptStatic.lockLoadingScreenButtons() end

--- **Native**: `REQUEST_SCRIPT` (`0x6EB5F71AA68F2E8E`)
---@param scriptName string
function ScriptStatic.requestScript(scriptName) end

--- ```
--- formerly _REQUEST_STREAMED_SCRIPT
--- ```
--- **Native**: `REQUEST_SCRIPT_WITH_NAME_HASH` (`0xD62A67D26D9653E6`)
---@param scriptHash integer|string
function ScriptStatic.requestScriptWithNameHash(scriptHash) end

--- **Native**: `SET_SCRIPT_AS_NO_LONGER_NEEDED` (`0xC90D2DCACD56184C`)
---@param scriptName string
function ScriptStatic.setScriptAsNoLongerNeeded(scriptName) end

--- **Native**: `SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED` (`0xC5BC038960E9DB27`)
---@param scriptHash integer|string
function ScriptStatic.setScriptWithNameHashAsNoLongerNeeded(scriptHash) end

--- **Native**: `SHUTDOWN_LOADING_SCREEN` (`0x078EBE9809CCD637`)
function ScriptStatic.shutdownLoadingScreen() end

--- **Native**: `TERMINATE_THIS_THREAD` (`0x1090044AD1DA76FA`)
function ScriptStatic.terminateThisThread() end

--- **Native**: `TERMINATE_THREAD` (`0xC8B189ED9138BCD4`)
---@param threadId integer
function ScriptStatic.terminateThread(threadId) end

--- ```
--- If the function returns 0, the end of the iteration has been reached.
--- ```
--- **Native**: `SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID` (`0x30B4FA1C82DD4B9F`)
---@return integer result
function ScriptStatic.threadIteratorGetNextThreadId() end

--- Starts a new iteration of the current threads.
--- Call this first, then SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID (0x30B4FA1C82DD4B9F)
--- **Native**: `SCRIPT_THREAD_ITERATOR_RESET` (`0xDADFADA5A20143A8`)
function ScriptStatic.threadIteratorReset() end

--- ```
--- eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--- Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--- playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
--- ```
--- **Native**: `TRIGGER_SCRIPT_EVENT` (`0x5AE99C571D5BBE5D`)
---@param eventGroup integer
---@param eventDataSize integer
---@param playerBits integer
---@return integer eventData
function ScriptStatic.triggerScriptEvent(eventGroup, eventDataSize, playerBits) end

--- ```
--- See TRIGGER_SCRIPT_EVENT
--- ```
--- **Native**: `TRIGGER_SCRIPT_EVENT_2` (`0xA40CC53DF8E50837`)
---@param eventGroup integer
---@param eventDataSize integer
---@param playerBits integer
---@return integer eventData
function ScriptStatic.triggerScriptEvent2(eventGroup, eventDataSize, playerBits) end

--- Loads the resource and returns a Promise (never yields). Resolves with `scriptName`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_SCRIPT` / `HAS_SCRIPT_LOADED`.
---@param scriptName string
---@param timeoutMs? integer
---@return fx.Promise<string>
function ScriptStatic.loadScriptAsync(scriptName, timeoutMs) end

--- Loads the resource and returns a Promise (never yields). Resolves with `scriptHash` (as a hash).
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_SCRIPT_WITH_NAME_HASH` / `HAS_SCRIPT_WITH_NAME_HASH_LOADED`.
---@param scriptHash integer|string
---@param timeoutMs? integer
---@return fx.Promise<integer>
function ScriptStatic.loadScriptWithNameHashAsync(scriptHash, timeoutMs) end

