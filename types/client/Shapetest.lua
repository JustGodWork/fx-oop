---@meta
---@diagnostic disable
-- fx.Shapetest (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---What a shape test collides with.
---@alias fx.ShapetestFlag
---| "world" Map collision
---| "vehicles"
---| "peds" Ped capsules
---| "ragdolls" Ped body parts
---| "objects"
---| "water"
---| "glass"
---| "river"
---| "foliage"
---| "everything"

---@class fx.ShapetestOptions
---@field flags? fx.ShapetestFlag[]|integer What the test collides with, default { "everything" }
---@field ignore? fx.Entity|integer An entity the test goes through
---@field radius? number Tests a sphere moved along the line instead of a thin ray
---@field timeoutMs? integer Default 10000

---@class fx.ShapetestHit
---@field position vector3 Where the test hit
---@field normal vector3 Normal of the surface hit
---@field entity fx.Entity? The entity hit, nil for the map
---@field material integer Hash of the material hit
---@class fx.Shapetest
local ShapetestStatic = {}

---Tests the line from `from` to `to` and resolves with the first hit, nil when nothing is in the way.
---```lua
---local hit <const> = fx.Shapetest.castAsync(from, to, { flags = { "world", "vehicles" }, ignore = fx.Player.ped }):await()
---if hit and hit.entity then print("vehicle in the way", hit.entity) end
---```
---@param from vector3
---@param to vector3
---@param options? fx.ShapetestOptions
---@return fx.Promise<fx.ShapetestHit?>
function ShapetestStatic.castAsync(from, to, options) end

---Tests the line the camera looks along, up to `distance`. Goes through the player's ped unless `options.ignore` is
---set.
---@param distance? number Default 100.0
---@param options? fx.ShapetestOptions
---@return fx.Promise<fx.ShapetestHit?>
function ShapetestStatic.fromCameraAsync(distance, options) end

---Tests the line under a point of the screen (0..1, the NUI cursor for instance), up to `distance`. Goes through the
---player's ped unless `options.ignore` is set.
---@param x number
---@param y number
---@param distance? number Default 100.0
---@param options? fx.ShapetestOptions
---@return fx.Promise<fx.ShapetestHit?>
function ShapetestStatic.fromScreenAsync(x, y, distance, options) end

--- Returns the result of a shape test.
---
--- When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
--- Unless the return value is 2, the other return values are undefined.
--- **Native**: `GET_SHAPE_TEST_RESULT` (`0x3D87450E15D98694`)
---@param shapeTestHandle integer A shape test handle.
---@return integer result `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
---@return boolean hit Whether or not the shape test hit any collisions.
---@return vector3 endCoords The resulting coordinates where the shape test hit a collision.
---@return vector3 surfaceNormal The surface normal of the hit position.
---@return fx.Entity? entityHit Any dynamic entity hit by the shape test.
function ShapetestStatic.getResult(shapeTestHandle) end

--- Returns the result of a shape test, also returning the material of any touched surface.
---
--- When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
---
--- Unless the return value is 2, the other return values are undefined.
--- **Native**: `GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL` (`0x65287525D951F6BE`)
---@param shapeTestHandle integer A shape test handle.
---@return integer result `0` if the handle is invalid, `1` if the shape test is still pending, or `2` if the shape test has completed, and the handle should be invalidated.
---@return boolean hit Whether or not the shape test hit any collisions.
---@return vector3 endCoords The resulting coordinates where the shape test hit a collision.
---@return vector3 surfaceNormal The surface normal of the hit position.
---@return integer materialHash hash of the hit material or surface type, see materialFX.dat
---@return fx.Entity? entityHit Any dynamic entity hit by the shape test.
function ShapetestStatic.getResultIncludingMaterial(shapeTestHandle) end

--- For more information, see [`START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`](#\_0x377906D8A31E5586) and [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E).
--- **Native**: `START_SHAPE_TEST_BOX` (`0xFE466162C4401D18`)
---@param coords vector3 Starting coordinate.
---@param coords1 vector3 Ending coordinate.
---@param rot vector3
---@param p9 integer Unknown, always 2 or 0
---@param flags integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity fx.Entity|integer
---@param p12 integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return integer result
function ShapetestStatic.startBox(coords, coords1, rot, p9, flags, entity, p12) end

--- Raycast from point to point, where the ray has a radius.
--- **Native**: `START_SHAPE_TEST_CAPSULE` (`0x28579D1B8F8AAC80`)
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param radius number
---@param flags integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity? fx.Entity|integer Entity to ignore, or 0.
---@param p9 integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return integer result
function ShapetestStatic.startCapsule(coords1, coords2, radius, flags, entity, p9) end

--- Does the same as [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.
---
--- Use [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.
--- **Native**: `START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE` (`0x377906D8A31E5586`)
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param flags integer See [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E).
---@param entity? fx.Entity|integer An entity to ignore, or 0.
---@param p8 integer A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.
---@return integer result A shape test handle.
function ShapetestStatic.startExpensiveSynchronousLosProbe(coords1, coords2, flags, entity, p8) end

--- Asynchronously starts a line-of-sight (raycast) world probe shape test.
---
--- ```cpp
--- enum eTraceFlags
--- {
---   None = 0,
---   IntersectWorld = 1,
---   IntersectVehicles = 2,
---   IntersectPeds = 4,
---   IntersectRagdolls = 8,
---   IntersectObjects = 16,
---   IntersectWater = 32,
---   IntersectGlass = 64,
---   IntersectRiver = 128,
---   IntersectFoliage = 256,
---   IntersectEverything = -1
--- }
--- ```
---
--- NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.
---
--- Use the handle with [GET_SHAPE_TEST_RESULT](#\_0x3D87450E15D98694) or [GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL](#\_0x65287525D951F6BE) until it returns 0 or 2.
--- **Native**: `START_SHAPE_TEST_LOS_PROBE` (`0x7EE9F5D83DD4F90E`)
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param traceFlags fx.Enum.TraceFlags|integer Refer to `eTraceFlags`, this defines what the shape test will intersect with
---@param entity? fx.Entity|integer An entity to ignore, or 0.
---@param options integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return integer result A shape test handle.
function ShapetestStatic.startLosProbe(coords1, coords2, traceFlags, entity, options) end

--- Since it is only used in the PC version, likely some mouse-friendly shape test. Uses **in** vector arguments.
---
--- Asynchronous.
---
--- ```
--- it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.
--- In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7
--- ```
---
--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_SURROUNDING_COORDS` (`0xFF6BE494C7987F34`)
---@param flag integer
---@param entity fx.Entity|integer
---@param flag2 integer
---@return integer result
---@return vector3 pVec1
---@return vector3 pVec2
function ShapetestStatic.startSurroundingCoords(flag, entity, flag2) end

--- Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.
--- **Native**: `START_SHAPE_TEST_SWEPT_SPHERE` (`0xE6AC6C45FBE83004`)
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param radius number
---@param flags integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity? fx.Entity|integer An entity to ignore, or 0.
---@param p9 integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@return integer result
function ShapetestStatic.startSweptSphere(coords1, coords2, radius, flags, entity, p9) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- Starts `START_SHAPE_TEST_BOUND`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_BOUND` / `GET_SHAPE_TEST_RESULT`.
---@param entity fx.Entity|integer
---@param flags1 integer
---@param flags2 integer
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.boundAsync(entity, flags1, flags2, timeoutMs) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- Starts `START_SHAPE_TEST_BOUNDING_BOX`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_BOUNDING_BOX` / `GET_SHAPE_TEST_RESULT`.
---@param entity fx.Entity|integer
---@param flags1 integer
---@param flags2 integer
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.boundingBoxAsync(entity, flags1, flags2, timeoutMs) end

--- For more information, see [`START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`](#\_0x377906D8A31E5586) and [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E).
--- Starts `START_SHAPE_TEST_BOX`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_BOX` / `GET_SHAPE_TEST_RESULT`.
---@param coords vector3 Starting coordinate.
---@param coords1 vector3 Ending coordinate.
---@param rot vector3
---@param p9 integer Unknown, always 2 or 0
---@param flags integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity fx.Entity|integer
---@param p12 integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.boxAsync(coords, coords1, rot, p9, flags, entity, p12, timeoutMs) end

--- Raycast from point to point, where the ray has a radius.
--- Starts `START_SHAPE_TEST_CAPSULE`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_CAPSULE` / `GET_SHAPE_TEST_RESULT`.
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param radius number
---@param flags integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity? fx.Entity|integer Entity to ignore, or 0.
---@param p9 integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.capsuleAsync(coords1, coords2, radius, flags, entity, p9, timeoutMs) end

--- Does the same as [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.
---
--- Use [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.
--- Starts `START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE` / `GET_SHAPE_TEST_RESULT`.
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param flags integer See [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E).
---@param entity? fx.Entity|integer An entity to ignore, or 0.
---@param p8 integer A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.expensiveSynchronousLosProbeAsync(coords1, coords2, flags, entity, p8, timeoutMs) end

--- Asynchronously starts a line-of-sight (raycast) world probe shape test.
---
--- ```cpp
--- enum eTraceFlags
--- {
---   None = 0,
---   IntersectWorld = 1,
---   IntersectVehicles = 2,
---   IntersectPeds = 4,
---   IntersectRagdolls = 8,
---   IntersectObjects = 16,
---   IntersectWater = 32,
--- [...]
--- Starts `START_SHAPE_TEST_LOS_PROBE`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_LOS_PROBE` / `GET_SHAPE_TEST_RESULT`.
---@param from vector3 Starting coordinate.
---@param to vector3 Ending coordinate.
---@param traceFlags? fx.Enum.TraceFlags|integer Refer to `eTraceFlags`, this defines what the shape test will intersect with
---@param ignore? fx.Entity|integer An entity to ignore, or 0.
---@param options? integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.rayAsync(from, to, traceFlags, ignore, options, timeoutMs) end

--- Since it is only used in the PC version, likely some mouse-friendly shape test. Uses **in** vector arguments.
---
--- Asynchronous.
---
--- ```
--- it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.
--- In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7
--- ```
---
--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- Starts `START_SHAPE_TEST_SURROUNDING_COORDS`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_SURROUNDING_COORDS` / `GET_SHAPE_TEST_RESULT`.
---@param flag integer
---@param entity fx.Entity|integer
---@param flag2 integer
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.surroundingCoordsAsync(flag, entity, flag2, timeoutMs) end

--- Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.
--- Starts `START_SHAPE_TEST_SWEPT_SPHERE`, then polls `GET_SHAPE_TEST_RESULT` every tick; returns a Promise of all the result values.
--- Entity handles in the result are wrapped. Raw versions: the natives `START_SHAPE_TEST_SWEPT_SPHERE` / `GET_SHAPE_TEST_RESULT`.
---@param coords1 vector3 Starting coordinate.
---@param coords2 vector3 Ending coordinate.
---@param radius number
---@param flags integer See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E)
---@param entity? fx.Entity|integer An entity to ignore, or 0.
---@param p9 integer A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.
---@param timeoutMs? integer
---@return fx.Promise<boolean, vector3, vector3, fx.Entity?>
function ShapetestStatic.sweptSphereAsync(coords1, coords2, radius, flags, entity, p9, timeoutMs) end

