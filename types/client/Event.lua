---@meta
---@diagnostic disable
-- fx.Event (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Event
local EventStatic = {}

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- ```
--- **Native**: `ADD_SHOCKING_EVENT_AT_POSITION` (`0xD9F8455409B525E9`)
---@param eventType integer
---@param coords vector3
---@param duration number
---@return integer result
function EventStatic.addShockingEventAtPosition(eventType, coords, duration) end

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- ```
--- **Native**: `ADD_SHOCKING_EVENT_FOR_ENTITY` (`0x7FD8F3BE76F89422`)
---@param eventType integer
---@param entity fx.Entity|integer
---@param duration number
---@return integer result
function EventStatic.addShockingEventForEntity(eventType, entity, duration) end

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- This is limited to 4 blocked events at a time.
--- ```
--- **Native**: `BLOCK_DECISION_MAKER_EVENT` (`0xE42FCDFD0E4196F7`)
---@param name integer|string
---@param eventType integer
function EventStatic.blockDecisionMakerEvent(name, eventType) end

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- ```
--- **Native**: `CLEAR_DECISION_MAKER_EVENT_RESPONSE` (`0x4FC9381A7AEE8968`)
---@param name integer|string
---@param eventType integer
function EventStatic.clearDecisionMakerEventResponse(name, eventType) end

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- ```
--- **Native**: `IS_SHOCKING_EVENT_IN_SPHERE` (`0x1374ABB7C15BAB92`)
---@param eventType integer
---@param coords vector3
---@param radius number
---@return boolean result
function EventStatic.isShockingEventInSphere(eventType, coords, radius) end

--- **Native**: `REMOVE_ALL_SHOCKING_EVENTS` (`0xEAABE8FDFA21274C`)
---@param p0 boolean
function EventStatic.removeAllShockingEvents(p0) end

--- **Native**: `REMOVE_SHOCKING_EVENT` (`0x2CDA538C44C6CCE5`)
---@param event integer
---@return boolean result
function EventStatic.removeShockingEvent(event) end

--- **Native**: `REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS` (`0x340F1415B68AEADE`)
function EventStatic.removeShockingEventSpawnBlockingAreas() end

--- **Native**: `SUPPRESS_AGITATION_EVENTS_NEXT_FRAME` (`0x5F3B7749C112D552`)
function EventStatic.suppressAgitationEventsNextFrame() end

--- **Native**: `SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME` (`0x2F9A292AD0A3BD89`)
function EventStatic.suppressShockingEventsNextFrame() end

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- ```
--- **Native**: `SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME` (`0x3FD2EC8BF1F1CF30`)
---@param eventType integer
function EventStatic.suppressShockingEventTypeNextFrame(eventType) end

--- ```
--- eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--- ```
--- **Native**: `UNBLOCK_DECISION_MAKER_EVENT` (`0xD7CD9CF34F2C99E8`)
---@param name integer|string
---@param eventType integer
function EventStatic.unblockDecisionMakerEvent(name, eventType) end

