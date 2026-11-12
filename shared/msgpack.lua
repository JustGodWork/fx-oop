---@diagnostic disable
---@alias fx.MsgpackEncode fun(self: table): integer, ...: any Count of the values that travel, then the values
---@alias fx.MsgpackDecode fun(...: any): table?

---@type fx.MsgpackDeps
local deps = ...
local rt = deps.rt
local isServer = rt.isServer

local msgpack = msgpack
local mp_pack, mp_extend, mp_extend_get = msgpack.pack, msgpack.extend, msgpack.extend_get
local type, tostring, tonumber, error, rawget, setmetatable, math_type = type, tostring, tonumber, error, rawget, setmetatable, math.type
local NetworkGetNetworkIdFromEntity, NetworkGetEntityFromNetworkId = NetworkGetNetworkIdFromEntity, NetworkGetEntityFromNetworkId
local NetworkGetEntityIsNetworked = NetworkGetEntityIsNetworked

-- 20..23 are refused by the library (vectors), the others are used by FiveM
---@type fx.MsgpackIds
local IDS = {
  FUNCREF = 10, LOCALFUNCREF = 11, VECTOR2 = 20, VECTOR3 = 21, VECTOR4 = 22, QUATERNION = 23, ENTITY = 41, PLAYER = 42,
}
---@type table<integer, string>
local RESERVED = {}
for name, id in pairs(IDS) do RESERVED[id] = name end

---@param self fx.Wrapper
---@return string
local function packEntity(self)
  local h = rawget(self, "handle")
  -- a local entity has no network id: sending it would deliver another entity, or none
  if not isServer and not NetworkGetEntityIsNetworked(h) then
    error(("%s is not networked: it cannot be sent through msgpack (ext 41 carries a network id)"):format(tostring(self)), 0)
  end
  return tostring(NetworkGetNetworkIdFromEntity(h))
end

---@param self { serverId: integer }
---@return string
local function packPlayer(self)
  return tostring(self.serverId)
end

-- no __ext: the library calls __pack(value, 0), which must return complete msgpack bytes and `true`
---@param self fx.Wrapper
---@return string bytes
---@return true raw
local function packHandle(self)
  return mp_pack(self.handle), true
end

-- Entities pack as ext 41 with the network id as text and players as ext 42 with the server id, like FiveM's own
-- Entity(h) / Player(src) objects: a resource without fx receives them as usual. Other handles (Blip, Cam, Model...)
-- pack as their integer handle / hash.
---@param T fx.TypeDef
function rt.msgpackSetup(T)
  local mt = T.mt --[[@as table<string, any>]]
  if T.kind == "entity" then
    mt.__ext, mt.__pack = IDS.ENTITY, packEntity
  elseif T.kind == "player" then
    mt.__ext, mt.__pack = IDS.PLAYER, packPlayer
    -- on the client, fx.Player itself is the local player
    if T.staticMT and not isServer then T.staticMT.__ext, T.staticMT.__pack = IDS.PLAYER, packPlayer end
  else
    mt.__pack = packHandle
  end
end

---@type table<integer, msgpack.Extension|false|nil> FiveM's own decoders
local native = { [IDS.ENTITY] = mp_extend_get(IDS.ENTITY), [IDS.PLAYER] = mp_extend_get(IDS.PLAYER) }

-- lua-cmsgpack decodes through one registry entry per id (the last msgpack.extend wins): in this resource, incoming
-- ext 41 / 42 decode into fx wrappers until restoreNative().
---@type table<integer, msgpack.Extension>
local decoders = {
  [IDS.ENTITY] = {
    __ext = IDS.ENTITY,
    __pack = native[IDS.ENTITY] and native[IDS.ENTITY].__pack or packEntity,
    -- nil when the entity does not exist here (out of scope, deleted)
    ---@param data string
    ---@return fx.Entity?
    __unpack = function(data)
      local id = math_type(tonumber(data)) == "integer" and tonumber(data) or 0
      local h = id > 0 and NetworkGetEntityFromNetworkId(id) or 0
      if not h or h == 0 then return nil end
      return rt.typeOf("Entity").wrap(h)
    end,
  },
  [IDS.PLAYER] = {
    __ext = IDS.PLAYER,
    __pack = native[IDS.PLAYER] and native[IDS.PLAYER].__pack or packPlayer,
    -- the text comes from the sender: only a positive integer is a server id (-1 would target everyone)
    ---@param data string
    ---@return fx.Player?
    __unpack = function(data)
      local id = tonumber(data)
      if math_type(id) ~= "integer" or id <= 0 then return nil end
      return rt.typeOf("Player").decode(id --[[@as integer]])
    end,
  },
}
mp_extend(decoders[IDS.ENTITY])
mp_extend(decoders[IDS.PLAYER])

-- typed by fx.MsgpackLib (shared/annot/core.d.lua, types in annot/internal.d.lua)
local M = { ids = IDS, types = {} } -- types: name -> type made by define (used by fx.Schema)
---@type table<integer, string>
local owners = {} -- id -> name, for error messages

-- a float id is accepted by msgpack.extend but ignored when packing
---@param fn string Function name, for errors
---@param id any
---@param force? boolean
local function checkId(fn, id, force)
  if math_type(id) ~= "integer" then error(("fx.msgpack.%s: id must be an integer, got %s"):format(fn, tostring(id)), 3) end
  if id < 0 or id > 127 then error(("fx.msgpack.%s: id %d out of 0..127 (negative ids are reserved by the MessagePack spec)"):format(fn, id), 3) end
  if RESERVED[id] and not force then error(("fx.msgpack.%s: id %d is used by FiveM (%s)"):format(fn, id, RESERVED[id]), 3) end
  if (owners[id] or mp_extend_get(id)) and not force then
    error(("fx.msgpack.%s: id %d is already registered%s"):format(fn, id, owners[id] and (" by " .. owners[id]) or ""), 3)
  end
end

---@param id integer
---@param name string
---@param mt table<string, any>
---@param pack fun(value: any, id: integer): string, boolean?
---@param unpack fun(data: string, id: integer): any
---@return table<string, any> mt
local function register(id, name, mt, pack, unpack)
  -- read raw by the library: they cannot be inherited through __index
  mt.__ext, mt.__pack, mt.__unpack = id, pack, unpack
  mp_extend(mt)
  owners[id] = name
  return mt
end

---@param def fx.MsgpackExtension
---@return metatable
function M.extend(def)
  checkId("extend", def.id, def.force)
  if type(def.pack) ~= "function" or type(def.unpack) ~= "function" then error("fx.msgpack.extend: pack and unpack functions are required", 2) end
  ---@type table<string, any>
  local mt = def.metatable or {}
  return register(def.id, def.name or tostring(mt.__name or def.id), mt, def.pack, def.unpack)
end

local TYPE_KEYS = { new = true, from = true, get = true, is = true, __id = true, __sub = true, __name = true, __fields = true, __key = true }
local mp_unpack = msgpack.unpack
local table_pack, table_unpack, pairs, next = table.pack, table.unpack, pairs, next
local concat, getmetatable, select = table.concat, getmetatable, select

-- During the decoding of a net event, _G.source is still the raw "net:<id>" string (scheduler.lua l.125-134).
-- State bag values are decoded outside any event: nothing tells who wrote them, so they are not covered.
---@return boolean
local function fromClient()
  local s = _G.source
  return isServer and type(s) == "string" and s:sub(1, 4) == "net:"
end

-- Builds a type: returns T (the type table), its instance metatable, and the value codec:
-- encode(self) -> n, ... (values that travel) and decode(...) -> instance.
---@param fn string Function name, for errors
---@param def fx.MsgpackTypeOptions
---@return fx.MsgpackTypeImpl T
---@return fx.MsgpackMT mt
---@return fx.MsgpackEncode encode
---@return fx.MsgpackDecode decode
local function build(fn, def)
  local name, fields, defaults, onDecode, key, resolve = def.name, def.fields, def.defaults, def.onDecode, def.key, def.resolve
  if type(name) ~= "string" then error(("fx.msgpack.%s: name (string) is required"):format(fn), 3) end
  local nf = 0
  if fields ~= nil then
    if key ~= nil then error(("fx.msgpack.%s(%s): fields and key cannot be combined (a reference only sends its key)"):format(fn, name), 3) end
    if type(fields) ~= "table" or #fields == 0 then error(("fx.msgpack.%s(%s): fields must be a non-empty list of names"):format(fn, name), 3) end
    nf = #fields
    for i = 1, nf do
      local k = fields[i]
      if type(k) ~= "string" then error(("fx.msgpack.%s(%s): fields[%d] must be a string"):format(fn, name, i), 3) end
      if TYPE_KEYS[k] then error(("fx.msgpack.%s(%s): field name '%s' is reserved"):format(fn, name, k), 3) end
    end
  end
  if key ~= nil and (type(key) ~= "string" or TYPE_KEYS[key]) then error(("fx.msgpack.%s(%s): key must be a field name"):format(fn, name), 3) end
  if resolve ~= nil and (key == nil or type(resolve) ~= "function") then error(("fx.msgpack.%s(%s): resolve needs a key and must be a function"):format(fn, name), 3) end

  ---A type made by define / namespace.define, as built (fx.MsgpackType is its public view).
  ---@class fx.MsgpackTypeImpl : fx.MsgpackType
  local T = { __name = name, __fields = fields, __key = key }
  ---Instance metatable of a msgpack type: the library reads the extension fields raw on it.
  ---@class fx.MsgpackMT : msgpack.Extension
  ---@field [string] any
  local mt = { __index = T, __name = name }
  if def.meta then for k, v in pairs(def.meta) do mt[k] = v end end
  if not mt.__tostring then
    ---@param self table
    ---@return string
    mt.__tostring = function(self)
      ---@type string[]
      local parts = {}
      if key then
        parts[1] = key .. "=" .. tostring(rawget(self, key))
      elseif fields then
        for i = 1, nf do parts[i] = fields[i] .. "=" .. tostring(rawget(self, fields[i])) end
      else
        for k, v in next, self do parts[#parts + 1] = tostring(k) .. "=" .. tostring(v) end
        table.sort(parts)
      end
      return name .. "(" .. concat(parts, ", ") .. ")"
    end
  end

  ---@param o table
  ---@return table
  local function fill(o)
    if defaults then for k, v in pairs(defaults) do if rawget(o, k) == nil then o[k] = v end end end
    return setmetatable(o, mt)
  end

  ---@type fx.MsgpackEncode, fx.MsgpackDecode
  local encode, decode
  if key then
    -- by reference: only the key travels; the receiver gets its own instance for that key
    ---@type table<any, table>
    local cache = setmetatable({}, { __mode = "v" })
    ---@param k any
    ---@return table?
    local function get(k)
      if k == nil then return nil end
      if resolve then return resolve(k) end
      local o = cache[k]
      if o == nil then
        o = fill({ [key] = k })
        cache[k] = o
        if onDecode then onDecode(o) end
      end
      return o
    end
    encode = function(self) return 1, rawget(self, key) end
    decode = function(k)
      -- a client could send any key (another player's id): never resolve it on the server unless allowed
      if def.fromClient ~= true and fromClient() then return nil end
      local tk = type(k)
      if (tk ~= "number" and tk ~= "string") or k ~= k then return nil end -- NaN, tables, wrappers
      return get(k)
    end
    ---@param self fx.MsgpackTypeImpl
    ---@param k any
    ---@return table?
    T.get = function(self, k)
      if self ~= T then error(("%s.get: call it with a colon (%s:get(key))"):format(name, name), 2) end
      return get(k)
    end
    ---@param self fx.MsgpackTypeImpl
    ---@param t table<string, any>
    ---@return table
    T.from = function(self, t)
      if self ~= T then error(("%s.from: call it with a colon (%s:from(t))"):format(name, name), 2) end
      if resolve then error(("%s:from: not available when resolve is given (the resolver owns the instances)"):format(name), 2) end
      local k = rawget(t, key)
      if k == nil then error(("%s:from: the table has no '%s'"):format(name, key), 2) end
      if getmetatable(t) ~= nil and getmetatable(t) ~= mt then error(("%s:from: the table already has a metatable"):format(name), 2) end
      cache[k] = fill(t)
      return t
    end
    ---@return table
    T.new = function() error(("%s is a reference type: use %s:get(%s)"):format(name, name, key), 2) end
  else
    if fields then
      encode = function(self)
        local vals = {}
        for i = 1, nf do vals[i] = rawget(self, fields[i]) end
        return nf, table_unpack(vals, 1, nf)
      end
      decode = function(...)
        local o = {}
        for i = 1, nf do o[fields[i]] = (select(i, ...)) end
        o = fill(o)
        if onDecode then onDecode(o) end
        return o
      end
    else
      encode = function(self)
        local copy = {}
        for k, v in next, self do copy[k] = v end
        return 1, copy
      end
      decode = function(t)
        -- only a fresh table: the payload may hold an extension decoding to a cached object (fx.Player(3)),
        -- which must not receive this metatable
        if type(t) ~= "table" or getmetatable(t) ~= nil then t = {} end
        local o = fill(t)
        if onDecode then onDecode(o) end
        return o
      end
    end
    ---@param self fx.MsgpackTypeImpl
    ---@param ... any
    ---@return table
    T.new = function(self, ...)
      if self ~= T then error(("%s.new: call it with a colon (%s:new(...))"):format(name, name), 2) end
      local o = {}
      if fields then
        for i = 1, nf do o[fields[i]] = (select(i, ...)) end
      else
        local init = ...
        if init ~= nil then for k, v in pairs(init) do o[k] = v end end
      end
      return fill(o)
    end
    ---@param self fx.MsgpackTypeImpl
    ---@param t table<string, any>
    ---@return table
    T.from = function(self, t)
      if self ~= T then error(("%s.from: call it with a colon (%s:from(t))"):format(name, name), 2) end
      if getmetatable(t) ~= nil and getmetatable(t) ~= mt then error(("%s:from: the table already has a metatable"):format(name), 2) end
      return fill(t)
    end
  end
  ---@param v any
  ---@return boolean
  T.is = function(v) return type(v) == "table" and getmetatable(v) == mt end
  return T, mt, encode, decode
end

--- A type whose instances travel as themselves. With `key`, only the key travels (a reference); with `fields`, only
--- those fields.
---@param def fx.MsgpackTypeDef
---@return fx.MsgpackType
function M.define(def)
  if type(def) ~= "table" then error("fx.msgpack.define: expected a definition table", 2) end
  checkId("define", def.id, def.force)
  local T, mt, encode, decode = build("define", def)
  T.__id = def.id
  M.types[def.name] = T
  register(def.id, def.name, mt,
    function(self) return mp_pack(select(2, encode(self))) end,
    function(data) return decode(mp_unpack(data)) end)
  return T
end

--- One extension id shared by many types: each value travels as (sub id, values...).
---@param def { id: integer, name: string, force?: boolean }
---@return fx.MsgpackNamespace
function M.namespace(def)
  if type(def) ~= "table" or type(def.name) ~= "string" then error("fx.msgpack.namespace: expected { id = integer, name = string }", 2) end
  checkId("namespace", def.id, def.force)
  local id, nsName = def.id, def.name
  ---@type table<integer, { name: string, decode: fx.MsgpackDecode }>
  local subs = {}
  ---@param sub integer
  ---@param ... any
  ---@return table?
  local function dispatch(sub, ...)
    local s = subs[sub]
    if not s then return nil end -- a type this resource does not define
    return s.decode(...)
  end
  ---@type fx.MsgpackNamespace
  local ns = { id = id, name = nsName }
  register(id, nsName, {}, function() error("fx.msgpack: " .. nsName .. " packs through its types", 2) end,
    function(data) return dispatch(mp_unpack(data)) end)

  ---@param sub integer
  ---@param tdef fx.MsgpackTypeOptions
  ---@return fx.MsgpackType
  function ns.define(sub, tdef)
    if math_type(sub) ~= "integer" or sub < 0 then error(("%s.define: sub id must be a non-negative integer, got %s"):format(nsName, tostring(sub)), 2) end
    if subs[sub] then error(("%s.define: sub id %d is already used by %s"):format(nsName, sub, subs[sub].name), 2) end
    if type(tdef) ~= "table" then error(("%s.define: expected a definition table"):format(nsName), 2) end
    local T, mt, encode, decode = build("namespace(" .. nsName .. ").define", tdef)
    T.__id, T.__sub = id, sub
    M.types[tdef.name] = T
    mt.__ext = id
    mt.__pack = function(self) return mp_pack(sub, select(2, encode(self))) end
    subs[sub] = { name = tdef.name, decode = decode }
    return T
  end
  return ns
end

--- Puts FiveM's decoders back for ext 41 / 42. fx wrappers still pack the same way.
function M.restoreNative()
  for id, ext in pairs(native) do if ext then mp_extend(ext) end end
end

--- Encodes like an event payload and decodes it back: what the other side receives.
---@param ... any
---@return any ...
function M.roundTrip(...)

  local unpack = msgpack.unpack
  local t = unpack(msgpack.pack_args(...))
  return table.unpack(t, 1, select("#", ...))
end

return M
