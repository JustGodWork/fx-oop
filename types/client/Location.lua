---@meta
---@diagnostic disable
-- fx.Location (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.LocationInfo
---@field zone string Zone code ("DOWNT", "SANDY", "AIRP")
---@field zoneName string Zone name in the game's language ("Downtown"), the code when the game has no name for it
---@field street string Name of the nearest street, "" when none
---@field crossing string? The street crossing it at an intersection
---@field area "city"|"countryside"
---@class fx.Location
local LocationStatic = {}

---Zone and street names of a position.
---```lua
---local here <const> = fx.Location.at(fx.Player.ped.position)
---print(("%s, %s"):format(here.street, here.zoneName))
---```
---@param position vector3
---@return fx.LocationInfo
function LocationStatic.at(position) end

