---@meta
---@diagnostic disable
-- fx.Keybind (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.KeybindOptions
---@field key string Default key: 'E', 'F5', 'LMENU'... (or a mouse / pad button name with `device`)
---@field description? string Text shown in Settings > Key Bindings > FiveM (default: the name)
---@field device? string 'keyboard' (default), 'mouse_button', 'mouse_wheel', 'pad_digitalbutton'...
---@field onPress? fun() Called on each press
---@field onRelease? fun(heldMs: integer) Called on release, with the time the key was held
---@field onHold? fun() Called once the key has been held for `holdTime`
---@field holdTime? integer Milliseconds for `onHold` (default 500)

---A key binding. The player can change its key in the settings: `label` and `token` always show the current one.
---@class fx.KeyBinding
---@field name string
---@field command string The +/- command pair: `+<resource>_<name>` / `-<resource>_<name>`
---@field index integer (read-only) Control index of the binding (hash of the + command | 0x80000000), as read by GET_CONTROL_INSTRUCTIONAL_BUTTON
---@field token string (read-only) `~INPUT_<hash of the + command>~` (no high bit, unlike `index`): shows the bound key inside a HUD / help text
---@field label string (read-only) Key currently bound, e.g. "E" (special keys come as "b_<id>")
---@field isDown boolean (read-only) The key is held
---@field enabled boolean Set to false to stop the callbacks (menu open, player dead...); the binding stays
local KeyBinding = {}

---@param fn fun()
---@return fun() off
function KeyBinding:onPress(fn) end

---@param fn fun(heldMs: integer)
---@return fun() off
function KeyBinding:onRelease(fn) end

---Called once the key has been held for `ms`, once per press.
---@param ms integer
---@param fn fun()
---@return fun() off
function KeyBinding:onHold(ms, fn) end

---`fx.Keybind(name, options)` registers a key binding (REGISTER_KEY_MAPPING). The default key only applies the first
---time a player sees the binding: FiveM then saves the player's choice under the command name, so keep `name` stable.
---@class fx.Keybind
---@overload fun(name: string, options: fx.KeybindOptions): fx.KeyBinding
local KeybindStatic = {}

---The binding registered under this name in this resource, or nil.
---@param name string
---@return fx.KeyBinding?
function KeybindStatic.get(name) end

