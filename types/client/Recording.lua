---@meta
---@diagnostic disable
-- fx.Recording (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Recording
---@field isRecording boolean (read-only) [IS_RECORDING] Checks if you're recording.
local RecordingStatic = {}

--- This will disable the ability to make camera changes in R\* Editor.
--- **Native**: `DISABLE_ROCKSTAR_EDITOR_CAMERA_CHANGES` (`0xAF66DCEE6609B148`)
function RecordingStatic.disableRockstarEditorCameraChanges() end

--- **Native**: `SAVE_RECORDING_CLIP` (`0x644546EC5287471B`)
---@return boolean result
function RecordingStatic.saveRecordingClip() end

--- Starts recording a replay.\
--- If already recording a replay, does nothing.
--- **Native**: `START_RECORDING` (`0xC3AC2FFF9612AC81`)
---@param mode integer 0 turns on action replay, 1 starts recording
function RecordingStatic.startRecording(mode) end

--- Stops recording and discards the recorded clip.
--- **Native**: `STOP_RECORDING_AND_DISCARD_CLIP` (`0x88BB3507ED41A240`)
function RecordingStatic.stopRecordingAndDiscardClip() end

--- Stops recording and saves the recorded clip.
--- **Native**: `STOP_RECORDING_AND_SAVE_CLIP` (`0x071A5197D6AFC8B3`)
function RecordingStatic.stopRecordingAndSaveClip() end

--- Disable recording for this frame only.
--- **Native**: `STOP_RECORDING_THIS_FRAME` (`0xEB2D525B57F42B40`)
function RecordingStatic.stopRecordingThisFrame() end

