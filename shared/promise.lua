---@diagnostic disable
---Internal state of an fx.Promise.
---@class fx.PromiseState : fx.Promise
---@field _n? integer Number of values once settled
---@field _r? fx.PromiseState[] Reactions waiting for the settlement
---@field _ok? fun(...): ... Fulfillment handler of a child promise
---@field _err? fun(reason: any): ... Rejection handler of a child promise
---@field _handled? boolean A handler is attached: no unhandled rejection warning
---@field _locked? boolean Adopting a thenable: resolve / reject are ignored
---@field _finally? boolean Child created by finally
---@field _internal? boolean Adoption relay: the handler is called directly
---@field [table] any Private keys EXTRA (packed values 2..n) and TRACE (origin stack)

---@alias fx.PromiseCaught { e: any, tb: string } What errHandler makes of a raised error

---@type fx.PromiseDeps
local deps = ...
local SetTimeout = deps.SetTimeout
local CitizenAwait = deps.Await
local CreateThreadNow = deps.CreateThreadNow
local trace = deps.trace
local config = deps.config -- shared table, config.debug is read dynamically

local type, select, error, xpcall, pcall, rawequal, getmetatable, setmetatable, tostring =
  type, select, error, xpcall, pcall, rawequal, getmetatable, setmetatable, tostring
local coroutine_running, coroutine_status = coroutine.running, coroutine.status
local table_pack, table_unpack = table.pack, table.unpack
local traceback = debug.traceback

-- Citizen.Await only reads `p.state` (0 = pending, 2/4 = rejected, otherwise resolved), `p.value` and calls
-- `p:next(f, f)` (scheduler.lua). 1 and 2 mean "adopting" for the native promise, so they are not used here.
-- `value` is the first value, the other values live under EXTRA.
local PENDING, FULFILLED, REJECTED = 0, 3, 4
local EXTRA = setmetatable({}, { __name = "fx.Promise.extra" }) -- private key: packed values 2..n
local TRACE = setmetatable({}, { __name = "fx.Promise.trace" }) -- private key: origin stack of the rejection

---@type table<string, function>
local methods = {}
local PromiseMT = { __index = methods, __name = "fx.Promise" }
---@param p fx.PromiseState
---@return string
function PromiseMT.__tostring(p)
  local s = p.state
  return ("Promise(%s)"):format(s == PENDING and "pending" or s == FULFILLED and "fulfilled" or "rejected")
end

-- typed by fx.PromiseLib (shared/annot/core.d.lua): a ---@class here would declare its members twice
local Promise = {}

local ErrorMT = {}
ErrorMT.__index = ErrorMT
---@param e fx.PromiseError
---@return string
function ErrorMT.__tostring(e) return e.name .. ": " .. tostring(e.message) end

---@param name "TimeoutError"|"AggregateError"|"TypeError"|"RpcError"|"Error"
---@param message string
---@param extra? table<string, any> Extra fields (errors, timeout), turned into the error itself
---@return fx.PromiseError
local function newError(name, message, extra)
  local e = extra or {}
  e.name, e.message = name, message
  return setmetatable(e, ErrorMT)
end
Promise.Error = ErrorMT

-- Job queue drained by one SetTimeout(0) per batch, so a whole chain settles in one drain.
-- 4 slots per job: kind, a, b, c
--   1 = reaction (parent, child), 2 = thenable adoption (promise, thenable, nextFn), 3 = function (fn, arg)
---@type any[]
local queue = {}
local qhead, qtail = 1, 0
local scheduled = false
---@type thread?
local drainer = nil
---@type fx.PromiseState[]
local unhandled = {}
local unhandledN = 0

local runReaction, runAdoption -- forward

local function warnUnhandled()
  local list, n = unhandled, unhandledN
  unhandled, unhandledN = {}, 0
  for i = 1, n do
    local p = list[i]
    if not p._handled then
      p._handled = true
      trace(("^3[fx.Promise] Unhandled rejection: %s^7\n%s\n"):format(tostring(p.value), p[TRACE] or "(no stack)"))
    end
  end
end

local function drain()
  local me = coroutine_running()
  drainer = me
  -- a callback that awaits hands the queue over to a new drain (handOff): this one then stops
  while qhead <= qtail and drainer == me do
    local i = qhead
    local kind, a, b, c = queue[i], queue[i + 1], queue[i + 2], queue[i + 3]
    queue[i], queue[i + 1], queue[i + 2], queue[i + 3] = nil, nil, nil, nil
    qhead = i + 4
    if kind == 1 then runReaction(a, b)
    elseif kind == 2 then runAdoption(a, b, c)
    else a(b) end
  end
  if drainer ~= me then return end
  qhead, qtail = 1, 0
  drainer = nil
  scheduled = false
  if unhandledN > 0 then warnUnhandled() end
end

local function schedule()
  -- A handler may yield (await inside a callback) and suspend the draining thread, or an error may
  -- have killed it: in both cases start a new drain instead of waiting for it to resume.
  if scheduled and drainer then
    local st = coroutine_status(drainer)
    if st ~= "suspended" and st ~= "dead" then return end
  elseif scheduled then
    return
  end
  scheduled = true
  SetTimeout(0, drain)
end

-- Called before a callback yields inside the drain: the jobs still queued (often the ones the callback
-- waits for) must not wait for this coroutine to resume.
local function handOff()
  if drainer == nil or coroutine_running() ~= drainer then return end
  drainer, scheduled = nil, false
  if qhead <= qtail then schedule() end
end

---@param kind 1|2|3 Reaction (parent, child), thenable adoption (promise, thenable, nextFn), function (fn, arg)
---@param a any
---@param b any
---@param c? any
local function enqueue(kind, a, b, c)
  local t = qtail
  queue[t + 1], queue[t + 2], queue[t + 3], queue[t + 4] = kind, a, b, c
  qtail = t + 4
  schedule()
end

---@param p fx.PromiseState
---@param state integer FULFILLED or REJECTED
---@param n integer Number of values
---@param ... any
local function settle(p, state, n, ...)
  if p.state ~= PENDING then return end
  p.state = state
  p._n = n
  if n > 0 then p.value = (...) end
  if n > 1 then
    local t = table_pack(...)
    p[EXTRA] = t
  end
  local r = p._r
  if r then
    p._r = nil
    for i = 1, #r do enqueue(1, p, r[i]) end
  elseif state == REJECTED and not p._handled then
    unhandledN = unhandledN + 1
    unhandled[unhandledN] = p
    schedule()
  end
end

---@param p fx.PromiseState
---@param reason any
---@param tb? string Origin stack; default: the caller's
local function reject(p, reason, tb)
  if p.state ~= PENDING or p._locked then return end
  if tb == nil then tb = traceback("", 3) end
  p[TRACE] = tb
  settle(p, REJECTED, 1, reason)
end

---@param x any
---@return boolean
local function isPromise(x) return rawequal(getmetatable(x), PromiseMT) end
Promise.isPromise = isPromise

---@param x table
---@return any
local function getNext(x) return x.next end

-- getmetatable may return a non-table (__metatable field): never index it blindly
---@param f any
---@return boolean
local function isCallable(f)
  local t = type(f)
  if t == "function" then return true end
  if t == "table" then local mt = getmetatable(f); return type(mt) == "table" and mt.__call ~= nil end
  return false
end

-- Resolution (A+ procedure 2.3), extended to multiple values:
-- adoption only if there is EXACTLY one value and it is a thenable (table with a callable `next`).
---@param p fx.PromiseState
---@param ... any
local function resolve(p, ...)
  if p.state ~= PENDING or p._locked then return end
  local n = select("#", ...)
  if n == 1 then
    local x = ...
    if rawequal(x, p) then
      return reject(p, newError("TypeError", "promise resolved with itself"))
    end
    if type(x) == "table" then
      if isPromise(x) then
        p._locked = true
        enqueue(2, p, x, false)
        return
      end
      local ok, nextFn = pcall(getNext, x)
      if not ok then return reject(p, nextFn) end
      if isCallable(nextFn) then
        p._locked = true
        enqueue(2, p, x, nextFn)
        return
      end
    end
  end
  settle(p, FULFILLED, n, ...)
end

---@param e any
---@return fx.PromiseCaught
local function errHandler(e)
  return { e = e, tb = traceback(type(e) == "string" and e or tostring(e), 2) }
end

-- Forced settlement of a promise locked by an adoption
---@param p fx.PromiseState
---@param ... any
local function resolveLocked(p, ...)
  p._locked = nil
  return resolve(p, ...)
end

---@param p fx.PromiseState
---@param reason any
---@param tb? string
local function rejectLocked(p, reason, tb)
  p._locked = nil
  return reject(p, reason, tb)
end

---@param p fx.PromiseState The adopting promise
---@param x table The thenable
---@param nextFn false|fun(self: table, onOk: fun(...), onErr: fun(reason: any)) false: x is an fx.Promise
function runAdoption(p, x, nextFn)
  local called = false
  ---@param ... any
  local function onOk(...)
    if called then return end
    called = true
    resolveLocked(p, ...)
  end
  ---@param reason any
  local function onErr(reason)
    if called then return end
    called = true
    rejectLocked(p, reason, isPromise(x) and x[TRACE] or nil)
  end
  if nextFn == false then
    -- fx.Promise: direct subscription, bypassing the public API
    x._handled = true
    local st = x.state
    if st == PENDING then
      local child = setmetatable({ state = PENDING, _ok = onOk, _err = onErr, _internal = true }, PromiseMT)
      local r = x._r
      if r then r[#r + 1] = child else x._r = { child } end
    else
      enqueue(1, x, setmetatable({ state = PENDING, _ok = onOk, _err = onErr, _internal = true }, PromiseMT))
    end
    return
  end
  local ok, e = xpcall(nextFn, errHandler, x, onOk, onErr)
  if not ok and not called then
    called = true
    rejectLocked(p, e.e, e.tb)
  end
end

---@param ok boolean
---@param ... any
---@return boolean ok, integer n, any ...
local function packTail(ok, ...)
  return ok, select("#", ...), ...
end

---@param child fx.PromiseState
---@param ok boolean
---@param n integer
---@param ... any The values, or the caught error
local function settleFrom(child, ok, n, ...)
  if ok then
    resolve(child, ...)
  else
    local e = ...
    reject(child, e.e, e.tb)
  end
end

---@param p fx.PromiseState
---@return any ...
local function values(p)
  local n = p._n
  if n <= 1 then
    if n == 1 then return p.value end
    return
  end
  local t = p[EXTRA]
  return table_unpack(t, 1, t.n)
end
Promise.values = values

---@param parent fx.PromiseState
---@param child fx.PromiseState
function runReaction(parent, child)
  local handler
  if parent.state == FULFILLED then handler = child._ok else handler = child._err end
  if child._internal then
    -- internal reaction (adoption): direct call, no observable child promise; both handlers are always set
    local h = handler --[[@as fun(...)]]
    if parent.state == FULFILLED then h(values(parent)) else h(parent.value) end
    return
  end
  if handler == nil then
    -- propagation (A+ 2.2.7.3 / 2.2.7.4)
    if parent.state == FULFILLED then
      settle(child, FULFILLED, parent._n, values(parent))
    else
      child[TRACE] = parent[TRACE]
      settle(child, REJECTED, 1, parent.value)
    end
    return
  end
  if child._finally then
    -- finally: the handler receives nothing; original values pass through unless it throws
    local ok, r = xpcall(handler, errHandler)
    if not ok then return reject(child, r.e, r.tb) end
    local function passthrough()
      if parent.state == FULFILLED then
        settle(child, FULFILLED, parent._n, values(parent))
      else
        child[TRACE] = parent[TRACE]
        settle(child, REJECTED, 1, parent.value)
      end
    end
    local okNext, nextFn = true, nil
    if type(r) == "table" and not isPromise(r) then okNext, nextFn = pcall(getNext, r) end
    if not okNext then return reject(child, nextFn) end
    if isPromise(r) or isCallable(nextFn) then
      ---@type fx.PromiseState
      local w = setmetatable({ state = PENDING }, PromiseMT)
      resolve(w, r)
      w._handled = true
      ---@type fx.PromiseState
      local relay = setmetatable({ state = PENDING, _internal = true,
        _ok = passthrough,
        _err = function(reason) child[TRACE] = w[TRACE]; settle(child, REJECTED, 1, reason) end }, PromiseMT)
      if w.state == PENDING then
        local rr = w._r
        if rr then rr[#rr + 1] = relay else w._r = { relay } end
      else
        enqueue(1, w, relay)
      end
      return
    end
    return passthrough()
  end
  if parent.state == FULFILLED then
    settleFrom(child, packTail(xpcall(handler, errHandler, values(parent))))
  else
    settleFrom(child, packTail(xpcall(handler, errHandler, parent.value)))
  end
end

---@return fx.PromiseState
local function newPending()
  return setmetatable({ state = PENDING, _n = 0 }, PromiseMT)
end

--- Promise.new(executor): executor(resolve, reject), called synchronously.
--- Promise.new(): deferred, native-compatible (p:resolve(...), p:reject(e)).
---@param executor? fun(resolve: fun(...), reject: fun(reason: any))
---@return fx.Promise
function Promise.new(executor)
  local p = newPending()
  if executor ~= nil then
    ---@param ... any
    local function res(...) return resolve(p, ...) end
    ---@param reason any
    ---@param ... any Ignored
    local function rej(reason, ...)
      if config.debug and select("#", ...) > 0 then
        trace("^3[fx.Promise] reject() ignores extra values (only the reason is kept)^7\n")
      end
      return reject(p, reason)
    end
    local ok, e = xpcall(executor, errHandler, res, rej)
    if not ok then reject(p, e.e, e.tb) end
  end
  return p
end

-- Deferred API (compatible with the native promise: p:resolve(v), p:reject(e))
---@param self fx.PromiseState
---@param ... any
---@return fx.PromiseState
function methods.resolve(self, ...) resolve(self, ...); return self end

---@param self fx.PromiseState
---@param reason any
---@param ... any Ignored
---@return fx.PromiseState
function methods.reject(self, reason, ...)
  if config.debug and select("#", ...) > 0 then
    trace("^3[fx.Promise] reject() ignores extra values (only the reason is kept)^7\n")
  end
  reject(self, reason); return self
end

---@param parent fx.PromiseState
---@param child fx.PromiseState
---@return fx.PromiseState child
local function subscribe(parent, child)
  parent._handled = true
  if parent.state == PENDING then
    local r = parent._r
    if r then r[#r + 1] = child else parent._r = { child } end
  else
    enqueue(1, parent, child)
  end
  return child
end

--- `then` is a reserved word in Lua: the method is called `next` (like the native promise).
---@param self fx.PromiseState
---@param onOk? fun(...): ...
---@param onErr? fun(reason: any): ...
---@return fx.PromiseState
function methods.next(self, onOk, onErr)
  local child = newPending()
  if isCallable(onOk) then child._ok = onOk end
  if isCallable(onErr) then child._err = onErr end
  return subscribe(self, child)
end

---@param self fx.PromiseState
---@param onErr fun(reason: any): ...
---@return fx.PromiseState
function methods.catch(self, onErr)
  return self:next(nil, onErr)
end

---@param self fx.PromiseState
---@param fn fun(): any
---@return fx.PromiseState
function methods.finally(self, fn)
  local child = newPending()
  if isCallable(fn) then
    child._ok, child._err, child._finally = fn, fn, true
  end
  return subscribe(self, child)
end

---@param p fx.PromiseState
local function rethrow(p)
  local reason = p.value
  if type(reason) == "string" then
    local tb = p[TRACE]
    if tb and tb ~= "" then
      reason = reason .. "\n[fx.Promise] rejected at:" .. (tb:sub(1, 1) == "\n" and tb or "\n" .. tb)
    end
  end
  error(reason, 0)
end

local AWAIT_OUTSIDE = "await must be called inside async() or a Citizen thread"

--- Suspends the current coroutine (through Citizen.Await, i.e. the native AwaitSentinel) and returns
--- all values. Raises the rejection reason (with the origin stack when it is a string).
---@param self fx.PromiseState
---@return any ...
function methods.await(self)
  local st = self.state
  if st == PENDING then
    local _, main = coroutine_running()
    if main then error(AWAIT_OUTSIDE, 2) end
    self._handled = true
    handOff()
    pcall(CitizenAwait, self) -- Citizen.Await raises without the origin stack: rethrown below with it
    st = self.state
  end
  if st == FULFILLED then return values(self) end
  self._handled = true
  return rethrow(self)
end

---@param x any
---@return fx.PromiseState
local function toPromise(x)
  if isPromise(x) then return x end
  local p = newPending()
  resolve(p, x)
  return p
end

--- fx.await(p): accepts an fx.Promise, a native promise, or any thenable.
---@param x any
---@return any ...
local function await(x)
  if isPromise(x) then return methods.await(x) end
  if type(x) == "table" and type(x.state) == "number" and x.next ~= nil then
    -- native promise: 3 / 4 are final; 1 / 2 = still adopting (Citizen.Await would return the inner thenable)
    if x.state == 3 then return x.value end
    if x.state == 4 then error(x.value, 0) end
  end
  return methods.await(toPromise(x))
end

---@param ... any
---@return fx.Promise
function Promise.resolve(...)
  if select("#", ...) == 1 then
    local x = ...
    if isPromise(x) then return x end
  end
  local p = newPending()
  resolve(p, ...)
  return p
end

---@param reason any
---@return fx.Promise
function Promise.reject(reason)
  local p = newPending()
  reject(p, reason)
  return p
end

---@param list any[]
---@param onEach fun(out: fx.PromiseState, results: table, i: integer, ok: boolean, ...: any): counted: boolean
---@param onDone fun(out: fx.PromiseState, results: table)
---@param emptyValue any Resolution value of an empty list
---@return fx.PromiseState
local function collect(list, onEach, onDone, emptyValue)
  local n = #list
  local out = newPending()
  if n == 0 then resolve(out, emptyValue); return out end
  local remaining = n
  local results = {}
  for i = 1, n do
    toPromise(list[i]):next(function(...)
      if onEach(out, results, i, true, ...) then
        remaining = remaining - 1
        if remaining == 0 then onDone(out, results) end
      end
    end, function(reason)
      if onEach(out, results, i, false, reason) then
        remaining = remaining - 1
        if remaining == 0 then onDone(out, results) end
      end
    end)
  end
  return out
end

--- Resolves with an array of the FIRST value of each promise (JS semantics).
---@param list any[]
---@return fx.Promise
function Promise.all(list)
  return collect(list, function(out, results, i, ok, v)
    if not ok then reject(out, v); return false end
    results[i] = v
    return true
  end, function(out, results) results.n = #list; resolve(out, results) end, { n = 0 })
end

--- Like all, but each entry is the complete packed list { n = ..., ... }.
---@param list any[]
---@return fx.Promise
function Promise.allPacked(list)
  return collect(list, function(out, results, i, ok, ...)
    if not ok then reject(out, (...)); return false end
    results[i] = table_pack(...)
    return true
  end, function(out, results) results.n = #list; resolve(out, results) end, { n = 0 })
end

---@param list any[]
---@return fx.Promise
function Promise.allSettled(list)
  return collect(list, function(_, results, i, ok, v)
    if ok then results[i] = { status = "fulfilled", value = v }
    else results[i] = { status = "rejected", reason = v } end
    return true
  end, function(out, results) results.n = #list; resolve(out, results) end, { n = 0 })
end

--- Settles like the first settled promise, with ALL its values.
---@param list any[]
---@return fx.Promise
function Promise.race(list)
  local out = newPending()
  for i = 1, #list do
    toPromise(list[i]):next(function(...) resolve(out, ...) end, function(e) reject(out, e) end)
  end
  return out
end

--- Resolves with all values of the first fulfilled promise; AggregateError if all of them reject.
---@param list any[]
---@return fx.Promise
function Promise.any(list)
  local n = #list
  local out = newPending()
  if n == 0 then
    reject(out, newError("AggregateError", "All promises were rejected", { errors = {} }))
    return out
  end
  local errors, remaining = {}, n
  for i = 1, n do
    toPromise(list[i]):next(function(...) resolve(out, ...) end, function(e)
      errors[i] = e
      remaining = remaining - 1
      if remaining == 0 then
        reject(out, newError("AggregateError", "All promises were rejected", { errors = errors }))
      end
    end)
  end
  return out
end

---@param ms? integer
---@param ... any
---@return fx.Promise
function Promise.delay(ms, ...)
  local p = newPending()
  local args = table_pack(...)
  SetTimeout(ms or 0, function() resolve(p, table_unpack(args, 1, args.n)) end)
  return p
end

--- Rejects with a TimeoutError if `p` is not settled within `ms` milliseconds.
---@param p any
---@param ms integer
---@param message? string
---@return fx.Promise
function Promise.timeout(p, ms, message)
  p = toPromise(p)
  local out = newPending()
  -- no ClearTimeout: it only cancels a timer created in the same script call, and once the timer has fired its
  -- id may belong to another thread. The callback does nothing when `out` is already settled.
  SetTimeout(ms, function()
    reject(out, newError("TimeoutError", message or ("timed out after " .. tostring(ms) .. " ms"), { timeout = ms }))
  end)
  p:next(function(...)
    resolve(out, ...)
  end, function(e)
    out[TRACE] = p[TRACE]
    reject(out, e, p[TRACE])
  end)
  return out
end

---@param message string
---@param ms? integer
---@return fx.PromiseError
function Promise.TimeoutError(message, ms)
  return newError("TimeoutError", message, { timeout = ms })
end

---@param p fx.PromiseState
---@param ok boolean
---@param ... any The return values, or the caught error
local function finishAsync(p, ok, ...)
  if ok then resolve(p, ...) else local e = ...; reject(p, e.e, e.tb) end
end

--- Returns a function that runs fn in a Citizen thread (starts synchronously, like a JS async function) and
--- returns a Promise of all its return values.
---@param fn fun(...): ...
---@return fun(...): fx.Promise
local function async(fn)
  return function(...)
    local p = newPending()
    local args = table_pack(...)
    CreateThreadNow(function()
      finishAsync(p, xpcall(fn, errHandler, table_unpack(args, 1, args.n)))
    end)
    return p
  end
end

-- used by the other runtime files
Promise._internal = {
  PromiseMT = PromiseMT, methods = methods, resolve = resolve, reject = reject, values = values,
  newPending = newPending, drain = drain, newError = newError, TRACE = TRACE,
}

---@type fx.PromiseModule
local module = { Promise = Promise, async = async, await = await }
return module

