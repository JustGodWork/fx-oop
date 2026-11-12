---@meta
---@diagnostic disable
-- fx.ParticleFx (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.ParticleFxOptions
---@field coords? vector3 World position (when no entity)
---@field entity? fx.Entity|integer Attach to an entity
---@field offset? vector3 Offset from the entity
---@field bone? integer Bone index (looped effects on an entity)
---@field rot? vector3
---@field scale? number Default 1.0
---@field color? number[]|{r: number, g: number, b: number} 0..1
---@field alpha? number 0..1
---@field timeout? integer Asset loading timeout (ms)
---@class fx.ParticleFx
---@field handle integer Raw handle.
---@field doesLoopedExist boolean (read-only) [DOES_PARTICLE_FX_LOOPED_EXIST]
local ParticleFx = {}

---Removes the looped effect (REMOVE_PARTICLE_FX).
---@return nil
function ParticleFx:stop() end

--- **Native**: `REMOVE_PARTICLE_FX` (`0xC401503DFE8D53CF`)
---@param p1 boolean
---@return nil
function ParticleFx:remove(p1) end

--- **Native**: `SET_PARTICLE_FX_LOOPED_ALPHA` (`0x726845132380142E`)
---@param alpha number
---@return fx.ParticleFx self
function ParticleFx:setLoopedAlpha(alpha) end

--- Sets the colour tint of a previously started looped particle effect
---
--- You can use the [inverse lerp](https://www.gamedev.net/articles/programming/general-and-gameplay-programming/inverse-lerp-a-super-useful-yet-often-overlooked-function-r5230/) method to normalize in a range from 0.0 to 1.0 an rgb
--- **Native**: `SET_PARTICLE_FX_LOOPED_COLOUR` (`0x7F8F65877F88783B`)
---@param r number range from 0.0 to 1.0
---@param g number range from 0.0 to 1.0
---@param b number range from 0.0 to 1.0
---@param bLocalOnly boolean False by default. Defines whether the effect should be sent and modified over the network or not. Set this to `true` if you don't want to send the effect over the network.
---@return fx.ParticleFx self
function ParticleFx:setLoopedColour(r, g, b, bLocalOnly) end

--- **Native**: `SET_PARTICLE_FX_LOOPED_EVOLUTION` (`0x5F0C4B5B1C393BE2`)
---@param propertyName string
---@param amount number
---@param noNetwork boolean
---@return fx.ParticleFx self
function ParticleFx:setLoopedEvolution(propertyName, amount, noNetwork) end

--- **Native**: `SET_PARTICLE_FX_LOOPED_FAR_CLIP_DIST` (`0xDCB194B85EF7B541`)
---@param range number
---@return fx.ParticleFx self
function ParticleFx:setLoopedFarClipDist(range) end

--- **Native**: `SET_PARTICLE_FX_LOOPED_OFFSETS` (`0xF7DDEBEC43483C43`)
---@param coords vector3
---@param rot vector3
---@return fx.ParticleFx self
function ParticleFx:setLoopedOffsets(coords, rot) end

--- **Native**: `SET_PARTICLE_FX_LOOPED_SCALE` (`0xB44250AAA456492D`)
---@param scale number
---@return fx.ParticleFx self
function ParticleFx:setLoopedScale(scale) end

--- ```
--- p1 is always 0 in the native scripts
--- ```
--- **Native**: `STOP_PARTICLE_FX_LOOPED` (`0x8F75998877616996`)
---@param p1 boolean
---@return fx.ParticleFx self
function ParticleFx:stopLooped(p1) end

---@class fx.ParticleFxStatic
---@overload fun(handle: integer): fx.ParticleFx?
local ParticleFxStatic = {}

---Loads the asset (REQUEST_NAMED_PTFX_ASSET), calls USE_PARTICLE_FX_ASSET, then starts a LOOPED effect.
---@param asset string e.g. "core"
---@param name string effect name
---@param options? fx.ParticleFxOptions
---@return fx.Promise<fx.ParticleFx>
function ParticleFxStatic.startLoopedAsync(asset, name, options) end

---Loads the asset, then plays a NON-LOOPED effect (colour / alpha are applied before the start).
---@param asset string
---@param name string
---@param options? fx.ParticleFxOptions
---@return fx.Promise<boolean>
function ParticleFxStatic.playOnceAsync(asset, name, options) end

--- True when value is an fx.ParticleFx, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function ParticleFxStatic.is(value) end

--- ```
--- GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)
--- p11 seems to be always 0
--- ```
--- **Native**: `START_PARTICLE_FX_LOOPED_AT_COORD` (`0xE184F4F0DC5910E7`)
---@param effectName string
---@param coords vector3
---@param rot vector3
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@param p11 boolean
---@return fx.ParticleFx? result
function ParticleFxStatic.startLoopedAtCoord(effectName, coords, rot, scale, xAxis, yAxis, zAxis, p11) end

--- **Native**: `START_PARTICLE_FX_LOOPED_ON_ENTITY` (`0x1AE42C1660FD6517`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return fx.ParticleFx? result
function ParticleFxStatic.startLoopedOnEntity(effectName, entity, offset, rot, scale, xAxis, yAxis, zAxis) end

--- **Native**: `START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE` (`0xC6EB449E33977F0B`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param boneIndex integer
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return fx.ParticleFx? result
function ParticleFxStatic.startLoopedOnEntityBone(effectName, entity, offset, rot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- **Native**: `START_PARTICLE_FX_LOOPED_ON_PED_BONE` (`0xF28DA9F38CD1787C`)
---@param effectName string
---@param ped fx.Ped|integer
---@param offset vector3
---@param rot vector3
---@param boneIndex integer
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return fx.ParticleFx? result
function ParticleFxStatic.startLoopedOnPedBone(effectName, ped, offset, rot, boneIndex, scale, xAxis, yAxis, zAxis) end

--- ```
--- network fx
--- ```
---
--- ```
--- NativeDB Added Parameter 13: Any p12
--- NativeDB Added Parameter 14: Any p13
--- NativeDB Added Parameter 15: Any p14
--- NativeDB Added Parameter 16: Any p15
--- ```
--- **Native**: `START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY` (`0x6F60E89A7B64EE1D`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return fx.ParticleFx? result
function ParticleFxStatic.startNetworkedLoopedOnEntity(effectName, entity, offset, rot, scale, xAxis, yAxis, zAxis) end

--- ```
--- network fx
--- ```
---
--- ```
--- NativeDB Added Parameter 14: Any p13
--- NativeDB Added Parameter 15: Any p14
--- NativeDB Added Parameter 16: Any p15
--- NativeDB Added Parameter 17: Any p16
--- ```
--- **Native**: `START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE` (`0xDDE23F30CC5A0F03`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param boneIndex integer
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return fx.ParticleFx? result
function ParticleFxStatic.startNetworkedLoopedOnEntityBone(effectName, entity, offset, rot, boneIndex, scale, xAxis, yAxis, zAxis) end

