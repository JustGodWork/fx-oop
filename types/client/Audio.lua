---@meta
---@diagnostic disable
-- fx.Audio (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Audio
---@field audibleMusicTrackTextId integer (read-only) [GET_AUDIBLE_MUSIC_TRACK_TEXT_ID]
---@field currentScriptedConversationLine integer (read-only) [GET_CURRENT_SCRIPTED_CONVERSATION_LINE]
---@field doesPlayerVehHaveRadio boolean (read-only) [DOES_PLAYER_VEH_HAVE_RADIO]
---@field hasLoadedMpDataSet boolean (read-only) [HAS_LOADED_MP_DATA_SET]
---@field hasLoadedSpDataSet boolean (read-only) [HAS_LOADED_SP_DATA_SET]
---@field isAnyPositionalSpeechPlaying boolean (read-only) [IS_ANY_POSITIONAL_SPEECH_PLAYING] Determines if any ped-independent, positionally-based scripted speech is currently active. This typically includes speech events triggered using [`PLAY_AMBIENT…
---@field isGameInControlOfMusic boolean (read-only) [IS_GAME_IN_CONTROL_OF_MUSIC]
---@field isMissionCompletePlaying boolean (read-only) [IS_MISSION_COMPLETE_PLAYING]
---@field isMissionCompleteReadyForUi boolean (read-only) [IS_MISSION_COMPLETE_READY_FOR_UI]
---@field isMobileInterferenceActive boolean (read-only) [IS_MOBILE_INTERFERENCE_ACTIVE]
---@field isMobilePhoneCallOngoing boolean (read-only) [IS_MOBILE_PHONE_CALL_ONGOING]
---@field isMobilePhoneRadioActive boolean (read-only) [IS_MOBILE_PHONE_RADIO_ACTIVE]
---@field isMusicOneshotPlaying boolean (read-only) [IS_MUSIC_ONESHOT_PLAYING]
---@field isPlayerVehRadioEnable boolean (read-only) [IS_PLAYER_VEH_RADIO_ENABLE]
---@field isPreloadedConversationReady boolean (read-only) [GET_IS_PRELOADED_CONVERSATION_READY]
---@field isRadioFadedOut boolean (read-only) [IS_RADIO_FADED_OUT]
---@field isRadioRetuning boolean (read-only) [IS_RADIO_RETUNING]
---@field isScriptedConversationLoaded boolean (read-only) [IS_SCRIPTED_CONVERSATION_LOADED]
---@field isScriptedConversationOngoing boolean (read-only) [IS_SCRIPTED_CONVERSATION_ONGOING]
---@field isScriptedMusicPlaying boolean (read-only) [AUDIO_IS_SCRIPTED_MUSIC_PLAYING]
---@field isStreamPlaying boolean (read-only) [IS_STREAM_PLAYING]
---@field musicPlaytime integer (read-only) [GET_MUSIC_PLAYTIME]
---@field musicVolSlider integer (read-only) [GET_MUSIC_VOL_SLIDER]
---@field numUnlockedRadioStations integer (read-only) [GET_NUM_UNLOCKED_RADIO_STATIONS]
---@field playerRadioStationGenre integer (read-only) [GET_PLAYER_RADIO_STATION_GENRE]
---@field playerRadioStationIndex integer (read-only) [GET_PLAYER_RADIO_STATION_INDEX]
---@field playerRadioStationName string (read-only) [GET_PLAYER_RADIO_STATION_NAME]
---@field streamPlayTime integer (read-only) [GET_STREAM_PLAY_TIME]
local AudioStatic = {}

--- Below is a list of modes and their respective hashes.
---
--- | Mode (string)               | Hash               |
--- |-----------------------------|--------------------|
--- | SLOWMO_BIG_SCORE_JUMP       | 0x2B981B0C         |
--- | JSH_EXIT_TUNNEL_SLOWMO      | 0x2562AA6          |
--- | SLOW_MO_METH_HOUSE_RAYFIRE  | 0xDB9E1909         |
--- | SLOWMO_FIB4\_TRUCK_SMASH     | 0x9E144347         |
--- | SLOWMO_PROLOGUE_VAULT       | 0xEA2E68E1         |
--- | SLOWMO_T1\_RAYFIRE_EXPLOSION | 0xD6D358F3         |
--- | SLOWMO_T1\_TRAILER_SMASH     | 0xBE607345         |
--- | BARRY\_01\_SLOWMO             | 0xD59540D4         |
--- | BARRY\_02\_SLOWMO             | 0x12F140B3         |
--- | SLOWMO_EXTREME\_04           | 0xF562EA50         |
--- | NIGEL\_02\_SLOWMO_SETTING     | 0x384689B0         |
--- **Native**: `ACTIVATE_AUDIO_SLOWMO_MODE` (`0xD01005D2BA2EB778`)
---@param mode string A string indicating the audio slow motion mode to use, *see the table*.
function AudioStatic.activateAudioSlowmoMode(mode) end

--- ```cpp
--- enum eAudibility {
--- 	AUD_AUDIBILITY_NORMAL = 0,
--- 	AUD_AUDIBILITY_CLEAR = 1,
--- 	AUD_AUDIBILITY_CRITICAL = 2,
--- 	AUD_AUDIBILITY_LEAD_IN = 3
--- }
--- ```
--- **Native**: `ADD_LINE_TO_CONVERSATION` (`0xC5EF963405593646`)
---@param speakerConversationIndex integer
---@param context string
---@param subtitle string
---@param listenerNumber integer
---@param volumeType integer
---@param isRandom boolean
---@param interruptible boolean
---@param ducksRadio boolean
---@param ducksScore boolean
---@param audibility fx.Enum.Audibility|integer See eAudibility
---@param headset boolean
---@param dontInterruptForSpecialAbility boolean
---@param isPadSpeakerRoute boolean
function AudioStatic.addLineToConversation(speakerConversationIndex, context, subtitle, listenerNumber, volumeType, isRandom, interruptible, ducksRadio, ducksScore, audibility, headset, dontInterruptForSpecialAbility, isPadSpeakerRoute) end

--- **Native**: `ADD_PED_TO_CONVERSATION` (`0x95D9F4BC443956E7`)
---@param speakerConversationIndex integer
---@param ped fx.Ped|integer
---@param voiceName string
function AudioStatic.addPedToConversation(speakerConversationIndex, ped, voiceName) end

--- **Native**: `BLOCK_DEATH_JINGLE` (`0xF154B8D1775B2DEC`)
---@param blocked boolean Sets if the death jingle can play when a player dies or not
function AudioStatic.blockDeathJingle(blocked) end

--- ```cpp
--- enum eAudContextBlockTarget {
--- 	AUD_CONTEXT_BLOCK_PLAYER = 0,
--- 	AUD_CONTEXT_BLOCK_NPCS = 1,
--- 	AUD_CONTEXT_BLOCK_BUDDYS = 2,
--- 	AUD_CONTEXT_BLOCK_EVERYONE = 3,
---
--- 	AUD_CONTEXT_BLOCK_TARGETS_TOTAL
--- }
--- ```
---
--- Stop a certain group of peds from using a certain group of speech contexts.
---
--- Note that the block will be automatically removed when the calling script finishes
--- **Native**: `BLOCK_SPEECH_CONTEXT_GROUP` (`0xA8A7D434AFB4B97B`)
---@param groupName string the name of the context group to be blocked
---@param contextBlockTarget fx.Enum.AudContextBlockTarget|integer the group of peds that should be used (refer to eAudContextBlockTarget)
function AudioStatic.blockSpeechContextGroup(groupName, contextBlockTarget) end

--- **Native**: `CANCEL_ALL_POLICE_REPORTS` (`0xB4F90FAF7670B16F`)
function AudioStatic.cancelAllPoliceReports() end

--- ```
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
--- ```
--- **Native**: `CANCEL_MUSIC_EVENT` (`0x5B17A90291133DA5`)
---@param eventName string the name of the event to cancel
---@return boolean result True of the event was cancelled, false otherwise.
function AudioStatic.cancelMusicEvent(eventName) end

--- **Native**: `CLEAR_ALL_BROKEN_GLASS` (`0xB32209EFFDC04913`)
function AudioStatic.clearAllBrokenGlass() end

--- Resets the list of ambients zones enabled/disabled status to its value before it was modified by this script.
---
--- Default behaviour is that any state change only gets applied once the player leaves the zone.
--- **Native**: `CLEAR_AMBIENT_ZONE_LIST_STATE` (`0x120C48C614909FA4`)
---@param zoneListName string The zone name to clear
---@param forceUpdate boolean Whether ot not to force a zone to become disabled even if its currently active
function AudioStatic.clearAmbientZoneListState(zoneListName, forceUpdate) end

--- Resets the ambient zone enabled/disabled status to its value before it was modified by this script
---
--- Default behaviour is that any state change only gets applied once the player leaves the zone.
--- **Native**: `CLEAR_AMBIENT_ZONE_STATE` (`0x218DD44AAAC964FF`)
---@param zoneName string the zone name to clear
---@param forceUpdate boolean Whether ot not to force a zone to become disabled even if its currently active
function AudioStatic.clearAmbientZoneState(zoneName, forceUpdate) end

--- Clears the previously queued custom track lost for the given radio station.
--- **Native**: `CLEAR_CUSTOM_RADIO_TRACK_LIST` (`0x1654F24A88A8E3FE`)
---@param radioStation string
function AudioStatic.clearCustomRadioTrackList(radioStation) end

--- **Native**: `CREATE_NEW_SCRIPTED_CONVERSATION` (`0xD2C91A0B572AAE56`)
function AudioStatic.createNewScriptedConversation() end

--- Deactivates the named slowmo mode.
--- **Native**: `DEACTIVATE_AUDIO_SLOWMO_MODE` (`0xDDC635D5B3262C56`)
---@param mode string name of the mode to deactivate
function AudioStatic.deactivateAudioSlowmoMode(mode) end

--- Toggles fake distant siren sounds
--- **Native**: `DISTANT_COP_CAR_SIRENS` (`0x552369F549563AD5`)
---@param shouldPlay boolean True will play distand sounds, false will disable them.
function AudioStatic.distantCopCarSirens(shouldPlay) end

--- Enable the stunt jump audio detection code
---
--- This native is meant to be called per-frame for as long as detection is wanted.
--- **Native**: `ENABLE_STUNT_JUMP_AUDIO` (`0xB81CF134AEB56FFB`)
function AudioStatic.enableStuntJumpAudio() end

--- **Native**: `FIND_RADIO_STATION_INDEX` (`0x8D67489793FF428B`)
---@param stationNameHash integer the station name hash to search for
---@return integer result The station index for the specified hash, or 254 if the radio station did not exist.
function AudioStatic.findRadioStationIndex(stationNameHash) end

--- Forces the chosen station to paly the given music track list. All other music track lists will be locked.
--- **Native**: `FORCE_MUSIC_TRACK_LIST` (`0x4E0AF9114608257C`)
---@param radioStation string
---@param trackListName string
---@param timeOffsetMilliseconds integer
function AudioStatic.forceMusicTrackList(radioStation, trackListName, timeOffsetMilliseconds) end

--- Forces the ambient peds into their panic walla state
--- **Native**: `FORCE_PED_PANIC_WALLA` (`0x062D5EAD4DA2FA6A`)
function AudioStatic.forcePedPanicWalla() end

--- Allows script to freeze the microphone for a single frame, mantaining its current transform/settings.
--- This native should be called every frame you want to keep the microphone frozen, when you stop calling it it will automatically unfreeze
--- **Native**: `FREEZE_MICROPHONE` (`0xD57AAAE0E2214D11`)
function AudioStatic.freezeMicrophone() end

--- **Native**: `FREEZE_RADIO_STATION` (`0x344F393B027E38C3`)
---@param radioStation string
function AudioStatic.freezeRadioStation(radioStation) end

--- ```
--- Return the playback time (in milliseconds) of the radio stations current track.
---
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `GET_CURRENT_RADIO_TRACK_PLAYBACK_TIME` (`0x3E65CDE5215832C1`)
---@param radioStationName string
---@return integer result
function AudioStatic.getCurrentRadioTrackPlaybackTime(radioStationName) end

--- **Native**: `GET_CURRENT_TRACK_SOUND_NAME` (`0x34D66BC058019CE0`)
---@param radioStationName string
---@return integer result The current sound name as a hash for the currently playing track on the given station.
function AudioStatic.getCurrentTrackSoundName(radioStationName) end

--- **Native**: `GET_NEXT_AUDIBLE_BEAT` (`0xC64A06D939F826F5`)
---@return boolean result Returns information on beat information for any audible music.
---@return number timeInSeconds time in seconds until the start of the next beat
---@return number bpm current tempo in beats per minute,
---@return integer beatNum integer beat within the bar
function AudioStatic.getNextAudibleBeat() end

--- **Native**: `GET_RADIO_STATION_NAME` (`0xB28ECA15046CA8B9`)
---@param stationIndex integer
---@return string result Returns the name of the radio station with the specified index. This serves as the text label.
function AudioStatic.getRadioStationName(stationIndex) end

--- **Native**: `GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE` (`0xAA19F5572C38B564`)
---@param textLabel string all the text labels for filenames in `AmericanDialogueFiles.txt` appear to end with the letter 'A', it is the script's responsibility to add this 'A' before calling `GET_VARIATION_CHOSEN_FOR_SCRIPTED…
---@return integer result Returns the variation chosen for a given script speech line, or `0` if it hasn't been chosen yet.Returns `-1` if there is no conversation active or if the active conversation doesn't contain this lin…
function AudioStatic.getVariationChosenForScriptedLine(textLabel) end

--- This native is marked as a deprecated native internally, use [HINT_SCRIPT_AUDIO_BANK](#\_0xFB380A29641EC31A) instead
--- **Native**: `HINT_AMBIENT_AUDIO_BANK` (`0x8F8C0E370AE62F5C`)
---@deprecated
---@param bankName string
---@param bOverNetwork boolean
---@return boolean result
function AudioStatic.hintAmbientAudioBank(bankName, bOverNetwork) end

--- This is marked as a deprecated function internally, please use [HINT_SCRIPT_AUDIO_BANK](#\_0xFB380A29641EC31A) instead.
--- **Native**: `HINT_MISSION_AUDIO_BANK` (`0x40763EA7B9B783E7`)
---@deprecated
---@param bankName string
---@param bOverNetwork boolean
---@param playerBits integer
---@return boolean result
function AudioStatic.hintMissionAudioBank(bankName, bOverNetwork, playerBits) end

--- Hints that this bank would be good to load if there are free slots.
--- Does not guarentee loading of the bank, [REQUEST_SCRIPT_AUDIO_BANK](#\_0xFE02FFBED8CA9D99) MUST be used as normal before triggering sounds"
---
--- This native has a new argument on newer game builds:
---
--- *   **playerBits**: likely used to specifiy players to sync to as a bit mask (1 << (0-128))
--- **Native**: `HINT_SCRIPT_AUDIO_BANK` (`0xFB380A29641EC31A`)
---@param bankName string
---@param bOverNetwork boolean
---@return boolean result
function AudioStatic.hintScriptAudioBank(bankName, bOverNetwork) end

--- **Native**: `INIT_SYNCH_SCENE_AUDIO_WITH_ENTITY` (`0x950A154B8DAB6185`)
---@param audioName string
---@param entity fx.Entity|integer
function AudioStatic.initSynchSceneAudioWithEntity(audioName, entity) end

--- **Native**: `INIT_SYNCH_SCENE_AUDIO_WITH_POSITION` (`0xC8EDE9BDBCCBA6D4`)
---@param audioName string
---@param coords vector3
function AudioStatic.initSynchSceneAudioWithPosition(audioName, coords) end

--- **Native**: `IS_ALARM_PLAYING` (`0x226435CB96CCFC8C`)
---@param alarmName string
---@return boolean result Returns true if an alarm is currently playing with the specified name
function AudioStatic.isAlarmPlaying(alarmName) end

--- **Native**: `IS_AMBIENT_ZONE_ENABLED` (`0x01E2817A479A7F9B`)
---@param ambientZone string
---@return boolean result Returns true if the given ambient zone is allowed to be active
function AudioStatic.isAmbientZoneEnabled(ambientZone) end

--- **Native**: `IS_AUDIO_SCENE_ACTIVE` (`0xB65B60556E2A9225`)
---@param scene string the name of the scene
---@return boolean result Returns true if the script is already running the named scene, false otherwise
function AudioStatic.isAudioSceneActive(scene) end

--- **Native**: `IS_MISSION_NEWS_STORY_UNLOCKED` (`0x66E49BF55B4B1874`)
---@param newsStory integer
---@return boolean result Returns true of the specific story is available to be played back
function AudioStatic.isMissionNewsStoryUnlocked(newsStory) end

--- **Native**: `IS_RADIO_STATION_FAVOURITED` (`0x2B1784DB08AFEA79`)
---@param radioStation string
---@return boolean result Returns whether a radio station is a favourite.
function AudioStatic.isRadioStationFavourited(radioStation) end

--- Links a static emitter to the given entity
--- **Native**: `LINK_STATIC_EMITTER_TO_ENTITY` (`0x651D3228960D08AF`)
---@param emitterName string
---@param entity fx.Entity|integer
function AudioStatic.linkStaticEmitterToEntity(emitterName, entity) end

--- Load in named stream. Optionally can specify a sound set which contains the sound specified by name.
---
--- Names for the streams can be found [here](https://gist.github.com/4mmonium/2bd2c9c54d6ca5cbdb7b156a82a3a85a), the list will be updated as more are found.
--- **Native**: `LOAD_STREAM` (`0x1F1F957154EC51DF`)
---@param streamName string
---@param soundSet string an optional sound set, default is null
---@return boolean result
function AudioStatic.loadStream(streamName, soundSet) end

--- Load in named stream. Optionally can specify a sound set which contains the sound specified by name.
--- **Native**: `LOAD_STREAM_WITH_START_OFFSET` (`0x59C16B79F53B3712`)
---@param streamName string
---@param startOffset integer
---@param soundSet string
---@return boolean result
function AudioStatic.loadStreamWithStartOffset(streamName, startOffset, soundSet) end

--- This disables the radio station completely - it won't be selectable on the radio wheel or ever be heard coming from a vehicle/ambient emitter
---
--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `LOCK_RADIO_STATION` (`0x477D9DB48F889591`)
---@param radioStationName string
---@param toggle boolean
function AudioStatic.lockRadioStation(radioStationName, toggle) end

--- **Native**: `LOCK_RADIO_STATION_TRACK_LIST` (`0xFF5E5EA2DCEEACF3`)
---@param radioStation string
---@param trackListName string
function AudioStatic.lockRadioStationTrackList(radioStation, trackListName) end

--- Sets audio flag "OverrideMicrophoneSettings"
---
--- Allows the script to ovverride the current microphone settings
--- **Native**: `OVERRIDE_MICROPHONE_SETTINGS` (`0x75773E11BA459E90`)
---@param hash integer|string
---@param toggle boolean
function AudioStatic.overrideMicrophoneSettings(hash, toggle) end

--- Sets the footstep tuning modes
--- **Native**: `OVERRIDE_PLAYER_GROUND_MATERIAL` (`0xD2CC78CD3D0B50F9`)
---@param overriddenMaterialHash integer|string
---@param scriptOverrides boolean True to override with the given overridenMaterialHash, false to stop overriding
function AudioStatic.overridePlayerGroundMaterial(overriddenMaterialHash, scriptOverrides) end

--- This native enables the audio flag "TrevorRageIsOverridden" and sets the voice effect to `voiceEffect`
---
--- To clear the override use [RESET_TREVOR_RAGE](#\_0xE78503B10C4314E0)
--- **Native**: `OVERRIDE_TREVOR_RAGE` (`0x13AD665062541A7E`)
---@param voiceEffect string
function AudioStatic.overrideTrevorRage(voiceEffect) end

--- This native allows a scripter to override the current underwater stream.
--- It needs to be called before going into the water
---
--- It needs to also be called with OVERRIDE_UNDERWATER_STREAM("", false) in order to stop overriding.
--- **Native**: `OVERRIDE_UNDERWATER_STREAM` (`0xF2A9CDABCEA04BD6`)
---@param streamName string
---@param override boolean
function AudioStatic.overrideUnderwaterStream(streamName, override) end

--- To resume the conversation use [RESTART_SCRIPTED_CONVERSATION](#\_0x9AEB285D1818C9AC)
--- **Native**: `PAUSE_SCRIPTED_CONVERSATION` (`0x8530AD776CD72B12`)
---@param finishCurrentLine boolean
function AudioStatic.pauseScriptedConversation(finishCurrentLine) end

--- **Native**: `PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE` (`0xED640017ED337E45`)
---@param speechName string
---@param voiceName string
---@param coords vector3
---@param speechParam string See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#\_0x8E04FEDD28D42462) for params
function AudioStatic.playAmbientSpeechFromPositionNative(speechName, voiceName, coords, speechParam) end

--- **Native**: `PLAY_DEFERRED_SOUND_FRONTEND` (`0xCADA5A0D0702381E`)
---@param soundName string
---@param soundsetName string
function AudioStatic.playDeferredSoundFrontend(soundName, soundsetName) end

--- **Native**: `PLAY_END_CREDITS_MUSIC` (`0xCD536C4D33DCC900`)
---@param bActive boolean
function AudioStatic.playEndCreditsMusic(bActive) end

--- ```
--- Called 38 times in the scripts. There are 5 different audioNames used.
---  One unknown removed below.
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");
--- AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");
--- ```
--- **Native**: `PLAY_MISSION_COMPLETE_AUDIO` (`0xB138AAB8A70D3C69`)
---@param audioName string
function AudioStatic.playMissionCompleteAudio(audioName) end

--- ```
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny
--- AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);
--- AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);
--- ```
--- **Native**: `PLAY_PED_RINGTONE` (`0xF9E56683CA8E11A5`)
---@param ringtoneName string
---@param ped fx.Ped|integer
---@param p2 boolean
function AudioStatic.playPedRingtone(ringtoneName, ped, p2) end

--- ```
--- Plays the given police radio message.
--- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr
--- ```
--- **Native**: `PLAY_POLICE_REPORT` (`0xDFEBD56D9BD1EB16`)
---@param name string
---@param p1 number
---@return integer result
function AudioStatic.playPoliceReport(name, p1) end

--- Plays a preloaded stream back from the specified Vector3.
--- **Native**: `PLAY_STREAM_FROM_POSITION` (`0x21442F412E8DE56B`)
---@param coords vector3
function AudioStatic.playStreamFromPosition(coords) end

--- **Native**: `PLAY_STREAM_FRONTEND` (`0x58FCE43488F9F5F4`)
function AudioStatic.playStreamFrontend() end

--- **Native**: `PLAY_SYNCHRONIZED_AUDIO_EVENT` (`0x8B2FD4560E55DD2D`)
---@param sceneId integer
---@return boolean result
function AudioStatic.playSynchronizedAudioEvent(sceneId) end

--- Similar to [START_SCRIPT_CONVERSATION](#\_0x6B17C62C9635D2DC), except that is starts the conversation off paused.
---
--- A scripter can then kick off the conversation by calling [START_PRELOADED_CONVERSATION](#\_0x23641AFE870AF385).
---
--- If they want to check that the conversation is done preloading, they can use [GET_IS_PRELOADED_CONVERSATION_READY](#\_0xE73364DB90778FFA)
--- **Native**: `PRELOAD_SCRIPT_CONVERSATION` (`0x3B3CAD6166916D87`)
---@param displaySubtitles boolean
---@param addToBriefScreen boolean Defaults to true
---@param cloneConversation boolean Defaults to false
---@param interruptible boolean Defaults to true
function AudioStatic.preloadScriptConversation(displaySubtitles, addToBriefScreen, cloneConversation, interruptible) end

--- **Native**: `PRELOAD_SCRIPT_PHONE_CONVERSATION` (`0x6004BCB0E226AAEA`)
---@param displaySubtitles boolean
---@param addToBriefScreen boolean Defaults to true
function AudioStatic.preloadScriptPhoneConversation(displaySubtitles, addToBriefScreen) end

--- Prepares any banks required to play the given alarm
--- **Native**: `PREPARE_ALARM` (`0x9D74AE343DB65533`)
---@param alarmName string
---@return boolean result Returns true if the alarm was successfully prepared
function AudioStatic.prepareAlarm(alarmName) end

--- Prepares the specified music event. Preparing it in advance will preload any required data so that it's ready to play immediately.
--- **Native**: `PREPARE_MUSIC_EVENT` (`0x1E5185B72EF5158A`)
---@param eventName string
---@return boolean result Returns true if the event is prepared, false otherwise
function AudioStatic.prepareMusicEvent(eventName) end

--- **Native**: `PREPARE_SYNCHRONIZED_AUDIO_EVENT` (`0xC7ABCACA4985A766`)
---@param audioEvent string The audio event name.
---@param startOffsetMs integer Unused parameter (since v323)
---@return boolean result
function AudioStatic.prepareSynchronizedAudioEvent(audioEvent, startOffsetMs) end

--- **Native**: `PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE` (`0x029FE7CD1B7E2E75`)
---@param sceneId integer
---@param audioEvent string
---@return boolean result Returns true if prepared, false otherwise
function AudioStatic.prepareSynchronizedAudioEventForScene(sceneId, audioEvent) end

--- Creates a broken glass area
--- **Native**: `RECORD_BROKEN_GLASS` (`0xFBE20329593DEC9D`)
---@param coords vector3
---@param radius number
function AudioStatic.recordBrokenGlass(coords, radius) end

--- Refreshes the closest shoreline using the nearest road position.
--- **Native**: `REFRESH_CLOSEST_OCEAN_SHORELINE` (`0x5D2BFAAB8D956E0E`)
function AudioStatic.refreshClosestOceanShoreline() end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `REGISTER_SCRIPT_WITH_AUDIO` (`0xC6ED9D5092438D91`)
---@param inChargeOfAudio boolean
function AudioStatic.registerScriptWithAudio(inChargeOfAudio) end

--- This native has been marked as deprecated internally, please use [RELEASE_SCRIPT_AUDIO_BANK](#\_0x7A2D8AD0A9EB9C3F) instead.
--- **Native**: `RELEASE_AMBIENT_AUDIO_BANK` (`0x65475A218FFAA93D`)
---@deprecated
function AudioStatic.releaseAmbientAudioBank() end

--- This native has been marked as deprecated internally, please use [RELEASE_SCRIPT_AUDIO_BANK](#\_0x7A2D8AD0A9EB9C3F) instead.
--- **Native**: `RELEASE_MISSION_AUDIO_BANK` (`0x0EC92A1BF0857187`)
---@deprecated
function AudioStatic.releaseMissionAudioBank() end

--- Unloads the specified audioBank
--- **Native**: `RELEASE_NAMED_SCRIPT_AUDIO_BANK` (`0x77ED170667F50170`)
---@param audioBank string
function AudioStatic.releaseNamedScriptAudioBank(audioBank) end

--- Unloads all audio banks requested by this script.
--- **Native**: `RELEASE_SCRIPT_AUDIO_BANK` (`0x7A2D8AD0A9EB9C3F`)
function AudioStatic.releaseScriptAudioBank() end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `RELEASE_WEAPON_AUDIO` (`0xCE4AC0439F607045`)
function AudioStatic.releaseWeaponAudio() end

--- ```
---  Found in the b617d scripts, duplicates removed:
---  AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");
---  AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");
---  AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");
---  AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");
---  AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");
--- ```
---
--- For events like cars driving through windows, allows script to unocclude that window
--- **Native**: `REMOVE_PORTAL_SETTINGS_OVERRIDE` (`0xB4BBFD9CD8B3922B`)
---@param portalSettingsName string
function AudioStatic.removePortalSettingsOverride(portalSettingsName) end

--- This native is marked as deprecated internally, please use [REQUEST_SCRIPT_AUDIO_BANK](#\_0x2F844A8B08D76685)
---
--- This native has a new argument on newer game builds:
---
--- *   **playerBits**:
--- **Native**: `REQUEST_AMBIENT_AUDIO_BANK` (`0xFE02FFBED8CA9D99`)
---@deprecated
---@param bankName string
---@param bOverNetwork boolean
---@return boolean result
function AudioStatic.requestAmbientAudioBank(bankName, bOverNetwork) end

--- This native is marked as deprecated internally, please use [REQUEST_SCRIPT_AUDIO_BANK](#\_0x2F844A8B08D76685)
---
--- This native has a new argument on newer game builds:
---
--- *   **playerBits**:
--- **Native**: `REQUEST_MISSION_AUDIO_BANK` (`0x7345BDD95E62E0F2`)
---@deprecated
---@param bankName string
---@param bOverNetwork boolean
---@return boolean result
function AudioStatic.requestMissionAudioBank(bankName, bOverNetwork) end

--- This native has a new argument on newer game builds:
---
--- *   **playerBits**:
--- **Native**: `REQUEST_SCRIPT_AUDIO_BANK` (`0x2F844A8B08D76685`)
---@param bankName string
---@param bOverNetwork boolean
---@return boolean result Requests and returns true/false if the script audio bank has laoded
function AudioStatic.requestScriptAudioBank(bankName, bOverNetwork) end

--- Clears the override set by [OVERRIDE_TREVOR_RAGE](#\_0x13AD665062541A7E)
--- **Native**: `RESET_TREVOR_RAGE` (`0xE78503B10C4314E0`)
function AudioStatic.resetTrevorRage() end

--- Restarts a conversation that was previously paused with [PAUSE_SCRIPTED_CONVERSATION](#\_0x8530AD776CD72B12)
--- **Native**: `RESTART_SCRIPTED_CONVERSATION` (`0x9AEB285D1818C9AC`)
function AudioStatic.restartScriptedConversation() end

--- Overrides wind elevation sounds
--- **Native**: `SCRIPT_OVERRIDES_WIND_ELEVATION` (`0x70B8EC8FC108A634`)
---@param override boolean
---@param windElevationHashName integer|string
function AudioStatic.scriptOverridesWindElevation(override, windElevationHashName) end

--- Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.
--- **Native**: `SET_AGGRESSIVE_HORNS` (`0x395BF71085D1B1D9`)
---@param toggle boolean
function AudioStatic.setAggressiveHorns(toggle) end

--- **Native**: `SET_AMBIENT_ZONE_LIST_STATE` (`0x9748FA4DE50CCE3E`)
---@param zoneListName string
---@param enabled boolean Enables/disables a list of ambient zones for the duration of this script
---@param forceUpdate boolean Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.
function AudioStatic.setAmbientZoneListState(zoneListName, enabled, forceUpdate) end

--- **Native**: `SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT` (`0xF3638DAE8C4045E1`)
---@param ambientZone string
---@param enabled boolean Enables/disables a list of ambient zones persistently
---@param forceUpdate boolean Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.
function AudioStatic.setAmbientZoneListStatePersistent(ambientZone, enabled, forceUpdate) end

--- **Native**: `SET_AMBIENT_ZONE_STATE` (`0xBDA07E5950085E46`)
---@param zoneName string
---@param enabled boolean Enables/disables an ambient zone for the duration of this script
---@param forceUpdate boolean Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.
function AudioStatic.setAmbientZoneState(zoneName, enabled, forceUpdate) end

--- **Native**: `SET_AMBIENT_ZONE_STATE_PERSISTENT` (`0x1D6650420CEC9D3B`)
---@param zoneName string
---@param enabled boolean Enables/disables an ambient zone for the duration of this script
---@param forceUpdate boolean Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.
function AudioStatic.setAmbientZoneStatePersistent(zoneName, enabled, forceUpdate) end

--- Generic interface to toggle audio functionality, with auto-reset on script termination and support for multiple script threads
---
--- Flags used in game scripts:
--- | Flag Name | Description of Usage |
--- | ----- | -------- |
--- | ActivateSwitchWheelAudio | |
--- | AllowAmbientSpeechInSlowMo | |
--- | AllowCutsceneOverScreenFade | |
--- | AllowForceRadioAfterRetune | |
--- | AllowPainAndAmbientSpeechToPlayDuringCutscene | |
--- | AllowPlayerAIOnMission | |
--- | AllowPoliceScannerWhenPlayerHasNoControl | |
--- | AllowRadioDuringSwitch | |
--- | AllowRadioOverScreenFade | |
--- | AllowScoreAndRadio | |
--- | AllowScriptedSpeechInSlowMo | |
--- | AvoidMissionCompleteDelay | |
--- | DisableAbortConversationForDeathAndInjury | |
--- | DisableAbortConversationForRagdoll | |
--- | DisableBarks | |
--- | DisableFlightMusic | |
--- | DisableNPCHeadsetSpeechAttenuation | |
--- | DisableReplayScriptStreamRecording | |
--- | EnableHeadsetBeep | |
--- | EnableMissileLockWarningForAllVehicles | |
--- | ForceConversationInterrupt | |
--- | ForceSeamlessRadioSwitch | |
--- | ForceSniperAudio | |
--- | FrontendRadioDisabled | |
--- | HoldMissionCompleteWhenPrepared | |
--- | IsDirectorModeActive |  Allows you to play speech infinitely without any pauses like in Director Mode. |
--- | IsPlayerOnMissionForSpeech | |
--- | ListenerReverbDisabled | |
--- | LoadMPData | |
--- | MobileRadioInGame | |
--- | OnlyAllowScriptTriggerPoliceScanner | |
--- | PlayerOnDLCHeist4Island | |
--- | PlayMenuMusic | |
--- | PoliceScannerDisabled | |
--- | ScriptedConvListenerMaySpeak | |
--- [...]
--- **Native**: `SET_AUDIO_FLAG` (`0xB9EFD5C25018725A`)
---@param flagName string
---@param toggle boolean
function AudioStatic.setAudioFlag(flagName, toggle) end

--- **Native**: `SET_AUDIO_SCENE_VARIABLE` (`0xEF21A9EF089A2668`)
---@param scene string name of the scene
---@param variableName string name of the variable to add/change
---@param value number value to set the variable to
function AudioStatic.setAudioSceneVariable(scene, variableName, value) end

--- Set a delay in milliseconds for the audio to be cleaned up when the script finishes.
--- **Native**: `SET_AUDIO_SCRIPT_CLEANUP_TIME` (`0xA5F377B175A699C5`)
---@param timeMs integer
function AudioStatic.setAudioScriptCleanupTime(timeMs) end

--- Needs to be called every frame.
---
--- ```cpp
--- enum eAudSpecialEffectMode
--- {
--- 	kSpecialEffectModeNormal = 0,
--- 	kSpecialEffectModeUnderwater = 1,
--- 	kSpecialEffectModeStoned = 2,
--- 	kSpecialEffectModePauseMenu = 3,
--- 	kSpecialEffectModeSlowMotion = 4,
--- 	kSpecialEffectModeDrunkStage01 = 5,
--- 	kSpecialEffectModeDrunkStage02 = 6,
--- 	kSpecialEffectModeDrunkStage03 = 7,
--- 	NUM_AUDSPECIALEFFECTMODE
--- };
--- ```
--- **Native**: `SET_AUDIO_SPECIAL_EFFECT_MODE` (`0x12561FCBB62D5B9C`)
---@param mode fx.Enum.AudSpecialEffectMode|integer Audio mode to apply this frame
function AudioStatic.setAudioSpecialEffectMode(mode) end

--- Sets whether or not scripted conversation flow should be controlled by anim triggers
--- **Native**: `SET_CONVERSATION_AUDIO_CONTROLLED_BY_ANIM` (`0x0B568201DD99F0EB`)
---@param enable boolean Pass in true to set conversation flow to be controlled by animation triggers.
function AudioStatic.setConversationAudioControlledByAnim(enable) end

--- Used to determine whether conversation should use robot speech or not
--- **Native**: `SET_CONVERSATION_AUDIO_PLACEHOLDER` (`0x61631F5DF50D1C34`)
---@param isPlaceHolder boolean Whether or not the conversation should use robot speech or not
function AudioStatic.setConversationAudioPlaceholder(isPlaceHolder) end

--- Queues up a custom track list on the specified radio station. The content in the track list will be played as soon as possible.
--- The station does not have to be frozen.
--- **Native**: `SET_CUSTOM_RADIO_TRACK_LIST` (`0x4E404A9361F75BB2`)
---@param radioStation string
---@param trackListName string
---@param forceNow boolean wheter or not to interrupt the current track on the tracklist
function AudioStatic.setCustomRadioTrackList(radioStation, trackListName, forceNow) end

--- ```
--- All occurrences found in b617d, sorted alphabetically and identical lines removed:
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");
--- AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");
--- ```
---
--- Add a suffix to the cutscene audio name. Call before loading the cutscene.
--- **Native**: `SET_CUTSCENE_AUDIO_OVERRIDE` (`0x3B4BF5F0859204D9`)
---@param name string
function AudioStatic.setCutsceneAudioOverride(name) end

--- Retunes a named static emitter to the specified station
--- **Native**: `SET_EMITTER_RADIO_STATION` (`0xACF57305B12AF907`)
---@param emitterName string
---@param radioStation string
function AudioStatic.setEmitterRadioStation(emitterName, radioStation) end

--- **Native**: `SET_ENTITY_FOR_NULL_CONV_PED` (`0x892B6AB8F33606F5`)
---@param speakerConversationIndex integer
---@param entity fx.Entity|integer
function AudioStatic.setEntityForNullConvPed(speakerConversationIndex, entity) end

--- Allows the radio to be played in the frontend.
--- **Native**: `SET_FRONTEND_RADIO_ACTIVE` (`0xF7F26C6E9CC9EBB8`)
---@param active boolean
function AudioStatic.setFrontendRadioActive(active) end

--- Sets the global radio signal level, lower value will cause radio static.
--- Used only a handful of times in scripts.
--- **Native**: `SET_GLOBAL_RADIO_SIGNAL_LEVEL` (`0x159B7318403A1CD8`)
---@param signalLevel number Radio signal level.
function AudioStatic.setGlobalRadioSignalLevel(signalLevel) end

--- **Native**: `SET_GPS_ACTIVE` (`0x3BD3F52BA9B1E4E8`)
---@param active boolean
function AudioStatic.setGpsActive(active) end

--- **Native**: `SET_INITIAL_PLAYER_STATION` (`0x88795F13FACDA88D`)
---@param radioStation string
function AudioStatic.setInitialPlayerStation(radioStation) end

--- ```
--- If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..
--- ```
--- **Native**: `SET_MICROPHONE_POSITION` (`0xB6AE90EDDE95C762`)
---@param p0 boolean
---@param coords1 vector3
---@param coords2 vector3
---@param coords3 vector3
function AudioStatic.setMicrophonePosition(p0, coords1, coords2, coords3) end

--- **Native**: `SET_MOBILE_PHONE_RADIO_STATE` (`0xBF286C554784F3DF`)
---@param state boolean
function AudioStatic.setMobilePhoneRadioState(state) end

--- **Native**: `SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY` (`0x1098355A16064BB3`)
---@param toggle boolean
function AudioStatic.setMobileRadioEnabledDuringGameplay(toggle) end

--- Overrides the calculated ped density that is used to modulate the ambient ped walla sounds (in exteriors only)
---
--- If you want to use this for interiors, use [SET_PED_INTERIOR_WALLA_DENSITY](#\_0x8BF907833BE275DE)
--- **Native**: `SET_PED_WALLA_DENSITY` (`0x149AEE66F0CB3A99`)
---@param density number desired walla density
---@param applyValue number how much the desired density affects the actual one
function AudioStatic.setPedWallaDensity(density, applyValue) end

--- **Native**: `SET_PORTAL_SETTINGS_OVERRIDE` (`0x044DBAD7A7FA2BE5`)
---@param oldPortalSettingsName string
---@param newPortalSettingsName string
function AudioStatic.setPortalSettingsOverride(oldPortalSettingsName, newPortalSettingsName) end

--- **Native**: `SET_POSITIONED_PLAYER_VEHICLE_RADIO_EMITTER_ENABLED` (`0xDA07819E452FFE8F`)
---@param enabled boolean enables/disables a positioned emitter for the player vehicle radio
function AudioStatic.setPositionedPlayerVehicleRadioEmitterEnabled(enabled) end

--- **Native**: `SET_POSITION_FOR_NULL_CONV_PED` (`0x33E3C6C6F2F0B506`)
---@param speakerConversationIndex integer
---@param coords vector3
function AudioStatic.setPositionForNullConvPed(speakerConversationIndex, coords) end

--- **Native**: `SET_RADIO_AUTO_UNFREEZE` (`0xC1AA9F53CE982990`)
---@param toggle boolean if true the radio will automatically unfreeze as soon as the player gets in a vehicle
function AudioStatic.setRadioAutoUnfreeze(toggle) end

--- **Native**: `SET_RADIO_FRONTEND_FADE_TIME` (`0x2C96CDB04FCA358E`)
---@param fadeTime number
function AudioStatic.setRadioFrontendFadeTime(fadeTime) end

--- Doesn't have an effect in Story Mode.
---
--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_RADIO_STATION_IS_VISIBLE` (`0x4CAFEBFA21EC188D`)
---@param radioStation string
---@param toggle boolean
function AudioStatic.setRadioStationIsVisible(radioStation, toggle) end

--- ```
--- 6 calls in the b617d scripts, removed identical lines:
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY("RADIO_01_CLASS_ROCK", 1);
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 0);
--- AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 1);
--- ```
--- **Native**: `SET_RADIO_STATION_MUSIC_ONLY` (`0x774BD811F656A122`)
---@param radioStation string
---@param toggle boolean
function AudioStatic.setRadioStationMusicOnly(radioStation, toggle) end

--- ```
--- Sets radio station by index.
--- ```
--- **Native**: `SET_RADIO_TO_STATION_INDEX` (`0xA619B168B8A8570F`)
---@param radioStation integer
function AudioStatic.setRadioToStationIndex(radioStation) end

--- Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
--- **Native**: `SET_RADIO_TO_STATION_NAME` (`0xC69EDA28699D5107`)
---@param stationName string
function AudioStatic.setRadioToStationName(stationName) end

--- ```
--- Only found this one in the decompiled scripts:
--- AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");
--- ```
--- **Native**: `SET_RADIO_TRACK` (`0xB39786F201FEE30B`)
---@param radioStation string
---@param radioTrack string
function AudioStatic.setRadioTrack(radioStation, radioTrack) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_RADIO_TRACK_MIX` (`0x2CB0075110BE1E56`)
---@param radioStationName string
---@param mixName string
---@param p2 integer
function AudioStatic.setRadioTrackMix(radioStationName, mixName, p2) end

--- **Native**: `SET_SCRIPT_UPDATE_DOOR_AUDIO` (`0x06C0023BED16DD6B`)
---@param doorHash integer|string
---@param toggle boolean
function AudioStatic.setScriptUpdateDoorAudio(doorHash, toggle) end

--- ```
--- Example:
--- AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);
--- This turns off surrounding sounds not connected directly to peds.
--- ```
--- **Native**: `SET_STATIC_EMITTER_ENABLED` (`0x399D2D3B33F1B8EB`)
---@param emitterName string
---@param toggle boolean
function AudioStatic.setStaticEmitterEnabled(emitterName, toggle) end

--- **Native**: `SET_USER_RADIO_CONTROL_ENABLED` (`0x19F21E63AE6EAE4E`)
---@param toggle boolean
function AudioStatic.setUserRadioControlEnabled(toggle) end

--- ```
--- SET_VARIABLE_ON_*
--- ```
--- **Native**: `SET_VARIABLE_ON_CUTSCENE_AUDIO` (`0xBCC29F935ED07688`)
---@param variableName string
---@param value number
function AudioStatic.setVariableOnCutsceneAudio(variableName, value) end

--- ```
--- From the scripts, p0:
--- "ArmWrestlingIntensity",
--- "INOUT",
--- "Monkey_Stream",
--- "ZoomLevel"
--- ```
--- **Native**: `SET_VARIABLE_ON_STREAM` (`0x2F9D3834AEB9EF79`)
---@param p0 string
---@param p1 number
function AudioStatic.setVariableOnStream(p0, p1) end

--- ```
--- AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 1.0);
--- AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 0.0);
--- ```
--- **Native**: `SET_VARIABLE_ON_UNDER_WATER_STREAM` (`0x733ADF241531E5C2`)
---@param variableName string
---@param value number
function AudioStatic.setVariableOnUnderWaterStream(variableName, value) end

--- **Native**: `SKIP_RADIO_FORWARD` (`0x6DDBBDD98E2E9C25`)
function AudioStatic.skipRadioForward() end

--- **Native**: `SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE` (`0x9663FE6B7A61EB00`)
function AudioStatic.skipToNextScriptedConversationLine() end

--- You should call [PREPARE_ALARM](#\_0x9D74AE343DB65533) and wait for its value to be true before using this
--- **Native**: `START_ALARM` (`0x0355EF116C4C97B2`)
---@param alarmName string
---@param skipStartup boolean
function AudioStatic.startAlarm(alarmName, skipStartup) end

--- ```
--- Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.
--- List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC
--- ```
--- **Native**: `START_AUDIO_SCENE` (`0x013A80FC08F6E4F2`)
---@param scene string
---@return boolean result
function AudioStatic.startAudioScene(scene) end

--- For use with [PRELOAD_SCRIPT_CONVERSATION](#\_0x3B3CAD6166916D87) and [GET_IS_PRELOADED_CONVERSATION_READY](#\_0xE73364DB90778FFA)
--- **Native**: `START_PRELOADED_CONVERSATION` (`0x23641AFE870AF385`)
function AudioStatic.startPreloadedConversation() end

--- **Native**: `START_SCRIPT_CONVERSATION` (`0x6B17C62C9635D2DC`)
---@param displaySubtitles boolean
---@param addToBriefScreen boolean Defaults to true
---@param cloneConversation boolean Defaults to false
---@param interruptible boolean Defaults to true
function AudioStatic.startScriptConversation(displaySubtitles, addToBriefScreen, cloneConversation, interruptible) end

--- **Native**: `START_SCRIPT_PHONE_CONVERSATION` (`0x252E5F915EABB675`)
---@param displaySubtitles boolean
---@param addToBriefScreen boolean Defaults to true
function AudioStatic.startScriptPhoneConversation(displaySubtitles, addToBriefScreen) end

--- **Native**: `STOP_ALARM` (`0xA1CADDCD98415A41`)
---@param alarmName string
---@param instantStop boolean Whether to kill the alarm instantly, or to let the audio system turn it off when it becomes inaudible
function AudioStatic.stopAlarm(alarmName, instantStop) end

--- **Native**: `STOP_ALL_ALARMS` (`0x2F794A877ADD4C92`)
---@param instantStop boolean Whether to kill the alarm instantly, or to let the audio system turn it off when it becomes inaudible
function AudioStatic.stopAllAlarms(instantStop) end

--- Stops the named mixing scene (which was previously started by this script)
--- **Native**: `STOP_AUDIO_SCENE` (`0xDFE8422B3B94E688`)
---@param sceneName string
function AudioStatic.stopAudioScene(sceneName) end

--- Stops all mixed scenes which were previously started by this script
--- **Native**: `STOP_AUDIO_SCENES` (`0xBAC7FC81A75EC1A1`)
function AudioStatic.stopAudioScenes() end

--- Stops audio for the current cutscene.
--- **Native**: `STOP_CUTSCENE_AUDIO` (`0x806058BBDC136E06`)
function AudioStatic.stopCutsceneAudio() end

--- **Native**: `STOP_SCRIPTED_CONVERSATION` (`0xD79DEEFB53455EBA`)
---@param finishCurrentLine boolean
---@return integer result
function AudioStatic.stopScriptedConversation(finishCurrentLine) end

--- Stops all smoke grenade sounds
--- **Native**: `STOP_SMOKE_GRENADE_EXPLOSION_SOUNDS` (`0xE4E6DD5566D28C82`)
function AudioStatic.stopSmokeGrenadeExplosionSounds() end

--- **Native**: `STOP_STREAM` (`0xA4718A1419D18151`)
function AudioStatic.stopStream() end

--- **Native**: `STOP_SYNCHRONIZED_AUDIO_EVENT` (`0x92D6A88E64A94430`)
---@param p0 any
---@return boolean result
function AudioStatic.stopSynchronizedAudioEvent(p0) end

--- ```
--- List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W
--- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
--- ```
--- **Native**: `TRIGGER_MUSIC_EVENT` (`0x706D57B0F50DA710`)
---@param eventName string
---@return boolean result
function AudioStatic.triggerMusicEvent(eventName) end

--- ```
--- NativeDB Introduced: v1493
--- ```
---
--- Removes all instances of a given context block.
--- **Native**: `UNBLOCK_SPEECH_CONTEXT_GROUP` (`0x2ACABED337622DF2`)
---@param groupName string Context group name to unblock.
function AudioStatic.unblockSpeechContextGroup(groupName) end

--- **Native**: `UNFREEZE_RADIO_STATION` (`0xFC00454CF60B91DD`)
---@param radioStation string
function AudioStatic.unfreezeRadioStation(radioStation) end

--- **Native**: `UNLOCK_MISSION_NEWS_STORY` (`0xB165AB7C248B2DC1`)
---@param newsStory integer
function AudioStatic.unlockMissionNewsStory(newsStory) end

--- ```
--- AUDIO::UNLOCK_RADIO_STATION_TRACK_LIST("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");
--- ```
--- **Native**: `UNLOCK_RADIO_STATION_TRACK_LIST` (`0x031ACB6ABA18C729`)
---@param radioStation string
---@param trackListName string
function AudioStatic.unlockRadioStationTrackList(radioStation, trackListName) end

--- **This native does absolutely nothing, just a nullsub**
---
--- ```
--- On last-gen this just runs blr and this func is called by several other functions other then the native's table.
--- ```
--- **Native**: `UNREGISTER_SCRIPT_WITH_AUDIO` (`0xA8638BE228D4751A`)
function AudioStatic.unregisterScriptWithAudio() end

--- Unloads tennis vocalization banks loaded with [`REQUEST_TENNIS_BANKS`](#\_0x4ADA3F19BE4A6047).
--- **Native**: `UNREQUEST_TENNIS_BANKS` (`0x0150B6FF25A9E2E5`)
function AudioStatic.unrequestTennisBanks() end

--- Unlocks any available DJ radio tracks based on the tuneable status
---
--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `UPDATE_UNLOCKABLE_DJ_RADIO_TRACKS` (`0x47AED84213A47510`)
---@param allowTrackReprioritization boolean
function AudioStatic.updateUnlockableDjRadioTracks(allowTrackReprioritization) end

