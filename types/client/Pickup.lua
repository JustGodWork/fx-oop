---@meta
---@diagnostic disable
-- fx.Pickup (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Pickup
---@field handle integer Raw handle.
---@field coords vector3 (read-only) [GET_PICKUP_COORDS]
---@field exists boolean (read-only) [DOES_PICKUP_EXIST]
---@field hasBeenCollected boolean (read-only) [HAS_PICKUP_BEEN_COLLECTED]
---@field hasControl boolean (read-only) [NETWORK_HAS_CONTROL_OF_PICKUP]
---@field object? fx.Object (read-only) [GET_PICKUP_OBJECT]
local Pickup = {}

--- **Native**: `ADD_BLIP_FOR_PICKUP` (`0xBE339365C863BD36`)
---@return fx.Blip? result
function Pickup:addBlip() end

--- **Native**: `ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME` (`0x3F6167F351168730`)
---@param roomName string
---@return fx.Pickup self
function Pickup:addToInteriorRoomByName(roomName) end

--- **Native**: `HIDE_PORTABLE_PICKUP_WHEN_DETACHED` (`0x867458251D47CCB2`)
---@param toggle boolean
---@return fx.Pickup self
function Pickup:hidePortableWhenDetached(toggle) end

--- **Native**: `REMOVE_PICKUP` (`0x3288D8ACAECD2AB2`)
---@return nil
function Pickup:remove() end

--- **Native**: `SET_PICKUP_REGENERATION_TIME` (`0x78015C9B4B3ECC9D`)
---@param duration integer
---@return fx.Pickup self
function Pickup:setRegenerationTime(duration) end

---@class fx.PickupStatic
---@overload fun(handle: integer): fx.Pickup?
local PickupStatic = {}

--- True when value is an fx.Pickup, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function PickupStatic.is(value) end

--- Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- **Native**: `CREATE_PICKUP` (`0xFBA08C503DD5FA58`)
---@param pickupHash integer|string
---@param pos vector3
---@param p4 integer
---@param value integer
---@param p6 boolean
---@param modelHash fx.Model|integer|string
---@return fx.Pickup? result
function PickupStatic.create(pickupHash, pos, p4, value, p6, modelHash) end

--- Creates an ambient pickup given the hash. Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
--- **Native**: `CREATE_AMBIENT_PICKUP` (`0x673966A0C0FD7171`)
---@param pickupHash integer|string
---@param pos vector3
---@param flags integer
---@param value integer
---@param modelHash fx.Model|integer|string
---@param returnHandle boolean
---@param p8 boolean
---@return fx.Pickup? result
function PickupStatic.createAmbient(pickupHash, pos, flags, value, modelHash, returnHandle, p8) end

--- ```
--- Pickup hashes: pastebin.com/8EuSv2r1
--- flags:
--- 8 (1 << 3): place on ground
--- 512 (1 << 9): spin around
--- ```
--- **Native**: `CREATE_PICKUP_ROTATE` (`0x891804727E0A98B7`)
---@param pickupHash integer|string
---@param pos vector3
---@param rot vector3
---@param flag integer
---@param amount integer
---@param p9 any
---@param p10 boolean
---@param modelHash fx.Model|integer|string
---@return fx.Pickup? result
function PickupStatic.createRotate(pickupHash, pos, rot, flag, amount, p9, p10, modelHash) end

