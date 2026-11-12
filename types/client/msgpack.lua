---@meta
---@diagnostic disable
-- msgpack (FiveM runtime library): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.
-- Checked against citizenfx/lua-cmsgpack (data/pins.json): 17 functions, 52 packers.

---Extension-type definition passed to `msgpack.extend`. The library reads these fields RAW on the metatable of
---a packed value: inheriting them through `__index` does not work.
---@class msgpack.Extension
---@field __ext integer Extension id, a Lua INTEGER in -128..127 (20..23 are reserved for vectors; FiveM uses 10/11 for function references, 41 for Entity, 42 for Player). A float such as 41.0 is ignored when packing.
---@field __pack fun(value: any, ext: integer): string, boolean? Encodes the value. Return the ext body (wrapped by the library), or `bytes, true` for complete raw msgpack bytes. Errors propagate to the caller of pack.
---@field __unpack fun(data: string, ext: integer): any Decodes an ext body (raw string) of this id. Only one decoder per id: the last `msgpack.extend` wins.

---Packer userdata created by `msgpack.new()`: methods are the generic packers (`p:integer(5)`, `p:string("x")`),
---`p()` / `p + v` / `p << v` append any value, `#p` is the byte length, `tostring(p)` the encoded bytes.
---@class msgpack.Packer

---@class msgpacklib
---@field null lightuserdata Sentinel: packs as nil; with option `sentinel`, nil array items / map keys unpack as it. `msgpack.null == msgpack.null()`.
---@field sentinel lightuserdata Alias of `msgpack.null`.
---@field packers table<string, fun(packer: msgpack.Packer, ...: any)> Generic packers by format name (`integer`, `uint8`, `string`, `binary`, `map`, `array`, `float`, `double`, `vector`, ...).
---@field _NAME string "luamsgpack-c"
---@field _VERSION string e.g. "luamsgpack-c 1.2.5"
---@field _COPYRIGHT string
---@field _DESCRIPTION string
msgpack = {}

---Encodes every argument as a separate MessagePack object and returns the concatenated bytes.
---Errors with "MessagePack pack needs input" without argument.
---@param ... any
---@return string bytes
function msgpack.pack(...) end

---Encodes the arguments as ONE MessagePack array of length `select('#', ...)` (nils kept). Used by FiveM for event
---payloads (`TriggerServerEvent`, ...).
---@param ... any
---@return string bytes
function msgpack.pack_args(...) end

---Decodes every object of `bytes` (from 1-based `position`, at most `limit` objects, 0 = all, up to `endPosition`).
---Returns nothing for an empty string. In FiveM this is the full decoder: the compat variant is NOT compiled in
---(FiveM defines LUACMSGPACK_COMPAT, a name the library never tests), so there is no `msgpack.unpack2`.
---@param bytes string
---@param position? integer default 1
---@param limit? integer default 0 (all)
---@param endPosition? integer
---@return any ...
function msgpack.unpack(bytes, position, limit, endPosition) end

---Incremental decoder: returns the next position (0 at the end) followed by the decoded values (default limit 1).
---Incomplete input returns `-(offset + 1), nil` instead of raising.
---@param bytes string
---@param position? integer
---@param limit? integer default 1
---@param endPosition? integer
---@return integer nextPosition
---@return any ...
function msgpack.next(bytes, position, limit, endPosition) end

---Creates a packer userdata to build a message piece by piece with explicit formats.
---@return msgpack.Packer
function msgpack.new() end

---Sets a boolean option of this Lua runtime (all resources have their own runtime and options).
---Options: unsigned, integer, float, double, string_compat, string_binary, without_hole, with_hole, always_as_map,
---empty_table_as_array, sentinel, ignore_invalid (small_lua, full64bits, long_double are read-only).
---FiveM sets string_compat, unsigned, without_hole and empty_table_as_array at startup: changing them affects every
---event and state bag of your resource.
---@param name "unsigned"|"integer"|"float"|"double"|"string_compat"|"string_binary"|"without_hole"|"with_hole"|"always_as_map"|"empty_table_as_array"|"sentinel"|"ignore_invalid"
---@param value boolean
function msgpack.setoption(name, value) end

---@param name "unsigned"|"integer"|"float"|"double"|"string_compat"|"string_binary"|"without_hole"|"with_hole"|"always_as_map"|"empty_table_as_array"|"sentinel"|"ignore_invalid"|"small_lua"|"full64bits"|"long_double"
---@return boolean
function msgpack.getoption(name) end

---Whether the library was built with protected calls (LUA_MSGPACK_SAFE): false in FiveM.
---@return boolean
function msgpack.safe() end

---String encoding: "string" (msgpack v5 str), "string_compat" (v4 raw, FiveM's setting), "string_binary" (bin).
---@param mode "string"|"string_compat"|"string_binary"
function msgpack.set_string(mode) end

---Table classification: "without_hole" (FiveM), "with_hole", "always_as_map" (also clears empty_table_as_array).
---@param mode "without_hole"|"with_hole"|"always_as_map"
function msgpack.set_array(mode) end

---Integer formats: "unsigned" (FiveM; positive integers use uint formats) or "signed" (int formats). Negative integers
---are always signed.
---@param mode "signed"|"unsigned"
function msgpack.set_integer(mode) end

---Float format of non-integral numbers: "double" (default) or "float" (float32).
---@param mode "float"|"double"
function msgpack.set_number(mode) end

---Registers an extension type: `registry[t.__ext] = t`. One entry per id, the LAST call wins (it replaces FiveM's own
---handlers for 10/11/41/42 in this runtime). Errors: invalid / reserved id (20..23), missing __pack / __unpack.
---@generic T: msgpack.Extension
---@param t T
---@return T
function msgpack.extend(t) end

---Returns the extension registered for an id (or nil).
---@param id integer -128..127
---@return msgpack.Extension?
function msgpack.extend_get(id) end

---Removes the extensions registered for the given ids (20..23 are rejected). Clearing 10 breaks function references.
---@param id integer
---@param ... integer
function msgpack.extend_clear(id, ...) end

---Associates a Lua type ("function", "userdata", ...) with an extension (table, registered id) or removes it (nil).
---FiveM associates "function" with 10 (function references).
---@param luatype string
---@param ext msgpack.Extension|integer|nil
---@return msgpack.Extension|integer|nil
function msgpack.settype(luatype, ext) end

---Returns the extension associated with a Lua type (or nil).
---@param luatype string
---@return msgpack.Extension?
function msgpack.gettype(luatype) end
