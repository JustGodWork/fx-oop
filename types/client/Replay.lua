---@meta
---@diagnostic disable
-- fx.Replay (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Replay
---@field isInteriorRenderingDisabled boolean (read-only) [IS_INTERIOR_RENDERING_DISABLED]
local ReplayStatic = {}

--- Please note that you will need to call DO_SCREEN_FADE_IN after exiting the Rockstar Editor when you call this.
---
--- ```
--- NativeDB Added Parameter 1: int p0
--- ```
--- **Native**: `ACTIVATE_ROCKSTAR_EDITOR` (`0x49DA8145672B2725`)
function ReplayStatic.activateRockstarEditor() end

--- ```
--- Sets (almost, not sure) all Rockstar Editor values (bIsRecording etc) to 0.
--- ```
--- **Native**: `RESET_EDITOR_VALUES` (`0x3353D13F09307691`)
function ReplayStatic.resetEditorValues() end

