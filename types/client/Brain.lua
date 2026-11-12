---@meta
---@diagnostic disable
-- fx.Brain (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Brain
---@field isWorldPointWithinBrainActivationRange boolean (read-only) [IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE]
local BrainStatic = {}

--- ```
--- BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);
--- - Nacorpio
--- -----
--- Hardcoded to not work in Multiplayer.
--- ```
--- **Native**: `ADD_SCRIPT_TO_RANDOM_PED` (`0x4EE5367468A65CCC`)
---@param name string
---@param model fx.Model|integer|string
---@param p2 number
---@param p3 number
function BrainStatic.addScriptToRandomPed(name, model, p2, p3) end

--- **Native**: `DISABLE_SCRIPT_BRAIN_SET` (`0x14D8518E9760F08F`)
---@param brainSet integer
function BrainStatic.disableScriptBrainSet(brainSet) end

--- **Native**: `ENABLE_SCRIPT_BRAIN_SET` (`0x67AA4D73F0CFA86B`)
---@param brainSet integer
function BrainStatic.enableScriptBrainSet(brainSet) end

--- ```
--- Registers a script for any object with a specific model hash.
--- BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);
--- ```
--- **Native**: `REGISTER_OBJECT_SCRIPT_BRAIN` (`0x0BE84C318BA6EC22`)
---@param scriptName string
---@param modelHash fx.Model|integer|string
---@param p2 integer
---@param activationRange number
---@param p4 integer
---@param p5 integer
function BrainStatic.registerObjectScriptBrain(scriptName, modelHash, p2, activationRange, p4, p5) end

--- **Native**: `REGISTER_WORLD_POINT_SCRIPT_BRAIN` (`0x3CDC7136613284BD`)
---@param scriptName string
---@param activationRange number
---@param p2 integer
function BrainStatic.registerWorldPointScriptBrain(scriptName, activationRange, p2) end

