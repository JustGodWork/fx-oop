---@diagnostic disable
-- `nested` is true when the reason already names the faulty value (a field or item deep inside the argument), so
-- callers do not append the whole argument after it.
---@alias fx.SchemaCheck fun(v: any): ok: boolean, reason: string?, nested: boolean?

---@type fx.SharedDeps
local deps = ...
local rt = deps.rt

local type, tostring, tonumber, select, error, pairs, next, getmetatable, setmetatable, math_type =
  type, tostring, tonumber, select, error, pairs, next, getmetatable, setmetatable, math.type

-- typed by fx.SchemaLib (shared/annot/core.d.lua)
local Schema = {}
local SPEC = {} -- marks compiled specs: spec[SPEC] = check function

---@param v any
---@return string
local function describe(v)
  local t = type(v)
  if t == "table" then
    local mt = getmetatable(v)
    return mt and mt.__name or "table"
  end
  if t == "string" then return ("string(%d)"):format(#v) end
  return t
end

-- Bounds "max", "min..max", "min..", "..max"
---@param b? string
---@param where string The whole spec, for errors
---@return number? min
---@return number? max
local function parseBounds(b, where)
  if b == nil or b == "" then return nil, nil end
  local i = b:find("..", 1, true)
  if not i then
    local max = tonumber(b)
    if not max then error(("fx.Schema: invalid bound '%s' in '%s'"):format(b, where), 4) end
    return nil, max
  end
  local lo, hi = b:sub(1, i - 1), b:sub(i + 2)
  local min, max = tonumber(lo), tonumber(hi)
  if (lo ~= "" and not min) or (hi ~= "" and not max) then error(("fx.Schema: invalid bounds '%s' in '%s'"):format(b, where), 4) end
  return min, max
end

---@param check fx.SchemaCheck
---@param min? number
---@param max? number
---@param label string "length", "size" or "value"
---@return fx.SchemaCheck
local function sized(check, min, max, label)
  if not min and not max then return check end
  return function(v)
    local ok, why, nested = check(v)
    if not ok then return false, why, nested end
    local n = type(v) == "string" and #v or type(v) == "table" and (function() local c = 0 for _ in next, v do c = c + 1 end return c end)() or v
    if min and n < min then return false, ("%s below %s (%s)"):format(label, tostring(min), tostring(n)), true end
    if max and n > max then return false, ("%s above %s (%s)"):format(label, tostring(max), tostring(n)), true end
    return true
  end
end

---@param name string
---@return fx.SchemaCheck
local function isVector(name) return function(v) return type(v) == name, "expected " .. name end end

local HUGE = math.huge
---@type table<string, fx.SchemaCheck>
local BASIC = {
  any = function(v) return v ~= nil, "expected a value" end,
  boolean = function(v) return type(v) == "boolean", "expected boolean" end,
  -- v == v rejects NaN; a client could also send inf, which breaks any arithmetic on it
  number = function(v) return type(v) == "number" and v == v and v > -HUGE and v < HUGE, "expected number" end,
  integer = function(v) return math_type(v) == "integer", "expected integer" end,
  string = function(v) return type(v) == "string", "expected string" end,
  table = function(v) return type(v) == "table", "expected table" end,
  ["function"] = function(v)
    if type(v) == "function" then return true end
    local mt = type(v) == "table" and getmetatable(v)
    return mt and mt.__call ~= nil or false, "expected function"
  end,
  vector2 = isVector("vector2"), vector3 = isVector("vector3"), vector4 = isVector("vector4"), quat = isVector("quat"),
}
BASIC.bool = BASIC.boolean

-- fx types (entities, players) and fx.msgpack types, by name; resolved on first use (types may be defined later)
---@param name string
---@return fx.SchemaCheck
local function namedType(name)
  ---@type fun(x: any): boolean
  local resolved
  return function(v)
    if not resolved then
      local mtype = rt.msgpack.types[name]
      if mtype then
        resolved = function(x) return mtype.is(x) end
      else
        local T = rt.typeOf(name)
        if not T or T.kind == "module" then error(("fx.Schema: unknown type '%s'"):format(name), 0) end
        if T.kind ~= "entity" and T.kind ~= "player" then
          error(("fx.Schema: %s values travel as integers: use 'integer'"):format(name), 0)
        end
        if T.kind == "player" and deps.isServer then
          -- a player sent by a client may name anyone: it must be connected
          resolved = function(x) return rt.instanceOf(x, name) and x.exists == true end
        else
          resolved = function(x) return rt.instanceOf(x, name) end
        end
      end
    end
    return resolved(v), "expected " .. name
  end
end

local compile

---@param s string One alternative of a string spec
---@param where string The whole spec, for errors
---@return fx.SchemaCheck
local function compileAtom(s, where)
  local base, rest = s:match("^([%a_][%w_]*)(.*)$")
  if not base then error(("fx.Schema: invalid spec '%s'"):format(where), 3) end
  local isArray = rest:sub(1, 2) == "[]"
  if isArray then rest = rest:sub(3) end
  local bounds
  if rest ~= "" then
    if rest:sub(1, 1) ~= ":" then error(("fx.Schema: invalid spec '%s'"):format(where), 3) end
    bounds = rest:sub(2)
  end
  local min, max = parseBounds(bounds, where)
  local check = BASIC[base] or namedType(base)
  if isArray then
    return Schema.array(check, { min = min, max = max })[SPEC]
  end
  if (min or max) and not (base == "string" or base == "number" or base == "integer" or base == "table") then
    error(("fx.Schema: bounds are not supported on '%s' ('%s')"):format(base, where), 3)
  end
  local label = base == "string" and "length" or base == "table" and "size" or "value"
  return sized(check, min, max, label)
end

---@param s string
---@return fx.SchemaCheck
local function compileString(s)
  local optional = s:sub(-1) == "?"
  local body = optional and s:sub(1, -2) or s
  ---@type fx.SchemaCheck[]
  local alts = {}
  for part in body:gmatch("[^|]+") do alts[#alts + 1] = compileAtom(part:match("^%s*(.-)%s*$"), s) end
  if #alts == 0 then error(("fx.Schema: empty spec '%s'"):format(s), 3) end
  local check
  if #alts == 1 then
    check = alts[1]
  else
    check = function(v)
      local why
      for i = 1, #alts do
        local ok, w = alts[i](v)
        if ok then return true end
        why = why and (why .. " or " .. (w --[[@as string]]):gsub("^expected ", "")) or w
      end
      return false, why
    end
  end
  if optional then
    return function(v) if v == nil then return true end return check(v) end
  end
  return check
end

---@param why? string Always set by a failed check
---@param nested? boolean
---@param v any
---@return string
local function withValue(why, nested, v)
  if nested then return why --[[@as string]] end
  return ("%s, got %s"):format(why, describe(v))
end

---@param fields table<string, fx.SchemaSpec>
---@param strict? boolean
---@return fx.SchemaCheck
local function shape(fields, strict)
  ---@type table<string, fx.SchemaCheck>
  local checks = {}
  for k, spec in pairs(fields) do checks[k] = compile(spec) end
  return function(v)
    if type(v) ~= "table" then return false, "expected table" end
    for k, check in pairs(checks) do
      local ok, why, nested = check(v[k])
      if not ok then return false, ("field '%s': %s"):format(tostring(k), withValue(why, nested, v[k])), true end
    end
    if strict then
      for k in next, v do
        if checks[k] == nil then return false, ("unexpected field '%s'"):format(tostring(k)) end
      end
    end
    return true
  end
end

---@param spec fx.SchemaSpec
---@return fx.SchemaCheck
compile = function(spec)
  local t = type(spec)
  if t == "string" then return compileString(spec) end
  if t == "function" then return spec end
  if t == "table" then
    local c = spec[SPEC]
    if c then return c end
    if spec[1] ~= nil then
      error(("fx.Schema: { %q, ... } is a table shape with field 1, not a list of choices: "
        .. "write the spec without braces (\"A|B\"), or use fx.Schema.array / fx.Schema.table{ fields = ... }")
        :format(tostring(spec[1])), 3)
    end
    return shape(spec, false)
  end
  error("fx.Schema: invalid spec (" .. t .. ")", 3)
end

---@param check fx.SchemaCheck
---@param opts? { optional?: boolean }
---@return fx.SchemaRule
local function make(check, opts)
  if opts and opts.optional then
    local inner = check
    check = function(v) if v == nil then return true end return inner(v) end
  end
  return setmetatable({ [SPEC] = check }, { __name = "fx.Schema.Spec" })
end

---@param o? { min?: integer, max?: integer, optional?: boolean }
---@return fx.SchemaRule
function Schema.integer(o) o = o or {}; return make(sized(BASIC.integer, o.min, o.max, "value"), o) end

---@param o? { min?: number, max?: number, optional?: boolean }
---@return fx.SchemaRule
function Schema.number(o) o = o or {}; return make(sized(BASIC.number, o.min, o.max, "value"), o) end

---@param o? { optional?: boolean }
---@return fx.SchemaRule
function Schema.boolean(o) return make(BASIC.boolean, o) end

---@param o? { optional?: boolean }
---@return fx.SchemaRule
function Schema.any(o) return make(BASIC.any, o) end

---@param o? { min?: integer, max?: integer, pattern?: string, optional?: boolean }
---@return fx.SchemaRule
function Schema.string(o)
  o = o or {}
  local check = sized(BASIC.string, o.min, o.max, "length")
  if o.pattern then
    local inner, pattern = check, o.pattern
    check = function(v)
      local ok, why, nested = inner(v)
      if not ok then return false, why, nested end
      if not v:find(pattern) then return false, "does not match " .. pattern end
      return true
    end
  end
  return make(check, o)
end

---@param o? { fields?: table<string, fx.SchemaSpec>, strict?: boolean, min?: integer, max?: integer, optional?: boolean }
---@return fx.SchemaRule
function Schema.table(o)
  o = o or {}
  local check = o.fields and shape(o.fields, o.strict) or BASIC.table
  return make(sized(check, o.min, o.max, "size"), o)
end

---@param of fx.SchemaSpec
---@param o? { min?: integer, max?: integer, optional?: boolean }
---@return fx.SchemaRule
function Schema.array(of, o)
  o = o or {}
  local item = compile(of)
  local min, max = o.min, o.max
  return make(function(v)
    if type(v) ~= "table" then return false, "expected array" end
    local n, top = 0, 0
    for k in next, v do
      if math_type(k) ~= "integer" or k < 1 then return false, "expected array (key " .. tostring(k) .. ")" end
      n = n + 1
      if k > top then top = k end
    end
    if top ~= n then return false, "expected array (holes)" end
    if min and n < min then return false, ("size below %d (%d)"):format(min, n) end
    if max and n > max then return false, ("size above %d (%d)"):format(max, n) end
    for i = 1, n do
      local ok, why, nested = item(v[i])
      if not ok then return false, ("item %d: %s"):format(i, withValue(why, nested, v[i])), true end
    end
    return true
  end, o)
end

---@param ... any
---@return fx.SchemaRule
function Schema.oneOf(...)
  ---@type table<any, true>
  local set = {}
  ---@type string[]
  local list = {}
  for i = 1, select("#", ...) do local v = select(i, ...); set[v] = true; list[i] = tostring(v) end
  local label = "expected one of " .. table.concat(list, ", ")
  return make(function(v) return v ~= nil and set[v] == true, label end)
end

---@param spec fx.SchemaSpec
---@return fx.SchemaRule
function Schema.optional(spec)
  local check = compile(spec)
  return make(function(v) if v == nil then return true end return check(v) end)
end

---@param fn fun(v: any): boolean, string?
---@return fx.SchemaRule
function Schema.custom(fn) return make(fn) end

-- leaf checks always return their reason: hide it when the value passes
---@param check fx.SchemaCheck
---@return fun(v: any): boolean, string?
local function public(check)
  return function(v)
    local ok, why = check(v)
    if ok then return true end
    return false, why
  end
end

---@param spec fx.SchemaSpec
---@return fun(v: any): boolean, string?
function Schema.compile(spec) return public(compile(spec)) end

---@param spec fx.SchemaSpec
---@param v any
---@return boolean ok
---@return string? reason
function Schema.check(spec, v)
  local ok, why = compile(spec)(v)
  if ok then return true end
  return false, why
end

--- A last entry "..." accepts any extra arguments unchecked.
---@param list (fx.SchemaSpec|"...")[]
---@return fun(count: integer, ...: any): ok: boolean, reason: string?
function Schema.args(list)
  ---@type fx.SchemaCheck[]
  local checks = {}
  local n, rest = #list, false

  if list[n] == "..." then rest = true; n = n - 1 end
  for i = 1, n do checks[i] = compile(list[i]) end
  return function(count, ...)
    if count > n and not rest then return false, ("expected at most %d arguments, got %d"):format(n, count) end
    for i = 1, n do
      local v = select(i, ...)
      local ok, why, nested = checks[i](v)
      if not ok then return false, ("argument #%d: %s"):format(i, withValue(why, nested, v)) end
    end
    return true
  end
end

return Schema
