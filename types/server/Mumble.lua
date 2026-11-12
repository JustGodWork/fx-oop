---@meta
---@diagnostic disable
-- fx.Mumble (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---FiveM voice chat (Mumble), server side: channels and per-player mute (`playerSrc` = server id).
---@class fx.Mumble
local MumbleStatic = {}

--- Create a permanent voice channel.
--- **Native**: `MUMBLE_CREATE_CHANNEL` (`0x262663C5`)
---@param id integer ID of the channel.
function MumbleStatic.createChannel(id) end

--- Checks if the player is currently muted
--- **Native**: `MUMBLE_IS_PLAYER_MUTED` (`0x1D5D50C2`)
---@param playerSrc integer The player to get the mute state for
---@return boolean result Whether or not the player is muted
function MumbleStatic.isPlayerMuted(playerSrc) end

--- Mutes or unmutes the specified player
--- **Native**: `MUMBLE_SET_PLAYER_MUTED` (`0xCC6C2EB1`)
---@param playerSrc integer The player to set the mute state of
---@param toggle boolean Whether to mute or unmute the player
function MumbleStatic.setPlayerMuted(playerSrc, toggle) end

