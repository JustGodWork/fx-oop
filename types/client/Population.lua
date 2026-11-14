---@meta
---@diagnostic disable
-- fx.Population (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---Multipliers of the ambient population, 0 to 1 (the game's own is 1). A missing key stays at 1.
---@class fx.PopulationDensity
---@field peds? number Peds walking around
---@field scenarioPeds? number Peds of scenarios (sitting, smoking, working), inside and outside
---@field vehicles? number Traffic
---@field randomVehicles? number Vehicles created along the roads
---@field parkedVehicles? number
---@class fx.Population
---@field density fx.PopulationDensity? Applied every frame while set (the game resets it each frame). Assign nil to stop.
---@field randomCops boolean Cops among the ambient peds and on their scenarios
---@field randomBoats boolean
---@field randomTrains boolean
---@field garbageTrucks boolean
---@field dispatch boolean Emergency services sent after crimes: police cars, helicopters, ambulances, fire trucks, army
local PopulationStatic = {}

---Gives the population back to the game: density, cops, boats, trains, garbage trucks and dispatch.
function PopulationStatic.reset() end
