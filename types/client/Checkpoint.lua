---@meta
---@diagnostic disable
-- fx.Checkpoint (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.CheckpointCreateOptions
---@field type integer Checkpoint type (ids shifted about +3 in build 2189: no default)
---@field coords vector3
---@field next? vector3 Where the arrow points (default coords)
---@field diameter? number Default 2.0
---@field color? integer[]|{r: integer, g: integer, b: integer, a?: integer} Cylinder colour (255, 255, 0, 127)
---@field iconColor? integer[]|{r: integer, g: integer, b: integer, a?: integer}
---@field reserved? integer Number / icon for types 42-44
---@class fx.Checkpoint
---@field color integer[]|{r: integer, g: integer, b: integer, a?: integer} (write-only) Cylinder colour (SET_CHECKPOINT_RGBA).
---@field iconColor integer[]|{r: integer, g: integer, b: integer, a?: integer} (write-only) Icon colour (SET_CHECKPOINT_RGBA2).
---@field handle integer Raw handle.
local Checkpoint = {}

--- **Native**: `DELETE_CHECKPOINT` (`0xF5ED37F54CD4D52E`)
---@return nil
function Checkpoint:delete() end

--- ```
--- Sets the cylinder height of the checkpoint.
--- Parameters:
--- * nearHeight - The height of the checkpoint when inside of the radius.
--- * farHeight - The height of the checkpoint when outside of the radius.
--- * radius - The radius of the checkpoint.
--- ```
--- **Native**: `SET_CHECKPOINT_CYLINDER_HEIGHT` (`0x2707AAE9D9297D89`)
---@param nearHeight number
---@param farHeight number
---@param radius number
---@return fx.Checkpoint self
function Checkpoint:setCylinderHeight(nearHeight, farHeight, radius) end

--- This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.
--- **Native**: `SET_CHECKPOINT_ICON_HEIGHT` (`0x4B5B4DA5D79F1943`)
---@param height_multiplier number The multiplier for the icon height above the checkpoint's coordinates. Default is 1.0
---@return fx.Checkpoint self
function Checkpoint:setIconHeight(height_multiplier) end

--- **Native**: `SET_CHECKPOINT_ICON_SCALE` (`0x44621483FF966526`)
---@param scale number
---@return fx.Checkpoint self
function Checkpoint:setIconScale(scale) end

--- ```
--- Sets the checkpoint color.
--- ```
--- **Native**: `SET_CHECKPOINT_RGBA` (`0x7167371E8AD747F7`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return fx.Checkpoint self
function Checkpoint:setRgba(red, green, blue, alpha) end

--- ```
--- Sets the checkpoint icon color.
--- ```
--- **Native**: `SET_CHECKPOINT_RGBA2` (`0xB9EA40907C680580`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return fx.Checkpoint self
function Checkpoint:setRgba2(red, green, blue, alpha) end

---@class fx.CheckpointStatic
---@overload fun(handle: integer): fx.Checkpoint?
local CheckpointStatic = {}

---Creates a checkpoint once (the game draws it). Delete it with cp:delete().
---@param options fx.CheckpointCreateOptions
---@return fx.Checkpoint?
function CheckpointStatic.create(options) end

--- True when value is an fx.Checkpoint, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function CheckpointStatic.is(value) end

--- ```
--- Creates a checkpoint. Returns the handle of the checkpoint.
--- 20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.
--- Parameters:
--- * type - The type of checkpoint to create. See below for a list of checkpoint types.
--- * pos1 - The position of the checkpoint.
--- * pos2 - The position of the next checkpoint to point to.
--- * diameter - The diameter of the checkpoint.
--- * color - The color of the checkpoint.
--- * reserved - Special parameter, see below for details. Usually set to 0 in the scripts.
--- Checkpoint types (prior to game build 2189):
--- 0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
--- 35-38-------Ring: Airplane Up, Left, Right, UpsideDown
--- 39----------?
--- 40----------Ring: just a ring
--- 41----------?
--- 42-44-------Cylinder w/ number (uses 'reserved' parameter)
--- 45-47-------Cylinder no arrow or number
--- If using type 42-44, reserved sets number / number and shape to display
--- 0-99------------Just numbers (0-99)
--- 100-109-----------------Arrow (0-9)
--- 110-119------------Two arrows (0-9)
--- 120-129----------Three arrows (0-9)
--- 130-139----------------Circle (0-9)
--- 140-149------------CycleArrow (0-9)
--- 150-159----------------Circle (0-9)
--- 160-169----Circle  w/ pointer (0-9)
--- 170-179-------Perforated ring (0-9)
--- 180-189----------------Sphere (0-9)
--- ```
---
--- [Checkpoint Types](https://docs.fivem.net/docs/game-references/checkpoints/) as of game build 2189
--- **Native**: `CREATE_CHECKPOINT` (`0x0134F0835AB6BFCB`)
---@param type_ integer
---@param posX1 number
---@param posY1 number
---@param posZ1 number
---@param posX2 number
---@param posY2 number
---@param posZ2 number
---@param diameter number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param reserved integer
---@return fx.Checkpoint? result
function CheckpointStatic.createNative(type_, posX1, posY1, posZ1, posX2, posY2, posZ2, diameter, red, green, blue, alpha, reserved) end

