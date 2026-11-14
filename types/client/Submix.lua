---@meta
---@diagnostic disable
-- fx.Submix (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---Parameters of the radio effect (SET_AUDIO_SUBMIX_EFFECT_RADIO_FX): a band-pass filter, a ring modulator and an
---overdrive.
---@class fx.SubmixRadioFx
---@field freq_low? number Lowest frequency kept, Hz
---@field freq_hi? number Highest frequency kept, Hz
---@field fudge? number Distortion
---@field rm_mod_freq? number Ring modulator frequency
---@field rm_mix? number Ring modulator mix
---@field o_freq_lo? number
---@field o_freq_hi? number

---@class fx.SubmixOptions
---@field radio? fx.SubmixRadioFx A radio effect in slot 0, with these parameters over the default ones
---@field volumes? number[] Volumes of the output channels, 0 to 1: front left, front right, rear left, rear right, then 2 unused by voice

---An audio submix: an effect chain the voice of chosen players goes through (radio, phone, megaphone).
---```lua
---local radio <const> = fx.Submix.create("radio", { radio = { freq_low = 389.0, freq_hi = 3248.0 } })
---radio:assign(speaker)
---fx.Submix.reset(speaker)
---```
---@class fx.SubmixRef
---@field id integer
---@field name string
local SubmixRef = {}

---Sets a parameter of the effect in a slot: an integer or a float, as the effect expects.
---@param name string
---@param value number
---@param slot? integer Default 0
function SubmixRef:setParam(name, value, slot) end

---Sends the voice of players through this submix.
---@param ... fx.Player|integer Players or server ids
function SubmixRef:assign(...) end
---@class fx.Submix
local SubmixStatic = {}

---The submix of that name, created and set up the first time. The options apply on every call.
---@param name string
---@param options? fx.SubmixOptions
---@return fx.SubmixRef
function SubmixStatic.create(name, options) end

---Back to the plain voice for these players.
---@param ... fx.Player|integer Players or server ids
function SubmixStatic.reset(...) end

