---@meta
---@diagnostic disable
-- fx.Convar (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---A convar (`set` / `setr` / `sets` in server.cfg). The client reads only the replicated ones (`setr`).
---```lua
---local locale <const> = fx.Convar("ns_locale")
---print(locale:get("en"), fx.Convar("ns_max_slots"):getInt(4))
---locale:onChange(function(value) print("locale is now", value) end)
---```
---@class fx.ConvarRef
---@field name string
---@field value string (read-only) Current value, "" when not set
local ConvarRef = {}

---@param default? string Returned when the convar is not set (default "")
---@return string
function ConvarRef:get(default) end

---@param default? integer Returned when the convar is not set or not a number (default 0)
---@return integer
function ConvarRef:getInt(default) end

---@param default? number Returned when the convar is not set or not a number (default 0.0)
---@return number
function ConvarRef:getFloat(default) end

---`true`, `1`, `false` or `0`.
---@param default? boolean Returned when the convar is not set (default false)
---@return boolean
function ConvarRef:getBool(default) end

---Calls `fn(value, name)` each time the convar changes. The name may be a pattern (`fx.Convar("ns_*")`): `name` is
---then the convar that changed.
---@param fn fun(value: string, name: string)
---@return fun() off
function ConvarRef:onChange(fn) end

---`fx.Convar(name)`: the convar of that name (one object per name, it does not have to be set).
---@class fx.Convar
---@overload fun(name: string): fx.ConvarRef
local ConvarStatic = {}

