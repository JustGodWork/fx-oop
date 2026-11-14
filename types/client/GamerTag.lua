---@meta
---@diagnostic disable
-- fx.GamerTag (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---A part of a gamer tag.
---@alias fx.GamerTagPart
---| "name"
---| "crew"
---| "healthArmour" Health and armour bars
---| "bigText" Text above the name
---| "audio" Speaker icon
---| "usingMenu"
---| "passive"
---| "wanted" Wanted stars
---| "driver"
---| "coDriver"
---| "tagged"
---| "nameNearby"
---| "arrow"
---| "packages"
---| "rankText"
---| "typing" Typing indicator

---@class fx.GamerTagOptions
---@field parts? fx.GamerTagPart[] Parts shown, default { "name" }
---@field color? fx.Enum.HudColours|integer Color of the name
---@field bigText? string
---@field crew? string Crew tag shown next to the name (with the "crew" part)

---A tag above a ped's head: its name, bars and icons. Removed when the resource stops.
---```lua
---local tag <const> = fx.GamerTag.create(ped, "Shopkeeper", { parts = { "name", "healthArmour" }, color = 18 })
---tag.bigText = "OPEN"
---tag:show("bigText")
---```
---@class fx.GamerTagRef
---@field id integer
---@field ped fx.Ped
---@field exists boolean (read-only)
---@field name string
---@field bigText string
---@field wanted integer Wanted stars shown with the "wanted" part, 0 to 5
local GamerTagRef = {}

---@param ... fx.GamerTagPart
function GamerTagRef:show(...) end

---@param ... fx.GamerTagPart
function GamerTagRef:hide(...) end

---@param part fx.GamerTagPart
---@param color fx.Enum.HudColours|integer
function GamerTagRef:setColor(part, color) end

---@param part fx.GamerTagPart
---@param alpha integer 0 to 255
function GamerTagRef:setAlpha(part, alpha) end

function GamerTagRef:remove() end
---@class fx.GamerTag
---@field visibleDistance number? Distance from the camera beyond which no tag shows, for every tag. Reads what was set through this API, nil before.
local GamerTagStatic = {}

---A tag above `ped`. Raises when the game has no free tag left.
---@param ped fx.Ped
---@param name string
---@param options? fx.GamerTagOptions
---@return fx.GamerTagRef
function GamerTagStatic.create(ped, name, options) end
