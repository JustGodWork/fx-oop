---@meta
---@diagnostic disable
-- fx.Physics (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Physics
local PhysicsStatic = {}

--- **Native**: `APPLY_IMPULSE_TO_CLOTH` (`0xE37F721824571784`)
---@param pos vector3
---@param vec vector3
---@param impulse number
function PhysicsStatic.applyImpulseToCloth(pos, vec, impulse) end

--- **Native**: `ROPE_ARE_TEXTURES_LOADED` (`0xF2D0E6A75CC05597`)
---@return boolean result
function PhysicsStatic.ropeAreTexturesLoaded() end

--- ```
--- Loads rope textures for all ropes in the current scene.
--- ```
--- **Native**: `ROPE_LOAD_TEXTURES` (`0x9B9039DBF2D258C1`)
function PhysicsStatic.ropeLoadTextures() end

--- ```
--- Unloads rope textures for all ropes in the current scene.
--- ```
--- **Native**: `ROPE_UNLOAD_TEXTURES` (`0x6CE36C35C1AC8163`)
function PhysicsStatic.ropeUnloadTextures() end

--- Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
---
--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `SET_LAUNCH_CONTROL_ENABLED` (`0xAA6A6098851C396F`)
---@param toggle boolean
function PhysicsStatic.setLaunchControlEnabled(toggle) end

