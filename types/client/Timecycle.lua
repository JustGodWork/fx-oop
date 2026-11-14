---@meta
---@diagnostic disable
-- fx.Timecycle (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---A timecycle modifier: a named set of variables applied over the game's lighting and post effects ("scanline_cam",
---"NG_filmic02", or one created with `fx.Timecycle.create`).
---```lua
---local night <const> = fx.Timecycle.create("my_night", "NG_filmic02")
---night:set("lightning", 0.0)
---night:set("postfx_desaturation", 0.6)
---fx.Timecycle.transitionAsync("my_night", 3.0):await()
---```
---@class fx.TimecycleModifierRef
---@field name string
---@field exists boolean (read-only)
local TimecycleModifierRef = {}

---Values of a variable, nil when the modifier does not set it.
---@param var string
---@return number? value1
---@return number? value2
function TimecycleModifierRef:get(var) end

---Sets a variable of the modifier (added when missing). Applied at once when the modifier is shown.
---@param var string A name of `fx.Timecycle.vars()`
---@param value1 number
---@param value2? number Default 0.0
function TimecycleModifierRef:set(var, value1, value2) end

---@param var string
function TimecycleModifierRef:remove(var) end

---Every variable the modifier sets, with its two values.
---@return table<string, number[]>
function TimecycleModifierRef:vars() end

---A copy of the modifier under a new name.
---@param name string
---@return fx.TimecycleModifierRef
function TimecycleModifierRef:clone(name) end

---Removes the modifier. One of the game's own comes back at the next start of the game.
function TimecycleModifierRef:delete() end
---@class fx.Timecycle
---@field current string? The modifier shown, nil when none. Assign a name to show it, nil to remove it.
---@field strength number Strength of `current`, usually 0 to 1
---@field extra string? A second modifier shown over `current`. Assign a name to show it, nil to remove it.
---@overload fun(name: string): fx.TimecycleModifierRef
local TimecycleStatic = {}

---A new modifier, empty or copied from `from`. Raises when the name is taken.
---@param name string
---@param from? string Modifier to copy
---@return fx.TimecycleModifierRef
function TimecycleStatic.create(name, from) end

---Names of every modifier.
---@return string[]
function TimecycleStatic.all() end

---Every variable a modifier can set, with its default value.
---@return table<string, number>
function TimecycleStatic.vars() end

---Shows a modifier, like assigning `current` and `strength`.
---@param name string
---@param strength? number Default 1.0
function TimecycleStatic.apply(name, strength) end

---Fades to a modifier over `seconds`, or out of the current one when `name` is nil. Resolves at the end.
---@param name string?
---@param seconds number
---@return fx.Promise<nil>
function TimecycleStatic.transitionAsync(name, seconds) end

---Removes the modifiers shown, `current` and `extra`.
function TimecycleStatic.clear() end
