# Changelog

## v0.4.0 (2026-11-14)

API change: minor.

### Features

- **report**: publish the natives wrapped by hand
- **weather**: add fx.Weather and fx.Timecycle
- add async shapetests and fx.Http requests
- **control**: add fx.Control, fx.Population and fx.Enum.Control
- add routing buckets, Player.all, fx.Screen and fx.Location
- add gamer tags, relationship groups, Discord and submixes
- add ped.weapons, Graphics.light and the minimap properties

### Fixes

- **generator**: wrap deprecated natives and mark them @deprecated
- **release**: treat widened parameters as a minor API change

### Added (255)

- `client:AudioStatic.hintAmbientAudioBank`
- `client:AudioStatic.hintMissionAudioBank`
- `client:AudioStatic.releaseAmbientAudioBank`
- `client:AudioStatic.releaseMissionAudioBank`
- `client:AudioStatic.requestAmbientAudioBank`
- `client:AudioStatic.requestMissionAudioBank`
- `client:CfxStatic.setManualShutdownLoadingScreenNui`
- `client:ControlStatic.disable`
- `client:ControlStatic.instructional`
- `client:ControlStatic.justPressed`
- `client:ControlStatic.justReleased`
- `client:ControlStatic.onPress`
- `client:ControlStatic.pressed`
- `client:ControlStatic.value`
- `client:GamerTagRef:hide`
- `client:GamerTagRef:remove`
- `client:GamerTagRef:setAlpha`
- `client:GamerTagRef:setColor`
- `client:GamerTagRef:show`
- `client:GamerTagStatic.create`
- `client:GraphicsStatic.light`
- `client:HudStatic.setPauseMenuActive`
- `client:LocationStatic.at`
- `client:Model:setHeadlightConfiguration`
- `client:Ped:setCombatAttributes`
- `client:Ped:taskPlaneMission`
- `client:PedWeaponsProxy:ammo`
- `client:PedWeaponsProxy:give`
- `client:PedWeaponsProxy:has`
- `client:PedWeaponsProxy:remove`
- `client:PedWeaponsProxy:removeAll`
- `client:PedWeaponsProxy:setAmmo`
- `client:PlayerStatic.all`
- `client:PopulationStatic.reset`
- `client:RelationshipGroupRef:add`
- `client:RelationshipGroupRef:get`
- `client:RelationshipGroupRef:remove`
- `client:RelationshipGroupRef:set`
- `client:RelationshipGroupStatic.create`
- `client:RelationshipGroupStatic.of`
- `client:ScreenStatic.fromWorld`
- `client:ScreenStatic.toWorld`
- `client:ShapetestStatic.castAsync`
- `client:ShapetestStatic.fromCameraAsync`
- `client:ShapetestStatic.fromScreenAsync`
- `client:SubmixRef:assign`
- `client:SubmixRef:setParam`
- `client:SubmixStatic.create`
- `client:SubmixStatic.reset`
- `client:TimecycleModifierRef:clone`
- ... and 205 more

### Widened (19)

- `client:PadStatic.disableControlAction: (padIndex: integer, control: integer, disable: boolean): nil -> (padIndex: integer, control: fx.Enum.Control|integer, disable: boolean): nil`
- `client:PadStatic.enableControlAction: (padIndex: integer, control: integer, enable: boolean): nil -> (padIndex: integer, control: fx.Enum.Control|integer, enable: boolean): nil`
- `client:PadStatic.getControlInstructionalButton: (padIndex: integer, control: integer, p2: boolean): string -> (padIndex: integer, control: fx.Enum.Control|integer, p2: boolean): string`
- `client:PadStatic.getControlNormal: (padIndex: integer, control: integer): number -> (padIndex: integer, control: fx.Enum.Control|integer): number`
- `client:PadStatic.getControlUnboundNormal: (padIndex: integer, control: integer): number -> (padIndex: integer, control: fx.Enum.Control|integer): number`
- `client:PadStatic.getControlValue: (padIndex: integer, control: integer): integer -> (padIndex: integer, control: fx.Enum.Control|integer): integer`
- `client:PadStatic.getDisabledControlNormal: (padIndex: integer, control: integer): number -> (padIndex: integer, control: fx.Enum.Control|integer): number`
- `client:PadStatic.getDisabledControlUnboundNormal: (padIndex: integer, control: integer): number -> (padIndex: integer, control: fx.Enum.Control|integer): number`
- `client:PadStatic.isControlEnabled: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isControlJustPressed: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isControlJustReleased: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isControlPressed: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isControlReleased: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isDisabledControlJustPressed: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isDisabledControlJustReleased: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isDisabledControlPressed: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.isDisabledControlReleased: (padIndex: integer, control: integer): boolean -> (padIndex: integer, control: fx.Enum.Control|integer): boolean`
- `client:PadStatic.setControlNormal: (padIndex: integer, control: integer, amount: number): boolean -> (padIndex: integer, control: fx.Enum.Control|integer, amount: number): boolean`
- `client:PadStatic.setInputExclusive: (padIndex: integer, control: integer): nil -> (padIndex: integer, control: fx.Enum.Control|integer): nil`

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

