---@meta
---@diagnostic disable
-- fx.Rope (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.RopeCreateOptions
---@field coords vector3
---@field length number
---@field rot? vector3
---@field type? fx.Enum.PhysicsRopeType|integer Default 1 (native doc example)
---@field minLength? number Default 0.0
---@field lengthChangeRate? number Default 0.5
---@field breakable? boolean Default false
---@field collision? boolean Default false
---@field timeout? integer Texture loading timeout (ms)
---@class fx.Rope
---@field handle integer Raw handle.
---@field distanceBetweenEnds number (read-only) [ROPE_GET_DISTANCE_BETWEEN_ENDS]
---@field doesBelongToThisScript boolean (read-only) [DOES_ROPE_BELONG_TO_THIS_SCRIPT] Return if the rope was generated or not by the script where the native is called.
---@field exists boolean (read-only) [DOES_ROPE_EXIST] For an example on how to use this native please refer to [ADD_ROPE](#\_0xE832D760399EB220)
---@field flags fx.Enum.RopeFlags (read-only) [GET_ROPE_FLAGS]
---@field lastVertexCoord vector3 (read-only) [GET_ROPE_LAST_VERTEX_COORD]
---@field lengthChangeRate number [GET_ROPE_LENGTH_CHANGE_RATE / SET_ROPE_LENGTH_CHANGE_RATE]
---@field timeMultiplier number (read-only) [GET_ROPE_TIME_MULTIPLIER]
---@field updateOrder integer [GET_ROPE_UPDATE_ORDER / ROPE_SET_UPDATE_ORDER]
---@field vertexCount integer (read-only) [GET_ROPE_VERTEX_COUNT]
local Rope = {}

---Deletes the rope; unloads the rope textures when it was the last rope (raw DELETE_ROPE: deleteNative).
---@return nil
function Rope:delete() end

--- ```
--- Attaches entity 1 to entity 2.
--- ```
--- **Native**: `ATTACH_ENTITIES_TO_ROPE` (`0x3D95EC8B6D940AC3`)
---@param ent1 fx.Entity|integer
---@param ent2 fx.Entity|integer
---@param ent12 vector3
---@param ent22 vector3
---@param length number
---@param p10 boolean
---@param p11 boolean
---@param boneName1 string
---@param boneName2 string
---@return fx.Rope self
function Rope:attachEntities(ent1, ent2, ent12, ent22, length, p10, p11, boneName1, boneName2) end

--- ```
--- The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.
--- ```
--- **Native**: `ATTACH_ROPE_TO_ENTITY` (`0x4B490A6832559A65`)
---@param entity fx.Entity|integer
---@param coords vector3
---@param p5 boolean
---@return fx.Rope self
function Rope:attachToEntity(entity, coords, p5) end

--- **Native**: `ROPE_CONVERT_TO_SIMPLE` (`0x5389D48EFA2F079A`)
---@return fx.Rope self
function Rope:convertToSimple() end

--- **Native**: `DELETE_CHILD_ROPE` (`0xAA5D6B1888E4DB20`)
---@return fx.Rope self
function Rope:deleteChild() end

--- Deletes the rope with the specified handle.
---
--- You should check if the rope exists before trying to delete it, see [DOES_ROPE_EXIST](#\_0xFD5448BE3111ED96).
---
--- For an example on how to use this native please refer to [ADD_ROPE](#\_0xE832D760399EB220)
--- **Native**: `DELETE_ROPE` (`0x52B4829281364649`)
---@return nil
function Rope:deleteNative() end

--- **Native**: `DETACH_ROPE_FROM_ENTITY` (`0xBCF3026912A8647D`)
---@param entity fx.Entity|integer
---@return fx.Rope self
function Rope:detachFromEntity(entity) end

--- ```
--- Forces a rope to a certain length.
--- ```
--- **Native**: `ROPE_FORCE_LENGTH` (`0xD009F759A723DB1B`)
---@param length number
---@return fx.Rope self
function Rope:forceLength(length) end

--- **Native**: `GET_ROPE_VERTEX_COORD` (`0xEA61CA8E80F09E4D`)
---@param vertex integer
---@return vector3 result
function Rope:getVertexCoord(vertex) end

--- ```
--- Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
--- ```
--- **Native**: `LOAD_ROPE_DATA` (`0xCBB203C04D1ABD27`)
---@param rope_preset string
---@return fx.Rope self
function Rope:loadData(rope_preset) end

--- **Native**: `PIN_ROPE_VERTEX` (`0x2B320CF14146B69A`)
---@param vertex integer
---@param coords vector3
---@return fx.Rope self
function Rope:pinVertex(vertex, coords) end

--- ```
--- Reset a rope to a certain length.
--- ```
--- **Native**: `ROPE_RESET_LENGTH` (`0xC16DE94D9BEA14A0`)
---@param length number
---@return fx.Rope self
function Rope:resetLength(length) end

--- **Native**: `ROPE_SET_UPDATE_PINVERTS` (`0xC8D667EE52114ABA`)
---@return fx.Rope self
function Rope:setUpdatePinverts() end

--- **Native**: `START_ROPE_UNWINDING_FRONT` (`0x538D1179EC1AA9A9`)
---@return fx.Rope self
function Rope:startUnwindingFront() end

--- **Native**: `START_ROPE_WINDING` (`0x1461C72C889E343E`)
---@return fx.Rope self
function Rope:startWinding() end

--- **Native**: `STOP_ROPE_UNWINDING_FRONT` (`0xFFF3A50779EFBBB3`)
---@return fx.Rope self
function Rope:stopUnwindingFront() end

--- **Native**: `STOP_ROPE_WINDING` (`0xCB2D4AB84A19AA7C`)
---@return fx.Rope self
function Rope:stopWinding() end

--- **Native**: `UNPIN_ROPE_VERTEX` (`0x4B5AE2EEE4A8F180`)
---@param vertex integer
---@return fx.Rope self
function Rope:unpinVertex(vertex) end

---@class fx.RopeStatic
---@overload fun(handle: integer): fx.Rope?
local RopeStatic = {}

---Loads the rope textures (without them ropes are invisible).
---@param timeoutMs? integer
---@return fx.Promise
function RopeStatic.loadTexturesAsync(timeoutMs) end

---Loads the textures, then adds a rope (ADD_ROPE) and activates its physics.
---@param options fx.RopeCreateOptions
---@return fx.Promise<fx.Rope>
function RopeStatic.createAsync(options) end

--- True when value is an fx.Rope, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function RopeStatic.is(value) end

--- ```
--- Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.
--- __
--- Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).
--- Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
--- ```
---
--- There are 8 different rope types in the base game. Full rope data can be found in `ropedata.xml`.
---
--- ```cpp
--- enum ePhysicsRopeType {
---     RopeThin = 0, // Verticies: 1, Radius: 0.03, Textures: rope & rope_n
---     RopeWire6 = 1, // Verticies: 4, Radius: 0.015, Textures: steel_cable & steel_cable_n
---     RopeWire32 = 2, // Verticies: 32, Radius: 0.025, Textures: steel_cable & steel_cable_n
---     RopeMesh = 3, // Verticies: 6, Radius: 0.03, Textures: rope & rope_n
---     RopeThinWire32 = 4, // Verticies: 32, Radius: 0.01, Textures: rope & rope_n
---     RopeReins = 5, // Verticies: 32, Radius: 0.005, Textures: rope & rope_n
---     RopeThin4 = 6, // Verticies: 4, Radius: 0.03, Textures: rope & rope_n
---     RopeWire64 = 7 // Verticies: 64, Radius: 0.025, Textures: steel_cable & steel_cable_n
--- }
--- ```
--- **Native**: `ADD_ROPE` (`0xE832D760399EB220`)
---@param coords vector3 Spawn coordinate component.
---@param rot vector3 Rotation component.
---@param maxLength number The maximum length the rope can droop.
---@param ropeType fx.Enum.PhysicsRopeType|integer The zero-based index of the entry in the `ropedata.xml` file. *NOTE: Using an index which does not exist will crash the game. As of game build 3258, valid values are from `0` to `7` inclusive.*
---@param initLength number The initial length of the rope.
---@param minLength number The minimum length the rope can be.
---@param lengthChangeRate number The speed in which the rope will wind if winding is started.
---@param onlyPPU boolean
---@param collisionOn boolean Whether the rope should have collision. In original scripts this is followed by a LoadRopeData call when set.
---@param lockFromFront boolean If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).
---@param timeMultiplier number The speed as which physics should run at. 1.0f is normal, 2.0f is twice as fast, -1.0f is time going backwards. This can affect gravity, etc.
---@param breakable boolean Whether shooting the rope will break it.
---@param unkPtr any Unknown pointer, always 0 in original scrips.
---@return fx.Rope? result The rope
---@return any unkPtr Unknown pointer, always 0 in original scrips.
function RopeStatic.add(coords, rot, maxLength, ropeType, initLength, minLength, lengthChangeRate, onlyPPU, collisionOn, lockFromFront, timeMultiplier, breakable, unkPtr) end

