# fx-oop

An object-oriented, fully typed layer over every FiveM native, generated from the official native definitions.

```lua
-- natives
local ped = PlayerPedId()
SetEntityHealth(ped, 200)
local veh = GetVehiclePedIsIn(ped, false)
if veh ~= 0 then SetVehicleEngineHealth(veh, 1000.0) end

-- fx
local me = fx.Player.ped
me.health = 200
if me.vehicle then me.vehicle.engineHealth = 1000.0 end
```

- **Properties and methods instead of natives**: every GTA V and CFX native becomes a property (`ped.health`), a
  method (`ped:setIntoVehicle(veh, -1)`) or a static (`fx.Blip.addForCoord(pos)`), named after the native.
- **Typed for your editor**: LuaLS annotations for every wrapper, enum and event, so you get completion and type
  errors in VS Code.
- **Promises for everything that waits**: model loads, entity creation, shape tests, state bags (`:await()` in a
  thread, or `:next()`).
- **Batteries for scripts**: decoded FiveM, GTA and txAdmin events, channels and RPCs with checked arguments,
  vehicle properties, ped outfits, a logger.

This repository is the `fx` resource, rebuilt every day when FiveM's native definitions change.

## Requirements

- A FiveM server with Lua 5.4 (the default).
- OneSync, for server-side entity creation and the game events clients route through the server.

## Installation

Download `fx.zip` from the [latest release](../../releases/latest) and extract it into your server's `resources`
folder: it holds an `fx` folder. Or clone this repository as `resources/fx`.

Start it before the resources that use it, in `server.cfg`:

```
ensure fx
```

## Quick start

A resource loads `fx` with a shared script, never through `exports` (metatables do not cross resources):

```lua
-- fxmanifest.lua
fx_version 'cerulean'
game 'gta5'

dependency 'fx'
shared_script '@fx/init.lua'
client_script 'client.lua'
```

```lua
-- client.lua
local Player, Vehicle = fx.Player, fx.Vehicle

RegisterCommand("car", function()
  local ped = Player.ped
  Vehicle.createAsync("adder", ped.position, ped.heading):next(function(veh)
    ped:setIntoVehicle(veh, -1)
  end)
end, false)
```

`/car` in the chat spawns an Adder and seats you in it.

Only the global `fx` is defined, and each type or module is built on first access: import what you need
(`local Player, Vehicle = fx.Player, fx.Vehicle`). The native globals (`Entity`, `Player`, `GlobalState`,
`LocalPlayer`, `promise`, `Citizen`) are left untouched.

## Editor setup

In the `.luarc.json` at the root of your server folder, load one side's types and keep LuaLS from scanning the
resource's `types` folder (`types/client` and `types/server` declare the same classes with different members):

```json
{
  "workspace.library": ["resources/fx/types/client"],
  "workspace.ignoreDir": ["resources/fx/types"]
}
```

Use `types/server` while working on server scripts. `types/manifest` types the `fxmanifest.lua` directives, but they
become globals in every script of the workspace. Every file of the resource disables its own diagnostics.

## How natives map to fx

| Native | fx |
|---|---|
| `GET_X(h)` + `SET_X(h, v)` | property `obj.x` (read/write) |
| `GET_X(h)` | read-only property `obj.x` |
| `IS_X(h)`, `HAS_X(h)`, `DOES_X(h)` | read-only property keeping the prefix: `ped.isDead` |
| `DOES_<TYPE>_EXIST(h)` | `obj.exists` (never raises, even on a deleted entity) |
| setter with extra parameters | method `obj:setX(...)` |
| native without return value | method returning `self`: `veh:freeze(true):setDoorsLocked(2)` |
| out pointers | extra return values |
| `x, y, z` floats | one `vector3` argument |
| handle results | wrapped objects (`ped.vehicle` is an `fx.Vehicle` or nil) |
| no handle parameter | static of its namespace (`MISC` -> `fx.Game`) or of the type it returns (`fx.Blip.addForCoord`) |

Names are camelCase without the type prefix: `SET_PED_INTO_VEHICLE` -> `ped:setIntoVehicle(veh, seat)`. A native
without a name stays reachable through `obj:invoke(hash, ...)`.

Writing an unknown or read-only property raises (`Ped has no property 'helth'`). Debug mode (`fx.debug = true` or
the convar `fx_debug 1`) also checks that the entity exists on every access.

A player is not its ped: `fx.Player` is the session (server id, name, `player:<id>` state bag) and `fx.Player.ped` its
current ped, which changes on death, respawn and model change.

## What fx provides

| Module | For |
|---|---|
| `fx.Entity`, `fx.Ped`, `fx.Vehicle`, `fx.Object`, `fx.Player`, `fx.Blip`, `fx.Cam`... | every native, as properties and methods |
| `fx.Promise` | Promises/A+ with multiple values, compatible with `Citizen.Await` |
| `fx.Enum` | the enums of the native definitions (`fx.Enum.SeatPosition.SF_FrontDriverSide`) |
| `vehicle:getProperties()`, `ped:getOutfit()` | vehicle mods, colors, damage; ped clothes and appearance, as plain values |
| `entity.states`, `fx.Global.states` | state bags with `:on(key, fn)` and `:waitForAsync(key)` |
| `fx.Events.Cfx`, `.Game`, `.TxAdmin` | FiveM's, GTA's and txAdmin's events, decoded and typed |
| `fx.Channel`, `fx.Rpc` | events and request / response with origin, argument and rate checks |
| `fx.Resource` | other resources: state, protected export calls, start and stop listeners |
| `fx.Nui` | the NUI page: messages, callbacks, focus |
| `fx.msgpack` | fx objects and your own types sent through events, exports and state bags |
| `fx.Logger` | named loggers with levels, colors and table dumps |

```lua
-- shared: declared once, with its contract
GetMoney = fx.Rpc("bank:get", { from = "client", args = { "string:8" }, returns = { "integer" } })

-- server
GetMoney:handle(function(ctx, account) return 100 end)
fx.Events.Cfx.onPlayerDropped(function(e) print(e.player, "left:", e.reason) end)

-- client, in a thread
local money = GetMoney:callAsync("cash"):await()
```

Every function, property and event is described in the annotations of `types/`: hover it in your editor.

Good to know:

- Nothing yields by itself: a function that waits returns an `fx.Promise` and its name ends with `Async`.
- An entity sent through an event travels as its network id: one the receiver does not know yet (just created by a
  client, out of scope) arrives as nil.
- A client write to a replicated state bag is dropped by the server unless the client owns the entity.

## Versions

Releases follow [semver](https://semver.org): a release that only adds natives or members is a minor one, and a
change that can break a script (a member renamed or removed) is never published without review. Below 1.0.0, such a
change bumps the minor version. The running version is `fx.version`, and [CHANGELOG.md](CHANGELOG.md) lists what each
release adds, removes or changes.

## Support

Report bugs and ask questions in the [issues](../../issues).

## License

No license yet: all rights reserved.
