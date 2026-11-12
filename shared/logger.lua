---@diagnostic disable
---Internal fields of an fx.Logger (read raw: the metatable reserves `level`).
---@class fx.LoggerState : fx.Logger
---@field _level? fx.Enum.LogLevel Own level; nil follows the parent
---@field children table<string, fx.LoggerState>
---@field timers table<string, integer> Label -> GetGameTimer() at time()

---@alias fx.LogKind "log"|"debug"|"info"|"success"|"warn"|"error"|"fatal"|"dump"|"time"

---@type fx.SharedDeps
local deps = ...
local config, isServer = deps.config, deps.isServer

local type, tostring, select, pcall, error, rawget, rawset, next, setmetatable, getmetatable =
  type, tostring, select, pcall, error, rawget, rawset, next, setmetatable, getmetatable
local math_type, string_format, string_rep, table_concat, table_sort, table_pack, table_unpack, print =
  math.type, string.format, string.rep, table.concat, table.sort, table.pack, table.unpack, print
local GetGameTimer, GetCurrentResourceName = GetGameTimer, GetCurrentResourceName
local os_date = isServer and os and os.date or nil -- not reliable on the client

-- must match the LogLevel enum declared by the generator
local LEVEL = { Debug = 0, Info = 1, Success = 2, Warn = 3, Error = 4, Fatal = 5, None = 6 }
---@type table<integer, string>
local NAMES = {}
for k, v in next, LEVEL do NAMES[v] = k end

---@type table<fx.LogKind, { [1]: string, [2]: string }> kind -> { label, color code }
local STYLE = {
  log = { "", "^7" },
  debug = { "DEBUG", "^9" },
  info = { "INFO", "^5" },
  success = { "SUCCESS", "^2" },
  warn = { "WARN", "^3" },
  error = { "ERROR", "^1" },
  fatal = { "FATAL", "^8" },
  dump = { "DUMP", "^6" },
  time = { "TIME", "^9" },
}

local MAX_DEPTH = 10
local IDENT = "^[%a_][%w_]*$"

---@param s string
---@return string
local function quote(s)
  return (string_format("%q", s):gsub("\\\n", "\\n"))
end

---@param v any
---@return boolean
local function hasToString(v)
  local mt = getmetatable(v)
  return type(mt) == "table" and rawget(mt, "__tostring") ~= nil
end

-- numbers first, then strings, then anything else by its text
local KEY_RANK = { number = 1, string = 2 }

---@param a any
---@param b any
---@return boolean
local function keyLess(a, b)
  local ta, tb = type(a), type(b)
  if ta ~= tb then return (KEY_RANK[ta] or 3) < (KEY_RANK[tb] or 3) end
  if ta == "number" or ta == "string" then return a < b end
  return tostring(a) < tostring(b)
end

local serialize

---@param k any
---@return string
local function keyText(k)
  if type(k) == "string" and k:match(IDENT) then return k end
  if type(k) == "string" then return "[" .. quote(k) .. "]" end
  return "[" .. serialize(k, nil, 0, {}) .. "]"
end

---@param v any
---@param indent? integer nil: one line
---@param depth integer
---@param seen table<table, true> Tables being serialized (cycles)
---@return string
serialize = function(v, indent, depth, seen)
  local t = type(v)
  if t == "string" then return quote(v) end
  if t ~= "table" then return tostring(v) end
  if hasToString(v) then return tostring(v) end
  if seen[v] then return "<cycle>" end
  if next(v) == nil then return "{}" end
  if depth >= MAX_DEPTH then return "{...}" end
  seen[v] = true
  ---@type any[]
  local keys = {}
  local n = 0
  for k in next, v do n = n + 1; keys[n] = k end
  table_sort(keys, keyLess)
  ---@type string[]
  local parts = {}
  for i = 1, n do
    local k = keys[i]
    parts[i] = keyText(k) .. " = " .. serialize(rawget(v, k), indent, depth + 1, seen)
  end
  seen[v] = nil
  if not indent then return "{ " .. table_concat(parts, ", ") .. " }" end
  local pad, inner = string_rep(" ", indent * depth), string_rep(" ", indent * (depth + 1))
  return "{\n" .. inner .. table_concat(parts, ",\n" .. inner) .. ",\n" .. pad .. "}"
end

---@param v any
---@return string
local function inline(v) return serialize(v, nil, 0, {}) end

-- never raises: a logger must not break its caller
---@param fmt any
---@param ... any
---@return string
local function render(fmt, ...)
  local n = select("#", ...)
  if type(fmt) ~= "string" then
    -- log:info(tbl), log:info(42, "x")
    local parts = { inline(fmt) }
    for i = 1, n do local a = select(i, ...); parts[i + 1] = type(a) == "string" and a or inline(a) end
    return table_concat(parts, " ")
  end
  if n == 0 then return fmt end -- so "100%" needs no escaping
  local args = table_pack(...)
  for i = 1, n do
    local a = args[i]
    if type(a) == "table" and not hasToString(a) then args[i] = inline(a) end
  end
  local ok, s = pcall(string_format, fmt, table_unpack(args, 1, n))
  if ok then return s end
  -- wrong format: append the arguments
  local parts = { fmt }
  for i = 1, n do local a = args[i]; parts[i + 1] = type(a) == "string" and a or inline(a) end
  return table_concat(parts, " ")
end

---@type fun(entry: fx.LogEntry)[]
local hooks = {}
local nHooks = 0

---@param self fx.LoggerState
---@param kind fx.LogKind
---@param level integer
---@param message string
local function emit(self, kind, level, message)
  local style = STYLE[kind]
  local name = rawget(self, "name")
  local time = os_date and os_date("%H:%M:%S") --[[@as string]] or nil
  local head = (time and ("^9" .. time .. " ") or "") .. "^6[" .. name .. "]^7 "
  if style[1] ~= "" then head = head .. style[2] .. style[1] .. "^7 " end
  print(head .. message .. "^0")
  if nHooks > 0 then
    ---@type fx.LogEntry
    local entry = {
      logger = name, kind = kind, level = level, levelName = NAMES[level],
      message = (message:gsub("%^%d", "")), time = time, gameTimer = GetGameTimer(),
    }
    for i = 1, #hooks do
      local ok, err = pcall(hooks[i], entry)
      if not ok then print("^1[fx.Logger] hook error: " .. tostring(err) .. "^0") end
    end
  end
end

---@type table<string, function>
local methods = {}
-- typed by fx.LoggerLib (shared/annot/core.d.lua)
local Logger = {}

---@param self fx.LoggerState
---@return integer
local function levelOf(self)
  local l = rawget(self, "_level")
  if l then return l end
  local parent = rawget(self, "parent")
  return parent and levelOf(parent) or LEVEL.Debug
end

local mt = {
  ---@param self fx.LoggerState
  ---@param k string
  ---@return any
  __index = function(self, k)
    if k == "level" then return levelOf(self) end
    return methods[k]
  end,
  ---@param self fx.LoggerState
  ---@param k string
  ---@param v any
  __newindex = function(self, k, v)
    if k == "level" then
      if v ~= nil and (math_type(v) ~= "integer" or not NAMES[v]) then
        error(("fx.Logger: level must be a fx.Enum.LogLevel member, got %s"):format(tostring(v)), 2)
      end
      rawset(self, "_level", v)
      return
    end
    error(("fx.Logger: cannot assign '%s'"):format(tostring(k)), 2)
  end,
  ---@param self fx.LoggerState
  ---@return string
  __tostring = function(self) return "fx.Logger(" .. rawget(self, "name") .. ")" end,
  __name = "fx.Logger",
}

---@param name string
---@param parent? fx.LoggerState
---@return fx.LoggerState
local function new(name, parent)
  return setmetatable({ name = name, parent = parent, children = {}, timers = {} }, mt)
end

---@param kind fx.LogKind
---@param level integer
---@return fun(self: fx.LoggerState, fmt: any, ...: any): fx.LoggerState
local function at(kind, level)
  return function(self, fmt, ...)
    if level < levelOf(self) then return self end
    emit(self, kind, level, render(fmt, ...))
    return self
  end
end

methods.log = at("log", LEVEL.Info)
methods.info = at("info", LEVEL.Info)
methods.success = at("success", LEVEL.Success)
methods.warn = at("warn", LEVEL.Warn)
methods.error = at("error", LEVEL.Error)

---@param self fx.LoggerState
---@param fmt any
---@param ... any
---@return fx.LoggerState
function methods.debug(self, fmt, ...)
  -- checked before formatting: free when debug mode is off
  if not config.debug or LEVEL.Debug < levelOf(self) then return self end
  emit(self, "debug", LEVEL.Debug, render(fmt, ...))
  return self
end

--- Logs, then raises "[name] message".
---@param self fx.LoggerState
---@param fmt any
---@param ... any
function methods.fatal(self, fmt, ...)
  local message = render(fmt, ...)
  if LEVEL.Fatal >= levelOf(self) then emit(self, "fatal", LEVEL.Fatal, message) end
  error("[" .. rawget(self, "name") .. "] " .. message, 2)
end

--- dump(value [, indent]) or dump(message, value [, indent])
---@param self fx.LoggerState
---@param a any
---@param b? any
---@param c? integer
---@return fx.LoggerState
function methods.dump(self, a, b, c)
  if LEVEL.Info < levelOf(self) then return self end
  local message, value, indent
  if type(a) == "string" and b ~= nil then
    message, value, indent = a, b, c
  else
    value, indent = a, b or c -- dump(tbl, 2) and dump(tbl, nil, 2)
  end
  indent = math_type(indent) == "integer" and indent >= 0 and indent or 4
  local text = serialize(value, indent, 0, {})
  emit(self, "dump", LEVEL.Info, message and (message .. " " .. text) or text)
  return self
end

--- Logs an error when `cond` is falsy, without raising. Returns `cond`.
---@generic V
---@param self fx.LoggerState
---@param cond V
---@param fmt? any
---@param ... any
---@return V
function methods.assert(self, cond, fmt, ...)
  if not cond and LEVEL.Error >= levelOf(self) then
    emit(self, "error", LEVEL.Error, fmt ~= nil and render(fmt, ...) or "assertion failed")
  end
  return cond
end

--- Debug mode only, like debug().
---@param self fx.LoggerState
---@param label? string
---@return fx.LoggerState
function methods.time(self, label)
  if config.debug then rawget(self, "timers")[label or "default"] = GetGameTimer() end
  return self
end

---@param self fx.LoggerState
---@param label? string
---@return fx.LoggerState
function methods.timeEnd(self, label)
  label = label or "default"
  local timers = rawget(self, "timers")
  local start = timers[label]
  if start == nil then return self end
  timers[label] = nil
  if config.debug and LEVEL.Debug >= levelOf(self) then
    emit(self, "time", LEVEL.Debug, ("%s: %d ms"):format(label, GetGameTimer() - start))
  end
  return self
end

--- "Parent:Name", created once; follows the parent's level until it sets its own.
---@param self fx.LoggerState
---@param name string
---@return fx.LoggerState
function methods.child(self, name)
  local children = rawget(self, "children")
  local c = children[name]
  if not c then
    c = new(rawget(self, "name") .. ":" .. tostring(name), self)
    children[name] = c
  end
  return c
end

---@type table<string, fx.LoggerState>
local roots = {}

-- fx.Logger(name?): one logger per name; no name = the resource name
setmetatable(Logger, {
  ---@param name? any
  ---@return fx.LoggerState
  __call = function(_, name)
    name = name ~= nil and tostring(name) or GetCurrentResourceName()
    local l = roots[name]
    if not l then l = new(name); roots[name] = l end
    return l
  end,
  ---@return string
  __tostring = function() return "fx.Logger" end,
})

--- fn(entry) for every printed entry of this resource. Returns a function removing the hook.
---@param fn fun(entry: fx.LogEntry)
---@return fun() off
function Logger.onLog(fn)
  if type(fn) ~= "function" then error("fx.Logger.onLog: expected a function", 2) end
  hooks[#hooks + 1] = fn
  nHooks = #hooks
  return function()
    for i = #hooks, 1, -1 do if hooks[i] == fn then table.remove(hooks, i) end end
    nHooks = #hooks
  end
end

---@param value any
---@param indent? integer
---@return string
function Logger.serialize(value, indent)

  return serialize(value, indent, 0, {})
end

Logger.LEVEL = LEVEL
return Logger
