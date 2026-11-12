---@meta
---@diagnostic disable
-- fx.Blip (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.ServerBlipCreateOptions
---@field coords? vector3
---@field entity? fx.Entity|integer
---@field radius? { coords: vector3, radius: number }
---@field area? { coords: vector3, width: number, height: number }
---@field sprite? fx.Enum.BlipSprite|integer
---@class fx.Blip
---@field handle integer Raw handle.
local Blip = {}

--- Removes the blip from your map.
--- **Note:** This function only works on the script that created the blip, if you wish to remove blips created by other scripts, see [`SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT`](#\_0xB98236CAAECEF897).
---
--- **This is the server-side RPC native equivalent of the client native [REMOVE_BLIP](?\_0x86A652570E5F25DD).**
--- **Native**: `REMOVE_BLIP` (`0xD8C3C1CD`)
---@return nil
function Blip:remove() end

--- Sets the displayed sprite for a specific blip.
--- There's a [list of sprites](https://docs.fivem.net/docs/game-references/blips/) on the FiveM documentation site.
---
--- **This is the server-side RPC native equivalent of the client native [SET_BLIP_SPRITE](?\_0xDF735600A4696DAF).**
--- **Native**: `SET_BLIP_SPRITE` (`0x8DBBB0B9`)
---@param spriteId fx.Enum.BlipSprite|integer The sprite ID to set.
---@return fx.Blip self
function Blip:setSprite(spriteId) end

---@class fx.BlipStatic
---@overload fun(handle: integer): fx.Blip?
local BlipStatic = {}

---Creates a blip for EVERY client (also replayed to players joining later). The server only supports creating,
---the sprite and removal: colour, scale and name are client-only.
---@param options fx.ServerBlipCreateOptions
---@return fx.Blip?
function BlipStatic.create(options) end

--- True when value is an fx.Blip, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function BlipStatic.is(value) end

--- Adds a rectangular blip for the specified coordinates/area.
--- It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
--- By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
--- (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
---
--- **This is the server-side RPC native equivalent of the client native [\_ADD_BLIP_FOR_AREA](?\_0xCE5D0E5E315DB238).**
--- **Native**: `ADD_BLIP_FOR_AREA` (`0x6228F159`)
---@param coords vector3 The coordinate of the center of the blip.
---@param width number The width of the blip.
---@param height number The height of the blip.
---@return fx.Blip? result The blip.
function BlipStatic.addForArea(coords, width, height) end

--- Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
---
--- **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_COORD](?\_0x5A039BB0BCA604B6).**
--- **Native**: `ADD_BLIP_FOR_COORD` (`0xC6F43D0E`)
---@param coords vector3 The X coordinate to create the blip on. / The Y coordinate. / The Z coordinate.
---@return fx.Blip? result A blip.
function BlipStatic.addForCoord(coords) end

--- Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
--- Example image:
--- ![example](https://i.imgur.com/fDCmHVD.png)
---
--- **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_RADIUS](?\_0x46818D79B1F7499A).**
--- **Native**: `ADD_BLIP_FOR_RADIUS` (`0x4626756C`)
---@param pos vector3 The position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param radius number The number that defines the radius of the blip circle
---@return fx.Blip? result The blip that can be manipulated with every `SetBlip` natives
function BlipStatic.addForRadius(pos, radius) end

