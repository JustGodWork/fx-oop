---@meta
---@diagnostic disable
-- fx.Zone (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Zone
local ZoneStatic = {}

--- ```
--- Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.
--- Modified example from "am_imp_exp.c4", line 6418:
--- /* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1));
--- etc.
--- */
--- STREAMING::SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash);
--- ZONE::CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(popSchedules[index]);
--- ```
--- **Native**: `CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL` (`0x5C0DE367AA0D911C`)
---@param scheduleId integer
function ZoneStatic.clearPopscheduleOverrideVehicleModel(scheduleId) end

--- ```
--- Returns a hash representing which part of the map the given coords are located.
--- Possible return values:
--- (Hash of) city -> -289320599
--- (Hash of) countryside -> 2072609373
--- C# Example :
--- Ped player = Game.Player.Character;
--- Hash h = Function.Call<Hash>(Hash.GET_HASH_OF_MAP_AREA_AT_COORDS, player.Position.X, player.Position.Y, player.Position.Z);
--- ```
--- **Native**: `GET_HASH_OF_MAP_AREA_AT_COORDS` (`0x7EE64D51E8498728`)
---@param coords vector3
---@return integer result
function ZoneStatic.getHashOfMapAreaAtCoords(coords) end

--- ```
--- AIRP = Los Santos International Airport
--- ALAMO = Alamo Sea
--- ALTA = Alta
--- ARMYB = Fort Zancudo
--- BANHAMC = Banham Canyon Dr
--- BANNING = Banning
--- BEACH = Vespucci Beach
--- BHAMCA = Banham Canyon
--- BRADP = Braddock Pass
--- BRADT = Braddock Tunnel
--- BURTON = Burton
--- CALAFB = Calafia Bridge
--- CANNY = Raton Canyon
--- CCREAK = Cassidy Creek
--- CHAMH = Chamberlain Hills
--- CHIL = Vinewood Hills
--- CHU = Chumash
--- CMSW = Chiliad Mountain State Wilderness
--- CYPRE = Cypress Flats
--- DAVIS = Davis
--- DELBE = Del Perro Beach
--- DELPE = Del Perro
--- DELSOL = La Puerta
--- DESRT = Grand Senora Desert
--- DOWNT = Downtown
--- DTVINE = Downtown Vinewood
--- EAST_V = East Vinewood
--- EBURO = El Burro Heights
--- ELGORL = El Gordo Lighthouse
--- ELYSIAN = Elysian Island
--- GALFISH = Galilee
--- GOLF = GWC and Golfing Society
--- GRAPES = Grapeseed
--- GREATC = Great Chaparral
--- HARMO = Harmony
--- HAWICK = Hawick
--- HORS = Vinewood Racetrack
--- HUMLAB = Humane Labs and Research
--- JAIL = Bolingbroke Penitentiary
--- [...]
--- **Native**: `GET_NAME_OF_ZONE` (`0xCD90657D4C30E1CA`)
---@param coords vector3
---@return string result
function ZoneStatic.getNameOfZone(coords) end

--- **Native**: `GET_ZONE_AT_COORDS` (`0x27040C25DE6CB2F4`)
---@param coords vector3
---@return integer result
function ZoneStatic.getZoneAtCoords(coords) end

--- ```
--- 'zoneName' corresponds to an entry in 'popzone.ipl'.
--- AIRP = Los Santos International Airport
--- ALAMO = Alamo Sea
--- ALTA = Alta
--- ARMYB = Fort Zancudo
--- BANHAMC = Banham Canyon Dr
--- BANNING = Banning
--- BEACH = Vespucci Beach
--- BHAMCA = Banham Canyon
--- BRADP = Braddock Pass
--- BRADT = Braddock Tunnel
--- BURTON = Burton
--- CALAFB = Calafia Bridge
--- CANNY = Raton Canyon
--- CCREAK = Cassidy Creek
--- CHAMH = Chamberlain Hills
--- CHIL = Vinewood Hills
--- CHU = Chumash
--- CMSW = Chiliad Mountain State Wilderness
--- CYPRE = Cypress Flats
--- DAVIS = Davis
--- DELBE = Del Perro Beach
--- DELPE = Del Perro
--- DELSOL = La Puerta
--- DESRT = Grand Senora Desert
--- DOWNT = Downtown
--- DTVINE = Downtown Vinewood
--- EAST_V = East Vinewood
--- EBURO = El Burro Heights
--- ELGORL = El Gordo Lighthouse
--- ELYSIAN = Elysian Island
--- GALFISH = Galilee
--- GOLF = GWC and Golfing Society
--- GRAPES = Grapeseed
--- GREATC = Great Chaparral
--- HARMO = Harmony
--- HAWICK = Hawick
--- HORS = Vinewood Racetrack
--- HUMLAB = Humane Labs and Research
--- [...]
--- **Native**: `GET_ZONE_FROM_NAME_ID` (`0x98CD1D2934B76CC1`)
---@param zoneName string
---@return integer result
function ZoneStatic.getZoneFromNameId(zoneName) end

--- **Native**: `GET_ZONE_POPSCHEDULE` (`0x4334BC40AA0CB4BB`)
---@param zoneId integer
---@return integer result
function ZoneStatic.getZonePopschedule(zoneId) end

--- Gets the zone scumminess level, used to calculate the cellphone signal strength.
---
--- ```cpp
--- enum eZoneScumminess
--- {
---     SCUMMINESS_POSH = 0,
---     SCUMMINESS_NICE = 1,
---     SCUMMINESS_ABOVE_AVERAGE = 2,
---     SCUMMINESS_BELOW_AVERAGE = 3,
---     SCUMMINESS_CRAP = 4,
---     SCUMMINESS_SCUM = 5
--- }
--- ```
--- **Native**: `GET_ZONE_SCUMMINESS` (`0x5F7B268D15BA0739`)
---@param zoneId integer The zone id
---@return fx.Enum.ZoneScumminess result The zone scumminess level
function ZoneStatic.getZoneScumminess(zoneId) end

--- ```
--- Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.
--- Modified example from "am_imp_exp.c4", line 6406:
--- /* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1));
--- etc.
--- */
--- ZONE::OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(popSchedules[index], vehicleHash);
--- STREAMING::REQUEST_MODEL(vehicleHash);
--- ```
--- **Native**: `OVERRIDE_POPSCHEDULE_VEHICLE_MODEL` (`0x5F7D596BAC2E7777`)
---@param scheduleId integer
---@param vehicleHash integer|string
function ZoneStatic.overridePopscheduleVehicleModel(scheduleId, vehicleHash) end

--- **Native**: `SET_ZONE_ENABLED` (`0xBA5ECEEA120E5611`)
---@param zoneId integer
---@param toggle boolean
function ZoneStatic.setZoneEnabled(zoneId, toggle) end

