---@meta
---@diagnostic disable
-- fx.Sound (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.SoundOptions
---@field entity? fx.Entity|integer Play from an entity
---@field coords? vector3 Play from a position
---@field range? integer With coords
---@field networked? boolean Default false
---@class fx.Sound
---@field handle integer Raw handle.
---@field hasFinished boolean (read-only) [HAS_SOUND_FINISHED]
---@field networkIdFromId integer (read-only) [GET_NETWORK_ID_FROM_SOUND_ID]
local Sound = {}

---Stops and releases the sound id (ids are NOT freed automatically).
---@return nil
function Sound:release() end

--- ```
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ
--- ```
--- **Native**: `PLAY_SOUND` (`0x7FF4944CC209192D`)
---@param audioName string
---@param audioRef string
---@param p3 boolean
---@param p4 any
---@param p5 boolean
---@return fx.Sound self
function Sound:play(audioName, audioRef, p3, p4, p5) end

--- ```
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW
--- gtaforums.com/topic/795622-audio-for-mods
--- ```
--- **Native**: `PLAY_SOUND_FROM_COORD` (`0x8D8686B622B88120`)
---@param audioName string
---@param coords vector3
---@param audioRef string
---@param isNetwork boolean
---@param range integer
---@param p8 boolean
---@return fx.Sound self
function Sound:playFromCoord(audioName, coords, audioRef, isNetwork, range, p8) end

--- ```
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0
--- No changes made in b678d.
--- gtaforums.com/topic/795622-audio-for-mods
--- ```
--- **Native**: `PLAY_SOUND_FROM_ENTITY` (`0xE65F427EB70AB1ED`)
---@param audioName string
---@param entity fx.Entity|integer
---@param audioRef string
---@param isNetwork boolean
---@param p5 any
---@return fx.Sound self
function Sound:playFromEntity(audioName, entity, audioRef, isNetwork, p5) end

--- ```
--- List: https://pastebin.com/DCeRiaLJ
--- All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM
--- ```
--- **Native**: `PLAY_SOUND_FRONTEND` (`0x67C540AA08E4A6F5`)
---@param audioName string
---@param audioRef string
---@param p3 boolean
---@return fx.Sound self
function Sound:playFrontend(audioName, audioRef, p3) end

--- This should be called once a sound has finished being manipulated by the script so that its SoundId can be released and re-used.
--- **Native**: `RELEASE_SOUND_ID` (`0x353FC880830B88FA`)
---@return fx.Sound self
function Sound:releaseId() end

--- **Native**: `SET_VARIABLE_ON_SOUND` (`0xAD6B3148A78AE9B6`)
---@param variableName string
---@param value number
---@return fx.Sound self
function Sound:setVariable(variableName, value) end

--- Stops the sound from currently playing, there isn't a way to resume a sound
--- after stopping it.
--- **Native**: `STOP_SOUND` (`0xA3B0C41BA5CC0BB5`)
---@return fx.Sound self
function Sound:stop() end

--- Updates a playing sounds absolute position.
--- **Native**: `UPDATE_SOUND_COORD` (`0x7EC3C679D0E7E46B`)
---@param coords vector3
---@return fx.Sound self
function Sound:updateCoord(coords) end

---@class fx.SoundStatic
---@overload fun(handle: integer): fx.Sound?
local SoundStatic = {}

---Loads a script audio bank (REQUEST_SCRIPT_AUDIO_BANK re-called every tick until it returns true).
---@param bank string
---@param timeoutMs? integer
---@param overNetwork? boolean
---@return fx.Promise<string>
function SoundStatic.loadBankAsync(bank, timeoutMs, overNetwork) end

---Plays a sound and returns it: call sound:release() when done. No entity / coords: frontend sound.
---@param name string
---@param set? string sound set (audioRef)
---@param options? fx.SoundOptions
---@return fx.Sound?
function SoundStatic.play(name, set, options) end

---Fire-and-forget sound (id -1: nothing to release, cannot be stopped).
---@param name string
---@param set? string
---@param options? fx.SoundOptions
function SoundStatic.playOnce(name, set, options) end

--- True when value is an fx.Sound, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function SoundStatic.is(value) end

--- If a playback function has a soundId field but the sound doesn't need to be altered after triggering then pass a value of -1 for fire-and-forget playback, rather than getting a soundId.
---
--- SoundId's can be reused, without needing to release them and grab a new one.
---
--- If a sound's finished playing, you can reuse its SoundId to kick off another one.
---
--- If the sound's not finished playing, it'll be stopped first (fading out or whatever is set up in RAVE by the sound designer), and the new one kicked off; usually it is safer to just get a new SoundId.
---
--- SoundId's are not automatically cleaned up, you must use [RELEASE_SOUND_ID](#\_0x353FC880830B88FA) after you've finished using them to allow the engine to recycle the sound id.
--- **Native**: `GET_SOUND_ID` (`0x430386FE9BF80B45`)
---@return fx.Sound? result Returns a sound id which can be used to control the sound after its has started playing.
function SoundStatic.create() end

--- Counterpart: [`GET_NETWORK_ID_FROM_SOUND_ID`](#\_0x2DE3F0A134FFBC0D).
--- **Native**: `GET_SOUND_ID_FROM_NETWORK_ID` (`0x75262FD12D0A1C84`)
---@param netId integer Network ID of sound.
---@return fx.Sound? result A sound id, nil on failure.
function SoundStatic.getIdFromNetworkId(netId) end

