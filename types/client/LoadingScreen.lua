---@meta
---@diagnostic disable
-- fx.LoadingScreen (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.LoadingScreen
---@field active boolean (read-only) The game's loading screen is shown (GET_IS_LOADING_SCREEN_ACTIVE)
---@field isLoadingFreemode boolean (read-only) [LOADINGSCREEN_IS_LOADING_FREEMODE]
---@field loadFreemode boolean [LOADINGSCREEN_GET_LOAD_FREEMODE / LOADINGSCREEN_SET_LOAD_FREEMODE]
---@field loadFreemodeWithEventName boolean [LOADINGSCREEN_GET_LOAD_FREEMODE_WITH_EVENT_NAME / LOADINGSCREEN_SET_LOAD_FREEMODE_WITH_EVENT_NAME]
local LoadingScreenStatic = {}

---Sends a message to the loading screen page, where `window.addEventListener('message', e => e.data)` receives it.
---A table is encoded to JSON.
---@param data string|table<string, any>
---@return boolean ok
function LoadingScreenStatic.send(data) end

---Closes the game's loading screen and the loading screen page (SHUTDOWN_LOADING_SCREEN +
---SHUTDOWN_LOADING_SCREEN_NUI).
function LoadingScreenStatic.shutdown() end

---Whether the loading screen page waits for a script to close it, like `loadscreen_manual_shutdown 'yes'` in the
---manifest of the resource that has the page. Without it, FiveM closes the page by itself.
---@param on boolean
function LoadingScreenStatic.setManualShutdown(on) end

---Closes the loading screen once the local player is ready (`fx.Player:readyAsync`).
---@param timeoutMs? integer Default: no limit
---@return fx.Promise
function LoadingScreenStatic.shutdownWhenReadyAsync(timeoutMs) end

--- **Native**: `LOADINGSCREEN_SET_IS_LOADING_FREEMODE` (`0xC7E7181C09F33B69`)
---@param toggle boolean
function LoadingScreenStatic.setIsLoadingFreemode(toggle) end

