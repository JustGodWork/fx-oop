---@meta
---@diagnostic disable
-- fx.Http (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@alias fx.HttpMethod "GET"|"POST"|"PUT"|"PATCH"|"DELETE"|"HEAD"|"OPTIONS"

---@class fx.HttpOptions
---@field method? fx.HttpMethod Default "GET"
---@field headers? table<string, string>
---@field query? table<string, string|number|boolean> Added to the URL, encoded
---@field body? string Raw body
---@field json? any Body encoded to JSON, with `Content-Type: application/json` unless a header sets it
---@field followRedirects? boolean Default true
---@field timeoutMs? integer Rejects after it; the request itself is not canceled

---A response, whatever its status: check `ok` or `status`.
---@class fx.HttpResponse
---@field status integer
---@field ok boolean Status from 200 to 299
---@field body string? nil when FiveM gives no body (it gives none for most error statuses, see `error`)
---@field headers table<string, string>
---@field error string? FiveM's error text when the status is not a success
local HttpResponse = {}

---The body decoded from JSON. `nil, message` when there is no body or it is not JSON.
---@return any? value
---@return string? err
function HttpResponse:json() end
---@class fx.Http
local HttpStatic = {}

---Sends an HTTP request. Resolves with the response, whatever its status; rejects only when no response came
---(network error, invalid URL, `timeoutMs`).
---```lua
---local res <const> = fx.Http.requestAsync("https://api.example.com/items", {
---  method = "POST",
---  json = { name = "box" },
---  headers = { Authorization = "Bearer " .. token },
---}):await()
---if res.ok then print(res:json().id) else print("failed", res.status, res.error) end
---```
---@param url string
---@param options? fx.HttpOptions
---@return fx.Promise<fx.HttpResponse>
function HttpStatic.requestAsync(url, options) end

---`requestAsync` with the GET method.
---@param url string
---@param options? fx.HttpOptions
---@return fx.Promise<fx.HttpResponse>
function HttpStatic.getAsync(url, options) end

---`requestAsync` with the POST method. A table body is sent as JSON, a string as is.
---@param url string
---@param body? table|string
---@param options? fx.HttpOptions
---@return fx.Promise<fx.HttpResponse>
function HttpStatic.postAsync(url, body, options) end

