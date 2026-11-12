# Contributing

Thanks for helping improve fx. Bug reports, missing natives, naming issues and fixes are all welcome.

## How this repository is built

Every file here is generated: a private generator builds the resource from FiveM's native definitions and publishes
it as a release. Each release replaces the content of the repository, so a pull request cannot be merged as it is. A
change proposed here is ported into the generator and ships with the next release.

## Reporting a bug

Open an [issue](../../issues) with:

- the fx version (`print(fx.version)`) and your server artifact version
- the side (client or server) and whether OneSync is enabled
- a minimal script that reproduces the problem
- the full error from the console, with its stack trace
- what you expected to happen

## Natives

A native that is missing, badly named, typed wrong or attached to the wrong type comes from the generator's mapping:
open an issue with the native's name (`SET_PED_INTO_VEHICLE`) and the call you expected
(`ped:setIntoVehicle(veh, -1)`). A wrong description or parameter in the native definitions themselves is best
reported to [FiveM's native documentation](https://github.com/citizenfx/natives).

## Proposing a fix

A pull request is the best way to show a fix, even though it is not merged directly:

- `init.lua` and the files of `shared/` are written by hand and copied as they are: fix them like any Lua file.
- The files of `client/` and `server/` mix generated wrappers with hand-written helpers, and `types/` is generated
  from the annotations: a fix there is welcome, but describe the behavior you changed so it can be ported to the right
  place.

Keep a pull request to one change, and include a script that shows the problem before and the fix after. Once the
fix is released, the pull request is closed with a link to the release that ships it.

## Questions and ideas

Questions and feature ideas go in the [issues](../../issues) too. For a new module or a change to an existing API,
open an issue to discuss it before writing code: the API of fx follows [semver](https://semver.org), and a change that
breaks scripts needs a good reason.
