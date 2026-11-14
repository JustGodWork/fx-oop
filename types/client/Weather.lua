---@meta
---@diagnostic disable
-- fx.Weather (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@alias fx.WeatherType
---| "EXTRASUNNY"
---| "CLEAR"
---| "NEUTRAL"
---| "SMOG"
---| "FOGGY"
---| "OVERCAST"
---| "CLOUDS"
---| "CLEARING"
---| "RAIN"
---| "THUNDER"
---| "SNOW"
---| "BLIZZARD"
---| "SNOWLIGHT"
---| "XMAS"
---| "HALLOWEEN"
---| "RAIN_HALLOWEEN" Game build 3095 and later
---| "SNOW_HALLOWEEN" Game build 3095 and later

---@alias fx.CloudHat
---| "altostratus"
---| "Cirrus"
---| "cirrocumulus"
---| "Clear 01"
---| "Cloudy 01"
---| "Contrails"
---| "Horizon"
---| "horizonband1"
---| "horizonband2"
---| "horizonband3"
---| "horsey"
---| "Nimbus"
---| "Puffs"
---| "RAIN"
---| "shower"
---| "Snowy 01"
---| "Stormy 01"
---| "stratoscumulus"
---| "Stripey"
---| "Wispy"

---What `fx.Weather.reset` gives back to the game.
---@alias fx.WeatherPart "weather"|"rain"|"snow"|"wind"|"clouds"

---@class fx.WeatherTransition
---@field from fx.WeatherType|integer The hash when it is not a known weather type
---@field to fx.WeatherType|integer
---@field progress number 0 = all `from`, 1 = all `to`
---@class fx.Weather
---@field current fx.WeatherType|integer The weather shown, the dominant one during a transition (the hash when it is not a known weather type). Assign one to change at once and keep it: the game stops cycling weathers until `reset()`.
---@field transition fx.WeatherTransition (read-only) The two weathers being mixed and how far the mix is
---@field rain number Rain level, 0 to 1 (above 0.5 only puddles grow faster). Assigned, it stays until `reset("rain")`.
---@field snow number Snow level, 0 to 1. Assigned, it stays until `reset("snow")`.
---@field snowOnGround boolean Snow on the ground, with tracks behind vehicles and peds, whatever the weather
---@field windSpeed number Meters per second, 0 to 12. Assigned, it stays until `reset("wind")`.
---@field windDirection number Heading the wind blows from, in degrees (0 = north, 90 = west, like entity headings). Assigned, it stays until `reset("wind")`.
---@field cloudsOpacity number Opacity of the clouds, 0 to 1
local WeatherStatic = {}

---Moves to a weather over `seconds` and keeps it, like assigning `current` but gradual. Rejects when another change
---of the weather replaces it before the end.
---```lua
---fx.Weather.transitionAsync("THUNDER", 30):await()
---```
---@param weather fx.WeatherType
---@param seconds? number Default 15
---@return fx.Promise<fx.WeatherType>
function WeatherStatic.transitionAsync(weather, seconds) end

---Shows a mix of two weathers and keeps it. The weather stops being owned by the network (SET_WEATHER_OWNED_BY_NETWORK)
---until `reset("weather")`.
---@param from fx.WeatherType
---@param to fx.WeatherType
---@param progress number 0 = all `from`, 1 = all `to`
function WeatherStatic.mix(from, to, progress) end

---Shows a cloud hat in place of the weather's own clouds.
---@param name fx.CloudHat
---@param seconds? number Transition, default 0
function WeatherStatic.setClouds(name, seconds) end

---Gives the weather back to the game: the natural cycle of weathers, and the rain, snow, wind and clouds of the
---weather. Without a part, all of them.
---@param part? fx.WeatherPart
function WeatherStatic.reset(part) end
