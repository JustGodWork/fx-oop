---@meta
---@diagnostic disable
-- fx.Mobile (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Mobile
---@field canPhoneBeSeenOnScreen boolean (read-only) [CAN_PHONE_BE_SEEN_ON_SCREEN]
local MobileStatic = {}

--- Activates the cellphone camera. Make sure you have a mobile phone created with [`CREATE_MOBILE_PHONE`](#\_0xA4E8E696C532FBC7) or else the camera will not work.
--- **Native**: `CELL_CAM_ACTIVATE` (`0xFDE8F069C542D126`)
---@param active boolean Toggle whether the camera should be active.
---@param bGoFirstPerson boolean Unused parameter.
function MobileStatic.cellCamActivate(active, bGoFirstPerson) end

--- Toggles the selfie mode on the cellphone camera. Only visible when the cell phone camera is active.
--- **Native**: `CELL_CAM_ACTIVATE_SELFIE_MODE` (`0x015C49A93E3E086E`)
---@param toggle boolean True to activate and false to deactivate the selfie mode.
function MobileStatic.cellCamActivateSelfieMode(toggle) end

--- Moves the character's finger in a swiping motion when holding a cellphone in their hand through the use of the [CREATE_MOBILE_PHONE](#\_0xA4E8E696C532FBC7) native.
---
--- ```cpp
--- enum eCellInput {
---     CELL_INPUT_NONE = 0,
---     CELL_INPUT_UP = 1,
---     CELL_INPUT_DOWN = 2,
---     CELL_INPUT_LEFT = 3,
---     CELL_INPUT_RIGHT = 4,
---     CELL_INPUT_SELECT = 5
--- }
--- ```
--- **Native**: `CELL_CAM_MOVE_FINGER` (`0x95C9E72F3D7DEC9B`)
---@param direction fx.Enum.CellInput|integer The direction to swipe to, refer to `eCellInput` enum.
function MobileStatic.cellCamMoveFinger(direction) end

--- **Native**: `CELL_CAM_SET_DISTANCE` (`0x53F4892D18EC90A4`)
---@param p0 number Value from -1.0 to 1.0
function MobileStatic.cellCamSetDistance(p0) end

--- **Native**: `CELL_CAM_SET_HEAD_HEIGHT` (`0x466DA42C89865553`)
---@param p0 number Value from -1.0 to 0.0
function MobileStatic.cellCamSetHeadHeight(p0) end

--- **Native**: `CELL_CAM_SET_HEAD_PITCH` (`0xD6ADE981781FCA09`)
---@param p0 number Value from -1.0 to 1.0
function MobileStatic.cellCamSetHeadPitch(p0) end

--- **Native**: `CELL_CAM_SET_HEAD_ROLL` (`0xF1E22DC13F5EEBAD`)
---@param p0 number Value from -1.0 to 1.0
function MobileStatic.cellCamSetHeadRoll(p0) end

--- **Native**: `CELL_CAM_SET_HORIZONTAL_OFFSET` (`0x1B0B4AEED5B9B41C`)
---@param p0 number Value from -1.0 to 1.0
function MobileStatic.cellCamSetHorizontalOffset(p0) end

--- ```
--- if the bool "Toggle" is "true" so the phone is lean.
--- if the bool "Toggle" is "false" so the phone is not lean.
--- ```
--- **Native**: `CELL_CAM_SET_LEAN` (`0x44E44169EF70138E`)
---@param toggle boolean
function MobileStatic.cellCamSetLean(toggle) end

--- **Native**: `CELL_CAM_SET_ROLL` (`0x15E69E2802C24B8D`)
---@param p0 number Value from -1.0 to 1.0
function MobileStatic.cellCamSetRoll(p0) end

--- **Native**: `CELL_CAM_SET_VERTICAL_OFFSET` (`0x3117D84EFA60F77B`)
---@param p0 number Value from 0.0 to 2.0
function MobileStatic.cellCamSetVerticalOffset(p0) end

--- ```
--- Creates a mobile phone of the specified type.
--- Possible phone types:
--- 0 - Default phone / Michael's phone
--- 1 - Trevor's phone
--- 2 - Franklin's phone
--- 4 - Prologue phone
--- These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.
--- ```
--- **Native**: `CREATE_MOBILE_PHONE` (`0xA4E8E696C532FBC7`)
---@param phoneType integer
function MobileStatic.createMobilePhone(phoneType) end

--- ```
--- Destroys the currently active mobile phone.
--- ```
--- **Native**: `DESTROY_MOBILE_PHONE` (`0x3BC861DF703E5097`)
function MobileStatic.destroyMobilePhone() end

--- **Native**: `GET_MOBILE_PHONE_POSITION` (`0x584FDFDA48805B86`)
---@param position vector3
---@return vector3 position
function MobileStatic.getMobilePhonePosition(position) end

--- **Native**: `GET_MOBILE_PHONE_RENDER_ID` (`0xB4A53E05F68B6FA1`)
---@param renderId integer
---@return integer renderId
function MobileStatic.getMobilePhoneRenderId(renderId) end

--- **Native**: `GET_MOBILE_PHONE_ROTATION` (`0x1CEFB61F193070AE`)
---@param p1 fx.Vehicle|integer
---@return vector3 rotation
function MobileStatic.getMobilePhoneRotation(p1) end

--- ```
--- If bool Toggle = true so the mobile is hide to screen.
--- If bool Toggle = false so the mobile is show to screen.
--- ```
--- **Native**: `SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN` (`0xF511F759238A5122`)
---@param toggle boolean
function MobileStatic.scriptIsMovingMobilePhoneOffscreen(toggle) end

--- Toggles depth of field on the cellphone camera.
--- **Native**: `SET_MOBILE_PHONE_DOF_STATE` (`0x375A706A5C2FD084`)
---@param toggle boolean true/false to toggle DOF.
function MobileStatic.setMobilePhoneDofState(toggle) end

--- **Native**: `SET_MOBILE_PHONE_POSITION` (`0x693A5C6D6734085B`)
---@param pos vector3
function MobileStatic.setMobilePhonePosition(pos) end

--- ```
--- Last parameter is unknown and always zero.
--- ```
--- **Native**: `SET_MOBILE_PHONE_ROTATION` (`0xBB779C0CA917E865`)
---@param rot vector3
---@param p3 any
function MobileStatic.setMobilePhoneRotation(rot, p3) end

--- ```
--- The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.
--- ```
--- **Native**: `SET_MOBILE_PHONE_SCALE` (`0xCBDD322A73D6D932`)
---@param scale number
function MobileStatic.setMobilePhoneScale(scale) end

