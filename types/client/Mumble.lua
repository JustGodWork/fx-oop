---@meta
---@diagnostic disable
-- fx.Mumble (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---FiveM voice chat (Mumble): the MUMBLE_* natives of the CFX namespace, grouped here. Voice targets / channels,
---proximity, per-player volume and submix. `player` parameters accept an fx.Player or a player index.
---@class fx.Mumble
---@field isActive boolean (read-only) [MUMBLE_IS_ACTIVE]
---@field isConnected boolean (read-only) [MUMBLE_IS_CONNECTED] This native will return true if the user succesfully connected to the voice server. If the user disabled the voice-chat setting it will return false.
---@field talkerProximity number [MUMBLE_GET_TALKER_PROXIMITY / MUMBLE_SET_TALKER_PROXIMITY]
local MumbleStatic = {}

--- Starts listening to the specified channel, when available.
--- **Native**: `MUMBLE_ADD_VOICE_CHANNEL_LISTEN` (`0xC79F44BF`)
---@param channel integer A game voice channel ID.
function MumbleStatic.addVoiceChannelListen(channel) end

--- Adds the specified channel to the target list for the specified Mumble voice target ID.
--- **Native**: `MUMBLE_ADD_VOICE_TARGET_CHANNEL` (`0x4D386C9E`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param channel integer A game voice channel ID.
function MumbleStatic.addVoiceTargetChannel(targetId, channel) end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
--- **Native**: `MUMBLE_ADD_VOICE_TARGET_PLAYER` (`0x32C5355A`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param player fx.Player|integer A game player index.
function MumbleStatic.addVoiceTargetPlayer(targetId, player) end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
--- **Native**: `MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID` (`0x25F2B65F`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param serverId integer The player's server id.
function MumbleStatic.addVoiceTargetPlayerByServerId(targetId, serverId) end

--- **Native**: `MUMBLE_CLEAR_VOICE_CHANNEL` (`0xBF847807`)
function MumbleStatic.clearVoiceChannel() end

--- Clears the target list for the specified Mumble voice target ID.
--- **Native**: `MUMBLE_CLEAR_VOICE_TARGET` (`0x8555DCBA`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleStatic.clearVoiceTarget(targetId) end

--- Clears channels from the target list for the specified Mumble voice target ID.
--- **Native**: `MUMBLE_CLEAR_VOICE_TARGET_CHANNELS` (`0x5EA72E76`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleStatic.clearVoiceTargetChannels(targetId) end

--- Clears players from the target list for the specified Mumble voice target ID.
--- **Native**: `MUMBLE_CLEAR_VOICE_TARGET_PLAYERS` (`0x912E21DA`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
function MumbleStatic.clearVoiceTargetPlayers(targetId) end

--- Check whether specified channel exists on the Mumble server.
--- **Native**: `MUMBLE_DOES_CHANNEL_EXIST` (`0xCC8CA25`)
---@param channel integer A game voice channel ID.
---@return boolean result True if the specific channel exists. False otherwise.
function MumbleStatic.doesChannelExist(channel) end

--- Returns the mumble voice channel from a player's server id.
--- **Native**: `MUMBLE_GET_VOICE_CHANNEL_FROM_SERVER_ID` (`0x221C09F1`)
---@param serverId integer The player's server id.
---@return integer result Int representing the identifier of the voice channel.
function MumbleStatic.getVoiceChannelFromServerId(serverId) end

--- **Native**: `MUMBLE_IS_PLAYER_TALKING` (`0x33EEF97F`)
---@param player fx.Player|integer The target player.
---@return boolean result Whether or not the player is talking.
function MumbleStatic.isPlayerTalking(player) end

--- Stops listening to the specified channel.
--- **Native**: `MUMBLE_REMOVE_VOICE_CHANNEL_LISTEN` (`0x231523B7`)
---@param channel integer A game voice channel ID.
function MumbleStatic.removeVoiceChannelListen(channel) end

--- Removes the specified voice channel from the user's voice targets.
---
--- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
--- **Native**: `MUMBLE_REMOVE_VOICE_TARGET_CHANNEL` (`0x268DB867`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param channel integer The game voice channel ID to remove from the target.
function MumbleStatic.removeVoiceTargetChannel(targetId, channel) end

--- Removes the specified player from the user's voice targets.
---
--- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
--- **Native**: `MUMBLE_REMOVE_VOICE_TARGET_PLAYER` (`0x88CD646F`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param player fx.Player|integer The player index to remove from the target.
function MumbleStatic.removeVoiceTargetPlayer(targetId, player) end

--- Removes the specified player from the user's voice targets.
---
--- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
--- **Native**: `MUMBLE_REMOVE_VOICE_TARGET_PLAYER_BY_SERVER_ID` (`0x930BD34B`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive).
---@param serverId integer The player's server id to remove from the target.
function MumbleStatic.removeVoiceTargetPlayerByServerId(targetId, serverId) end

--- **Native**: `MUMBLE_SET_ACTIVE` (`0xD932A3F3`)
---@param state boolean Voice chat state.
function MumbleStatic.setActive(state) end

--- Sets the current input distance. The player will be able to talk to other players within this distance.
--- **Native**: `MUMBLE_SET_AUDIO_INPUT_DISTANCE` (`0x1B1052E2`)
---@param distance number The input distance.
function MumbleStatic.setAudioInputDistance(distance) end

--- Use this native to disable noise suppression and high pass filters.
---
--- The possible intents for this are as follows (backticks are used to represent hashes):
---
--- | Index | Description |
--- |-|-|
--- | \`speech\` | Default intent |
--- | \`music\` | Disable noise suppression and high pass filter |
--- **Native**: `MUMBLE_SET_AUDIO_INPUT_INTENT` (`0x6383526B`)
---@param intentHash integer|string The intent hash.
function MumbleStatic.setAudioInputIntent(intentHash) end

--- Sets the current output distance. The player will be able to hear other players talking within this distance.
--- **Native**: `MUMBLE_SET_AUDIO_OUTPUT_DISTANCE` (`0x74C597D9`)
---@param distance number The output distance.
function MumbleStatic.setAudioOutputDistance(distance) end

--- Changes the Mumble server address to connect to, and reconnects to the new address.
---
--- Setting the address to an empty string and the port to -1 will reset to the built in FXServer Mumble Implementation.
--- **Native**: `MUMBLE_SET_SERVER_ADDRESS` (`0xE6EB2CD8`)
---@param address string The address of the mumble server.
---@param port integer The port of the mumble server.
function MumbleStatic.setServerAddress(address, port) end

--- Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
--- **Native**: `MUMBLE_SET_SUBMIX_FOR_SERVER_ID` (`0xFE3A3054`)
---@param serverId integer The player's server ID.
---@param submixId integer The submix ID.
function MumbleStatic.setSubmixForServerId(serverId, submixId) end

--- **Native**: `MUMBLE_SET_VOICE_CHANNEL` (`0x8737EEE8`)
---@param channel integer A game voice channel ID.
function MumbleStatic.setVoiceChannel(channel) end

--- Sets the current Mumble voice target ID to broadcast voice to.
--- **Native**: `MUMBLE_SET_VOICE_TARGET` (`0x960A4A95`)
---@param targetId integer A Mumble voice target ID, ranging from 1..30 (inclusive). 0 disables voice targets, and 31 is server loopback.
function MumbleStatic.setVoiceTarget(targetId) end

--- Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
---
--- Set to -1.0 to reset the Volume override.
--- **Native**: `MUMBLE_SET_VOLUME_OVERRIDE` (`0x61C309E3`)
---@param player fx.Player|integer A game player index.
---@param volume number The volume, ranging from 0.0 to 1.0 (or above).
function MumbleStatic.setVolumeOverride(player, volume) end

--- Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
--- **Native**: `MUMBLE_SET_VOLUME_OVERRIDE_BY_SERVER_ID` (`0xCE8E25B4`)
---@param serverId integer The player's server id.
---@param volume number The volume, ranging from 0.0 to 1.0 (or above).
function MumbleStatic.setVolumeOverrideByServerId(serverId, volume) end

