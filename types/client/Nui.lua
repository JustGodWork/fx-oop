---@meta
---@diagnostic disable
-- fx.Nui (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---The NUI page of this resource: messages, callbacks and focus. Messages are `{ action = action, data = data }`.
---@class fx.Nui
---@field focused boolean (read-only) This resource holds the NUI focus or cursor (set through `fx.Nui.focus`)
local NuiStatic = {}

---Sends `{ action = action, data = data }` to the page (one JSON message), read there in
---`window.addEventListener("message", (e) => ...)` as `e.data.action` and `e.data.data`.
---@param action string
---@param data? any
function NuiStatic.send(action, data) end

---Handles the page's `fetch("https://<resource>/<name>", { method: "POST", body: JSON.stringify(data) })`. The value
---`fn` returns is the reply; a returned fx.Promise is awaited. `nil` replies `{}`. When `fn` raises or the promise
---rejects, the error is logged and the reply is `{ error = message }`. Registering a name again replaces its handler.
---```lua
---fx.Nui.on("buy", function(data)
---  return BuyRpc:callAsync(data.item, data.count) -- the page gets the result
---end)
---```
---@param name string
---@param fn fun(data: any): any
---@return fun() off Removes the handler: later calls reply `{ error = "no handler" }`
function NuiStatic.on(name, fn) end

---Gives or takes the NUI focus. `hasCursor` defaults to `hasFocus`; `keepInput` lets the game keep the keyboard
---while focused. Released automatically when this resource stops, so a crashed page never leaves the player stuck.
---```lua
---fx.Nui.focus(true)          -- page focused with the cursor
---fx.Nui.focus(true, false)   -- keyboard focus, no cursor
---fx.Nui.focus(false)         -- release
---```
---@param hasFocus boolean
---@param hasCursor? boolean
---@param keepInput? boolean
function NuiStatic.focus(hasFocus, hasCursor, keepInput) end

