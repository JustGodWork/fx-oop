---@meta
---@diagnostic disable
-- fx cfxlua types (client and server). AUTO-GENERATED, DO NOT EDIT.

---@class quat
---@field x number
---@field y number
---@field z number
---@field w number

---@param x number
---@param y number
---@return vector2
function vector2(x, y) end

---@param x number
---@param y number
---@param z number
---@return vector3
function vector3(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return vector4
function vector4(x, y, z, w) end

vec2, vec3, vec4 = vector2, vector3, vector4

---@param w number
---@param x number
---@param y number
---@param z number
---@return quat
function quat(w, x, y, z) end

---Placeholder encoded as `null` and returned by decode for `null` when no `nullval` is given.
---@class CfxJsonNull

---Options and working fields of `json.encode`.
---@class CfxJsonState
---@field indent? boolean Pretty-print with two spaces per level.
---@field keyorder? string[] Keys written first, in this order.
---@field level? integer Starting indentation level.
---@field buffer? string[]
---@field bufferlen? integer
---@field tables? table<table, true> Tables being encoded, for cycle detection.
---@field exception? fun(reason: string, value: any, state: CfxJsonState, defaultmessage: string): string?, string?

---dkjson 2.5, the JSON library of the CfxLua runtime.
---@class CfxJsonLib
---@field version string
---@field null CfxJsonNull
---@field using_lpeg? boolean
json = {}

---Raises an error on an unsupported value (function, userdata, non-string or non-number key, cycle) unless `state.exception` handles it.
---With `state.buffer` set the text is appended to it and `true` is returned instead (typed as string: LuaLS cannot narrow on the table).
---@param value any
---@param state? CfxJsonState
---@return string encoded
function json.encode(value, state) end

---`pos` and `err` are returned after the value: `nil, pos, err` on a syntax error. `objectmeta` and `arraymeta` default to `{ __jsontype = 'object' }` and `{ __jsontype = 'array' }`.
---@param str string
---@param pos? integer Start position, default 1.
---@param nullval? any Value standing for `null`.
---@param objectmeta? table Metatable set on decoded objects.
---@param arraymeta? table Metatable set on decoded arrays.
---@return any value
---@return integer pos Position after the value (or of the error).
---@return string? err
function json.decode(str, pos, nullval, objectmeta, arraymeta) end

---@param str string
---@return string quoted
function json.quotestring(str) end

---@param state CfxJsonState
function json.addnewline(state) end

---Default `state.exception` handler: encodes the problem as a string `"<message>"`.
---@param reason string
---@param value any
---@param state CfxJsonState
---@param defaultmessage string
---@return string
function json.encodeexception(reason, value, state, defaultmessage) end

---@return CfxJsonLib
function json.use_lpeg() end
