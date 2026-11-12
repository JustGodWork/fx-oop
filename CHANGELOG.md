# Changelog

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

