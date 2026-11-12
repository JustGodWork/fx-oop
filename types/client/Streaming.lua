---@meta
---@diagnostic disable
-- fx.Streaming (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Streaming
---@field globalWaterType integer (read-only) [GET_GLOBAL_WATER_TYPE]
---@field hasPtfxAssetLoaded boolean (read-only) [HAS_PTFX_ASSET_LOADED]
---@field isNetworkLoadingScene boolean (read-only) [IS_NETWORK_LOADING_SCENE]
---@field isNewLoadSceneActive boolean (read-only) [IS_NEW_LOAD_SCENE_ACTIVE]
---@field isNewLoadSceneLoaded boolean (read-only) [IS_NEW_LOAD_SCENE_LOADED]
---@field isPlayerSwitchInProgress boolean (read-only) [IS_PLAYER_SWITCH_IN_PROGRESS]
---@field isSrlLoaded boolean (read-only) [IS_SRL_LOADED] Returns true when the srl from BEGIN_SRL is loaded.
---@field isStreamvolActive boolean (read-only) [IS_STREAMVOL_ACTIVE]
---@field isSwitchReadyForDescent boolean (read-only) [IS_SWITCH_READY_FOR_DESCENT]
---@field isSwitchSkippingDescent boolean (read-only) [IS_SWITCH_SKIPPING_DESCENT]
---@field lodscale number (read-only) [GET_LODSCALE]
---@field numberOfStreamingRequests integer (read-only) [GET_NUMBER_OF_STREAMING_REQUESTS]
---@field playerShortSwitchState integer (read-only) [GET_PLAYER_SHORT_SWITCH_STATE]
---@field playerSwitchInterpOutCurrentTime any (read-only) [GET_PLAYER_SWITCH_INTERP_OUT_CURRENT_TIME]
---@field playerSwitchInterpOutDuration integer (read-only) [GET_PLAYER_SWITCH_INTERP_OUT_DURATION]
---@field playerSwitchJumpCutIndex integer (read-only) [GET_PLAYER_SWITCH_JUMP_CUT_INDEX]
---@field playerSwitchState integer (read-only) [GET_PLAYER_SWITCH_STATE]
---@field playerSwitchType integer (read-only) [GET_PLAYER_SWITCH_TYPE]
---@field usedCreatorModelMemoryPercentage number (read-only) [GET_USED_CREATOR_MODEL_MEMORY_PERCENTAGE]
local StreamingStatic = {}

---Streams the area around `position` (NEW_LOAD_SCENE_START_SPHERE) and resolves once it is loaded. Never yields.
---Use it before a teleport. Only one load scene exists on the client: one already running is stopped, even if
---another resource started it (its wait then times out).
---@param position vector3
---@param radius? number Default 50.0
---@param timeoutMs? integer Default 10000
---@return fx.Promise
function StreamingStatic.loadSceneAsync(position, radius, timeoutMs) end

--- **Native**: `ALLOW_PLAYER_SWITCH_ASCENT` (`0x8E2A065ABDAE6994`)
function StreamingStatic.allowPlayerSwitchAscent() end

--- **Native**: `ALLOW_PLAYER_SWITCH_DESCENT` (`0xAD5FDF34B81BFE79`)
function StreamingStatic.allowPlayerSwitchDescent() end

--- **Native**: `ALLOW_PLAYER_SWITCH_OUTRO` (`0x74DE2E8739086740`)
function StreamingStatic.allowPlayerSwitchOutro() end

--- **Native**: `ALLOW_PLAYER_SWITCH_PAN` (`0x43D1680C6D19A8E9`)
function StreamingStatic.allowPlayerSwitchPan() end

--- **Native**: `BEGIN_SRL` (`0x9BADDC94EF83B823`)
function StreamingStatic.beginSrl() end

--- **Native**: `CLEAR_FOCUS` (`0x31B73D1EA9F01DA2`)
function StreamingStatic.clearFocus() end

--- **Native**: `CLEAR_HD_AREA` (`0xCE58B1CFB9290813`)
function StreamingStatic.clearHdArea() end

--- **Native**: `DISABLE_SWITCH_OUTRO_FX` (`0xBD605B8E0E18B3BB`)
function StreamingStatic.disableSwitchOutroFx() end

--- **Native**: `DOES_ANIM_DICT_EXIST` (`0x2DA49C3B79856961`)
---@param animDict string
---@return boolean result
function StreamingStatic.doesAnimDictExist(animDict) end

--- **Native**: `ENABLE_SWITCH_PAUSE_BEFORE_DESCENT` (`0xD4793DFF3AF2ABCD`)
function StreamingStatic.enableSwitchPauseBeforeDescent() end

--- Clear the current srl and stop rendering the area selected by PREFETCH_SRL and started with BEGIN_SRL.
--- **Native**: `END_SRL` (`0x0A41540E63C9EE17`)
function StreamingStatic.endSrl() end

--- ```
--- x1, y1, z1 -- Coords of your ped model
--- x2, y2, z2 -- Coords of the ped you want to switch to
--- ```
--- **Native**: `GET_IDEAL_PLAYER_SWITCH_TYPE` (`0xB5D7B26B45720E05`)
---@param coords1 vector3
---@param coords2 vector3
---@return integer result
function StreamingStatic.getIdealPlayerSwitchType(coords1, coords2) end

--- **Native**: `HAS_ANIM_DICT_LOADED` (`0xD031A9162D01088C`)
---@param animDict string
---@return boolean result
function StreamingStatic.hasAnimDictLoaded(animDict) end

--- Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped.
---
--- Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
--- **Native**: `HAS_ANIM_SET_LOADED` (`0xC4EA073D86FB29B0`)
---@param animSet string
---@return boolean result
function StreamingStatic.hasAnimSetLoaded(animSet) end

--- ```
--- Alias for HAS_ANIM_SET_LOADED.
--- ```
--- **Native**: `HAS_CLIP_SET_LOADED` (`0x318234F4F3738AF3`)
---@param clipSet string
---@return boolean result
function StreamingStatic.hasClipSetLoaded(clipSet) end

--- **Native**: `HAS_NAMED_PTFX_ASSET_LOADED` (`0x8702416E512EC454`)
---@param fxName string
---@return boolean result
function StreamingStatic.hasNamedPtfxAssetLoaded(fxName) end

--- **Native**: `INIT_CREATOR_BUDGET` (`0xB5A4DB34FE89B88A`)
function StreamingStatic.initCreatorBudget() end

--- **Native**: `IS_IPL_ACTIVE` (`0x88A741E44A2B3495`)
---@param iplName string
---@return boolean result
function StreamingStatic.isIplActive(iplName) end

--- **Native**: `LOAD_ALL_OBJECTS_NOW` (`0xBD6E84632DD4CB3F`)
function StreamingStatic.loadAllObjectsNow() end

--- 0 - default
--- 1 - HeistIsland
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `LOAD_GLOBAL_WATER_TYPE` (`0x7E3F55ED251B76D3`)
---@param waterType integer
function StreamingStatic.loadGlobalWaterType(waterType) end

--- **Native**: `LOAD_SCENE` (`0x4448EB75B4904BDB`)
---@param coords vector3
function StreamingStatic.loadScene(coords) end

--- ```
--- `radius` value is usually between `3f` and `7000f` in original 1868 scripts.
--- `p7` is 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
--- Returns True if success, used only 7 times in decompiled scripts of 1868
--- ```
--- **Native**: `NEW_LOAD_SCENE_START` (`0x212A8D0D2BABFAC2`)
---@param pos vector3 World `` coordinate.
---@param offset vector3 Offset `` coordinate.
---@param radius number Action radius, value is usually between `3f` and `7000f` in original 1868 scripts.
---@param p7 integer 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
---@return boolean result True if success, used only 7 times in decompiled scripts of 1868 (https://github.com/root-cause/v-decompiled-scripts).
function StreamingStatic.newLoadSceneStart(pos, offset, radius, p7) end

--- ```
--- if (!sub_8f12("START LOAD SCENE SAFE")) {
---     if (CUTSCENE::GET_CUTSCENE_TIME() > 4178) {
---         STREAMING::_ACCFB4ACF53551B0(1973.845458984375, 3818.447265625, 32.43629837036133, 15.0, 2);
---         sub_8e9e("START LOAD SCENE SAFE", 1);
---     }
--- }
--- (Previously known as STREAMING::_NEW_LOAD_SCENE_START_SAFE)
--- ```
--- **Native**: `NEW_LOAD_SCENE_START_SPHERE` (`0xACCFB4ACF53551B0`)
---@param coords vector3
---@param radius number
---@param p4 any
---@return boolean result
function StreamingStatic.newLoadSceneStartSphere(coords, radius, p4) end

--- **Native**: `NEW_LOAD_SCENE_STOP` (`0xC197616D221FF4A4`)
function StreamingStatic.newLoadSceneStop() end

--- ```
--- This allows you to override "extended distance scaling" setting. Needs to be called each frame.
--- Max scaling seems to be 200.0, normal is 1.0
--- See https://gfycat.com/DetailedHauntingIncatern
--- ```
--- **Native**: `OVERRIDE_LODSCALE_THIS_FRAME` (`0xA76359FC80B2438E`)
---@param scaling number
function StreamingStatic.overrideLodscaleThisFrame(scaling) end

--- This native is used to attribute the SRL that BeginSrl is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SetFocusArea because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
--- For instance, GTA:O opening cutscene.
---
--- https://pastebin.com/2EeKVeLA : a list of SRL found in srllist.meta
--- https://pastebin.com/zd9XYUWY : here is the content of a SRL file opened with codewalker.
--- **Native**: `PREFETCH_SRL` (`0x3D245789CE12982C`)
---@param srl string A SRL name.
function StreamingStatic.prefetchSrl(srl) end

--- **Native**: `REMOVE_ANIM_DICT` (`0xF66A602F829E2A06`)
---@param animDict string
function StreamingStatic.removeAnimDict(animDict) end

--- Unloads the specified animation set. An animation set provides movement animations for a ped.
---
--- Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
--- **Native**: `REMOVE_ANIM_SET` (`0x16350528F93024B3`)
---@param animSet string
function StreamingStatic.removeAnimSet(animSet) end

--- ```
--- Alias for REMOVE_ANIM_SET.
--- ```
--- **Native**: `REMOVE_CLIP_SET` (`0x01F73A131C18CD94`)
---@param clipSet string
function StreamingStatic.removeClipSet(clipSet) end

--- IPL list can be found [here](https://gist.github.com/4mmonium/4c8a076b5f712a7cc64666003009a2e7).
--- **Native**: `REMOVE_IPL` (`0xEE6C5AD3ECE0A82D`)
---@param iplName string
function StreamingStatic.removeIpl(iplName) end

--- **Native**: `REMOVE_NAMED_PTFX_ASSET` (`0x5F61EBBE1A00F96D`)
---@param fxName string
function StreamingStatic.removeNamedPtfxAsset(fxName) end

--- **Native**: `REMOVE_PTFX_ASSET` (`0x88C6814073DD4A73`)
function StreamingStatic.removePtfxAsset() end

--- **Native**: `REQUEST_ADDITIONAL_COLLISION_AT_COORD` (`0xC9156DC11411A9EA`)
---@param coords vector3
function StreamingStatic.requestAdditionalCollisionAtCoord(coords) end

--- **Native**: `REQUEST_ANIM_DICT` (`0xD3BD40951412FEF6`)
---@param animDict string
function StreamingStatic.requestAnimDict(animDict) end

--- Starts loading the specified animation set. An animation set provides movement animations for a ped. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
--- **Native**: `REQUEST_ANIM_SET` (`0x6EA47DAE7FAD0EED`)
---@param animSet string
function StreamingStatic.requestAnimSet(animSet) end

--- **Native**: `REQUEST_CLIP_SET` (`0xD2A71E1A77418A49`)
---@param clipSet string
function StreamingStatic.requestClipSet(clipSet) end

--- **Native**: `REQUEST_COLLISION_AT_COORD` (`0x07503F7948F491A7`)
---@param coords vector3
function StreamingStatic.requestCollisionAtCoord(coords) end

--- ```
--- Exemple: REQUEST_IPL("TrevorsTrailerTrash");
--- ```
--- **Native**: `REQUEST_IPL` (`0x41B4893843BBDB74`)
---@param iplName string
function StreamingStatic.requestIpl(iplName) end

--- ```
---  From the b678d decompiled scripts:
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");
---  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");
--- ```
--- **Native**: `REQUEST_NAMED_PTFX_ASSET` (`0xB80D8756B4668AB6`)
---@param fxName string
function StreamingStatic.requestNamedPtfxAsset(fxName) end

--- ```
--- maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty
--- ```
--- **Native**: `REQUEST_PTFX_ASSET` (`0x944955FB2A3935C8`)
function StreamingStatic.requestPtfxAsset() end

--- ```
--- This is a NOP function. It does nothing at all.
--- ```
--- **Native**: `SET_DITCH_POLICE_MODELS` (`0x42CBE54462D92634`)
---@param toggle boolean
function StreamingStatic.setDitchPoliceModels(toggle) end

--- ```
--- Override the area where the camera will render the terrain.
--- p3, p4 and p5 are usually set to 0.0
--- ```
--- **Native**: `SET_FOCUS_POS_AND_VEL` (`0xBB7454BAFF08FE25`)
---@param coords vector3
---@param offset vector3
function StreamingStatic.setFocusPosAndVel(coords, offset) end

--- **Native**: `SET_GAME_PAUSES_FOR_STREAMING` (`0x717CD6E6FAEBBEDC`)
---@param toggle boolean
function StreamingStatic.setGamePausesForStreaming(toggle) end

--- **Native**: `SET_HD_AREA` (`0xB85F26619073E775`)
---@param coords vector3
---@param radius number
function StreamingStatic.setHdArea(coords, radius) end

--- Enables the specified island. For more information, see islandhopper.meta
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `SET_ISLAND_ENABLED` (`0x9A9D1BA639675CF1`)
---@param islandName string The name of the island to be enabled or disabled.
---@param toggle boolean A boolean value where `true` enables the island and `false` disables it.
function StreamingStatic.setIslandEnabled(islandName, toggle) end

--- ```
--- Possible p0 values:
--- "prologue"
--- "Prologue_Main"
--- ```
--- **Native**: `SET_MAPDATACULLBOX_ENABLED` (`0xAF12610C644A35C9`)
---@param name string
---@param toggle boolean
function StreamingStatic.setMapdatacullboxEnabled(name, toggle) end

--- Sets the memory budget level for ped population.
--- **Native**: `SET_PED_POPULATION_BUDGET` (`0x8C95333CFC3340F3`)
---@param budgetLevel integer Ranges from `0` to `3`, where `0` is lowest (no peds) and `3` is the full budget level.
function StreamingStatic.setPedPopulationBudget(budgetLevel) end

--- **Native**: `SET_PLAYER_SHORT_SWITCH_STYLE` (`0x5F2013F8BC24EE69`)
---@param style integer Always 0
function StreamingStatic.setPlayerShortSwitchStyle(style) end

--- ```
--- All names can be found in playerswitchestablishingshots.meta
--- ```
--- **Native**: `SET_PLAYER_SWITCH_ESTABLISHING_SHOT` (`0x0FDE9DBFC0A6BC65`)
---@param name string
function StreamingStatic.setPlayerSwitchEstablishingShot(name) end

--- **Native**: `SET_PLAYER_SWITCH_OUTRO` (`0xC208B673CE446B61`)
---@param cameraCoord vector3
---@param camRotation vector3
---@param camFov number
---@param camFarClip number
---@param rotationOrder fx.Enum.RotationOrder|integer
function StreamingStatic.setPlayerSwitchOutro(cameraCoord, camRotation, camFov, camFarClip, rotationOrder) end

--- **Native**: `SET_REDUCE_PED_MODEL_BUDGET` (`0x77B5F9A36BF96710`)
---@param toggle boolean
function StreamingStatic.setReducePedModelBudget(toggle) end

--- **Native**: `SET_REDUCE_VEHICLE_MODEL_BUDGET` (`0x80C527893080CCF3`)
---@param toggle boolean
function StreamingStatic.setReduceVehicleModelBudget(toggle) end

--- **Native**: `SET_RENDER_HD_ONLY` (`0x40AEFD1A244741F2`)
---@param toggle boolean
function StreamingStatic.setRenderHdOnly(toggle) end

--- **Native**: `SET_SRL_TIME` (`0xA74A541C6884E7B8`)
---@param p0 number
function StreamingStatic.setSrlTime(p0) end

--- **Native**: `SET_STREAMING` (`0x6E0C692677008888`)
---@param toggle boolean
function StreamingStatic.setStreaming(toggle) end

--- **Native**: `SET_VEHICLE_POPULATION_BUDGET` (`0xCB9E1EB3BE2AF4E9`)
---@param p0 integer
function StreamingStatic.setVehiclePopulationBudget(p0) end

--- **Native**: `SHUTDOWN_CREATOR_BUDGET` (`0xCCE26000E9A6FAD7`)
function StreamingStatic.shutdownCreatorBudget() end

--- **Native**: `NETWORK_STOP_LOAD_SCENE` (`0x64E630FAF5F60F44`)
function StreamingStatic.stopLoadScene() end

--- **Native**: `STOP_PLAYER_SWITCH` (`0x95C0A5BBDC189AA1`)
function StreamingStatic.stopPlayerSwitch() end

--- ```
--- Always returns zero.
--- ```
--- **Native**: `STREAMVOL_CREATE_FRUSTUM` (`0x1F3F018BC3AFA77C`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 any
---@param p8 any
---@return any result
function StreamingStatic.streamvolCreateFrustum(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- ```
--- Always returns zero.
--- ```
--- **Native**: `STREAMVOL_CREATE_LINE` (`0x0AD9710CEE2F590F`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@return any result
function StreamingStatic.streamvolCreateLine(p0, p1, p2, p3, p4, p5, p6) end

--- ```
--- Always returns zero.
--- ```
--- **Native**: `STREAMVOL_CREATE_SPHERE` (`0x219C7B8D53E429FD`)
---@param coords vector3
---@param rad number
---@param p4 any
---@param p5 any
---@return any result
function StreamingStatic.streamvolCreateSphere(coords, rad, p4, p5) end

--- **Native**: `STREAMVOL_DELETE` (`0x1EE7D8DF4425F053`)
---@param unused any
function StreamingStatic.streamvolDelete(unused) end

--- **Native**: `STREAMVOL_HAS_LOADED` (`0x7D41E9D2D17C5B2D`)
---@param unused any
---@return boolean result
function StreamingStatic.streamvolHasLoaded(unused) end

--- **Native**: `STREAMVOL_IS_VALID` (`0x07C313F94746702C`)
---@param unused any
---@return boolean result
function StreamingStatic.streamvolIsValid(unused) end

--- **Native**: `NETWORK_UPDATE_LOAD_SCENE` (`0xC4582015556D1C46`)
---@return boolean result
function StreamingStatic.updateLoadScene() end

--- Loads the resource and returns a Promise (never yields). Resolves with `animDict`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_ANIM_DICT` / `HAS_ANIM_DICT_LOADED`.
---@param animDict string
---@param timeoutMs? integer
---@return fx.Promise<string>
function StreamingStatic.loadAnimDictAsync(animDict, timeoutMs) end

--- Loads the resource and returns a Promise (never yields). Resolves with `animSet`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_ANIM_SET` / `HAS_ANIM_SET_LOADED`.
---@param animSet string
---@param timeoutMs? integer
---@return fx.Promise<string>
function StreamingStatic.loadAnimSetAsync(animSet, timeoutMs) end

--- Loads the resource and returns a Promise (never yields). Resolves with `clipSet`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_CLIP_SET` / `HAS_CLIP_SET_LOADED`.
---@param clipSet string
---@param timeoutMs? integer
---@return fx.Promise<string>
function StreamingStatic.loadClipSetAsync(clipSet, timeoutMs) end

--- Loads the resource and returns a Promise (never yields). Resolves with `model` (as a hash).
--- Rejects with a TimeoutError after `timeoutMs` (default 10000), or immediately if `IS_MODEL_IN_CDIMAGE` fails.
--- Raw version: `REQUEST_MODEL` / `HAS_MODEL_LOADED`.
---@param model fx.Model|integer|string The model to request.
---@param timeoutMs? integer
---@return fx.Promise<integer>
function StreamingStatic.loadModelAsync(model, timeoutMs) end

--- Loads the resource and returns a Promise (never yields). Resolves with `fxName`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_NAMED_PTFX_ASSET` / `HAS_NAMED_PTFX_ASSET_LOADED`.
---@param fxName string
---@param timeoutMs? integer
---@return fx.Promise<string>
function StreamingStatic.loadNamedPtfxAssetAsync(fxName, timeoutMs) end

--- Loads the resource and returns a Promise (never yields).
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_PTFX_ASSET` / `HAS_PTFX_ASSET_LOADED`.
---@param timeoutMs? integer
---@return fx.Promise<nil>
function StreamingStatic.loadPtfxAssetAsync(timeoutMs) end

