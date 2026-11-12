---@meta
---@diagnostic disable
-- fx.Cutscene (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Cutscene
---@field canRequestAssetsForCutsceneEntity boolean (read-only) [CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY] Returns when it is safe to start applying changes to cutscene entities. Should always be used for applying components. See [`SET_CUTSCENE_PED_COMPONENT_VARIATI…
---@field cutsceneEndTime integer (read-only) [GET_CUTSCENE_END_TIME] Returns the time of the cutscene's end accounting for [`REQUEST_CUTSCENE_WITH_PLAYBACK_LIST`](#\_0xC23DE0E91C30B58C) If a cutscene is laid out with 10 second s…
---@field cutscenePlayTime integer (read-only) [GET_CUTSCENE_PLAY_TIME] Gets the current time of the cutscene.
---@field cutsceneSectionPlaying integer (read-only) [GET_CUTSCENE_SECTION_PLAYING]
---@field cutsceneTime integer (read-only) [GET_CUTSCENE_TIME] Gets the elapsed time of the current cutscene in
---@field cutsceneTotalDuration integer (read-only) [GET_CUTSCENE_TOTAL_DURATION] Gets the total length of the cutscene irrespective of playback list in milliseconds To account for sections, see [`_GET_CUTSCENE_END_TIME`](#\_0x971D7B15BCDBEF…
---@field hasCutsceneCutThisFrame boolean (read-only) [HAS_CUTSCENE_CUT_THIS_FRAME]
---@field hasCutsceneFinished boolean (read-only) [HAS_CUTSCENE_FINISHED]
---@field hasCutsceneLoaded boolean (read-only) [HAS_CUTSCENE_LOADED]
---@field isCutsceneActive boolean (read-only) [IS_CUTSCENE_ACTIVE]
---@field isCutscenePlaying boolean (read-only) [IS_CUTSCENE_PLAYING]
---@field wasCutsceneSkipped boolean (read-only) [WAS_CUTSCENE_SKIPPED]
local CutsceneStatic = {}

---Loads a cutscene (REQUEST_CUTSCENE) and resolves with its name once loaded: then START_CUTSCENE plays it.
---@param name string Cutscene name, such as "mp_intro_concat"
---@param flags? integer Playback flags, default 8
---@param timeoutMs? integer Default 10000
---@return fx.Promise<string>
function CutsceneStatic.loadAsync(name, flags, timeoutMs) end

--- ```
--- modelHash (p1) was always 0 in R* scripts
--- ```
--- **Native**: `CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY` (`0x645D0B458D8E17B5`)
---@param cutsceneEntName string
---@param modelHash fx.Model|integer|string
---@return boolean result
function CutsceneStatic.canSetEnterStateForRegisteredEntity(cutsceneEntName, modelHash) end

--- Whether or not it is safe to run functions on the camera,
--- as the camera is now no longer being used by the cutscene.
--- **Native**: `CAN_SET_EXIT_STATE_FOR_CAMERA` (`0xB2CBCD0930DFB420`)
---@param p0 boolean Mostly false
---@return boolean result
function CutsceneStatic.canSetExitStateForCamera(p0) end

--- Returns if the script can begin interacting with the registered entity. Primarly used for lead-outs of cutscenes.
--- Returns on frame after cutscene ends, so you cannot get is while using IsCutsceneActive()
---
--- Whether it is safe to start doing scripted actions on the entity, like simulating walking out of a cutscene.
--- **Native**: `CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY` (`0x4C6A6451C79E4662`)
---@param cutsceneEntName string i.e Michael
---@param modelHash fx.Model|integer|string Can be 0
---@return boolean result Whether or not it is safe to begin interacting with the entity
function CutsceneStatic.canSetExitStateForRegisteredEntity(cutsceneEntName, modelHash) end

--- **Native**: `DOES_CUTSCENE_ENTITY_EXIST` (`0x499EF20C5DB25C59`)
---@param cutsceneEntName string
---@param modelHash fx.Model|integer|string
---@return boolean result
function CutsceneStatic.doesCutsceneEntityExist(cutsceneEntName, modelHash) end

--- **Native**: `GET_CUT_FILE_NUM_SECTIONS` (`0x0ABC54DE641DC0FC`)
---@param cutsceneName string
---@return integer result
function CutsceneStatic.getCutFileNumSections(cutsceneName) end

--- ```
--- Simply checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
--- ```
--- **Native**: `HAS_CUT_FILE_LOADED` (`0xA1C996C2A744262E`)
---@param cutsceneName string
---@return boolean result
function CutsceneStatic.hasCutFileLoaded(cutsceneName) end

--- **Native**: `HAS_THIS_CUTSCENE_LOADED` (`0x228D3D94F8A11C3C`)
---@param cutsceneName string
---@return boolean result
function CutsceneStatic.hasThisCutsceneLoaded(cutsceneName) end

--- **Native**: `IS_CUTSCENE_PLAYBACK_FLAG_SET` (`0x71B74D2AE19338D0`)
---@param flag integer
---@return boolean result
function CutsceneStatic.isCutscenePlaybackFlagSet(flag) end

--- Only used twice in armenian1.c
--- **Native**: `REGISTER_SYNCHRONISED_SCRIPT_SPEECH` (`0x2131046957F31B04`)
function CutsceneStatic.registerSynchronisedScriptSpeech() end

--- ```
--- Simply unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
--- ```
--- **Native**: `REMOVE_CUT_FILE` (`0xD00D76A7DFC9D852`)
---@param cutsceneName string
function CutsceneStatic.removeCutFile(cutsceneName) end

--- **Native**: `REMOVE_CUTSCENE` (`0x440AF51A3462B86F`)
function CutsceneStatic.removeCutscene() end

--- ```
--- Simply loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
--- ```
--- **Native**: `REQUEST_CUT_FILE` (`0x06A3524161C502BA`)
---@param cutsceneName string
function CutsceneStatic.requestCutFile(cutsceneName) end

--- **Native**: `REQUEST_CUTSCENE` (`0x7A86743F475D9E09`)
---@param cutsceneName string Case insensitive
---@param flags integer Usually 8
function CutsceneStatic.requestCutscene(cutsceneName, flags) end

--- ```
--- playbackFlags: Which scenes should be played.
--- Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
--- ```
--- **Native**: `REQUEST_CUTSCENE_WITH_PLAYBACK_LIST` (`0xC23DE0E91C30B58C`)
---@param cutsceneName string
---@param playbackFlags integer
---@param flags integer Usually 8
function CutsceneStatic.requestCutsceneWithPlaybackList(cutsceneName, playbackFlags, flags) end

--- **Native**: `SET_CUTSCENE_CAN_BE_SKIPPED` (`0x41FAA8FB2ECE8720`)
---@param p0 boolean
function CutsceneStatic.setCutsceneCanBeSkipped(p0) end

--- Only used in networked environment with MP cutscenes
--- **Native**: `SET_CUTSCENE_ENTITY_STREAMING_FLAGS` (`0x4C61C75BEE8184C2`)
---@param cutsceneEntName string MP\_1, MP\_2, etc
---@param p1 integer Always 0 in R\* scripts
---@param p2 integer Always 1 in R\* scripts
function CutsceneStatic.setCutsceneEntityStreamingFlags(cutsceneEntName, p1, p2) end

--- **Native**: `SET_CUTSCENE_FADE_VALUES` (`0x8093F23ABACCC7D4`)
---@param p0 boolean
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
function CutsceneStatic.setCutsceneFadeValues(p0, p1, p2, p3) end

--- Sets cutscene location, used for multiplayer apartments/businesses.
--- **Native**: `SET_CUTSCENE_ORIGIN` (`0xB812B3FD1C01CF27`)
---@param coords vector3
---@param heading number
---@param p4 integer Often -1, 0 or 1
function CutsceneStatic.setCutsceneOrigin(coords, heading, p4) end

--- See [`SET_PED_COMPONENT_VARIATION`](#\_0x262B14F48D29DE80)
--- **Native**: `SET_CUTSCENE_PED_COMPONENT_VARIATION` (`0xBA01E7B6DEEFBBC9`)
---@param cutsceneEntName string
---@param componentId integer
---@param drawableId integer
---@param textureId integer
---@param modelHash fx.Model|integer|string
function CutsceneStatic.setCutscenePedComponentVariation(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

--- Sets the components for a cutscene ped, this will take precendence over the cutscene's component overrides. This does not require the entity be registered.
---
--- See
--- **Native**: `SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED` (`0x2A56C06EBEF2B0D9`)
---@param cutsceneEntName string cut file cHandle, i.e Michael, Lamar, Franklin, MP\_1-MP\_4 etc
---@param ped fx.Ped|integer Ped to copy components from
---@param modelHash fx.Model|integer|string Not strictly neccasary, can be 0
function CutsceneStatic.setCutscenePedComponentVariationFromPed(cutsceneEntName, ped, modelHash) end

--- See [`SET_PED_PROP_INDEX`](#\_0x93376B65A266EB5F)
--- **Native**: `SET_CUTSCENE_PED_PROP_VARIATION` (`0x0546524ADE2E9723`)
---@param cutsceneEntName string i.e Michael, Trevor, MP\_1, MP\_4
---@param componentId integer
---@param drawableId integer
---@param textureId integer
---@param modelHash fx.Model|integer|string
function CutsceneStatic.setCutscenePedPropVariation(cutsceneEntName, componentId, drawableId, textureId, modelHash) end

--- ```
--- Only used twice in R* scripts
--- ```
--- **Native**: `SET_CUTSCENE_TRIGGER_AREA` (`0x9896CE4721BE84BA`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
function CutsceneStatic.setCutsceneTriggerArea(p0, p1, p2, p3, p4, p5) end

--- ```
--- flags: Usually 0.
--- ```
--- **Native**: `START_CUTSCENE` (`0x186D5CB5E7B0FF7B`)
---@param flags integer
function CutsceneStatic.startCutscene(flags) end

--- Similar to [`SET_CUTSCENE_ORIGIN`](#\_0xB812B3FD1C01CF27) but without heading and doesn't need [`START_CUTSCENE`](#\_0x186D5CB5E7B0FF7B)
--- **Native**: `START_CUTSCENE_AT_COORDS` (`0x1C9ADDA3244A1FBF`)
---@param coords vector3
---@param flags integer Usually 0
function CutsceneStatic.startCutsceneAtCoords(coords, flags) end

--- **Native**: `STOP_CUTSCENE` (`0xC7272775B4DC786E`)
---@param p0 boolean Always false
function CutsceneStatic.stopCutscene(p0) end

--- Stop cutscene instantly, will dump registered entities right where they were when ran.
--- **Native**: `STOP_CUTSCENE_IMMEDIATELY` (`0xD220BDD222AC4A1E`)
function CutsceneStatic.stopCutsceneImmediately() end

--- Loads the resource and returns a Promise (never yields). Resolves with `cutsceneName`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_CUT_FILE` / `HAS_CUT_FILE_LOADED`.
---@param cutsceneName string
---@param timeoutMs? integer
---@return fx.Promise<string>
function CutsceneStatic.loadCutFileAsync(cutsceneName, timeoutMs) end

