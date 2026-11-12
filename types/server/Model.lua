---@meta
---@diagnostic disable
-- fx.Model (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Model
---@field handle integer Model hash.
---@field hash integer Model hash (same as `handle`).
local Model = {}

---@class fx.ModelStatic
---@overload fun(model: fx.Model|integer|string): fx.Model Model from a name, a backtick hash or a hash (one cached object per hash).
local ModelStatic = {}

--- True when value is an fx.Model, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function ModelStatic.is(value) end

