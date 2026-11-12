---@meta
---@diagnostic disable
-- fx (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class vector3
---@field x number
---@field y number
---@field z number

---@class vector4
---@field x number
---@field y number
---@field z number
---@field w number

-- A..F are the carried values: fx.Promise<boolean, vector3>

---Multi-value Promise. `Citizen.Await(p)` returns the first value; `p:await()` returns all of them.
---@class fx.Promise<A, B, C, D, E, F>
---@field state integer 0 = pending, 3 = fulfilled, 4 = rejected (native promise protocol)
---@field value A First value (or rejection reason)
local Promise = {}

---Registers callbacks (`then` is a reserved word in Lua). Always called asynchronously.
---The handler receives every value; its return values resolve the next promise.
---Return values are optional: a handler that returns nothing resolves the next promise with no value.
---A promise returned by a handler is adopted: `onErr` can return `fx.Promise.reject(e)` to keep the chain rejected.
---@generic T1, T2, T3, T4, T5, T6, R1, R2, R3, R4, R5, R6
---@param self fx.Promise<T1, T2, T3, T4, T5, T6>
---@param onOk? (fun(a: T1, b: T2, c: T3, d: T4, e: T5, f: T6): R1?, R2?, R3?, R4?, R5?, R6?)|nil
---@param onErr? (fun(reason: any): R1?, R2?, R3?, R4?, R5?, R6?)|(fun(reason: any): fx.Promise)|nil
---@return fx.Promise<R1, R2, R3, R4, R5, R6>
function Promise.next(self, onOk, onErr) end -- explicit self: lets LuaLS type the callback parameters

---@generic T1, R
---@param self fx.Promise<T1>
---@param onErr fun(reason: any): R?
---@return fx.Promise<T1|R>
function Promise.catch(self, onErr) end

---Called whatever the outcome; passes the original values through (unless fn raises). A promise returned by fn is
---awaited first.
---@param fn fun(): any
---@return fx.Promise<A, B, C, D, E, F>
function Promise:finally(fn) end

---Suspends the current thread (through Citizen.Await) and returns every value.
---Raises the rejection reason (with the origin stack). Outside a thread: explicit error.
---@async
---@return A, B, C, D, E, F
function Promise:await() end

---Deferred API compatible with the native promise: `p:resolve(...)` (when created by Promise.new()).
---@param ... any
---@return fx.Promise<A, B, C, D, E, F>
function Promise:resolve(...) end

---@param reason any
---@return fx.Promise<A, B, C, D, E, F>
function Promise:reject(reason) end

---@class fx.PromiseError
---@field name "TimeoutError"|"AggregateError"|"TypeError"|"RpcError"|"Error"
---@field message string
---@field errors? any[] AggregateError
---@field timeout? integer TimeoutError

---@class fx.PromiseLib
---@field Error table The metatable of every fx.PromiseError: `getmetatable(e) == fx.Promise.Error`
local PromiseLib = {}

---Every value of a fulfilled promise (nothing while it is pending).
---@param p fx.Promise
---@return any ...
function PromiseLib.values(p) end

---A TimeoutError, as rejected by fx.Promise.timeout.
---@param message string
---@param ms? integer
---@return fx.PromiseError
function PromiseLib.TimeoutError(message, ms) end

---Creates a Promise. `executor(resolve, reject)` runs immediately; an error raised in it rejects.
---Without an executor: a "deferred" promise settled with `p:resolve(...)` / `p:reject(e)`.
---`resolve(...)` accepts several values. A thenable is adopted only when it is the ONLY value.
---@param executor? fun(resolve: fun(...), reject: fun(reason: any))
---@return fx.Promise
function PromiseLib.new(executor) end

---@generic T
---@param value? T
---@param ... any
---@return fx.Promise<T>
function PromiseLib.resolve(value, ...) end

---@param reason any
---@return fx.Promise
function PromiseLib.reject(reason) end

---Array of the FIRST value of each promise (field `n` = number of entries).
---@param list any[]
---@return fx.Promise<{ n: integer, [integer]: any }>
function PromiseLib.all(list) end

---For each promise, the complete packed list `{ n = ..., ... }`.
---@param list any[]
---@return fx.Promise<{ n: integer, [integer]: any }[]>
function PromiseLib.allPacked(list) end

---@param list any[]
---@return fx.Promise<{ status: "fulfilled"|"rejected", value?: any, reason?: any }[]>
function PromiseLib.allSettled(list) end

---Every value of the first settled promise.
---@param list any[]
---@return fx.Promise
function PromiseLib.race(list) end

---Every value of the first fulfilled promise; AggregateError if all of them reject.
---@param list any[]
---@return fx.Promise
function PromiseLib.any(list) end

---@param ms? integer Default 0
---@param ... any resolution values
---@return fx.Promise
function PromiseLib.delay(ms, ...) end

---Rejects with a TimeoutError if `p` is not settled within `ms`.
---@generic P: fx.Promise
---@param p P
---@param ms integer
---@param message? string
---@return P
function PromiseLib.timeout(p, ms, message) end

---@param x any
---@return boolean
function PromiseLib.isPromise(x) end

---State bag (proxy over the native state bag). `bag.key` reads, `bag.key = v` writes with the
---native FiveM behavior: replicated on the server, LOCAL on the client.
---To type your keys: `---@class fx.VehicleStates` + `---@field fuel number` in your project.
---Reserved keys (read them with :get): set, get, on, waitForAsync.
---@class fx.StateBag
---@field [string] any
local StateBag = {}

---Explicit write. `replicated = true`: on the server, replicated to everyone; on the client, sent to
---the server, which only accepts it if this client owns the bag (entity it is the network owner of,
---or its own player bag) and `sv_stateBagStrictMode` is off. Otherwise the server rejects it
---SILENTLY and the local value stays (warning in debug mode). Entity bags: client replicated writes are only
---reliable from the client that created the entity (after its create ack); write authoritative state from the server.
---@param key string
---@param value any
---@param replicated? boolean
---@return fx.StateBag
function StateBag:set(key, value, replicated) end

---@param key string
---@return any
function StateBag:get(key) end

---Subscribes to changes of `key` on this bag only. `old` = value before the change.
---Like AddStateBagChangeHandler, `fn` runs before the value is stored: reading the bag inside gives `old`, and
---writing the same key is overwritten by the incoming value. With `{ deferred = true }`, `fn` runs on the next tick,
---once the value is stored (reads are fresh; if the key changed again meanwhile, they give the newest value).
---Fires even when the value does not change. On the client, a replicated write accepted by the server fires
---TWICE: once locally (`replicated = true`), then on the server echo (`replicated = false`, same value);
---updates coming from the server always arrive with `replicated = false`. Returns the unsubscribe function.
---@param key string
---@param fn fun(value: any, old: any, replicated: boolean)
---@param options? { deferred?: boolean }
---@return fun() off
function StateBag:on(key, fn, options) end

---Promise resolved with the value as soon as the key exists (or as soon as `predicate(value)` is true).
---@param key string
---@param timeoutMs? integer
---@param predicate? fun(value: any): boolean
---@return fx.Promise<any>
function StateBag:waitForAsync(key, timeoutMs, predicate) end

---@class fx.EntityStates : fx.StateBag
---@class fx.PedStates : fx.EntityStates
---@class fx.VehicleStates : fx.EntityStates
---@class fx.ObjectStates : fx.EntityStates
---@class fx.PlayerStates : fx.StateBag
---@class fx.GlobalStates : fx.StateBag

---@class fx.Global
---@field states fx.GlobalStates Global state bag (replaces GlobalState). Writes: server only.
---@field state fx.GlobalStates Compatibility alias.

---Extension ids already in use: 20..23 are rejected by the library (vectors), 10 / 11 / 41 / 42 are FiveM's.
---@class fx.MsgpackIds
---@field FUNCREF 10
---@field LOCALFUNCREF 11
---@field VECTOR2 20
---@field VECTOR3 21
---@field VECTOR4 22
---@field QUATERNION 23
---@field ENTITY 41
---@field PLAYER 42

---@class fx.MsgpackExtension
---@field id integer 0..127, not a FiveM / library id (see fx.msgpack.ids)
---@field name? string For error messages
---@field pack fun(value: any, id: integer): string, boolean? Ext body, or `bytes, true` for raw msgpack bytes
---@field unpack fun(data: string, id: integer): any
---@field metatable? metatable The metatable of your instances (the ext fields are set on it, raw)
---@field force? boolean Allow replacing an id that is already registered / used by FiveM

---Options of a transportable type (`fx.msgpack.define`, `namespace.define`).
---@class fx.MsgpackTypeOptions
---@field name string Type name (error messages, tostring)
---@field fields? string[] Fields that travel, in this order (compact). Without it (and without `key`), every key of the instance travels.
---@field key? string Reference type: only this field travels (e.g. "source"), and the receiver gets its own instance for that key. Cannot be combined with `fields`.
---@field resolve? fun(key: any): any Reference type: returns the instance for a key on the receiving side. Default: one instance per key, kept while referenced.
---@field fromClient? boolean Reference type, server: resolve keys sent by a client too. Default false: a reference in a client net event decodes to nil (a client could send another player's key). State bags are not covered: a value a client may write (its own player bag, entities it owns, without sv_stateBagStrictMode) decodes as trusted.
---@field defaults? table<string, any> Values given to missing fields, by `new`, `from` and on decoding (tables are shared, not copied)
---@field meta? table<string, fun(...): any> Extra metamethods for the instances (`__eq`, `__lt`, `__add`, `__tostring`, ...)
---@field onDecode? fun(self: any) Called on every instance created from the network (rebuild what does not travel)

---@class fx.MsgpackTypeDef : fx.MsgpackTypeOptions
---@field id integer Extension id, 0..127, not a FiveM / library id (see fx.msgpack.ids). Same id on every side that sends or receives the type.
---@field force? boolean Allow replacing an id that is already registered / used by FiveM

---A transportable type made by `fx.msgpack.define` or `namespace.define`. Its instances travel through events, exports
---and state bags and arrive as instances of the same type (with their methods) in every resource that defines it.
---Declare your own class on it: `---@class Money : fx.MsgpackType`.
---@class fx.MsgpackType
---@field __id integer The extension id
---@field __sub? integer The sub id inside a namespace
---@field __name string The type name
---@field __fields? string[] The fields that travel (nil: every key)
---@field __key? string The key of a reference type
local MsgpackType = {}

---Creates an instance. With `fields`: the values in field order. Without: a table of keys (copied).
---Not available on reference types (use `get`).
---@generic T
---@param self T
---@param ... any
---@return T
function MsgpackType:new(...) end

---Turns an existing plain table into an instance (no copy). On a reference type, it also becomes the instance
---returned for its key.
---@generic T
---@param self T
---@param t table<string, any>
---@return T
function MsgpackType:from(t) end

---Reference type: the instance for a key (the same one every time while it is referenced).
---@generic T
---@param self T
---@param key any
---@return T?
function MsgpackType:get(key) end

---True when `v` is an instance of this type.
---@param v any
---@return boolean
function MsgpackType.is(v) end

---Several types behind one extension id, made by `fx.msgpack.namespace`.
---@class fx.MsgpackNamespace
---@field id integer The extension id
---@field name string
local MsgpackNamespace = {}

---Defines a type of the namespace. `sub` identifies it on the wire: same sub id on every side.
---@param sub integer
---@param def fx.MsgpackTypeOptions
---@return fx.MsgpackType
function MsgpackNamespace.define(sub, def) end

---How fx wrappers travel through events, exports and state bags: entities as ext 41 (network id), players as
---ext 42 (server id), other handles as plain integers. In this resource, incoming ext 41 / 42 decode into fx wrappers.
---An entity the receiver does not know decodes as nil: one created by a client and sent before the server got it, or
---one out of the receiving client's scope.
---@class fx.MsgpackLib
---@field ids fx.MsgpackIds
local MsgpackLib = {}

---Registers a msgpack extension with the checks msgpack.extend does not do (integer id in 0..127, FiveM ids and ids
---already registered refused unless `force`). Returns the metatable to give to your instances.
---@param def fx.MsgpackExtension
---@return metatable
function MsgpackLib.extend(def) end

---Defines a type whose instances travel as themselves: put your methods on the returned table, create instances with
---`Type:new(...)`. The receiving resource must define it too (same id), typically from a shared file.
---@param def fx.MsgpackTypeDef
---@return fx.MsgpackType
function MsgpackLib.define(def) end

---One extension id shared by many types (a framework, a big resource): each value travels as its sub id and its
---values. Only one of the 128 extension ids is used, whatever the number of types.
---@param def { id: integer, name: string, force?: boolean }
---@return fx.MsgpackNamespace
function MsgpackLib.namespace(def) end

---Puts FiveM's own decoders back for ext 41 / 42 in this resource (incoming entities / players become FiveM's
---Entity() / Player() objects again).
function MsgpackLib.restoreNative() end

---Encodes the values like an event payload (msgpack.pack_args) and decodes them back: what the other side receives.
---@param ... any
---@return any ...
function MsgpackLib.roundTrip(...) end

---An entry passed to the fx.Logger.onLog hooks.
---@class fx.LogEntry
---@field logger string Logger name ("Garage:Spawn")
---@field kind "log"|"debug"|"info"|"success"|"warn"|"error"|"fatal"|"dump"|"time"
---@field level fx.Enum.LogLevel
---@field levelName string "Info", "Warn", ...
---@field message string The message, without color codes
---@field time? string "HH:MM:SS" (server only)
---@field gameTimer integer GetGameTimer() when logged

---Named loggers: `fx.Logger("Garage")` (one logger per name in a resource; no name: the resource name).
---@class fx.LoggerLib
---@overload fun(name?: string): fx.Logger
local LoggerLib = {}

---Calls `fn(entry)` for every printed entry of every logger of this resource (send logs to Discord, a file, ...).
---Errors in the hook are caught. Returns a function that removes the hook.
---@param fn fun(entry: fx.LogEntry)
---@return fun() off
function LoggerLib.onLog(fn) end

---Serializes a value like `dump` does: sorted keys, cycles marked, fx objects by name. `indent` nil: one line.
---@param value any
---@param indent? integer
---@return string
function LoggerLib.serialize(value, indent) end

---A named logger. Every logging method returns the logger (chainable).
---@class fx.Logger
---@field name string "Garage", "Garage:Spawn"
---@field parent? fx.Logger
---@field level fx.Enum.LogLevel Minimum level printed (default: the parent's, or Debug). Read / write.
local Logger = {}

---Logs a message without a level label. `fmt` follows string.format when arguments are given (tables are shown
---inline); without arguments it is printed as is. A wrong format never raises: the arguments are appended.
---@param fmt any
---@param ... any
---@return self
function Logger:log(fmt, ...) end

---@param fmt any
---@param ... any
---@return self
function Logger:info(fmt, ...) end

---@param fmt any
---@param ... any
---@return self
function Logger:success(fmt, ...) end

---@param fmt any
---@param ... any
---@return self
function Logger:warn(fmt, ...) end

---@param fmt any
---@param ... any
---@return self
function Logger:error(fmt, ...) end

---Printed only when `fx.debug` is true. When it is false nothing is formatted: free to leave in production code.
---@param fmt any
---@param ... any
---@return self
function Logger:debug(fmt, ...) end

---Logs, then raises an error ("[Name] message") that stops the current thread.
---@param fmt any
---@param ... any
function Logger:fatal(fmt, ...) end

---Prints a value on several lines: `dump(value)`, `dump(value, indent)`, `dump(message, value)`,
---`dump(message, value, indent)`. A string followed by a non-nil value is the message. Indent: 4.
---@param a any Value, or message
---@param b? any Value (after a message), or indent
---@param c? integer Indent
---@return self
function Logger:dump(a, b, c) end

---Logs an error when `cond` is falsy (does not raise). Returns `cond`.
---@generic T
---@param cond T
---@param fmt? any
---@param ... any
---@return T
function Logger:assert(cond, fmt, ...) end

---Starts a timer. Debug mode only, like `debug`.
---@param label? string
---@return self
function Logger:time(label) end

---Logs the milliseconds elapsed since `time(label)`. Debug mode only.
---@param label? string
---@return self
function Logger:timeEnd(label) end

---The child logger "Parent:Name" (created once). It uses the parent's level unless it sets its own.
---@param name string
---@return fx.Logger
function Logger:child(name) end

---A value check: a string ("integer:1..100", "string:32", "Vehicle?", "string|integer", "integer[]:10"), a
---constructor result (fx.Schema.integer{...}) or a shape table ({ x = "number", label = "string:32?" }).
---@alias fx.SchemaSpec string|fx.SchemaRule|table<string, fx.SchemaSpec>|fun(v: any): boolean, string?

---@class fx.SchemaRule

---Value checks compiled once into closures (used by fx.Channel and fx.Rpc).
---Base types: any, boolean, number, integer, string, table, function, vector2/3/4, quat, the fx entity / player types
---(Entity, Ped, Vehicle, Object, Player) and the fx.msgpack types by name. Suffixes: `?` optional, `[]` array,
---`:max` or `:min..max` (string length, number value, table / array size), `|` alternatives.
---@class fx.SchemaLib
local SchemaLib = {}

---@param o? { min?: integer, max?: integer, optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.integer(o) end

---@param o? { min?: number, max?: number, optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.number(o) end

---@param o? { min?: integer, max?: integer, pattern?: string, optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.string(o) end

---@param o? { optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.boolean(o) end

---Any non-nil value.
---@param o? { optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.any(o) end

---A table, optionally with a shape. `strict`: no other field allowed. `min` / `max`: number of entries.
---@param o? { fields?: table<string, fx.SchemaSpec>, strict?: boolean, min?: integer, max?: integer, optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.table(o) end

---A sequence 1..n (no holes) whose items match `of`.
---@param of fx.SchemaSpec
---@param o? { min?: integer, max?: integer, optional?: boolean }
---@return fx.SchemaRule
function SchemaLib.array(of, o) end

---One of these exact values.
---@param ... any
---@return fx.SchemaRule
function SchemaLib.oneOf(...) end

---@param spec fx.SchemaSpec
---@return fx.SchemaRule
function SchemaLib.optional(spec) end

---@param fn fun(v: any): boolean, string?
---@return fx.SchemaRule
function SchemaLib.custom(fn) end

---@param spec fx.SchemaSpec
---@param value any
---@return boolean ok
---@return string? reason
function SchemaLib.check(spec, value) end

---@param spec fx.SchemaSpec
---@return fun(v: any): boolean, string?
function SchemaLib.compile(spec) end

---Compiles an argument list (the `args` of a channel). A last entry "..." accepts any extra arguments unchecked.
---@param list (fx.SchemaSpec|"...")[]
---@return fun(count: integer, ...: any): ok: boolean, reason: string?
function SchemaLib.args(list) end

---Who sent the event being handled, captured when the handler starts (it does not change after a Wait).
---@class fx.ChannelContext
---@field name string Channel / RPC name
---@field from "client"|"server"|"local"
---@field source? integer Server id of the sending client (server side), nil otherwise
---@field player? any The sender's player: fx.Player by default, or what fx.Channel.setPlayerResolver returns
---@field resource? string Resource that triggered a local event

---@class fx.ChannelOptions
---@field from? "client"|"server"|"local" Who sends it. "client": client -> server; "server": server -> client(s); "local" (default): same side, any resource.
---@field args? fx.SchemaSpec[] Argument checks, in order. A last "..." accepts extra arguments unchecked. Without args, anything is accepted.
---@field rate? { [1]: integer, [2]: number? } { count, windowMs } (windowMs default 1000): at most `count` events per player per window (events from clients).

---An event declared once with its contract. Received events that do not match it (origin, rate, arguments) never
---reach the handlers: they are logged and passed to fx.Channel.onReject.
---@class fx.Channel
---@field name string
---@field from "client"|"server"|"local"
local ChannelObj = {}

---Registers a handler. Returns a function that removes it.
---@param fn fun(ctx: fx.ChannelContext, ...)
---@return fun() off
function ChannelObj:on(fn) end

---Sends the event: a local channel to every resource of this side, a channel from "client" to the server.
---Arguments are checked first (error on mismatch).
---@param ... any
function ChannelObj:emit(...) end

---Server: sends to one client or a list (fx players, server ids, or tables with `source`).
---@param target fx.Player|integer|{ source: integer }|(fx.Player|integer|{ source: integer })[]
---@param ... any
function ChannelObj:emitTo(target, ...) end

---Server: sends to every client.
---@param ... any
function ChannelObj:emitAll(...) end

---@class fx.RejectInfo
---@field kind "Channel"|"Rpc"
---@field name string
---@field from "client"|"server"|"local"
---@field source? integer
---@field player? any
---@field reason string

---`fx.Channel(name, options)` declares a channel. Declare it in a shared file loaded by every resource that uses it.
---@class fx.ChannelLib
---@overload fun(name: string, options?: fx.ChannelOptions): fx.Channel
local ChannelLib = {}

---Builds ctx.player from the sender's server id (a framework's own player object). Default: fx.Player(source).
---@param fn fun(source: integer): any
function ChannelLib.setPlayerResolver(fn) end

---Called for every rejected event or RPC of this resource (kick, ban, alert...). Returns a function that removes it.
---@param fn fun(info: fx.RejectInfo)
---@return fun() off
function ChannelLib.onReject(fn) end

---@class fx.RpcOptions : fx.ChannelOptions
---@field from? "client"|"server"|"local" Who calls it. "client": the client asks the server; "server": the server asks a client; "local" (default): same side, any resource.
---@field returns? fx.SchemaSpec[] Checks of the returned values (always set it when a client answers).
---@field timeout? integer Milliseconds before the call rejects with a TimeoutError (default 10000).

---A request / response declared once. One handler on the whole server (or client); callers can be in any resource.
---@class fx.Rpc
---@field name string
---@field from "client"|"server"|"local"
local RpcObj = {}

---Registers the handler: returns the response values, or an fx.Promise of them. Errors reject the caller's promise
---(a client only gets "internal error"; the real error is logged on the server).
---@param fn fun(ctx: fx.ChannelContext, ...): ...
---@return fun() off
function RpcObj:handle(fn) end

---Calls the RPC (client -> server, or local).
---@param ... any
---@return fx.Promise
function RpcObj:callAsync(...) end

---Server: asks one client.
---@param player fx.Player|integer|{ source: integer }
---@param ... any
---@return fx.Promise
function RpcObj:callOnAsync(player, ...) end

---`fx.Rpc(name, options)` declares an RPC. Declare it in a shared file loaded by every resource that uses it.
---@class fx.RpcLib
---@overload fun(name: string, options?: fx.RpcOptions): fx.Rpc
local RpcLib = {}

---@class fx
---@field version string Semver of this build ("0.0.0-dev" for a local build)
---@field debug boolean Debug mode: checks entity existence on every access and raises clear errors (convar fx_debug 1).
---@field Promise fx.PromiseLib
---@field Enum fx.EnumLib Enums documented in the native definitions (members are plain integers).
---@field Logger fx.LoggerLib Named loggers: levels, colors, table dumps, children, hooks.
---@field Schema fx.SchemaLib Value checks (argument schemas of channels and RPCs).
---@field Channel fx.ChannelLib Events declared with their contract: origin, argument checks, rate limit.
---@field Rpc fx.RpcLib Request / response with promises, checked like channels.
---@field msgpack fx.MsgpackLib How fx wrappers are serialized (events, exports, state bags) and safe custom extensions.
---@field await fun(p: fx.Promise|table): ... Awaits an fx.Promise, a native promise or a thenable (inside a thread).
---@field App fx.App
---@field Audio fx.Audio
---@field Blip fx.BlipStatic
---@field Brain fx.Brain
---@field Cam fx.CamStatic
---@field Cfx fx.Cfx
---@field Checkpoint fx.CheckpointStatic
---@field Clock fx.Clock
---@field Command fx.Command
---@field Convar fx.Convar
---@field Cutscene fx.Cutscene
---@field Datafile fx.Datafile
---@field Decorator fx.Decorator
---@field Dlc fx.Dlc
---@field Dui fx.DuiStatic
---@field Entity fx.EntityStatic
---@field Event fx.Event
---@field Events fx.Events
---@field Files fx.Files
---@field Fire fx.Fire
---@field Game fx.Game
---@field Global fx.Global
---@field Graphics fx.Graphics
---@field Hud fx.Hud
---@field Interior fx.InteriorStatic
---@field Itemset fx.Itemset
---@field Keybind fx.Keybind
---@field Kvp fx.Kvp
---@field LoadingScreen fx.LoadingScreen
---@field Localization fx.Localization
---@field Mobile fx.Mobile
---@field Model fx.ModelStatic
---@field Money fx.Money
---@field Mumble fx.Mumble
---@field Netshopping fx.Netshopping
---@field Network fx.Network
---@field Nui fx.Nui
---@field Object fx.ObjectStatic
---@field Pad fx.Pad
---@field ParticleFx fx.ParticleFxStatic
---@field Pathfind fx.Pathfind
---@field Ped fx.PedStatic
---@field PedGroup fx.PedGroupStatic
---@field Physics fx.Physics
---@field Pickup fx.PickupStatic
---@field Player fx.PlayerStatic
---@field Recording fx.Recording
---@field Replay fx.Replay
---@field Resource fx.Resource
---@field Rope fx.RopeStatic
---@field Scaleform fx.ScaleformStatic
---@field Script fx.Script
---@field Shapetest fx.Shapetest
---@field Socialclub fx.Socialclub
---@field Sound fx.SoundStatic
---@field Stats fx.Stats
---@field Streaming fx.Streaming
---@field System fx.System
---@field Task fx.Task
---@field Vehicle fx.VehicleStatic
---@field Water fx.Water
---@field Weapon fx.Weapon
---@field Zone fx.Zone
fx = {}

---Returns a function that runs fn in a Citizen thread and returns a Promise of its return values.
---@generic R1, R2, R3, R4, R5, R6
---@param fn async fun(...): R1?, R2?, R3?, R4?, R5?, R6?
---@return fun(...): fx.Promise<R1, R2, R3, R4, R5, R6>
function fx.async(fn) end
