---@meta
---@diagnostic disable
-- fx.Control (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@alias fx.ControlId fx.Enum.Control|integer

---@class fx.ControlDisableOptions
---@field except? fx.ControlId[] With "all": the controls that stay enabled
---@field pad? integer Control type, default 0 (PLAYER_CONTROL)

---@class fx.InstructionalButton
---@field control fx.ControlId|fx.ControlId[] The key shown, several keys for one label (movement keys for instance)
---@field label string
---@class fx.Control
local ControlStatic = {}

---Disables controls every frame until the returned function is called. Disabled controls still report through
---`fx.Control.pressed` and the other readers here.
---```lua
---local stop <const> = fx.Control.disable({ fx.Enum.Control.INPUT_ATTACK, fx.Enum.Control.INPUT_AIM })
---local stopAll <const> = fx.Control.disable("all", { except = { fx.Enum.Control.INPUT_LOOK_LR, fx.Enum.Control.INPUT_LOOK_UD } })
---```
---@param controls fx.ControlId[]|"all"
---@param options? fx.ControlDisableOptions
---@return fun() stop
function ControlStatic.disable(controls, options) end

---Whether the control is held, enabled or not.
---@param control fx.ControlId
---@param pad? integer Default 0
---@return boolean
function ControlStatic.pressed(control, pad) end

---Whether the control went down this frame, enabled or not.
---@param control fx.ControlId
---@param pad? integer Default 0
---@return boolean
function ControlStatic.justPressed(control, pad) end

---Whether the control went up this frame, enabled or not.
---@param control fx.ControlId
---@param pad? integer Default 0
---@return boolean
function ControlStatic.justReleased(control, pad) end

---Position of an axis or trigger: -1 to 1 for a stick or the mouse, 0 to 1 for a trigger. Enabled or not.
---@param control fx.ControlId
---@param pad? integer Default 0
---@return number
function ControlStatic.value(control, pad) end

---Calls `fn` in a new thread each time the control goes down, enabled or not. For a key of the resource's own,
---`fx.Keybind` lets the player change it in the settings.
---@param control fx.ControlId
---@param fn fun()
---@param pad? integer Default 0
---@return fun() off
function ControlStatic.onPress(control, fn, pad) end

---Shows the key hints at the bottom right of the screen until the returned function is called. Shown again with the
---keys of the pad when the player switches to it. A later call replaces the hints.
---```lua
---local hide <const> = fx.Control.instructional({
---  { control = fx.Enum.Control.INPUT_CONTEXT, label = "Open" },
---  { control = { fx.Enum.Control.INPUT_MOVE_LR, fx.Enum.Control.INPUT_MOVE_UD }, label = "Move" },
---})
---```
---@param buttons fx.InstructionalButton[]
---@return fun() hide
function ControlStatic.instructional(buttons) end

