---@meta
---@diagnostic disable
-- fx.Screen (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Screen
---@field width integer (read-only) Width of the game window, in pixels
---@field height integer (read-only) Height of the game window, in pixels
---@field aspectRatio number (read-only)
---@field safeZone number (read-only) Scale of the safe zone set in the settings, 0.9 to 1 (1 = the whole screen)
---@field cursor vector2 (read-only) The NUI cursor (0..1 from the top left), meaningful while a NUI page has the focus
local ScreenStatic = {}

---Where a world position is on the screen (0..1 from the top left), nil when the camera does not see it.
---```lua
---local at <const> = fx.Screen.fromWorld(ped.position + vec3(0.0, 0.0, 1.0))
---if at then fx.Hud.drawText("here", at.x, at.y) end
---```
---@param position vector3
---@return vector2?
function ScreenStatic.fromWorld(position) end

---The line under a point of the screen (0..1): where it starts in the world and its direction.
---@param x number
---@param y number
---@return vector3 origin
---@return vector3 direction
function ScreenStatic.toWorld(x, y) end
