---@meta
---@diagnostic disable
-- fx.Discord (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.DiscordButton
---@field label string
---@field url string `fivem://connect/...` or `https://...`

---Rich presence of the player on Discord. The images are assets of the Discord application `appId`.
---@class fx.DiscordPresence
---@field appId? string Discord application id
---@field text? string Line under the game name
---@field largeImage? string
---@field largeText? string Hover text of the large image
---@field smallImage? string
---@field smallText? string Hover text of the small image
---@field buttons? fx.DiscordButton[] At most 2
---@class fx.Discord
---@field presence fx.DiscordPresence? What this resource set, nil before. Assign a table to show it (missing fields are cleared), nil to clear it.
local DiscordStatic = {}

