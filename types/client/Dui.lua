---@meta
---@diagnostic disable
-- fx.Dui (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Dui
---@field handle integer Raw handle.
---@field duiHandle string (read-only) [GET_DUI_HANDLE] Returns the NUI window handle for a specified DUI browser object.
---@field isAvailable boolean (read-only) [IS_DUI_AVAILABLE] Returns whether or not a browser is created for a specified DUI browser object.
local Dui = {}

---Runtime texture showing the DUI (created once; the TXD is shared by the resource, texture names are unique).
---@return string txdName
---@return string textureName
function Dui:texture() end

---Promise resolved with the Dui once its browser host exists (IS_DUI_AVAILABLE).
---@param timeoutMs? integer
---@return fx.Promise<fx.Dui>
function Dui:whenAvailableAsync(timeoutMs) end

--- Destroys a DUI browser.
--- **Native**: `DESTROY_DUI` (`0xA085CB10`)
---@return nil
function Dui:destroy() end

--- Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
--- **Native**: `SEND_DUI_MESSAGE` (`0xCD380DA9`)
---@param jsonString string The message, encoded as JSON.
---@return fx.Dui self
function Dui:sendMessage(jsonString) end

--- Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
--- **Native**: `SEND_DUI_MOUSE_DOWN` (`0x5D01F191`)
---@param button string Either `'left'`, `'middle'` or `'right'`.
---@return fx.Dui self
function Dui:sendMouseDown(button) end

--- Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
--- **Native**: `SEND_DUI_MOUSE_MOVE` (`0xD9D7A0AA`)
---@param x integer The mouse X position.
---@param y integer The mouse Y position.
---@return fx.Dui self
function Dui:sendMouseMove(x, y) end

--- Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
--- **Native**: `SEND_DUI_MOUSE_UP` (`0x1D735B93`)
---@param button string Either `'left'`, `'middle'` or `'right'`.
---@return fx.Dui self
function Dui:sendMouseUp(button) end

--- Injects a 'mouse wheel' event for a DUI object.
--- **Native**: `SEND_DUI_MOUSE_WHEEL` (`0x2D62133A`)
---@param deltaY integer The wheel Y delta.
---@param deltaX integer The wheel X delta.
---@return fx.Dui self
function Dui:sendMouseWheel(deltaY, deltaX) end

--- Navigates the specified DUI browser to a different URL.
--- **Native**: `SET_DUI_URL` (`0xF761D9F3`)
---@param url string The new URL.
---@return fx.Dui self
function Dui:setUrl(url) end

---@class fx.DuiStatic
---@overload fun(handle: integer): fx.Dui?
local DuiStatic = {}

---Creates a DUI browser (width / height > 0; file:// URLs are rejected). Destroy it with dui:destroy()
---(DUIs are also destroyed when the resource stops).
---@param url string
---@param width integer
---@param height integer
---@return fx.Dui?
function DuiStatic.create(url, width, height) end

--- True when value is an fx.Dui, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function DuiStatic.is(value) end

--- Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
--- **Native**: `CREATE_DUI` (`0x23EAF899`)
---@param url string The initial URL to load in the browser.
---@param width integer The width of the backing surface.
---@param height integer The height of the backing surface.
---@return fx.Dui? result A DUI object.
function DuiStatic.createNative(url, width, height) end

