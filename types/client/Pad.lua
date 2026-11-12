---@meta
---@diagnostic disable
-- fx.Pad (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Pad
---@field allowMovementWhileZoomed boolean (read-only) [GET_ALLOW_MOVEMENT_WHILE_ZOOMED]
---@field isLookInverted boolean (read-only) [IS_LOOK_INVERTED]
---@field isUsingAlternateDriveby boolean (read-only) [GET_IS_USING_ALTERNATE_DRIVEBY]
---@field localPlayerAimState integer (read-only) [GET_LOCAL_PLAYER_AIM_STATE] Returns the local player's targeting mode. See [`SET_PLAYER_TARGETING_MODE`](#\_0xB1906895227793F3).
---@field localPlayerAimState2 integer (read-only) [GET_LOCAL_PLAYER_AIM_STATE_2]
local PadStatic = {}

--- **Native**: `DISABLE_ALL_CONTROL_ACTIONS` (`0x5F4B6931816E599B`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
function PadStatic.disableAllControlActions(padIndex) end

--- [Control values and meaning](https://docs.fivem.net/docs/game-references/controls/#controls)
---
--- Example: `CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true)` disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.
--- Control group 1 and 0 gives the same results as 2. Same results for all players.
--- **Native**: `DISABLE_CONTROL_ACTION` (`0xFE99B66D079CF6BC`)
---@param padIndex integer
---@param control integer
---@param disable boolean
function PadStatic.disableControlAction(padIndex, control, disable) end

--- **Native**: `DISABLE_INPUT_GROUP` (`0x7F4724035FDCA1DD`)
---@param padIndex integer
function PadStatic.disableInputGroup(padIndex) end

--- ```cpp
--- enum ePadType {
---   PLAYER_CONTROL = 0,
---   CAMERA_CONTROL = 1,
---   FRONTEND_CONTRO = 2
--- };
--- ```
--- **Native**: `ENABLE_ALL_CONTROL_ACTIONS` (`0xA5FFE9B05F199DE7`)
---@param padIndex fx.Enum.PadType|integer The control system instance to use.
function PadStatic.enableAllControlActions(padIndex) end

--- ```
--- control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Control.cs
--- and
--- https://docs.fivem.net/game-references/controls/
--- 0, 1 and 2 used in the scripts.
--- Control values from the decompiled scripts:
--- 0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36,
--- 37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100
--- ,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19
--- 0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2
--- 20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257,
--- 261,262,263,264,286,287,288,289,337,338,339,340,341,342,343
--- INPUTGROUP_MOVE
--- INPUTGROUP_LOOK
--- INPUTGROUP_WHEEL
--- INPUTGROUP_CELLPHONE_NAVIGATE
--- INPUTGROUP_CELLPHONE_NAVIGATE_UD
--- INPUTGROUP_CELLPHONE_NAVIGATE_LR
--- INPUTGROUP_FRONTEND_DPAD_ALL
--- INPUTGROUP_FRONTEND_DPAD_UD
--- INPUTGROUP_FRONTEND_DPAD_LR
--- INPUTGROUP_FRONTEND_LSTICK_ALL
--- INPUTGROUP_FRONTEND_RSTICK_ALL
--- INPUTGROUP_FRONTEND_GENERIC_UD
--- INPUTGROUP_FRONTEND_GENERIC_LR
--- INPUTGROUP_FRONTEND_GENERIC_ALL
--- INPUTGROUP_FRONTEND_BUMPERS
--- INPUTGROUP_FRONTEND_TRIGGERS
--- INPUTGROUP_FRONTEND_STICKS
--- INPUTGROUP_SCRIPT_DPAD_ALL
--- INPUTGROUP_SCRIPT_DPAD_UD
--- INPUTGROUP_SCRIPT_DPAD_LR
--- INPUTGROUP_SCRIPT_LSTICK_ALL
--- INPUTGROUP_SCRIPT_RSTICK_ALL
--- INPUTGROUP_SCRIPT_BUMPERS
--- INPUTGROUP_SCRIPT_TRIGGERS
--- INPUTGROUP_WEAPON_WHEEL_CYCLE
--- INPUTGROUP_FLY
--- INPUTGROUP_SUB
--- INPUTGROUP_VEH_MOVE_ALL
--- [...]
--- **Native**: `ENABLE_CONTROL_ACTION` (`0x351220255D64C155`)
---@param padIndex integer
---@param control integer
---@param enable boolean
function PadStatic.enableControlAction(padIndex, control, enable) end

--- **Native**: `GET_CONTROL_GROUP_INSTRUCTIONAL_BUTTON` (`0x80C2FD58D720C801`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param controlGroup integer
---@param p2 boolean
---@return string result
function PadStatic.getControlGroupInstructionalButton(padIndex, controlGroup, p2) end

--- ```
--- formerly called _GET_CONTROL_ACTION_NAME incorrectly
--- p2 appears to always be true.
--- p2 is unused variable in function.
--- EG:
--- GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/
--- GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/
--- GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/
--- gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378
--- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.
--- ```
--- **Native**: `GET_CONTROL_INSTRUCTIONAL_BUTTON` (`0x0499D7B09FC9B407`)
---@param padIndex integer
---@param control integer
---@param p2 boolean
---@return string result
function PadStatic.getControlInstructionalButton(padIndex, control, p2) end

--- **Native**: `GET_CONTROL_NORMAL` (`0xEC3C9B8D5327B563`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number result Returns the value of [`GET_CONTROL_VALUE`](#\_0xD95E79E8686D2C27) normalized, i.e. a real number value between -1.0 and 1.0
function PadStatic.getControlNormal(padIndex, control) end

--- ```
--- Seems to return values between -1 and 1 for controls like gas and steering.
--- ```
--- **Native**: `GET_CONTROL_UNBOUND_NORMAL` (`0x5B84D09CEC5209C5`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number result
function PadStatic.getControlUnboundNormal(padIndex, control) end

--- **Native**: `GET_CONTROL_VALUE` (`0xD95E79E8686D2C27`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return integer result
function PadStatic.getControlValue(padIndex, control) end

--- **Native**: `GET_DISABLED_CONTROL_NORMAL` (`0x11E65974A982637C`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number result
function PadStatic.getDisabledControlNormal(padIndex, control) end

--- **Native**: `GET_DISABLED_CONTROL_UNBOUND_NORMAL` (`0x4F8A26A890FD62FB`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return number result
function PadStatic.getDisabledControlUnboundNormal(padIndex, control) end

--- ```
--- The number of milliseconds since last padIndex registered pressed
--- ```
--- **Native**: `GET_TIME_SINCE_LAST_INPUT` (`0xD7D22F5592AED8BA`)
---@param padIndex integer
---@return integer result
function PadStatic.getTimeSinceLastInput(padIndex) end

--- **Native**: `IS_CONTROL_ENABLED` (`0x1CEA6BFDF248E5D9`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result
function PadStatic.isControlEnabled(padIndex, control) end

--- Returns whether a control was newly pressed since the last check.
--- **Native**: `IS_CONTROL_JUST_PRESSED` (`0x580417101DDB492F`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result True if the control was pressed.
function PadStatic.isControlJustPressed(padIndex, control) end

--- Returns whether a control was newly released since the last check.
--- **Native**: `IS_CONTROL_JUST_RELEASED` (`0x50F940259D3841E6`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result True if the control was recently released.
function PadStatic.isControlJustReleased(padIndex, control) end

--- Returns whether a control is currently pressed.
--- **Native**: `IS_CONTROL_PRESSED` (`0xF3A21BCD95725A4A`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result True if the control was pressed.
function PadStatic.isControlPressed(padIndex, control) end

--- Returns whether a control is currently *not* pressed.
--- **Native**: `IS_CONTROL_RELEASED` (`0x648EE3E7F38877DD`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result True if the control is not pressed.
function PadStatic.isControlReleased(padIndex, control) end

--- **Native**: `IS_DISABLED_CONTROL_JUST_PRESSED` (`0x91AEF906BCA88877`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result
function PadStatic.isDisabledControlJustPressed(padIndex, control) end

--- **Native**: `IS_DISABLED_CONTROL_JUST_RELEASED` (`0x305C8DCD79DA8B0F`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result
function PadStatic.isDisabledControlJustReleased(padIndex, control) end

--- **Native**: `IS_DISABLED_CONTROL_PRESSED` (`0xE2587F8CBBD87B1D`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result
function PadStatic.isDisabledControlPressed(padIndex, control) end

--- **Native**: `IS_DISABLED_CONTROL_RELEASED` (`0xFB6C4072E9A32E92`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@return boolean result
function PadStatic.isDisabledControlReleased(padIndex, control) end

--- **Native**: `IS_USING_KEYBOARD` (`0xA571D46727E2B718`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean result
function PadStatic.isUsingKeyboard(padIndex) end

--- **Native**: `IS_USING_KEYBOARD_2` (`0x13337B38DB572509`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@return boolean result
function PadStatic.isUsingKeyboard2(padIndex) end

--- ```
--- S*
--- ```
--- **Native**: `RESET_INPUT_MAPPING_SCHEME` (`0x643ED62D5EA3BEBD`)
function PadStatic.resetInputMappingScheme() end

--- **Native**: `SET_CONTROL_LIGHT_EFFECT_COLOR` (`0x8290252FFF36ACB5`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param red integer
---@param green integer
---@param blue integer
function PadStatic.setControlLightEffectColor(padIndex, red, green, blue) end

--- This is for simulating player input.
--- **Native**: `SET_CONTROL_NORMAL` (`0xE8A25867FBA3B05E`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
---@param amount number An unbounded normal value.
---@return boolean result
function PadStatic.setControlNormal(padIndex, control, amount) end

--- **Native**: `SET_CURSOR_LOCATION` (`0xFC695459D4D0E219`)
---@param x number
---@param y number
---@return boolean result
function PadStatic.setCursorLocation(x, y) end

--- **Native**: `SET_INPUT_EXCLUSIVE` (`0xEDE476E5EE29EDB1`)
---@param padIndex integer The control system instance to use. See [`ENABLE_ALL_CONTROL_ACTIONS`](#\_0xA5FFE9B05F199DE7).
---@param control integer The [control ID](https://docs.fivem.net/docs/game-references/controls/#controls) to check.
function PadStatic.setInputExclusive(padIndex, control) end

--- ```
--- p0 always seems to be 0
--- duration in milliseconds
--- frequency should range from about 10 (slow vibration) to 255 (very fast)
--- example:
--- SET_PAD_SHAKE(0, 100, 200);
--- ```
--- **Native**: `SET_PAD_SHAKE` (`0x48B3886C1358D0D5`)
---@param padIndex integer
---@param duration integer
---@param frequency integer
function PadStatic.setPadShake(padIndex, duration, frequency) end

--- **Native**: `SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED` (`0x798FDEB5B1575088`)
---@param toggle boolean
function PadStatic.setPlayerpadShakesWhenControllerDisabled(toggle) end

--- **Native**: `STOP_PAD_SHAKE` (`0x38C16A305E8CDC8D`)
---@param padIndex integer
function PadStatic.stopPadShake(padIndex) end

--- ```
--- Used in carsteal3 script with p0 = "Carsteal4_spycar".
--- S*
--- ```
--- **Native**: `SWITCH_TO_INPUT_MAPPING_SCHEME` (`0x3D42B92563939375`)
---@param name string
---@return boolean result
function PadStatic.switchToInputMappingScheme(name) end

--- ```
--- Same as 0x3D42B92563939375
---
--- S*
--- ```
--- **Native**: `SWITCH_TO_INPUT_MAPPING_SCHEME_2` (`0x4683149ED1DDE7A1`)
---@param name string
---@return boolean result
function PadStatic.switchToInputMappingScheme2(name) end

