# Changelog

## v0.3.0 (2026-11-12)

API change: major.

### Features

- **loading-screen**: group the loading screen natives in fx.LoadingScreen (breaking)
- add fx.Kvp, fx.Convar, fx.Command and player identifiers
- add async creations, loads and client helpers

### Added (127)

- `client:CamStatic.fadeInAsync`
- `client:CamStatic.fadeOutAsync`
- `client:ConvarRef:get`
- `client:ConvarRef:getBool`
- `client:ConvarRef:getFloat`
- `client:ConvarRef:getInt`
- `client:ConvarRef:onChange`
- `client:CutsceneStatic.loadAsync`
- `client:Entity:teleportAsync`
- `client:GameStatic.getGroundZAsync`
- `client:HudStatic.loadAdditionalTextAsync`
- `client:KvpStatic.delete`
- `client:KvpStatic.get`
- `client:KvpStatic.getFloat`
- `client:KvpStatic.getInt`
- `client:KvpStatic.getJson`
- `client:KvpStatic.keys`
- `client:KvpStatic.set`
- `client:KvpStatic.setFloat`
- `client:KvpStatic.setInt`
- `client:KvpStatic.setJson`
- `client:LoadingScreenStatic.send`
- `client:LoadingScreenStatic.setIsLoadingFreemode`
- `client:LoadingScreenStatic.setManualShutdown`
- `client:LoadingScreenStatic.shutdown`
- `client:LoadingScreenStatic.shutdownWhenReadyAsync`
- `client:Object:teleportAsync`
- `client:Ped:cloneAsync`
- `client:Ped:playAnimAsync`
- `client:Ped:teleportAsync`
- `client:Ped:waitForTaskAsync`
- `client:PedStatic.createRandomAsync`
- `client:StreamingStatic.loadIplAsync`
- `client:StreamingStatic.loadTextureDictAsync`
- `client:Vehicle:createPedInsideAsync`
- `client:Vehicle:teleportAsync`
- `client:VehicleStatic.createMissionTrainAsync`
- `client:fx.Command`
- `client:fx.Command()`
- `client:fx.CommandContext`
- `client:fx.CommandContext.name`
- `client:fx.CommandContext.player`
- `client:fx.CommandContext.raw`
- `client:fx.CommandContext.reply`
- `client:fx.CommandContext.source`
- `client:fx.CommandOptions`
- `client:fx.CommandOptions.args`
- `client:fx.CommandOptions.help`
- `client:fx.CommandOptions.params`
- `client:fx.CommandOptions.rest`
- ... and 77 more

### Removed (5)

- `client:LoadingscreenStatic.setIsLoadingFreemode`
- `client:fx.Loadingscreen`
- `client:fx.Loadingscreen.isLoadingFreemode`
- `client:fx.Loadingscreen.loadFreemode`
- `client:fx.Loadingscreen.loadFreemodeWithEventName`

## v0.2.0 (2026-11-12)

API change: minor.

### Features

- **resource**: read manifests and files, start and stop other resources

### Added (45)

- `client:ResourceRef:getMetadata`
- `client:ResourceRef:getMetadataList`
- `client:ResourceRef:isVersionAtLeast`
- `client:ResourceRef:loadFile`
- `client:ResourceRef:loadJson`
- `client:ResourceRef:waitForStartAsync`
- `client:ResourceStatic.all`
- `client:fx.Resource.current`
- `client:fx.Resource.invoking`
- `client:fx.ResourceCommand`
- `client:fx.ResourceCommand.arity`
- `client:fx.ResourceCommand.name`
- `client:fx.ResourceCommand.resource`
- `client:fx.ResourceRef.author`
- `client:fx.ResourceRef.commands`
- `client:fx.ResourceRef.dependencies`
- `client:fx.ResourceRef.description`
- `client:fx.ResourceRef.exists`
- `client:fx.ResourceRef.fxVersion`
- `client:fx.ResourceRef.version`
- `server:ResourceRef:getMetadata`
- `server:ResourceRef:getMetadataList`
- `server:ResourceRef:isVersionAtLeast`
- `server:ResourceRef:loadFile`
- `server:ResourceRef:loadJson`
- `server:ResourceRef:waitForStartAsync`
- `server:ResourceStatic.all`
- `server:ServerResourceRef:restart`
- `server:ServerResourceRef:saveFile`
- `server:ServerResourceRef:start`
- `server:ServerResourceRef:stop`
- `server:fx.Resource.current`
- `server:fx.Resource.invoking`
- `server:fx.ResourceCommand`
- `server:fx.ResourceCommand.arity`
- `server:fx.ResourceCommand.name`
- `server:fx.ResourceCommand.resource`
- `server:fx.ResourceRef.author`
- `server:fx.ResourceRef.commands`
- `server:fx.ResourceRef.dependencies`
- `server:fx.ResourceRef.description`
- `server:fx.ResourceRef.exists`
- `server:fx.ResourceRef.fxVersion`
- `server:fx.ResourceRef.path`
- `server:fx.ResourceRef.version`

## v0.1.1 (2026-11-12)

API change: patch.

### Fixes

- **events**: pass no argument to deferrals.done without a reason

No change in the public API.

## v0.1.0 (2026-11-12)

First release.

