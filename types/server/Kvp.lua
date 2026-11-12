---@meta
---@diagnostic disable
-- fx.Kvp (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Kvp
local KvpStatic = {}

---Saves to disk the writes made with `noSync`.
function KvpStatic.flush() end


---String value of a key, nil when it does not exist.
---@param key string
---@return string?
function KvpStatic.get(key) end

---Integer value of a key, 0 when it does not exist.
---@param key string
---@return integer
function KvpStatic.getInt(key) end

---Float value of a key, 0.0 when it does not exist.
---@param key string
---@return number
function KvpStatic.getFloat(key) end

---A value written by `setJson`, decoded. nil when the key does not exist; `nil, message` when it is not JSON.
---@param key string
---@return any? value
---@return string? err
function KvpStatic.getJson(key) end

---Stores a string under a key of this resource, kept across restarts: on the player's computer for the client (per
---server), in the server's data for the server. Saved to disk at once unless `noSync` (`fx.Kvp.flush()` on the server).
---@param key string
---@param value string
---@param noSync? boolean Do not save to disk now
function KvpStatic.set(key, value, noSync) end

---@param key string
---@param value integer
---@param noSync? boolean Do not save to disk now
function KvpStatic.setInt(key, value, noSync) end

---@param key string
---@param value number
---@param noSync? boolean Do not save to disk now
function KvpStatic.setFloat(key, value, noSync) end

---Stores any value encoded to JSON (read back with `getJson`).
---```lua
---fx.Kvp.setJson("settings", { volume = 0.5 })
---local settings <const> = fx.Kvp.getJson("settings") or {}
---```
---@param key string
---@param value any
---@param noSync? boolean Do not save to disk now
function KvpStatic.setJson(key, value, noSync) end

---@param key string
---@param noSync? boolean Do not save to disk now
function KvpStatic.delete(key, noSync) end

---Every key of this resource starting with `prefix` (all of them without one).
---@param prefix? string
---@return string[]
function KvpStatic.keys(prefix) end

