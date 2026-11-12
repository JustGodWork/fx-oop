---@meta
---@diagnostic disable
-- fxmanifest.lua directives: LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---`data_file` types (docs.fivem.net game-references/data-files).
---@alias fx.Manifest.DataFileType
---| "ACTION_TABLE_DEFINITIONS"
---| "ALTERNATE_VARIATIONS_FILE"
---| "AMB_PROCEDURAL_BLOOD_FILE"
---| "AMBIENT_PED_MODEL_SET_FILE"
---| "AMBIENT_PROP_MODEL_SET_FILE"
---| "AMBIENT_VEHICLE_MODEL_SET_FILE"
---| "AUDIO_CURVEDATA"
---| "AUDIO_DYNAMIXDATA"
---| "AUDIO_GAMEDATA"
---| "AUDIO_SOUNDDATA"
---| "AUDIO_SPEECHDATA"
---| "AUDIO_SYNTHDATA"
---| "AUDIO_WAVEPACK" Folder containing wave packs
---| "CARCOLS_FILE" Vehicle model variation data
---| "CLIP_SETS_FILE"
---| "COMBAT_BEHAVIOUR_OVERRIDE_FILE"
---| "CONDITIONAL_ANIMS_FILE"
---| "CONTENT_UNLOCKING_META_FILE"
---| "DLC_ITYP_REQUEST" Equivalent of `PERMANENT_ITYP_FILE`
---| "DLC_POP_GROUPS" Population groups
---| "DLC_SCRIPT_METAFILE"
---| "DLC_WEAPON_PICKUPS"
---| "DRIVER_RULES_STD_FILE"
---| "EVENTS_OVERRIDE_FILE" Ped event metadata
---| "EXPLOSION_INFO_FILE"
---| "EXPLOSIONFX_FILE"
---| "EXPRESSION_SETS_FILE"
---| "EXTRA_FOLDER_MOUNT_DATA"
---| "EXTRA_TITLE_UPDATE_DATA"
---| "FACIAL_CLIPSET_GROUPS_FILE"
---| "GTXD_PARENTING_DATA" TXD parent/child relationships for maps
---| "HANDLING_FILE" Handling data XML
---| "INTERIOR_PROXY_ORDER_FILE"
---| "LEVEL_STREAMING_FILE"
---| "LOADOUTS_FILE"
---| "MOVE_NETWORK_DEFS"
---| "MP_STATS_DISPLAY_LIST_FILE"
---| "MP_STATS_UI_LIST_FILE"
---| "NM_TUNING_FILE"
---| "OVERLAY_INFO_FILE"
---| "PED_BOUNDS_FILE"
---| "PED_BRAWLING_STYLE_FILE"
---| "PED_COMPONENT_SETS_FILE"
---| "PED_DAMAGE_APPEND_FILE"
---| "PED_DAMAGE_OVERRIDE_FILE"
---| "PED_FIRST_PERSON_ALTERNATE_DATA"
---| "PED_FIRST_PERSON_ASSET_DATA"
---| "PED_METADATA_FILE"
---| "PED_OVERLAY_FILE"
---| "PED_PERCEPTION_FILE"
---| "PED_PERSONALITY_FILE"
---| "PED_TASK_DATA_FILE"
---| "PEDSTREAM_FILE"
---| "POPSCHED_FILE" Population scheduling data override
---| "PTFXASSETINFO_FILE"
---| "SCALEFORM_DLC_FILE"
---| "SCALEFORM_PREALLOC_FILE"
---| "SCENARIO_INFO_FILE"
---| "SCENARIO_POINTS_FILE"
---| "SCENARIO_POINTS_OVERRIDE_FILE"
---| "SCENARIO_POINTS_PSO_FILE"
---| "SCENARIO_POINTS_OVERRIDE_PSO_FILE" Scenario Points Manifest
---| "SCRIPT_BRAIN_FILE"
---| "SCRIPTFX_FILE"
---| "SHOP_PED_APPAREL_META_FILE"
---| "SP_STATS_DISPLAY_LIST_FILE"
---| "SP_STATS_UI_LIST_FILE"
---| "STREAMING_REQUEST_LISTS_FILE"
---| "TATTOO_SHOP_DLC_FILE"
---| "TEXTFILE_METAFILE"
---| "TIMECYCLEMOD_FILE" Timecycle Mod
---| "TRAINCONFIGS_FILE" Train config
---| "TRAINTRACK_FILE" Train tracks
---| "VEHICLE_LAYOUTS_FILE"
---| "VEHICLE_METADATA_FILE"
---| "VEHICLE_SHOP_DLC_FILE"
---| "VEHICLE_VARIATION_FILE"
---| "VEHICLEEXTRAS_FILE"
---| "VFXVEHICLEINFO_FILE"
---| "WEAPON_ANIMATIONS_FILE"
---| "WEAPON_METADATA_FILE"
---| "WEAPON_SHOP_INFO_METADATA_FILE"
---| "WEAPONCOMPONENTSINFO_FILE"
---| "WEAPONINFO_FILE_PATCH"
---| "WEAPONINFO_FILE"
---| "ZONEBIND_FILE"
---| "FIVEM_LOVES_YOU_447B37BE29496FA0"
---| "FIVEM_LOVES_YOU_1F764C843460150"
---| "FIVEM_LOVES_YOU_9605D14551590909"

---FXv2 version: each one includes the features of the previous ones.
---@alias fx.Manifest.FxVersion
---| "cerulean" 2020-05: NUI in a secure context (WASM, fetch); NUI callbacks use https://
---| "bodacious" 2020-02: implies clr_disable_task_scheduler; no `window` in JS
---| "adamant" 2019-12: requires `game`

---@alias fx.Manifest.Game
---| "gta5" FiveM
---| "rdr3" RedM
---| "common" Any game, CitizenFX APIs only

---Manifest version GUIDs of `__resource.lua` (FXv1).
---@alias fx.Manifest.ResourceManifestVersion
---| "05cfa83c-a124-4cfa-a768-c24a5811d8f9" 2017-06-04: scripts are network scripts
---| "44febabe-d386-4d18-afbe-5e627f4af937" 2017-06-07: natives_universal.lua
---| "f15e72ec-3972-4fe4-9c7d-afc5394ae207" 2017-04-08
---| "77731fab-63ca-442c-a67b-abc70f28dfa5" 2016-12

---Server Node.js version for JS scripts.
---@alias fx.Manifest.NodeVersion "16"|"22"

---A resource name, or a runtime constraint: `/server:4500` (server build), `/policy:subdir_file_mapping`, `/onesync`,
---`/gameBuild:h4` (same values as sv_enforceGameBuild), `/native:0xE27C97A0` (server native supported).
---@alias fx.Manifest.Dependency string

---A file path relative to the resource. Directives marked "globbing" accept `*.lua`, `dir/*.lua`, `**/*.lua`,
---`**/cl_*.lua`.
---@alias fx.Manifest.Path string

---Most directives return a function that adds a `<name>_extra` entry (JSON) to the previous one, as in
---`data_file 'HANDLING_FILE' 'handling.meta'`.
---@alias fx.Manifest.Extra fun(extra: any)

---@alias fx.Manifest.ConvarType "CV_STRING"|"CV_BOOL"|"CV_INT"|"CV_SLIDER"|"CV_COMBI"|"CV_PASSWORD"|"CV_MULTI"

---One convar of `convar_category`: `{ title, name, type, default, ... }`. Prefix the name with `$` for a replicated
---convar (setr), `#` for a server info one (sets). CV_BOOL: `default, label?`; CV_INT: `default, min?, max?`;
---CV_SLIDER, CV_COMBI: `default, min, max`; CV_MULTI: `{ { name, value }, ... }` (the first item is the default).
---@alias fx.Manifest.Convar [string, string, fx.Manifest.ConvarType, any, any?, any?]

---@alias fx.Manifest.ConvarCategory [string, fx.Manifest.Convar[]]

---Supported functionality of the resource.
---```lua
---fx_version 'cerulean'
---```
---@param version fx.Manifest.FxVersion
---@return fx.Manifest.Extra
function fx_version(version) end

---Game the resource runs on.
---@param name fx.Manifest.Game
---@return fx.Manifest.Extra
function game(name) end

---Games the resource runs on.
---@param names fx.Manifest.Game[]
---@return fx.Manifest.Extra
function games(names) end

---Deprecated: `__resource.lua` manifest version, use `fxmanifest.lua` and `fx_version`.
---@deprecated
---@param guid fx.Manifest.ResourceManifestVersion
---@return fx.Manifest.Extra
function resource_manifest_version(guid) end

---Acknowledges the RedM pre-release warning (required for rdr3 resources).
---@param text "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
---@return fx.Manifest.Extra
function rdr3_warning(text) end

---@param value string
---@return fx.Manifest.Extra
function name(value) end

---@param value string
---@return fx.Manifest.Extra
function author(value) end

---@param value string
---@return fx.Manifest.Extra
function description(value) end

---@param value string
---@return fx.Manifest.Extra
function version(value) end

---@param url string
---@return fx.Manifest.Extra
function repository(url) end

---Script loaded on the client (globbing). `.lua`, `.net.dll` or `.js`; also sent to clients.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function client_script(path) end

---Scripts loaded on the client (globbing).
---@param paths fx.Manifest.Path[]
---@return fx.Manifest.Extra
function client_scripts(paths) end

---Script loaded on the server (globbing). `.lua`, `.net.dll` or `.js`.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function server_script(path) end

---Scripts loaded on the server (globbing).
---@param paths fx.Manifest.Path[]
---@return fx.Manifest.Extra
function server_scripts(paths) end

---Script loaded on both sides (globbing), before the client and server scripts; also sent to clients.
---```lua
---shared_script '@fx/init.lua'
---```
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function shared_script(path) end

---Scripts loaded on both sides (globbing).
---@param paths fx.Manifest.Path[]
---@return fx.Manifest.Extra
function shared_scripts(paths) end

---File sent to clients (globbing): NUI pages, data files, files read with LoadResourceFile on the client.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function file(path) end

---Files sent to clients (globbing).
---@param paths fx.Manifest.Path[]
---@return fx.Manifest.Extra
function files(paths) end

---Named set of files packed into `<name>.rpf` for clients (globbing).
---```lua
---file_set 'textures' { 'stream/textures/*.ytd' }
---```
---@param name string
---@return fun(paths: fx.Manifest.Path[])
function file_set(name) end

---Client global function `_G[name]` exported to other resources. Prefer `exports('name', fn)` in a script.
---@param name string
---@return fx.Manifest.Extra
function export(name) end

---Server global function `_G[name]` exported to other resources. Prefer `exports('name', fn)` in a script.
---@param name string
---@return fx.Manifest.Extra
function server_export(name) end

---@param names string[]
---@return fx.Manifest.Extra
function server_exports(names) end

---Resource started before this one, or a runtime constraint (`/server:4500`, `/onesync`...).
---@param name fx.Manifest.Dependency
---@return fx.Manifest.Extra
function dependency(name) end

---```lua
---dependencies { 'fx', '/onesync', '/server:12913' }
---```
---@param names fx.Manifest.Dependency[]
---@return fx.Manifest.Extra
function dependencies(names) end

---This resource replaces `name`: it starts when another resource requires `name`, and acts as `name`.
---@param name string
---@return fx.Manifest.Extra
function provide(name) end

---NUI page: a file of the resource (listed in `files`) or an absolute URL.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function ui_page(path) end

---Creates the NUI frame when the resource starts instead of when it is first used.
---@param value "yes"|string
---@return fx.Manifest.Extra
function ui_page_preload(value) end

---`'true'`: NUI callbacks only accept requests from this resource's own page.
---@param value "true"
---@return fx.Manifest.Extra
function nui_callback_strict_mode(value) end

---HTML loading screen (listed in `files`).
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function loadscreen(path) end

---Keeps the loading screen until `ShutdownLoadingScreenNui()`.
---@param value "yes"|string
---@return fx.Manifest.Extra
function loadscreen_manual_shutdown(value) end

---Shows the mouse cursor on the loading screen.
---@param value "yes"|string
---@return fx.Manifest.Extra
function loadscreen_cursor(value) end

---Adds a game data file (globbing on the path).
---```lua
---data_file 'HANDLING_FILE' 'data/*_handling.meta'
---```
---@param type fx.Manifest.DataFileType|string
---@return fun(path: fx.Manifest.Path)
function data_file(type) end

---Marks the resource as a map: the map storage reloads when it starts.
---@param value "yes"|string
---@return fx.Manifest.Extra
function this_is_a_map(value) end

---Map file of the resource, sent to clients (globbing).
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function map(path) end

---Clients download nothing from this resource.
---@param value "yes"|string
---@return fx.Manifest.Extra
function server_only(value) end

---Level meta loaded before the primary one. Deprecated: use `data_file`.
---@deprecated
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function before_level_meta(path) end

---Level meta loaded after the primary one. Deprecated: use `data_file`.
---@deprecated
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function after_level_meta(path) end

---Replaces the level meta (`common:/data/levels/gta5/gta5.meta`) with this file, without its `.meta` extension.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function replace_level_meta(path) end

---Def meta added to the game's load list.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function init_meta(path) end

---RedM: replaces the default train tracks file.
---@param path fx.Manifest.Path
---@return fx.Manifest.Extra
function replace_traintrack_file(path) end

---Deprecated: every Lua script runs on Lua 5.4 since June 2025.
---@deprecated
---@param value "yes"
---@return fx.Manifest.Extra
function lua54(value) end

---One Argument List for Lua natives (experimental): faster calls and fixed return types, no vector unpacking.
---@param value "yes"
---@return fx.Manifest.Extra
function use_experimental_fxv2_oal(value) end

---Server Node.js version (default 16).
---@param value fx.Manifest.NodeVersion
---@return fx.Manifest.Extra
function node_version(value) end

---Disables the custom C# task scheduler on the server (implied by `fx_version 'bodacious'` and later).
---@param value "yes"|string
---@return fx.Manifest.Extra
function clr_disable_task_scheduler(value) end

---Files left unencrypted by Asset Escrow.
---@param paths fx.Manifest.Path[]
---@return fx.Manifest.Extra
function escrow_ignore(paths) end

---Convars shown in FxDK's Project Settings.
---```lua
---convar_category 'MySQL' {
---  "Connection settings",
---  {
---    { "Connection string", "mysql_connection_string", "CV_STRING", "" },
---    { "Slow query warning", "mysql_slow_query_warning", "CV_COMBI", 100, 0, 5000 },
---  },
---}
---```
---@param name string
---@return fun(category: fx.Manifest.ConvarCategory)
function convar_category(name) end
