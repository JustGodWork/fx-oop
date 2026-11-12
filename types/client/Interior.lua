---@meta
---@diagnostic disable
-- fx.Interior (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Interior
---@field handle integer Raw handle.
---@field groupId integer (read-only) [GET_INTERIOR_GROUP_ID]
---@field heading number (read-only) [GET_INTERIOR_HEADING]
---@field isCapped boolean (read-only) [IS_INTERIOR_CAPPED]
---@field isDisabled boolean (read-only) [IS_INTERIOR_DISABLED]
---@field isReady boolean (read-only) [IS_INTERIOR_READY]
---@field isValid boolean (read-only) [IS_VALID_INTERIOR]
---@field portalCount integer (read-only) [GET_INTERIOR_PORTAL_COUNT]
---@field roomCount integer (read-only) [GET_INTERIOR_ROOM_COUNT]
local Interior = {}

---Pins the interior in memory and resolves with it once it is ready (PIN_INTERIOR_IN_MEMORY + IS_INTERIOR_READY).
---Never yields. Release it with `unpin()`.
---@param timeoutMs? integer Default 10000
---@return fx.Promise<fx.Interior>
function Interior:loadAsync(timeoutMs) end

--- ```
--- More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/
--- ```
--- **Native**: `ACTIVATE_INTERIOR_ENTITY_SET` (`0x55E86AF2712B36A1`)
---@param entitySetName string
---@return fx.Interior self
function Interior:activateEntitySet(entitySetName) end

--- ```
--- Does something similar to INTERIOR::DISABLE_INTERIOR
--- ```
--- **Native**: `CAP_INTERIOR` (`0xD9175F941610DB54`)
---@param toggle boolean
---@return fx.Interior self
function Interior:cap(toggle) end

--- **Native**: `DEACTIVATE_INTERIOR_ENTITY_SET` (`0x420BD37289EEE162`)
---@param entitySetName string
---@return fx.Interior self
function Interior:deactivateEntitySet(entitySetName) end

--- ```
--- Example:
--- This removes the interior from the strip club and when trying to walk inside the player just falls:
--- INTERIOR::DISABLE_INTERIOR(118018, true);
--- ```
--- **Native**: `DISABLE_INTERIOR` (`0x6170941419D7D8EC`)
---@param toggle boolean
---@return fx.Interior self
function Interior:disable(toggle) end

--- **Native**: `FORCE_ROOM_FOR_GAME_VIEWPORT` (`0x920D853F3E17F1DA`)
---@param roomHashKey integer|string
---@return fx.Interior self
function Interior:forceRoomForGameViewport(roomHashKey) end

--- **Native**: `GET_INTERIOR_ENTITIES_EXTENTS` (`0x322B1192`)
---@return number bbMinX
---@return number bbMinY
---@return number bbMinZ
---@return number bbMaxX
---@return number bbMaxY
---@return number bbMaxZ
function Interior:getEntitiesExtents() end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `GET_INTERIOR_LOCATION_AND_NAMEHASH` (`0x252BDC06B73FA6EA`)
---@return vector3 position
---@return integer nameHash
function Interior:getLocationAndNamehash() end

--- **Native**: `GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS` (`0x9E3B3E6D66F6E22F`)
---@param coords vector3
---@return vector3 result
function Interior:getOffsetFromInWorldCoords(coords) end

--- **Native**: `GET_INTERIOR_PORTAL_CORNER_POSITION` (`0xF772BB2C`)
---@param portalIndex integer Interior portal index.
---@param cornerIndex integer Portal's corner index.
---@return number posX
---@return number posY
---@return number posZ
function Interior:getPortalCornerPosition(portalIndex, cornerIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ENTITY_ARCHETYPE` (`0x9A0E1700`)
---@param portalIndex integer Interior portal index.
---@param entityIndex integer Portal entity index.
---@return integer result Portal entity archetype.
function Interior:getPortalEntityArchetype(portalIndex, entityIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ENTITY_COUNT` (`0xC68021B`)
---@param portalIndex integer Interior portal index.
---@return integer result Portal entity count.
function Interior:getPortalEntityCount(portalIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ENTITY_FLAG` (`0x9DA2E811`)
---@param portalIndex integer Interior portal index.
---@param entityIndex integer Portal entity index.
---@return integer result Portal entity flag.
function Interior:getPortalEntityFlag(portalIndex, entityIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ENTITY_POSITION` (`0x9B7AB83C`)
---@param portalIndex integer Interior portal index.
---@param entityIndex integer Portal entity index.
---@return number posX
---@return number posY
---@return number posZ
function Interior:getPortalEntityPosition(portalIndex, entityIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ENTITY_ROTATION` (`0x9F9CEB63`)
---@param portalIndex integer Interior portal index.
---@param entityIndex integer Portal entity index.
---@return number rotX
---@return number rotY
---@return number rotZ
---@return number rotW
function Interior:getPortalEntityRotation(portalIndex, entityIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_FLAG` (`0xC74DA47C`)
---@param portalIndex integer Interior portal index.
---@return integer result Portal's flag.
function Interior:getPortalFlag(portalIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ROOM_FROM` (`0xAA9C141D`)
---@param portalIndex integer Interior portal index.
---@return integer result Portal's room FROM index.
function Interior:getPortalRoomFrom(portalIndex) end

--- **Native**: `GET_INTERIOR_PORTAL_ROOM_TO` (`0x3F47F0E8`)
---@param portalIndex integer Interior portal index.
---@return integer result Portal's room TO index.
function Interior:getPortalRoomTo(portalIndex) end

--- **Native**: `GET_INTERIOR_POSITION` (`0x77A435B0`)
---@return number posX
---@return number posY
---@return number posZ
function Interior:getPosition() end

--- **Native**: `GET_INTERIOR_ROOM_EXTENTS` (`0xF9E795DD`)
---@param roomIndex integer Interior room index.
---@return number bbMinX
---@return number bbMinY
---@return number bbMinZ
---@return number bbMaxX
---@return number bbMaxY
---@return number bbMaxZ
function Interior:getRoomExtents(roomIndex) end

--- **Native**: `GET_INTERIOR_ROOM_FLAG` (`0x6B7AF743`)
---@param roomIndex integer Interior room index.
---@return integer result Room's flag.
function Interior:getRoomFlag(roomIndex) end

--- **Native**: `GET_INTERIOR_ROOM_INDEX_BY_HASH` (`0xE0EE05F8`)
---@param roomHash integer Interior room hash.
---@return integer result Room index, -1 if failed.
function Interior:getRoomIndexByHash(roomHash) end

--- **Native**: `GET_INTERIOR_ROOM_NAME` (`0x11755DF2`)
---@param roomIndex integer Interior room index.
---@return string result Room's name.
function Interior:getRoomName(roomIndex) end

--- **Native**: `GET_INTERIOR_ROOM_TIMECYCLE` (`0x82BA3F88`)
---@param roomIndex integer Interior room index.
---@return integer result Room's timecycle hash.
function Interior:getRoomTimecycle(roomIndex) end

--- **Native**: `GET_INTERIOR_ROTATION` (`0x5A039998`)
---@return number rotx
---@return number rotY
---@return number rotZ
---@return number rotW
function Interior:getRotation() end

--- **Native**: `IS_INTERIOR_ENTITY_SET_ACTIVE` (`0x35F7DD45E8C0A16D`)
---@param entitySetName string
---@return boolean result
function Interior:isEntitySetActive(entitySetName) end

--- **Native**: `PIN_INTERIOR_IN_MEMORY` (`0x2CA429C029CCF247`)
---@return fx.Interior self
function Interior:pinInMemory() end

--- **Native**: `REFRESH_INTERIOR` (`0x41F37C3427C75AE0`)
---@return fx.Interior self
function Interior:refresh() end

--- ```
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "V_FIB01_cur_elev");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "V_Office_gnd_lifts");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "limbo");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "v_fib01_jan_elev");
--- STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
--- ```
--- **Native**: `REQUEST_MODELS_IN_ROOM` (`0x8A7A40100EDFEC58`)
---@param roomName string
---@return fx.Interior self
function Interior:requestModelsInRoom(roomName) end

--- **Native**: `SET_INTERIOR_ACTIVE` (`0xE37B76C387BE28ED`)
---@param toggle boolean
---@return fx.Interior self
function Interior:setActive(toggle) end

--- **Native**: `SET_INTERIOR_ENTITY_SET_COLOR` (`0xC1F1920BAF281317`)
---@param entitySetName string
---@param color integer
---@return fx.Interior self
function Interior:setEntitySetColor(entitySetName, color) end

--- Set the interior and room where the light should be active.
--- **Native**: `SET_LIGHT_INTERIOR` (`0x1CC72443`)
---@param isPortal boolean Attach to a portal or room
---@param roomIndex integer The specific room
---@return fx.Interior self
function Interior:setLight(isPortal, roomIndex) end

--- **Native**: `SET_INTERIOR_PORTAL_CORNER_POSITION` (`0x87F43553`)
---@param portalIndex integer Interior portal index.
---@param cornerIndex integer Interior corner index.
---@param pos vector3
---@return fx.Interior self
function Interior:setPortalCornerPosition(portalIndex, cornerIndex, pos) end

--- **Native**: `SET_INTERIOR_PORTAL_ENTITY_FLAG` (`0x8349CD76`)
---@param portalIndex integer Interior portal index.
---@param entityIndex integer Portal entity index.
---@param flag integer New flag value.
---@return fx.Interior self
function Interior:setPortalEntityFlag(portalIndex, entityIndex, flag) end

--- **Native**: `SET_INTERIOR_PORTAL_FLAG` (`0x88B2355E`)
---@param portalIndex integer Interior portal index.
---@param flag integer New flag value.
---@return fx.Interior self
function Interior:setPortalFlag(portalIndex, flag) end

--- **Native**: `SET_INTERIOR_PORTAL_ROOM_FROM` (`0x298FC783`)
---@param portalIndex integer Interior portal index.
---@param roomFrom integer New value.
---@return fx.Interior self
function Interior:setPortalRoomFrom(portalIndex, roomFrom) end

--- **Native**: `SET_INTERIOR_PORTAL_ROOM_TO` (`0x58982680`)
---@param portalIndex integer Interior portal index.
---@param roomTo integer New value.
---@return fx.Interior self
function Interior:setPortalRoomTo(portalIndex, roomTo) end

--- **Native**: `SET_INTERIOR_ROOM_EXTENTS` (`0x4FDCF51E`)
---@param roomIndex integer Interior room index.
---@param bbMin vector3
---@param bbMax vector3
---@return fx.Interior self
function Interior:setRoomExtents(roomIndex, bbMin, bbMax) end

--- **Native**: `SET_INTERIOR_ROOM_FLAG` (`0x5518D60B`)
---@param roomIndex integer Interior room index.
---@param flag integer New flag value.
---@return fx.Interior self
function Interior:setRoomFlag(roomIndex, flag) end

--- **Native**: `SET_INTERIOR_ROOM_TIMECYCLE` (`0x31C9A848`)
---@param roomIndex integer Interior room index.
---@param timecycleHash integer Timecycle hash.
---@return fx.Interior self
function Interior:setRoomTimecycle(roomIndex, timecycleHash) end

--- ```
--- Does something similar to INTERIOR::DISABLE_INTERIOR.
--- You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.
--- ```
--- **Native**: `UNPIN_INTERIOR` (`0x261CCE7EED010641`)
---@return fx.Interior self
function Interior:unpin() end

---@class fx.InteriorStatic
---@overload fun(handle: integer): fx.Interior?
---@field fromPrimaryView? fx.Interior (read-only) [GET_INTERIOR_FROM_PRIMARY_VIEW]
---@field isScene boolean (read-only) [IS_INTERIOR_SCENE]
---@field roomKeyForGameViewport integer (read-only) [GET_ROOM_KEY_FOR_GAME_VIEWPORT]
local InteriorStatic = {}

--- True when value is an fx.Interior, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function InteriorStatic.is(value) end

--- **Native**: `CLEAR_ROOM_FOR_GAME_VIEWPORT` (`0x23B59D8912F94246`)
function InteriorStatic.clearRoomForGameViewport() end

--- ```
--- This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
--- ```
--- **Native**: `ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME` (`0xA97F257D0151A6AB`)
---@param mapObjectHash integer|string
function InteriorStatic.enableExteriorCullModelThisFrame(mapObjectHash) end

--- **Native**: `ENABLE_SCRIPT_CULL_MODEL_THIS_FRAME` (`0x50C375537449F369`)
---@param mapObjectHash integer|string
function InteriorStatic.enableScriptCullModelThisFrame(mapObjectHash) end

--- ```
--- Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.
--- Example for VB.NET
--- Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)
--- ```
--- **Native**: `GET_INTERIOR_AT_COORDS` (`0xB0F7F8663821D9C3`)
---@param coords vector3
---@return fx.Interior? result
function InteriorStatic.getAtCoords(coords) end

--- ```
--- Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.
--- Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))
--- Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.
--- Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.
--- ```
--- **Native**: `GET_INTERIOR_AT_COORDS_WITH_TYPE` (`0x05B7A89BD78797FC`)
---@param coords vector3
---@param interiorType string
---@return fx.Interior? result
function InteriorStatic.getAtCoordsWithType(coords, interiorType) end

--- ```
--- Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
--- ```
--- **Native**: `GET_INTERIOR_AT_COORDS_WITH_TYPEHASH` (`0xF0F77ADB9F67E79D`)
---@param coords vector3
---@param typeHash integer|string
---@return fx.Interior? result
function InteriorStatic.getAtCoordsWithTypehash(coords, typeHash) end

--- **Native**: `GET_INTERIOR_FROM_COLLISION` (`0xEC4CF9FCB29A4424`)
---@param coords vector3
---@return fx.Interior? result
function InteriorStatic.getFromCollision(coords) end

--- Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
--- **Native**: `IS_COLLISION_MARKED_OUTSIDE` (`0xEEA5AC2EDA7C33E8`)
---@param coords vector3
---@return boolean result
function InteriorStatic.isCollisionMarkedOutside(coords) end

