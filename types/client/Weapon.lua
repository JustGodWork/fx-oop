---@meta
---@diagnostic disable
-- fx.Weapon (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Weapon
local WeaponStatic = {}

--- ```
--- this returns if you can use the weapon while using a parachute
--- ```
--- **Native**: `CAN_USE_WEAPON_ON_PARACHUTE` (`0xBC7BE5ABC0879F74`)
---@param weaponHash integer|string
---@return boolean result
function WeaponStatic.canUseWeaponOnParachute(weaponHash) end

--- **Native**: `CREATE_AIR_DEFENSE_AREA` (`0x9DA58CDBF6BDBC08`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 number
---@param weaponHash integer|string
---@return integer result
function WeaponStatic.createAirDefenseArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, weaponHash) end

--- Both coordinates are from objects in the decompiled scripts.
---
--- Native related to [\_0xECDC202B25E5CF48](#\_0xECDC202B25E5CF48) p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.
--- **Native**: `CREATE_AIR_DEFENSE_SPHERE` (`0x91EF34584710BE99`)
---@param coords vector3 coordinate
---@param radius number Unknown float 150.0 is used in freemode script.
---@param p4 number X coordinate
---@param p5 number Y coordinate
---@param p6 number Z coordinate
---@param weaponHash integer|string weapon_air_defence_gun and 0 are used in the decompiled scripts.
---@return integer result Seems to be some sort of handle, result is += 1 any time this native is called.
function WeaponStatic.createAirDefenseSphere(coords, radius, p4, p5, p6, weaponHash) end

--- **Native**: `DOES_AIR_DEFENSE_ZONE_EXIST` (`0xCD79A550999D7D4F`)
---@param zoneId integer
---@return boolean result
function WeaponStatic.doesAirDefenseZoneExist(zoneId) end

--- **Native**: `DOES_WEAPON_TAKE_WEAPON_COMPONENT` (`0x5CEE3DF569CECAB0`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return boolean result
function WeaponStatic.doesWeaponTakeWeaponComponent(weaponHash, componentHash) end

--- ```
--- Enables laser sight on any weapon.
--- It doesn't work. Neither on tick nor OnKeyDown
--- ```
--- **Native**: `ENABLE_LASER_SIGHT_RENDERING` (`0xC8B46D7727D864AA`)
---@param toggle boolean
function WeaponStatic.enableLaserSightRendering(toggle) end

--- **Native**: `FIRE_AIR_DEFENSE_WEAPON` (`0x44F1012B69313374`)
---@param zoneId integer
---@param coords vector3
function WeaponStatic.fireAirDefenseWeapon(zoneId, coords) end

--- ```
--- // Returns the size of the default weapon component clip.
--- Use it like this:
--- char cClipSize[32];
--- Hash cur;
--- if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1))
--- {
---     if (WEAPON::IS_WEAPON_VALID(cur))
---     {
---         int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);
---         sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);
---         vDrawString(cClipSize, 0.5f, 0.5f);
---     }
--- }
--- ```
--- **Native**: `GET_WEAPON_CLIP_SIZE` (`0x583BE370B1EC6EB4`)
---@param weaponHash integer|string
---@return integer result
function WeaponStatic.getWeaponClipSize(weaponHash) end

--- **Native**: `GET_WEAPON_COMPONENT_HUD_STATS` (`0xB3CAF387AE12E9F8`)
---@param componentHash integer|string
---@param outData integer
---@return boolean result
---@return integer outData
function WeaponStatic.getWeaponComponentHudStats(componentHash, outData) end

--- **Native**: `GET_WEAPON_COMPONENT_VARIANT_EXTRA_COMPONENT_COUNT` (`0x6558AC7C17BFEF58`)
---@param componentHash integer|string
---@return integer result
function WeaponStatic.getWeaponComponentVariantExtraComponentCount(componentHash) end

--- **Native**: `GET_WEAPON_COMPONENT_VARIANT_EXTRA_COMPONENT_MODEL` (`0x4D1CB8DC40208A17`)
---@param componentHash integer|string
---@param extraComponentIndex integer
---@return integer result
function WeaponStatic.getWeaponComponentVariantExtraComponentModel(componentHash, extraComponentIndex) end

--- This native does not return damages of weapons from the melee and explosive group.
--- **Native**: `GET_WEAPON_DAMAGE` (`0x3133B907D8B32053`)
---@param weaponHash integer|string
---@param componentHash integer|string 0 in the decompiled scripts.
---@return number result Damages of the weapon.
function WeaponStatic.getWeaponDamage(weaponHash, componentHash) end

--- ```
--- 0=unknown (or incorrect weaponHash)
--- 1= no damage (flare,snowball, petrolcan)
--- 2=melee
--- 3=bullet
--- 4=force ragdoll fall
--- 5=explosive (RPG, Railgun, grenade)
--- 6=fire(molotov)
--- 8=fall(WEAPON_HELI_CRASH)
--- 10=electric
--- 11=barbed wire
--- 12=extinguisher
--- 13=gas
--- 14=water cannon(WEAPON_HIT_BY_WATER_CANNON)
--- ```
--- **Native**: `GET_WEAPON_DAMAGE_TYPE` (`0x3BE0BB12D25FB305`)
---@param weaponHash integer|string
---@return integer result
function WeaponStatic.getWeaponDamageType(weaponHash) end

--- ```
--- // members should be aligned to 8 bytes by default but it's best to use alignas here, just to be sure
--- struct WeaponHudStatsData
--- {
--- 	alignas(8) uint8_t hudDamage; // 0x0000
--- 	alignas(8) uint8_t hudSpeed; // 0x0008
--- 	alignas(8) uint8_t hudCapacity; // 0x0010
--- 	alignas(8) uint8_t hudAccuracy; // 0x0018
--- 	alignas(8) uint8_t hudRange; // 0x0020
--- };
--- Usage:
--- WeaponHudStatsData data;
--- if (GET_WEAPON_HUD_STATS(weaponHash, (Any*)&data))
--- {
---     // uint8_t damagePercentage = data.hudDamage etc...
--- }
--- ```
--- **Native**: `GET_WEAPON_HUD_STATS` (`0xD92C739EE34C9EBA`)
---@param weaponHash integer|string
---@param outData any
---@return boolean result
---@return any outData
function WeaponStatic.getWeaponHudStats(weaponHash, outData) end

--- **Native**: `GET_WEAPON_TIME_BETWEEN_SHOTS` (`0x065D2AACAD8CF7A4`)
---@param weaponHash integer|string
---@return number result
function WeaponStatic.getWeaponTimeBetweenShots(weaponHash) end

--- **Native**: `GET_WEAPON_TINT_COUNT` (`0x5DCF6C5CAB2E9BF7`)
---@param weaponHash integer|string
---@return integer result
function WeaponStatic.getWeaponTintCount(weaponHash) end

--- Gets and returns the hash of the group of the specified weapon (group names can be found/changed under "Group" in the weapons' meta file).
--- Note that the group is **not** the same as the location on the weapon wheel.
--- **Native**: `GET_WEAPONTYPE_GROUP` (`0xC3287EE3050FB74C`)
---@param weaponHash integer|string The hash of the weapon.
---@return integer result Returns the hash of the group of the weapon. Hashes:| Group | Unsigned | Signed | Example | |:----------------------:|:----------:|:-----------:|:-----------------------:| | GROUP_DIGISCANNER | 35394…
function WeaponStatic.getWeapontypeGroup(weaponHash) end

--- **Native**: `GET_WEAPONTYPE_SLOT` (`0x4215460B9B8B7FA0`)
---@param weaponHash integer|string
---@return integer result
function WeaponStatic.getWeapontypeSlot(weaponHash) end

--- **Native**: `HAS_WEAPON_ASSET_LOADED` (`0x36E353271F0E90EE`)
---@param weaponHash integer|string
---@return boolean result
function WeaponStatic.hasWeaponAssetLoaded(weaponHash) end

--- **Native**: `IS_ANY_AIR_DEFENSE_ZONE_INSIDE_SPHERE` (`0xDAB963831DBFD3F4`)
---@param coords vector3
---@param radius number
---@param SphereIndex integer
---@return boolean result
---@return integer SphereIndex
function WeaponStatic.isAnyAirDefenseZoneInsideSphere(coords, radius, SphereIndex) end

--- **Native**: `IS_WEAPON_VALID` (`0x937C71165CF334B3`)
---@param weaponHash integer|string
---@return boolean result
function WeaponStatic.isWeaponValid(weaponHash) end

--- **Native**: `REMOVE_AIR_DEFENSE_ZONE` (`0x0ABF535877897560`)
---@param zoneId integer
---@return boolean result
function WeaponStatic.removeAirDefenseZone(zoneId) end

--- **Native**: `REMOVE_ALL_AIR_DEFENSE_ZONES` (`0x1E45B34ADEBEE48E`)
function WeaponStatic.removeAllAirDefenseZones() end

--- If `explode` true, then removal is done through exploding the projectile. Basically the same as EXPLODE_PROJECTILES but without defining the owner ped.
--- **Native**: `REMOVE_ALL_PROJECTILES_OF_TYPE` (`0xFC52E0F37E446528`)
---@param weaponHash integer|string
---@param explode boolean
function WeaponStatic.removeAllProjectilesOfType(weaponHash, explode) end

--- **Native**: `REMOVE_WEAPON_ASSET` (`0xAA08EF13F341C8FC`)
---@param weaponHash integer|string
function WeaponStatic.removeWeaponAsset(weaponHash) end

--- ```
--- Nearly every instance of p1 I found was 31. Nearly every instance of p2 I found was 0.
--- REQUEST_WEAPON_ASSET(iLocal_1888, 31, 26);
--- ```
--- **Native**: `REQUEST_WEAPON_ASSET` (`0x5443438F033E29C3`)
---@param weaponHash integer|string
---@param p1 integer
---@param p2 integer
function WeaponStatic.requestWeaponAsset(weaponHash, p1, p2) end

--- **Native**: `SET_FLASH_LIGHT_FADE_DISTANCE` (`0xCEA66DAD478CD39B`)
---@param distance number
---@return any result
function WeaponStatic.setFlashLightFadeDistance(distance) end

--- **Native**: `SET_PICKUP_AMMO_AMOUNT_SCALER` (`0xE620FD3512A04F18`)
---@param p0 number
function WeaponStatic.setPickupAmmoAmountScaler(p0) end

--- Changes the weapon damage output by the given multiplier value.
--- Does NOT need to be called every frame.
--- **Native**: `SET_WEAPON_DAMAGE_MODIFIER` (`0x4757F00BC6323CFE`)
---@param weaponHash integer|string Hash of the weapon
---@param damageMultiplier number Damage Multiplier
function WeaponStatic.setWeaponDamageModifier(weaponHash, damageMultiplier) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_WEAPON_EXPLOSION_RADIUS_MULTIPLIER` (`0x4AE5AC8B852D642C`)
---@param weaponHash integer|string
---@param multiplier number
function WeaponStatic.setWeaponExplosionRadiusMultiplier(weaponHash, multiplier) end

