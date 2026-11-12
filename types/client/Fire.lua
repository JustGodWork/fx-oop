---@meta
---@diagnostic disable
-- fx.Fire (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Fire
local FireStatic = {}

--- ```
--- NativeDB Added Parameter 9: BOOL noDamage
--- ```
---
--- ```
--- BOOL isAudible = If explosion makes a sound.
--- BOOL isInvisible = If the explosion is invisible or not.
--- BOOL noDamage = false: damage || nodamage = true: no damage
--- ```
---
--- ```cpp
--- enum eExplosionTag
--- {
--- 	DONTCARE = -1,
--- 	GRENADE = 0,
--- 	GRENADELAUNCHER = 1,
--- 	STICKYBOMB = 2,
--- 	MOLOTOV = 3,
--- 	ROCKET = 4,
--- 	TANKSHELL = 5,
--- 	HI_OCTANE = 6,
--- 	CAR = 7,
--- 	PLANE = 8,
--- 	PETROL_PUMP = 9,
--- 	BIKE = 10,
--- 	DIR_STEAM = 11,
--- 	DIR_FLAME = 12,
--- 	DIR_WATER_HYDRANT = 13,
--- 	DIR_GAS_CANISTER = 14,
--- 	BOAT = 15,
--- 	SHIP_DESTROY = 16,
--- 	TRUCK = 17,
--- 	BULLET = 18,
--- 	SMOKE_GRENADE_LAUNCHER = 19,
--- 	SMOKE_GRENADE = 20,
--- 	BZGAS = 21,
--- 	FLARE = 22,
--- 	GAS_CANISTER = 23,
--- 	EXTINGUISHER = 24,
--- 	PROGRAMMABLEAR = 25,
--- [...]
--- **Native**: `ADD_EXPLOSION` (`0xE3AD2BDBAEE269AC`)
---@param coords vector3
---@param explosionType fx.Enum.ExplosionTag|integer
---@param damageScale number
---@param isAudible boolean
---@param isInvisible boolean
---@param cameraShake number
function FireStatic.addExplosion(coords, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

--- **Native**: `ADD_EXPLOSION_WITH_USER_VFX` (`0x36DD3FE58B5E5212`)
---@param coords vector3
---@param explosionType integer See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param explosionFx integer|string
---@param damageScale number
---@param isAudible boolean If explosion makes a sound.
---@param isInvisible boolean If the explosion is invisible or not.
---@param cameraShake number
function FireStatic.addExplosionWithUserVfx(coords, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

--- ```
--- Returns TRUE if it found something. FALSE if not.
--- ```
--- **Native**: `GET_CLOSEST_FIRE_POS` (`0x352A9F6BCF90081F`)
---@param coords vector3
---@return boolean result
---@return vector3 outPosition
function FireStatic.getClosestFirePos(coords) end

--- **Native**: `GET_NUMBER_OF_FIRES_IN_RANGE` (`0x50CAD495A460B305`)
---@param coords vector3
---@param radius number
---@return integer result
function FireStatic.getNumberOfFiresInRange(coords, radius) end

--- **Native**: `IS_EXPLOSION_ACTIVE_IN_AREA` (`0x6070104B699B2EF4`)
---@param explosionType integer See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param coords1 vector3
---@param coords2 vector3
---@return boolean result
function FireStatic.isExplosionActiveInArea(explosionType, coords1, coords2) end

--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- **Native**: `IS_EXPLOSION_IN_ANGLED_AREA` (`0xA079A6C51525DC4B`)
---@param explosionType integer explosion enum, -1 for any explosion type. See [ADD_EXPLOSION](#\_0xE3AD2BDBAEE269AC).
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@return boolean result
function FireStatic.isExplosionInAngledArea(explosionType, coords1, coords2, width) end

--- **Native**: `IS_EXPLOSION_IN_AREA` (`0x2E2EBA0EE7CED0E0`)
---@param explosionType integer See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param coords1 vector3
---@param coords2 vector3
---@return boolean result
function FireStatic.isExplosionInArea(explosionType, coords1, coords2) end

--- **Native**: `IS_EXPLOSION_IN_SPHERE` (`0xAB0F816885B0E483`)
---@param explosionType integer See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param coords vector3
---@param radius number
---@return boolean result
function FireStatic.isExplosionInSphere(explosionType, coords, radius) end

--- **Native**: `REMOVE_SCRIPT_FIRE` (`0x7FF548385680673F`)
---@param fireHandle integer
function FireStatic.removeScriptFire(fireHandle) end

--- SET_FIRE_\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `SET_FIRE_SPREAD_RATE` (`0x8F390AC4155099BA`)
---@param p0 number
function FireStatic.setFireSpreadRate(p0) end

--- ```
--- Starts a fire:
--- xyz: Location of fire
--- maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.
--- isGasFire: Whether or not the fire is powered by gasoline.
--- ```
--- **Native**: `START_SCRIPT_FIRE` (`0x6B83617E04503888`)
---@param coords vector3
---@param maxChildren integer
---@param isGasFire boolean
---@return integer result
function FireStatic.startScriptFire(coords, maxChildren, isGasFire) end

--- **Native**: `STOP_FIRE_IN_RANGE` (`0x056A8A219B8E829F`)
---@param coords vector3
---@param radius number
function FireStatic.stopFireInRange(coords, radius) end

