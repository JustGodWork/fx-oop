---@meta
---@diagnostic disable
-- fx.Water (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Water
---@field deepOceanScaler number [GET_DEEP_OCEAN_SCALER / SET_DEEP_OCEAN_SCALER]
local WaterStatic = {}

--- Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
--- After removing a rise, you will be able to add a rise again.
--- **Native**: `ADD_EXTRA_CALMING_QUAD` (`0xFDBF4CDBC07E1706`)
---@param xLow number
---@param yLow number
---@param xHigh number
---@param yHigh number
---@param height number
---@return integer result If succeeded to add, returns a rise index that can be used on REMOVE_EXTRA_CALMING_QUAD. If failed to add, returns -1 (make sure you don't pass -1 to REMOVE_EXTRA_CALMING_QUAD).
function WaterStatic.addExtraCalmingQuad(xLow, yLow, xHigh, yHigh, height) end

--- Retrieves the depth of the water beneath the specified position, accounting for the waves.
---
--- **Note:** The result might vary depending on the specific frame when this command is executed due to wave fluctuations.
--- **Native**: `GET_WATER_HEIGHT` (`0xF6829842C06AE524`)
---@param coords vector3 The coordinate at which to test at for water.
---@param height number The height at which to test at for water.
---@return boolean result Returns `false` when land at the tested coordinates is higher than water, `true` otherwise.
---@return number height The height at which to test at for water.
function WaterStatic.getWaterHeight(coords, height) end

--- Retrieves the depth of the water beneath the specified position, disregarding wave effects.
---
--- **Note:** The result remains consistent across different frames as it doesn't consider wave fluctuations.
--- **Native**: `GET_WATER_HEIGHT_NO_WAVES` (`0x8EE6B53CE13A9794`)
---@param coords vector3
---@param height number
---@return boolean result
---@return number height
function WaterStatic.getWaterHeightNoWaves(coords, height) end

--- ```
--- Sets the water height for a given position and radius.
--- ```
--- **Native**: `MODIFY_WATER` (`0xC443FD757C3BA637`)
---@param x number
---@param y number
---@param height number
---@param radius number
function WaterStatic.modifyWater(x, y, height, radius) end

--- ```
--- p0 is the handle returned from _0xFDBF4CDBC07E1706
--- ```
--- **Native**: `REMOVE_CURRENT_RISE` (`0xB1252E3E59A82AAF`)
---@param p0 integer
function WaterStatic.removeCurrentRise(p0) end

--- ```
--- Sets the waves intensity back to original (1.0 in most cases).
--- ```
--- **Native**: `RESET_DEEP_OCEAN_SCALER` (`0x5E5E99285AE812DB`)
function WaterStatic.resetDeepOceanScaler() end

--- Flags are identical to START_SHAPE_TEST\*, however, 128 is automatically set.
--- **Native**: `TEST_PROBE_AGAINST_ALL_WATER` (`0x8974647ED222EA5F`)
---@param coords1 vector3
---@param coords2 vector3
---@param flag integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param result vector3
---@return boolean result
---@return vector3 result
function WaterStatic.testProbeAgainstAllWater(coords1, coords2, flag, result) end

--- **Native**: `TEST_PROBE_AGAINST_WATER` (`0xFFA5D878809819DB`)
---@param coords1 vector3
---@param coords2 vector3
---@param result vector3
---@return boolean result
---@return vector3 result
function WaterStatic.testProbeAgainstWater(coords1, coords2, result) end

--- **Native**: `TEST_VERTICAL_PROBE_AGAINST_ALL_WATER` (`0x2B3451FA1E3142E2`)
---@param coords vector3
---@param flag integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param height number
---@return boolean result
---@return number height
function WaterStatic.testVerticalProbeAgainstAllWater(coords, flag, height) end

