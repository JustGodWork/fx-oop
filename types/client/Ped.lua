---@meta
---@diagnostic disable
-- fx.Ped (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.PedCreateOptions
---@field networked? boolean Default true
---@field scriptHostPed? boolean Default false
---@field pedType? integer Default 4 (PED_TYPE_CIVMALE)
---@field timeout? integer Default 10000

---ped.clothes: one component at a time. `ped.clothes.top = 15` or `{ drawable = 15, texture = 2 }`.
---An invalid drawable or texture raises in debug mode.
---@class fx.PedClothesProxy
---@field mask fx.PedVariation|integer Component 1
---@field arms fx.PedVariation|integer Component 3
---@field legs fx.PedVariation|integer Component 4
---@field bag fx.PedVariation|integer Component 5
---@field shoes fx.PedVariation|integer Component 6
---@field neck fx.PedVariation|integer Component 7
---@field undershirt fx.PedVariation|integer Component 8
---@field armor fx.PedVariation|integer Component 9
---@field decals fx.PedVariation|integer Component 10
---@field top fx.PedVariation|integer Component 11
local PedClothesProxy = {}

---Number of drawables of a component (in `collection` when given).
---@param key fx.PedClothesKey|fx.Enum.PedClothes
---@param collection? string
---@return integer
function PedClothesProxy:count(key, collection) end

---Number of textures of a drawable.
---@param key fx.PedClothesKey|fx.Enum.PedClothes
---@param drawable integer
---@param collection? string
---@return integer
function PedClothesProxy:textures(key, drawable, collection) end

---Every drawable of a component, with its collection and its number of textures: what a clothing menu lists.
---The PS5 / Xbox Series exclusives are left out.
---@param key fx.PedClothesKey|fx.Enum.PedClothes
---@return fx.PedVariationItem[]
function PedClothesProxy:list(key) end

---@return fx.PedClothesData
function PedClothesProxy:get() end

---@param clothes fx.PedClothesData
---@return fx.PedClothesProxy
function PedClothesProxy:set(clothes) end

---ped.props: one prop at a time. `ped.props.hat = 12`, `ped.props.hat = false` to remove it.
---@class fx.PedPropsProxy
---@field hat fx.PedVariation|integer|false Anchor point 0
---@field glasses fx.PedVariation|integer|false Anchor point 1
---@field ears fx.PedVariation|integer|false Anchor point 2
---@field watch fx.PedVariation|integer|false Anchor point 6
---@field bracelet fx.PedVariation|integer|false Anchor point 7
local PedPropsProxy = {}

---@param key fx.PedPropKey|fx.Enum.PedProps
---@param collection? string
---@return integer
function PedPropsProxy:count(key, collection) end

---@param key fx.PedPropKey|fx.Enum.PedProps
---@param drawable integer
---@param collection? string
---@return integer
function PedPropsProxy:textures(key, drawable, collection) end

---@param key fx.PedPropKey|fx.Enum.PedProps
---@return fx.PedVariationItem[]
function PedPropsProxy:list(key) end

---Removes one prop, or all of them.
---@param key? fx.PedPropKey|fx.Enum.PedProps
---@return fx.PedPropsProxy
function PedPropsProxy:clear(key) end

---@return fx.PedPropsData
function PedPropsProxy:get() end

---@param props fx.PedPropsData
---@return fx.PedPropsProxy
function PedPropsProxy:set(props) end

---ped.face: face features (-1.0 to 1.0) and eye colour. `ped.face.noseWidth = 0.4`.
---@class fx.PedFaceProxy
---@field eyeColor integer
---@field noseWidth number Feature 0
---@field nosePeakHeight number Feature 1
---@field nosePeakLength number Feature 2
---@field noseBoneHeight number Feature 3
---@field nosePeakLowering number Feature 4
---@field noseBoneTwist number Feature 5
---@field eyebrowHeight number Feature 6
---@field eyebrowDepth number Feature 7
---@field cheekBoneHeight number Feature 8
---@field cheekBoneWidth number Feature 9
---@field cheekWidth number Feature 10
---@field eyeOpening number Feature 11
---@field lipThickness number Feature 12
---@field jawBoneWidth number Feature 13
---@field jawBoneLength number Feature 14
---@field chinBoneHeight number Feature 15
---@field chinBoneLength number Feature 16
---@field chinBoneWidth number Feature 17
---@field chinDimple number Feature 18
---@field neckThickness number Feature 19
local PedFaceProxy = {}

---@return fx.PedFaceData
function PedFaceProxy:get() end

---@param face fx.PedFaceData
---@return fx.PedFaceProxy
function PedFaceProxy:set(face) end

---ped.hair: style and colours. A new style keeps the colours.
---@class fx.PedHairProxy
---@field style integer
---@field texture integer
---@field collection string?
---@field color integer
---@field highlight integer
local PedHairProxy = {}

---Number of hair styles of this model.
---@return integer
function PedHairProxy:count() end

---@param style integer
---@param collection? string
---@return integer
function PedHairProxy:textures(style, collection) end

---Every hair style, with its collection: assignable to ped.hair:set({ style = item.drawable, collection = item.collection }).
---@return fx.PedVariationItem[]
function PedHairProxy:list() end

---Number of hair colours of the game.
---@return integer
function PedHairProxy:colors() end

---@return fx.PedHairData
function PedHairProxy:get() end

---@param hair fx.PedHairData|integer
---@return fx.PedHairProxy
function PedHairProxy:set(hair) end

---ped.overlays: beard, eyebrows, makeup... `ped.overlays.beard = 3`, `ped.overlays.beard = { style = 3, opacity = 0.8, color = 2 }`,
---`ped.overlays.beard = false` (none). A partial table keeps the other values.
---@class fx.PedOverlaysProxy
---@field blemishes fx.PedOverlay|integer|false Overlay 0
---@field beard fx.PedOverlay|integer|false Overlay 1
---@field eyebrows fx.PedOverlay|integer|false Overlay 2
---@field ageing fx.PedOverlay|integer|false Overlay 3
---@field makeup fx.PedOverlay|integer|false Overlay 4
---@field blush fx.PedOverlay|integer|false Overlay 5
---@field complexion fx.PedOverlay|integer|false Overlay 6
---@field sunDamage fx.PedOverlay|integer|false Overlay 7
---@field lipstick fx.PedOverlay|integer|false Overlay 8
---@field freckles fx.PedOverlay|integer|false Overlay 9
---@field chestHair fx.PedOverlay|integer|false Overlay 10
---@field bodyBlemishes fx.PedOverlay|integer|false Overlay 11
---@field moreBodyBlemishes fx.PedOverlay|integer|false Overlay 12
local PedOverlaysProxy = {}

---Number of styles of an overlay.
---@param key fx.PedOverlayKey|fx.Enum.PedOverlays
---@return integer
function PedOverlaysProxy:count(key) end

---@return fx.PedOverlaysData
function PedOverlaysProxy:get() end

---@param overlays fx.PedOverlaysData
---@return fx.PedOverlaysProxy
function PedOverlaysProxy:set(overlays) end

---ped.headBlend: the parents of a freemode ped. Assigning one value keeps the others.
---@class fx.PedHeadBlendProxy
---@field shapeFirst integer?
---@field shapeSecond integer?
---@field shapeThird integer?
---@field skinFirst integer?
---@field skinSecond integer?
---@field skinThird integer?
---@field shapeMix number?
---@field skinMix number?
---@field thirdMix number?
local PedHeadBlendProxy = {}

---nil when the ped has no head blend.
---@return fx.PedHeadBlend?
function PedHeadBlendProxy:get() end

---@param headBlend fx.PedHeadBlend
---@return fx.PedHeadBlendProxy
function PedHeadBlendProxy:set(headBlend) end

---ped.tattoos: decorations, by collection and overlay (hashes or names).
---@class fx.PedTattoosProxy
local PedTattoosProxy = {}

---@param collection integer|string e.g. 'mpbeach_overlays'
---@param overlay integer|string e.g. 'MP_Bea_M_Head_000'
---@return fx.PedTattoosProxy
function PedTattoosProxy:add(collection, overlay) end

---@param collection integer|string
---@param overlay integer|string
---@return fx.PedTattoosProxy
function PedTattoosProxy:remove(collection, overlay) end

---@param collection integer|string
---@param overlay integer|string
---@return boolean
function PedTattoosProxy:has(collection, overlay) end

---@return fx.PedTattoosProxy
function PedTattoosProxy:clear() end

---@return fx.PedTattoo[]
function PedTattoosProxy:get() end

---Replaces every tattoo.
---@param tattoos fx.PedTattoo[]
---@return fx.PedTattoosProxy
function PedTattoosProxy:set(tattoos) end
---@class fx.Ped : fx.Entity
---@field player fx.Player? (read-only) Player controlling this ped, or nil for an NPC.
---@field clothes fx.PedClothesProxy Clothes one by one: `ped.clothes.top = 15`, `ped.clothes:list('top')`
---@field props fx.PedPropsProxy Props one by one: `ped.props.hat = 12`, `ped.props.hat = false`
---@field face fx.PedFaceProxy Face features and eye colour: `ped.face.noseWidth = 0.4`
---@field hair fx.PedHairProxy Hair style and colours: `ped.hair.style = 12`, `ped.hair.color = 3`
---@field overlays fx.PedOverlaysProxy Beard, eyebrows, makeup...: `ped.overlays.beard = { style = 3, color = 2 }`
---@field headBlend fx.PedHeadBlendProxy Parents of a freemode ped: `ped.headBlend.shapeMix = 0.5`
---@field tattoos fx.PedTattoosProxy Tattoos: `ped.tattoos:add('mpbeach_overlays', 'MP_Bea_M_Head_000')`
---@field handle integer Raw entity handle.
---@field exists boolean (read-only) DOES_ENTITY_EXIST. Never raises, even on a deleted entity or in debug mode.
---@field states fx.PedStates Entity state bag (`entity:<netId>`; requires a networked entity, error in debug mode otherwise).
---@field state fx.PedStates Alias of `states` (`Entity(h).state` compatibility).
---@field accuracy integer [GET_PED_ACCURACY / SET_PED_ACCURACY]
---@field address any (read-only) [GET_ENTITY_ADDRESS] **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning. Returns the memory address of an entity. This native i…
---@field aiBlip? fx.Blip (read-only) [GET_AI_BLIP]
---@field aiBlip2? fx.Blip (read-only) [GET_AI_BLIP_2]
---@field alertness integer [GET_PED_ALERTNESS / SET_PED_ALERTNESS]
---@field alpha integer (read-only) [GET_ENTITY_ALPHA]
---@field ambientVoiceNameHash integer|string [GET_AMBIENT_VOICE_NAME_HASH / SET_AMBIENT_VOICE_NAME_HASH]
---@field archetypeName string (read-only) [GET_ENTITY_ARCHETYPE_NAME] Returns entity's archetype name, if available.
---@field armour integer [GET_PED_ARMOUR / SET_PED_ARMOUR]
---@field attachedTo? fx.Entity (read-only) [GET_ENTITY_ATTACHED_TO]
---@field blip? fx.Blip (read-only) [GET_BLIP_FROM_ENTITY]
---@field boneCount integer (read-only) [GET_ENTITY_BONE_COUNT]
---@field canBeDamaged boolean (read-only) [GET_ENTITY_CAN_BE_DAMAGED]
---@field canKnockOffVehicle boolean (read-only) [CAN_KNOCK_PED_OFF_VEHICLE]
---@field canRagdoll boolean (read-only) [CAN_PED_RAGDOLL]
---@field causeOfDeath integer (read-only) [GET_PED_CAUSE_OF_DEATH]
---@field cgoffset vector3 [GET_CGOFFSET / SET_CGOFFSET]
---@field collectionsCount integer (read-only) [GET_PED_COLLECTIONS_COUNT] Returns number of variation collections available for the given Ped. Collections are groups of drawable components or props available for the given Ped. Usuall…
---@field collisionDisabled boolean (read-only) [GET_ENTITY_COLLISION_DISABLED]
---@field collisionNormalOfLastHit vector3 (read-only) [GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY]
---@field combatMovement integer [GET_PED_COMBAT_MOVEMENT / SET_PED_COMBAT_MOVEMENT]
---@field combatRange integer [GET_PED_COMBAT_RANGE / SET_PED_COMBAT_RANGE]
---@field currentWeaponEntityIndex? fx.Entity (read-only) [GET_CURRENT_PED_WEAPON_ENTITY_INDEX]
---@field decorations table (read-only) [GET_PED_DECORATIONS] Returns a list of decorations applied to a ped. The data returned adheres to the following layout: This command will return undefined data if invoked on a remo…
---@field decorationsState integer (read-only) [GET_PED_DECORATIONS_STATE]
---@field desiredMoveBlendRatio number [GET_PED_DESIRED_MOVE_BLEND_RATIO / SET_PED_DESIRED_MOVE_BLEND_RATIO]
---@field diesInWater boolean [GET_PED_DIES_IN_WATER / SET_PED_DIES_IN_WATER]
---@field doesHaveAiBlip boolean (read-only) [DOES_PED_HAVE_AI_BLIP]
---@field doesHaveAnimDirector boolean (read-only) [DOES_ENTITY_HAVE_ANIM_DIRECTOR]
---@field doesHaveDrawable boolean (read-only) [DOES_ENTITY_HAVE_DRAWABLE]
---@field doesHavePhysics boolean (read-only) [DOES_ENTITY_HAVE_PHYSICS]
---@field doesHaveSkeletonData boolean (read-only) [DOES_ENTITY_HAVE_SKELETON_DATA]
---@field emissiveIntensity number [GET_PED_EMISSIVE_INTENSITY / SET_PED_EMISSIVE_INTENSITY] Use [`SetPedIlluminatedClothingGlowIntensity`](#\_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.
---@field enveffScale number [GET_PED_ENVEFF_SCALE / SET_PED_ENVEFF_SCALE]
---@field eyeColor integer [GET_PED_EYE_COLOR / SET_PED_EYE_COLOR] A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
---@field forwardVector vector3 (read-only) [GET_ENTITY_FORWARD_VECTOR]
---@field forwardX number (read-only) [GET_ENTITY_FORWARD_X]
---@field forwardY number (read-only) [GET_ENTITY_FORWARD_Y]
---@field groupIndex? fx.PedGroup (read-only) [GET_PED_GROUP_INDEX]
---@field hairColor integer (read-only) [GET_PED_HAIR_COLOR] A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
---@field hairHighlightColor integer (read-only) [GET_PED_HAIR_HIGHLIGHT_COLOR] A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
---@field hasBeenDamagedByAnyObject boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT]
---@field hasBeenDamagedByAnyPed boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED]
---@field hasBeenDamagedByAnyVehicle boolean (read-only) [HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE]
---@field hasBeenRegisteredWithThisThread boolean (read-only) [NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD]
---@field hasCollidedWithAnything boolean (read-only) [HAS_ENTITY_COLLIDED_WITH_ANYTHING]
---@field hasCollisionLoadedAround boolean (read-only) [HAS_COLLISION_LOADED_AROUND_ENTITY]
---@field hasControl boolean (read-only) [NETWORK_HAS_CONTROL_OF_ENTITY]
---@field hasHeadBlendFinished boolean (read-only) [HAS_PED_HEAD_BLEND_FINISHED]
---@field hasPreloadPropDataFinished boolean (read-only) [HAS_PED_PRELOAD_PROP_DATA_FINISHED]
---@field hasPreloadVariationDataFinished boolean (read-only) [HAS_PED_PRELOAD_VARIATION_DATA_FINISHED]
---@field hasUseScenarioTask boolean (read-only) [PED_HAS_USE_SCENARIO_TASK]
---@field heading number [GET_ENTITY_HEADING / SET_ENTITY_HEADING]
---@field headingFromEulers number (read-only) [GET_ENTITY_HEADING_FROM_EULERS] Gets the heading of the entity physics in degrees, which tends to be more accurate than just [`GET_ENTITY_HEADING`](#\_0xE83D4F9BA2A38914). This can be clearly…
---@field health integer [GET_ENTITY_HEALTH / SET_ENTITY_HEALTH]
---@field heightAboveGround number (read-only) [GET_ENTITY_HEIGHT_ABOVE_GROUND]
---@field helmetStoredHatPropIndex integer (read-only) [GET_PED_HELMET_STORED_HAT_PROP_INDEX]
---@field helmetStoredHatTexIndex integer (read-only) [GET_PED_HELMET_STORED_HAT_TEX_INDEX]
---@field interior? fx.Interior (read-only) [GET_INTERIOR_FROM_ENTITY]
---@field invincible boolean (write-only) [SET_ENTITY_INVINCIBLE]
---@field isActiveInScenario boolean (read-only) [IS_PED_ACTIVE_IN_SCENARIO] This is a stricter version of [`IS_PED_USING_ANY_SCENARIO`](#\_0x57AB4A3080F85143). It only returns true if the ped is playing the ambient animations associate…
---@field isAimingFromCover boolean (read-only) [IS_PED_AIMING_FROM_COVER]
---@field isAmbientSpeechDisabled boolean (read-only) [IS_AMBIENT_SPEECH_DISABLED]
---@field isAmbientSpeechPlaying boolean (read-only) [IS_AMBIENT_SPEECH_PLAYING]
---@field isAMissionEntity boolean (read-only) [IS_ENTITY_A_MISSION_ENTITY]
---@field isAnimalVocalizationPlaying boolean (read-only) [IS_ANIMAL_VOCALIZATION_PLAYING]
---@field isAnObject boolean (read-only) [IS_ENTITY_AN_OBJECT]
---@field isAnySpeechPlaying boolean (read-only) [IS_ANY_SPEECH_PLAYING]
---@field isAPed boolean (read-only) [IS_ENTITY_A_PED]
---@field isAPlayer boolean (read-only) [IS_PED_A_PLAYER]
---@field isAttached boolean (read-only) [IS_ENTITY_ATTACHED]
---@field isAttachedToAnyObject boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_OBJECT]
---@field isAttachedToAnyPed boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_PED]
---@field isAttachedToAnyVehicle boolean (read-only) [IS_ENTITY_ATTACHED_TO_ANY_VEHICLE]
---@field isAVehicle boolean (read-only) [IS_ENTITY_A_VEHICLE]
---@field isBeingArrested boolean (read-only) [IS_PED_BEING_ARRESTED]
---@field isBeingJacked boolean (read-only) [IS_PED_BEING_JACKED]
---@field isBeingStealthKilled boolean (read-only) [IS_PED_BEING_STEALTH_KILLED]
---@field isClimbing boolean (read-only) [IS_PED_CLIMBING]
---@field isConcealed boolean (read-only) [NETWORK_IS_ENTITY_CONCEALED] Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
---@field isConversationDead boolean (read-only) [IS_CONVERSATION_PED_DEAD]
---@field isCuffed boolean (read-only) [IS_PED_CUFFED]
---@field isCurrentWeaponSilenced boolean (read-only) [IS_PED_CURRENT_WEAPON_SILENCED]
---@field isDead boolean (read-only) [IS_ENTITY_DEAD]
---@field isDiving boolean (read-only) [IS_PED_DIVING]
---@field isDoingBeastJump boolean (read-only) [IS_PED_DOING_BEAST_JUMP]
---@field isDoingDriveby boolean (read-only) [IS_PED_DOING_DRIVEBY]
---@field isDrivebyTaskUnderneathDrivingTask boolean (read-only) [IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK]
---@field isDucking boolean (read-only) [IS_PED_DUCKING]
---@field isFading boolean (read-only) [NETWORK_IS_ENTITY_FADING]
---@field isFalling boolean (read-only) [IS_PED_FALLING]
---@field isFatallyInjured boolean (read-only) [IS_PED_FATALLY_INJURED]
---@field isFlashLightOn boolean (read-only) [IS_FLASH_LIGHT_ON]
---@field isFleeing boolean (read-only) [IS_PED_FLEEING]
---@field isFocus boolean (read-only) [IS_ENTITY_FOCUS]
---@field isGettingIntoAVehicle boolean (read-only) [IS_PED_GETTING_INTO_A_VEHICLE]
---@field isGettingUp boolean (read-only) [IS_PED_GETTING_UP]
---@field isGhostedToLocalPlayer boolean (read-only) [IS_ENTITY_GHOSTED_TO_LOCAL_PLAYER]
---@field isGoingIntoCover boolean (read-only) [IS_PED_GOING_INTO_COVER]
---@field isHangingOnToVehicle boolean (read-only) [IS_PED_HANGING_ON_TO_VEHICLE]
---@field isHelmetUnk boolean (read-only) [IS_PED_HELMET_UNK]
---@field isHuman boolean (read-only) [IS_PED_HUMAN]
---@field isHurt boolean (read-only) [IS_PED_HURT]
---@field isInAir boolean (read-only) [IS_ENTITY_IN_AIR]
---@field isInAnyBoat boolean (read-only) [IS_PED_IN_ANY_BOAT]
---@field isInAnyHeli boolean (read-only) [IS_PED_IN_ANY_HELI]
---@field isInAnyPlane boolean (read-only) [IS_PED_IN_ANY_PLANE]
---@field isInAnyPoliceVehicle boolean (read-only) [IS_PED_IN_ANY_POLICE_VEHICLE]
---@field isInAnySub boolean (read-only) [IS_PED_IN_ANY_SUB]
---@field isInAnyTaxi boolean (read-only) [IS_PED_IN_ANY_TAXI]
---@field isInAnyTrain boolean (read-only) [IS_PED_IN_ANY_TRAIN]
---@field isInCoverFacingLeft boolean (read-only) [IS_PED_IN_COVER_FACING_LEFT]
---@field isInCurrentConversation boolean (read-only) [IS_PED_IN_CURRENT_CONVERSATION]
---@field isInFlyingVehicle boolean (read-only) [IS_PED_IN_FLYING_VEHICLE]
---@field isInGroup boolean (read-only) [IS_PED_IN_GROUP]
---@field isInHighCover boolean (read-only) [IS_PED_IN_HIGH_COVER]
---@field isInjured boolean (read-only) [IS_PED_INJURED] Indicates whether this ped's health is below its injured threshold. The default threshold is 100, these are stored in the `pedhealth.meta` file located in `com…
---@field isInMeleeCombat boolean (read-only) [IS_PED_IN_MELEE_COMBAT]
---@field isInParachuteFreeFall boolean (read-only) [IS_PED_IN_PARACHUTE_FREE_FALL]
---@field isInWater boolean (read-only) [IS_ENTITY_IN_WATER]
---@field isInWrithe boolean (read-only) [IS_PED_IN_WRITHE] This native checks if a ped is on the ground, in pain from a (gunshot) wound.
---@field isJacking boolean (read-only) [IS_PED_JACKING]
---@field isJumping boolean (read-only) [IS_PED_JUMPING]
---@field isJumpingOutOfVehicle boolean (read-only) [IS_PED_JUMPING_OUT_OF_VEHICLE]
---@field isLocal boolean (read-only) [NETWORK_GET_ENTITY_IS_LOCAL]
---@field isMale boolean (read-only) [IS_PED_MALE]
---@field isMountedWeaponTaskUnderneathDrivingTask boolean (read-only) [IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK]
---@field isMoveBlendRatioRunning boolean (read-only) [IS_MOVE_BLEND_RATIO_RUNNING]
---@field isMoveBlendRatioSprinting boolean (read-only) [IS_MOVE_BLEND_RATIO_SPRINTING]
---@field isMoveBlendRatioStill boolean (read-only) [IS_MOVE_BLEND_RATIO_STILL]
---@field isMoveBlendRatioWalking boolean (read-only) [IS_MOVE_BLEND_RATIO_WALKING]
---@field isNetworked boolean (read-only) [NETWORK_GET_ENTITY_IS_NETWORKED]
---@field isOccluded boolean (read-only) [IS_ENTITY_OCCLUDED]
---@field isOnAnyBike boolean (read-only) [IS_PED_ON_ANY_BIKE]
---@field isOnFire boolean (read-only) [IS_ENTITY_ON_FIRE]
---@field isOnFoot boolean (read-only) [IS_PED_ON_FOOT]
---@field isOnMount boolean (read-only) [IS_PED_ON_MOUNT]
---@field isOnScreen boolean (read-only) [IS_ENTITY_ON_SCREEN] Determines whether the screen position of the specified entity is within the 2D bounds of the screen. This native will not check if the entity is not visible d…
---@field isOnVehicle boolean (read-only) [IS_PED_ON_VEHICLE]
---@field isOpeningADoor boolean (read-only) [IS_PED_OPENING_A_DOOR]
---@field isPerformingDependentComboLimit boolean (read-only) [IS_PED_PERFORMING_DEPENDENT_COMBO_LIMIT]
---@field isPerformingMeleeAction boolean (read-only) [IS_PED_PERFORMING_MELEE_ACTION]
---@field isPerformingStealthKill boolean (read-only) [IS_PED_PERFORMING_STEALTH_KILL]
---@field isPlantingBomb boolean (read-only) [IS_PED_PLANTING_BOMB]
---@field isPlayingBaseClipInScenario boolean (read-only) [IS_PED_PLAYING_BASE_CLIP_IN_SCENARIO]
---@field isPlayingPhoneGestureAnim boolean (read-only) [IS_PLAYING_PHONE_GESTURE_ANIM]
---@field isPositionFrozen boolean (read-only) [IS_ENTITY_POSITION_FROZEN] A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
---@field isProne boolean (read-only) [IS_PED_PRONE]
---@field isRagdoll boolean (read-only) [IS_PED_RAGDOLL]
---@field isReloading boolean (read-only) [IS_PED_RELOADING]
---@field isRingtonePlaying boolean (read-only) [IS_PED_RINGTONE_PLAYING]
---@field isRunning boolean (read-only) [IS_PED_RUNNING]
---@field isRunningArrestTask boolean (read-only) [IS_PED_RUNNING_ARREST_TASK]
---@field isRunningMeleeTask boolean (read-only) [IS_PED_RUNNING_MELEE_TASK]
---@field isRunningMobilePhoneTask boolean (read-only) [IS_PED_RUNNING_MOBILE_PHONE_TASK]
---@field isRunningRagdollTask boolean (read-only) [IS_PED_RUNNING_RAGDOLL_TASK]
---@field isScriptedSpeechPlaying boolean (read-only) [IS_SCRIPTED_SPEECH_PLAYING]
---@field isScubaGearLightEnabled boolean (read-only) [IS_SCUBA_GEAR_LIGHT_ENABLED]
---@field isShaderEffectValid boolean (read-only) [IS_PED_SHADER_EFFECT_VALID]
---@field isShooting boolean (read-only) [IS_PED_SHOOTING]
---@field isSittingInAnyVehicle boolean (read-only) [IS_PED_SITTING_IN_ANY_VEHICLE]
---@field isSprinting boolean (read-only) [IS_PED_SPRINTING]
---@field isStatic boolean (read-only) [IS_ENTITY_STATIC]
---@field isStill boolean (read-only) [IS_PED_STILL]
---@field isStopped boolean (read-only) [IS_PED_STOPPED]
---@field isStrafing boolean (read-only) [IS_PED_STRAFING]
---@field isSwappingWeapon boolean (read-only) [IS_PED_SWAPPING_WEAPON]
---@field isSwimming boolean (read-only) [IS_PED_SWIMMING]
---@field isSwimmingUnderWater boolean (read-only) [IS_PED_SWIMMING_UNDER_WATER]
---@field isTakingOffHelmet boolean (read-only) [IS_PED_TAKING_OFF_HELMET]
---@field isTaskMoveNetworkActive boolean (read-only) [IS_TASK_MOVE_NETWORK_ACTIVE]
---@field isTaskMoveNetworkReadyForTransition boolean (read-only) [IS_TASK_MOVE_NETWORK_READY_FOR_TRANSITION]
---@field isTennisMode boolean (read-only) [IS_TENNIS_MODE]
---@field isTracked boolean (read-only) [IS_PED_TRACKED]
---@field isTrackedVisible boolean (read-only) [IS_TRACKED_PED_VISIBLE]
---@field isTryingToEnterALockedVehicle boolean (read-only) [IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE] If the ped is attempting to enter a locked vehicle.
---@field isUpsidedown boolean (read-only) [IS_ENTITY_UPSIDEDOWN]
---@field isUsingActionMode boolean (read-only) [IS_PED_USING_ACTION_MODE]
---@field isUsingAnyScenario boolean (read-only) [IS_PED_USING_ANY_SCENARIO]
---@field isVaulting boolean (read-only) [IS_PED_VAULTING]
---@field isVisible boolean (read-only) [IS_ENTITY_VISIBLE]
---@field isVisibleToScript boolean (read-only) [IS_ENTITY_VISIBLE_TO_SCRIPT]
---@field isWaitingForWorldCollision boolean (read-only) [IS_ENTITY_WAITING_FOR_WORLD_COLLISION]
---@field isWalking boolean (read-only) [IS_PED_WALKING]
---@field isWeaponReadyToShoot boolean (read-only) [IS_PED_WEAPON_READY_TO_SHOOT]
---@field isWearingHelmet boolean (read-only) [IS_PED_WEARING_HELMET]
---@field jackTarget? fx.Ped (read-only) [GET_JACK_TARGET]
---@field keyForInRoom integer (read-only) [GET_KEY_FOR_ENTITY_IN_ROOM]
---@field lastMaterialHit integer (read-only) [GET_LAST_MATERIAL_HIT_BY_ENTITY]
---@field lastVehicle? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_IN] Last vehicle used by the ped. Retrieves the vehicle the specified ped is currently in, or the last vehicle they were in.
---@field lastVelocityReceived vector3 (read-only) [NETWORK_GET_LAST_VELOCITY_RECEIVED]
---@field lockonDistanceOfCurrentWeapon number (read-only) [GET_LOCKON_DISTANCE_OF_CURRENT_PED_WEAPON]
---@field lodDist integer [GET_ENTITY_LOD_DIST / SET_ENTITY_LOD_DIST]
---@field maxHealth integer [GET_PED_MAX_HEALTH / SET_PED_MAX_HEALTH]
---@field maxRangeOfCurrentWeapon number (read-only) [GET_MAX_RANGE_OF_CURRENT_PED_WEAPON]
---@field meleeTarget? fx.Ped (read-only) [GET_MELEE_TARGET_FOR_PED]
---@field model fx.Model (read-only) [GET_ENTITY_MODEL] Returns the model hash from an entity.
---@field money integer [GET_PED_MONEY / SET_PED_MONEY]
---@field mount? fx.Ped (read-only) [GET_MOUNT]
---@field movementClipset integer (read-only) [GET_PED_MOVEMENT_CLIPSET]
---@field navmeshRouteResult integer (read-only) [GET_NAVMESH_ROUTE_RESULT] See [`GET_NAVMESH_ROUTE_DISTANCE_REMAINING`](#\_0xC6F5C0BCDC74D62D) for more details.
---@field nearestPlayer? fx.Player (read-only) [GET_NEAREST_PLAYER_TO_ENTITY]
---@field netScriptId integer (read-only) [NETWORK_GET_ENTITY_NET_SCRIPT_ID]
---@field networkId integer (read-only) [NETWORK_GET_NETWORK_ID_FROM_ENTITY] Get the network id of the given entity An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconvert…
---@field objectIndexFromIndex? fx.Object (read-only) [GET_OBJECT_INDEX_FROM_ENTITY_INDEX]
---@field owner integer (read-only) [NETWORK_GET_ENTITY_OWNER] Returns the owner ID of the specified entity.
---@field parachuteLandingType integer (read-only) [GET_PED_PARACHUTE_LANDING_TYPE]
---@field parachuteState integer (read-only) [GET_PED_PARACHUTE_STATE]
---@field pedIndexFromIndex? fx.Ped (read-only) [GET_PED_INDEX_FROM_ENTITY_INDEX]
---@field pedsJacker? fx.Ped (read-only) [GET_PEDS_JACKER]
---@field pedType fx.Enum.PedType (read-only) [GET_PED_TYPE] Ped types:
---@field phoneGestureAnimCurrentTime number (read-only) [GET_PHONE_GESTURE_ANIM_CURRENT_TIME]
---@field phoneGestureAnimTotalTime number (read-only) [GET_PHONE_GESTURE_ANIM_TOTAL_TIME]
---@field pitch number (read-only) [GET_ENTITY_PITCH]
---@field playerIsFollowing? fx.Player (read-only) [GET_PLAYER_PED_IS_FOLLOWING]
---@field populationType integer (read-only) [GET_ENTITY_POPULATION_TYPE] A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
---@field position vector3 [GET_ENTITY_COORDS / SET_ENTITY_COORDS] Entity position. Assigning calls SET_ENTITY_COORDS without flags (alive/dead/ragdoll/clearArea = false); use setCoords for the flags. Gets the current coordina…
---@field relationshipGroupDefaultHash integer|string [GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH / SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH]
---@field relationshipGroupHash integer|string [GET_PED_RELATIONSHIP_GROUP_HASH / SET_PED_RELATIONSHIP_GROUP_HASH]
---@field roll number (read-only) [GET_ENTITY_ROLL]
---@field roomKey integer (read-only) [GET_ROOM_KEY_FROM_ENTITY]
---@field rotationVelocity vector3 (read-only) [GET_ENTITY_ROTATION_VELOCITY]
---@field seatIsTryingToEnter integer (read-only) [GET_SEAT_PED_IS_TRYING_TO_ENTER]
---@field selectedWeapon integer (read-only) [GET_SELECTED_PED_WEAPON]
---@field sequenceProgress integer (read-only) [GET_SEQUENCE_PROGRESS]
---@field sourceOfDeath? fx.Entity (read-only) [GET_PED_SOURCE_OF_DEATH]
---@field speed number (read-only) [GET_ENTITY_SPEED] Get the speed of a entity.
---@field stealthMovement boolean (read-only) [GET_PED_STEALTH_MOVEMENT]
---@field submergedLevel number (read-only) [GET_ENTITY_SUBMERGED_LEVEL]
---@field sweat number [GET_PED_SWEAT / SET_PED_SWEAT] A getter for [SET_PED_SWEAT](#\_0x27B0405F59637D1F).
---@field taskMoveNetworkState string (read-only) [GET_TASK_MOVE_NETWORK_STATE]
---@field tennisSwingAnimComplete boolean (read-only) [GET_TENNIS_SWING_ANIM_COMPLETE]
---@field timeOfDeath integer (read-only) [GET_PED_TIME_OF_DEATH]
---@field type integer (read-only) [GET_ENTITY_TYPE]
---@field uprightValue number (read-only) [GET_ENTITY_UPRIGHT_VALUE]
---@field vehicle? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_IN] Current vehicle of the ped (nil when not in a vehicle). Retrieves the vehicle the specified ped is currently in, or the last vehicle they were in.
---@field vehicleIndexFromIndex? fx.Vehicle (read-only) [GET_VEHICLE_INDEX_FROM_ENTITY_INDEX]
---@field vehicleIsEntering? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_ENTERING]
---@field vehicleIsTryingToEnter? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_TRYING_TO_ENTER]
---@field vehicleIsUsing? fx.Vehicle (read-only) [GET_VEHICLE_PED_IS_USING]
---@field velocity vector3 [GET_ENTITY_VELOCITY / SET_ENTITY_VELOCITY]
---@field visualFieldCenterAngle number [GET_PED_VISUAL_FIELD_CENTER_ANGLE / SET_PED_VISUAL_FIELD_CENTER_ANGLE]
---@field wasKilledByStealth boolean (read-only) [WAS_PED_KILLED_BY_STEALTH] Verifies whether ped was eliminated through stealth.
---@field wasKilledByTakedown boolean (read-only) [WAS_PED_KILLED_BY_TAKEDOWN]
---@field wasKnockedOut boolean (read-only) [WAS_PED_KNOCKED_OUT]
---@field wasSkeletonUpdated boolean (read-only) [WAS_PED_SKELETON_UPDATED]
---@field waypointProgress integer (read-only) [GET_PED_WAYPOINT_PROGRESS]
---@field weaponAnimationOverride integer|string [GET_WEAPON_ANIMATION_OVERRIDE / SET_WEAPON_ANIMATION_OVERRIDE] A getter for [SET_WEAPON_ANIMATION_OVERRIDE](#\_0x1055AC3A667F09D9).
local Ped = {}

---Registers a headshot and waits until its texture is ready. Promise resolved with (txd, id);
---release it with Ped.releaseHeadshot(id). NUI: `https://nui-img/<txd>/<txd>`.
---@param transparent? boolean REGISTER_PEDHEADSHOT_TRANSPARENT
---@param timeoutMs? integer
---@return fx.Promise<string, integer>
function Ped:headshotAsync(transparent, timeoutMs) end

---Reads the outfit (clothes and props), by group (both when `groups` is nil). Addon and DLC drawables are saved as
---collection + local index: the outfit stays valid when the server clothing packs change.
---@param groups? fx.PedOutfitGroup[]
---@return fx.PedOutfit
function Ped:getOutfit(groups) end

---Puts an outfit on: only the keys present are applied. Immediate, so the drawables may pop in for a few frames:
---setOutfitAsync streams them first. This client must control the ped (error in debug mode otherwise).
---@param outfit fx.PedOutfit
---@return fx.Ped
function Ped:setOutfit(outfit) end

---Takes control of the ped, streams the drawables of the outfit, then puts them on at once. Never yields.
---@param outfit fx.PedOutfit
---@param timeoutMs? integer
---@return fx.Promise<fx.Ped>
function Ped:setOutfitAsync(outfit, timeoutMs) end

---Reads the appearance (head blend, face, head, hair, overlays, tattoos), by group (all when `groups` is nil).
---@param groups? fx.PedAppearanceGroup[]
---@return fx.PedAppearance
function Ped:getAppearance(groups) end

---Applies an appearance: only the groups and keys present, the head blend first. This client must control the ped
---(error in debug mode otherwise).
---@param appearance fx.PedAppearance
---@return fx.Ped
function Ped:setAppearance(appearance) end

---Takes control of the ped, then calls setAppearance. Never yields.
---@param appearance fx.PedAppearance
---@param timeoutMs? integer
---@return fx.Promise<fx.Ped>
function Ped:setAppearanceAsync(appearance, timeoutMs) end

---Promise resolved with the entity once it really exists (and, if networked, once it has a network id).
---Rejects with a TimeoutError after `timeoutMs` (default 10000). Works on any wrapper.
---@param timeoutMs? integer
---@return fx.Promise<fx.Ped>
function Ped:readyAsync(timeoutMs) end

---Requests network control until it is granted, and resolves with the entity. Never yields.
---Resolves at once for a local (non-networked) entity or one already controlled. Rejects with a TimeoutError
---after `timeoutMs` (default 10000), or with an Error if the entity disappears.
---@param timeoutMs? integer
---@return fx.Promise<fx.Ped>
function Ped:takeControlAsync(timeoutMs) end

---Requests the collision around the entity until it is loaded, and resolves with the entity. Never yields.
---Use it after a teleport, before unfreezing the entity, so that it does not fall through the map.
---@param timeoutMs? integer
---@return fx.Promise<fx.Ped>
function Ped:loadCollisionAsync(timeoutMs) end

---Escape hatch: calls any native (including unnamed ones) with the handle as first argument.
---@param hash integer
---@param ... any
---@return any
function Ped:invoke(hash, ...) end

--- **Native**: `ACTIVATE_PHYSICS` (`0x710311ADF0E20730`)
---@return fx.Ped self
function Ped:activatePhysics() end

--- **Native**: `ADD_AMMO_TO_PED` (`0x78F0424C34306220`)
---@param weaponHash integer|string
---@param ammo integer
---@return fx.Ped self
function Ped:addAmmo(weaponHash, ammo) end

--- **Native**: `ADD_AMMO_TO_PED_BY_TYPE` (`0x2472622CE1F2D45F`)
---@param ammoType integer|string
---@param ammo integer
---@return fx.Ped self
function Ped:addAmmoToByType(ammoType, ammo) end

--- ```
--- Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.
--- ```
--- **Native**: `ADD_ARMOUR_TO_PED` (`0x5BA652A0CD14DF2F`)
---@param amount integer
---@return fx.Ped self
function Ped:addArmour(amount) end

--- Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
--- Can be used for objects, vehicles and peds.
---
--- Example of enemy:
--- ![enemy](https://i.imgur.com/fl78svv.png)
--- Example of friend:
--- ![friend](https://i.imgur.com/Q16ho5d.png)
--- **Native**: `ADD_BLIP_FOR_ENTITY` (`0x5CDE92C702A8FCE7`)
---@return fx.Blip? result A blip.
function Ped:addBlip() end

--- ```
--- Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
--- collection - PedDecorationCollection filename hash
--- overlay - Item name hash
--- Example:
--- Entry inside "mpbeach_overlays.xml" -
--- <Item>
---   <uvPos x="0.500000" y="0.500000" />
---   <scale x="0.600000" y="0.500000" />
---   <rotation value="0.000000" />
---   <nameHash>FM_Hair_Fuzz</nameHash>
---   <txdHash>mp_hair_fuzz</txdHash>
---   <txtHash>mp_hair_fuzz</txtHash>
---   <zone>ZONE_HEAD</zone>
---   <type>TYPE_TATTOO</type>
---   <faction>FM</faction>
---   <garment>All</garment>
---   <gender>GENDER_DONTCARE</gender>
---   <award />
---   <awardLevel />
--- </Item>
--- Code:
--- PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
--- ```
--- **Native**: `ADD_PED_DECORATION_FROM_HASHES` (`0x5F5D1665E352A839`)
---@param collection integer|string
---@param overlay integer|string
---@return fx.Ped self
function Ped:addDecorationFromHashes(collection, overlay) end

--- **Native**: `ADD_PED_DECORATION_FROM_HASHES_IN_CORONA` (`0x5619BFA07CFD7833`)
---@param collection integer|string
---@param overlay integer|string
---@return fx.Ped self
function Ped:addDecorationFromHashesInCorona(collection, overlay) end

--- ```
--- Example:
--- GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");
--- I tried this and nothing happened...
--- ```
--- **Native**: `ADD_ENTITY_ICON` (`0x9CD43EEE12BF4DD0`)
---@param icon string
---@return any result
function Ped:addIcon(icon) end

--- **Native**: `ADD_OWNED_EXPLOSION` (`0x172AA1B624FA1013`)
---@param coords vector3
---@param explosionType integer See [`ADD_EXPLOSION`](#\_0xE3AD2BDBAEE269AC).
---@param damageScale number
---@param isAudible boolean If explosion makes a sound.
---@param isInvisible boolean If the explosion is invisible or not.
---@param cameraShake number
---@return fx.Ped self
function Ped:addOwnedExplosion(coords, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

--- ```
--- All found occurrences in b678d:
--- pastebin.com/ceu67jz8
--- ```
--- **Native**: `ADD_ENTITY_TO_AUDIO_MIX_GROUP` (`0x153973AB99FE8980`)
---@param groupName string
---@param fadeIn number
---@return fx.Ped self
function Ped:addToAudioMixGroup(groupName, fadeIn) end

--- Adds a ped to a networked synchronised scene.
---
--- Synchronized scene playback flags (Also works in other `NETWORK_ADD_*_TO_SYNCHRONISED_SCENE` natives):
--- | Value     |                  Name                     |                                                             Notes                                                                |
--- | :-------: | :---------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------: |
--- | `0`       |  None                                     | No flag set.                                                                                                                     |
--- | `1`       | USE_PHYSICS                               | Allows the ped to have physics during the scene.                                                                                 |
--- | `2`       | TAG_SYNC_OUT                              | The task will do a tag synchronized blend out with the movement behaviour of the ped.                                            |
--- | `4`       | DONT_INTERRUPT                            | The scene will not be interrupted by external events.                                                                            |
--- | `8`       | ON_ABORT_STOP_SCENE                       | The scene will be stopped if the scripted task is aborted.                                                                       |
--- | `16`      | ABORT_ON_WEAPON_DAMAGE                    | The scene will be stopped if the ped is damaged by a weapon.                                                                     |
--- | `32`      | BLOCK_MOVER_UPDATE                        | The task will not update the mover.                                                                                              |
--- | `64`      | LOOP_WITHIN_SCENE                         | Animations within this scene will be looped until the scene is finished.                                                         |
--- | `128`     | PRESERVE_VELOCITY                         | The task will keep it's velocity when the scene is cleaned up/stopped. Do note that the `USE_PHYSICS` flag must also be present. |
--- | `256`     | EXPAND_PED_CAPSULE_FROM_SKELETON          | The task will apply the `ExpandPedCapsuleFromSkeleton` reset flag to the ped (See [`SET_PED_RESET_FLAG`](#\_0xC1E8A365BF3B29F2)). |
--- | `512`     | ACTIVATE_RAGDOLL_ON_COLLISION             | The ped will be ragdoll if it comes in contact with an object.                                                                   |
--- | `1024`    | HIDE_WEAPON                               | The ped's current weapon will be hidden during the scene.                                                                        |
--- | `2048`    | ABORT_ON_DEATH                            | The synchronised scene will be aborted if the ped dies.                                                                          |
--- | `4096`    | VEHICLE_ABORT_ON_LARGE_IMPACT             | If the scene is running on a vehicle, then it will be aborted if the vehicle takes a heavy collision with another vehicle.       |
--- | `8192`    | VEHICLE_ALLOW_PLAYER_ENTRY                | If the scene is on a vehicle, it allows players to enter it.                                                                     |
--- | `16384`   | PROCESS_ATTACHMENTS_ON_START              | Attachments will be processed at the start of the scene.                                                                         |
--- | `32768`   | NET_ON_EARLY_NON_PED_STOP_RETURN_TO_START | A non-ped entity will be returned to their starting position if the scene finishes early.                                        |
--- | `65536`   | SET_PED_OUT_OF_VEHICLE_AT_START           | If the ped is in a vehicle when the scene starts, it will be set out of the vehicle.                                             |
--- | `131072`  | NET_DISREGARD_ATTACHMENT_CHECKS           | Attachment checks will be disregarded when the scene is running.                                                                 |
---
--- These flags can be combined with the `|` operator.
--- **Native**: `NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE` (`0x742A637471BCECD9`)
---@param netScene integer Network scene handle (Returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#\_0x7CD6BC4C2BBDD526))
---@param animDict string Dictionary of the animation that the ped will play. Network synchronised scenes don't require the animation dictionary to be loaded, unlike [`TASK_SYNCHRONIZED_SCENE`](#\_0xEEA929141F699854).
---@param animClip string Clip name from the anim dictionary that the ped will play.
---@param blendInSpeed number Blend in speed. The lower the value, the slower the blend in speed is. Default is `8.0`.
---@param blendOutSpeed number Blend out speed. This should be the negative value of `blendInSpeed`. Default is `-8.0`.
---@param syncedSceneFlags integer Synchronized scene flags bit field from the above table.
---@param ragdollFlags integer Ragdoll blocking flags. Default is `0`.
---@param moverBlendInDelta number Determines the rate at which the mover blends in to the scene. Useful for ensuring a seamless entry onto a synchronized scene. Default is `1000.0`.
---@param ikFlags integer Inverse kinematics flags. Default is `0`.
---@return fx.Ped self
function Ped:addToSynchronisedScene(netScene, animDict, animClip, blendInSpeed, blendOutSpeed, syncedSceneFlags, ragdollFlags, moverBlendInDelta, ikFlags) end

--- Adds a ped to a networked synchronized scene but extends [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9) to support IK flags.
--- There is barely any difference between this and [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9).
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE_WITH_IK` (`0xA5EAFE473E45C442`)
---@param netSceneID integer Network scene ID returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#\_0x7CD6BC4C2BBDD526).
---@param animDict string Which anim dictionary to use on this ped.
---@param animClip string Which clip from the anim dictionary to use on this ped.
---@param blendIn number Blend in speed of the animation. Default is `8.0`.
---@param blendOut number Blend out speed of the animation. Default is `-8.0`.
---@param sceneFlags integer Synchronized scene flags. See [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9).
---@param ragdollFlags integer Ragdoll blocking flags. Default is 0.
---@param moverBlendInDelta number Determines the rate at which the mover blends in to the scene. Useful for ensuring a seamless entry onto a synchronized scene. Default is `1000.0`.
---@param ikFlags integer Inverse kinematics flags. Default is `0`.
---@return fx.Ped self
function Ped:addToSynchronisedSceneWithIk(netSceneID, animDict, animClip, blendIn, blendOut, sceneFlags, ragdollFlags, moverBlendInDelta, ikFlags) end

--- **Native**: `ADD_VEHICLE_SUBTASK_ATTACK_PED` (`0x85F462BADC7DA47F`)
---@param ped2 fx.Ped|integer
---@return fx.Ped self
function Ped:addVehicleSubtaskAttack(ped2) end

--- ```
--- x, y, z: offset in world coords from some entity.
--- ```
--- **Native**: `ADD_VEHICLE_SUBTASK_ATTACK_COORD` (`0x5CF0D8F9BBA0DD75`)
---@param coords vector3
---@return fx.Ped self
function Ped:addVehicleSubtaskAttackCoord(coords) end

--- Allows scripts to use attachment commands on entities (eg. [`ATTACH_ENTITY_TO_ENTITY`](#\_0x6B9BBD38AB0796DF)) that are not controlled by the client.
---
--- **Note:** This is only local and does not affect entities on other machines. This is used by the ferris wheel script to sync players on carts.
--- **Native**: `NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION` (`0x267C78C60E806B9A`)
---@param toggle boolean true/false.
---@return fx.Ped self
function Ped:allowRemoteAttachmentModification(toggle) end

--- ```
--- Found one occurence in re_crashrescue.c4
--- PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");
--- ```
--- **Native**: `APPLY_PED_BLOOD` (`0x83F7E01C7B769A26`)
---@param boneIndex integer
---@param rot vector3
---@param woundType string
---@return fx.Ped self
function Ped:applyBlood(boneIndex, rot, woundType) end

--- **Native**: `APPLY_PED_BLOOD_BY_ZONE` (`0x3311E47B91EDCBBC`)
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 any
---@return any p4
function Ped:applyBloodByZone(p1, p2, p3, p4) end

--- **Native**: `APPLY_PED_BLOOD_DAMAGE_BY_ZONE` (`0x816F6981C60BF53B`)
---@param p1 any
---@param p2 number
---@param p3 number
---@param p4 any
---@return fx.Ped self
function Ped:applyBloodDamageByZone(p1, p2, p3, p4) end

--- Applies blood damage to a ped with specific parameters for zone, UV offsets, rotation, scale, and initial aging.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `APPLY_PED_BLOOD_SPECIFIC` (`0xEF0D582CBF2D9B0F`)
---@param component integer Specific component or body part.
---@param u number UV texture coordinates for placing the decal in the specified zone.
---@param v number UV texture coordinates for placing the decal in the specified zone.
---@param rotation number Angle in degrees for the rotation of the blood decal.
---@param scale number Scale factor for the damage, ranging from 0.0 to 1.0.
---@param forcedFrame integer Allows a specific frame of damage to be chosen (-1 for random selection).
---@param preAge number Number of seconds to pre-age the damage for an "old wound" effect (0.0 for fresh wound).
---@param bloodName string Name of the blood type, matching an entry in peddamage.xml.
---@return fx.Ped self
function Ped:applyBloodSpecific(component, u, v, rotation, scale, forcedFrame, preAge, bloodName) end

--- **Native**: `NETWORK_APPLY_CACHED_PLAYER_HEAD_BLEND_DATA` (`0x99B72C7ABDE5C910`)
---@param player fx.Player|integer
---@return boolean result
function Ped:applyCachedPlayerHeadBlendData(player) end

--- ```
--- damages a ped with the given amount
--- ----
--- armorFirst means it will damage/lower the armor first before damaging the player.
--- setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.
--- ```
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `APPLY_DAMAGE_TO_PED` (`0x697157CED63F18D4`)
---@param damageAmount integer
---@param armorFirst boolean
---@return fx.Ped self
function Ped:applyDamage(damageAmount, armorFirst) end

--- ```
--- scar
--- blushing
--- cs_flush_anger
--- cs_flush_anger_face
--- bruise
--- bruise_large
--- herpes
--- ArmorBullet
--- basic_dirt_cloth
--- basic_dirt_skin
--- cs_trev1_dirt
--- ```
--- **Native**: `APPLY_PED_DAMAGE_DECAL` (`0x397C38AA7B4A5F83`)
---@param damageZone fx.Enum.PedDecorationZone|integer Refer to `ePedDecorationZone` in [GET_PED_DECORATION_ZONE_FROM_HASHES](#\_0x9FD452BFBE7A7A8B)
---@param xOffset number
---@param yOffset number
---@param heading number
---@param scale number
---@param alpha number
---@param variation integer
---@param fadeIn boolean
---@param decalName string
---@return fx.Ped self
function Ped:applyDamageDecal(damageZone, xOffset, yOffset, heading, scale, alpha, variation, fadeIn, decalName) end

--- ```
--- Damage Packs:
--- "SCR_TrevorTreeBang"
--- "HOSPITAL_0"
--- "HOSPITAL_1"
--- "HOSPITAL_2"
--- "HOSPITAL_3"
--- "HOSPITAL_4"
--- "HOSPITAL_5"
--- "HOSPITAL_6"
--- "HOSPITAL_7"
--- "HOSPITAL_8"
--- "HOSPITAL_9"
--- "SCR_Dumpster"
--- "BigHitByVehicle"
--- "SCR_Finale_Michael_Face"
--- "SCR_Franklin_finb"
--- "SCR_Finale_Michael"
--- "SCR_Franklin_finb2"
--- "Explosion_Med"
--- "SCR_Torture"
--- "SCR_TracySplash"
--- "Skin_Melee_0"
--- Additional damage packs:
--- gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227
--- ```
--- **Native**: `APPLY_PED_DAMAGE_PACK` (`0x46DF918788CB093F`)
---@param damagePack string
---@param damage number
---@param mult number
---@return fx.Ped self
function Ped:applyDamagePack(damagePack, damage, mult) end

--- Applies a force to the specified entity.
---
--- ```cpp
--- enum eForceType
--- {
---     MinForce = 0,
---     MaxForceRot = 1,
---     MinForce2 = 2,
---     MaxForceRot2 = 3,
---     ForceNoRot = 4,
---     ForceRotPlusForce = 5
--- }
--- ```
---
--- Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
--- **Native**: `APPLY_FORCE_TO_ENTITY` (`0xC5F68BE9613E2D18`)
---@param forceType fx.Enum.ApplyForceTypes|integer Refer to `eForceType`
---@param coords vector3 Force amount ()
---@param off vector3 Rotation/offset force ()
---@param boneIndex integer (Often 0) Entity bone index
---@param isDirectionRel boolean (Usually false) Vector defined in local (body-fixed) coordinate frame
---@param ignoreUpVec boolean (Usually true)
---@param isForceRel boolean (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
---@param p12 boolean (Usually false)
---@param p13 boolean (Usually true)
---@return fx.Ped self
function Ped:applyForce(forceType, coords, off, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13) end

--- **Native**: `APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS` (`0x18FF00FC7EFF559E`)
---@param forceType integer Refer to [APPLY_FORCE_TO_ENTITY](#\_0xC5F68BE9613E2D18)
---@param coords vector3
---@param p5 boolean
---@param isDirectionRel boolean
---@param isForceRel boolean
---@param p8 boolean
---@return fx.Ped self
function Ped:applyForceToCenterOfMass(forceType, coords, p5, isDirectionRel, isForceRel, p8) end

--- **Native**: `NETWORK_APPLY_PED_SCAR_DATA` (`0xE66C690248F11150`)
---@param p1 integer
---@return fx.Ped self
function Ped:applyScarData(p1) end

--- **Native**: `ATTACH_ENTITY_BONE_TO_ENTITY_BONE` (`0x5C48B75732C8456C`)
---@param entity2 fx.Entity|integer
---@param entityBone integer
---@param entityBone2 integer
---@param p4 boolean
---@param p5 boolean
---@return fx.Ped self
function Ped:attachBoneToEntityBone(entity2, entityBone, entityBone2, p4, p5) end

--- **Native**: `ATTACH_ENTITY_BONE_TO_ENTITY_BONE_PHYSICALLY` (`0xFD1695C5D3B05439`)
---@param entity2 fx.Entity|integer
---@param entityBone integer
---@param entityBone2 integer
---@param p4 boolean
---@param p5 boolean
---@return fx.Ped self
function Ped:attachBoneToEntityBonePhysically(entity2, entityBone, entityBone2, p4, p5) end

--- Attach an entity to the specified entity.
--- **Native**: `ATTACH_ENTITY_TO_ENTITY` (`0x6B9BBD38AB0796DF`)
---@param entity2 fx.Entity|integer Entity to attach `entity1` with.
---@param boneIndex integer This is different to boneID, use ['GET_PED_BONE_INDEX'](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `entity1` will be attached to the center of…
---@param pos vector3 -axis offset from the center of `entity2`.
---@param rot vector3 -axis rotation.
---@param p9 boolean Unknown. Does not seem to have any effect.
---@param useSoftPinning boolean If set to false attached entity will not detach when fixed.
---@param collision boolean Controls collision between the two entities (FALSE disables collision).
---@param isPed boolean Pitch doesnt work when false and roll will only work on negative numbers (only peds)
---@param rotationOrder fx.Enum.RotationOrder|integer The order in which the rotation is applied. See [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@param syncRot boolean If false it ignores entity rotation.
---@return fx.Ped self
function Ped:attachToEntity(entity2, boneIndex, pos, rot, p9, useSoftPinning, collision, isPed, rotationOrder, syncRot) end

--- ```
--- breakForce is the amount of force required to break the bond.
--- p14 - is always 1 in scripts
--- p15 - is 1 or 0 in scripts - unknown what it does
--- p16 - controls collision between the two entities (FALSE disables collision).
--- p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
--- p18 - is always 2 in scripts.
--- ```
--- **Native**: `ATTACH_ENTITY_TO_ENTITY_PHYSICALLY` (`0xC3675780C92F90F9`)
---@param entity2 fx.Entity|integer
---@param boneIndex1 integer
---@param boneIndex2 integer
---@param pos1 vector3
---@param pos2 vector3
---@param rot vector3
---@param breakForce number
---@param fixedRot boolean
---@param p15 boolean
---@param collision boolean
---@param teleport boolean
---@param p18 integer
---@return fx.Ped self
function Ped:attachToEntityPhysically(entity2, boneIndex1, boneIndex2, pos1, pos2, rot, breakForce, fixedRot, p15, collision, teleport, p18) end

--- ```
--- Might be more appropriate in AUDIO?
--- ```
--- **Native**: `ATTACH_TV_AUDIO_TO_ENTITY` (`0x845BAD77CC770633`)
---@return fx.Ped self
function Ped:attachTvAudio() end

--- Blocks *all* speech playing on the given ped, including speech triggered by natives such as [PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE](#\_0x3523634255FC3318)
---
--- The flag itself is not synced, it must be called on each machine that wishes to suppress the speech.
---
--- The `SuppressOutgoingNetworkSpeech` flag can be set to `false` if you want speech triggered locally through `PLAY_PED_AMBIENT_SPEECH_*` related native calls to still be audible on remote machines, even though it was blocked on the local one.
--- **Native**: `BLOCK_ALL_SPEECH_FROM_PED` (`0xF8AD2EED7C47E8FE`)
---@param shouldBlock boolean
---@param suppressOutgoingNetworkSpeech boolean Defaults to `true`.
---@return fx.Ped self
function Ped:blockAllSpeech(shouldBlock, suppressOutgoingNetworkSpeech) end

--- **Native**: `BLOCK_PED_DEAD_BODY_SHOCKING_EVENTS` (`0xE43A13C9E4CCCBCF`)
---@param toggle boolean
---@return fx.Ped self
function Ped:blockDeadBodyShockingEvents(toggle) end

--- **Native**: `BREAK_ENTITY_GLASS` (`0x2E648D16F6E308F3`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 any
---@param p10 boolean
---@return fx.Ped self
function Ped:breakGlass(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- **Native**: `CAN_PED_IN_COMBAT_SEE_TARGET` (`0xEAD42DE3610D0721`)
---@param target fx.Ped|integer
---@return boolean result
function Ped:canInCombatSeeTarget(target) end

--- **Native**: `CAN_PED_SEE_HATED_PED` (`0x6CD5A433374D4CFB`)
---@param ped2 fx.Ped|integer
---@return boolean result
function Ped:canSeeHatedPed(ped2) end

--- **Native**: `CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK` (`0x439E9BC95B7E7FBE`)
---@return boolean result
function Ped:cellCamIsCharVisibleNoFaceCheck() end

--- **Native**: `CLEAR_ALL_PED_PROPS` (`0xCD8A7537A9B52F06`)
---@return fx.Ped self
function Ped:clearAllProps() end

--- **Native**: `CLEAR_ALL_PED_VEHICLE_FORCED_SEAT_USAGE` (`0xE6CA85E7259CE16B`)
---@return fx.Ped self
function Ped:clearAllVehicleForcedSeatUsage() end

--- **Native**: `CLEAR_PED_ALTERNATE_MOVEMENT_ANIM` (`0xD8D19675ED5FBDCE`)
---@param stance integer
---@param p2 number
---@return fx.Ped self
function Ped:clearAlternateMovementAnim(stance, p2) end

--- **Native**: `CLEAR_PED_ALTERNATE_WALK_ANIM` (`0x8844BBFCE30AA9E9`)
---@param p1 number
---@return fx.Ped self
function Ped:clearAlternateWalkAnim(p1) end

--- Clears the blood on a ped.
--- **Native**: `CLEAR_PED_BLOOD_DAMAGE` (`0x8FE22675A5A45817`)
---@return fx.Ped self
function Ped:clearBloodDamage() end

--- ```
--- Somehow related to changing ped's clothes.
--- ```
--- **Native**: `CLEAR_PED_BLOOD_DAMAGE_BY_ZONE` (`0x56E3B78C5408D9F4`)
---@param p1 integer
---@return fx.Ped self
function Ped:clearBloodDamageByZone(p1) end

--- ```
--- CLEAR_PED_*
--- ```
--- **Native**: `CLEAR_PED_COVER_CLIPSET_OVERRIDE` (`0xC79196DCB36F6121`)
---@return fx.Ped self
function Ped:clearCoverClipsetOverride() end

--- ```
--- p1: from 0 to 5 in the b617d scripts.
--- p2: "blushing" and "ALL" found in the b617d scripts.
--- ```
--- **Native**: `CLEAR_PED_DAMAGE_DECAL_BY_ZONE` (`0x523C79AEEFCC4A2A`)
---@param p1 integer
---@param p2 string
---@return fx.Ped self
function Ped:clearDamageDecalByZone(p1, p2) end

--- **Native**: `CLEAR_PED_DECORATIONS` (`0x0E5173C163976E38`)
---@return fx.Ped self
function Ped:clearDecorations() end

--- **Native**: `CLEAR_PED_DECORATIONS_LEAVE_SCARS` (`0xE3B27E70CEAB9F0C`)
---@return fx.Ped self
function Ped:clearDecorationsLeaveScars() end

--- **Native**: `CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE` (`0x4AFE3690D7E0B5AC`)
---@return fx.Ped self
function Ped:clearDriveByClipsetOverride() end

--- **Native**: `CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK` (`0xC35B5CDB2824CF69`)
---@return fx.Ped self
function Ped:clearDrivebyTaskUnderneathDrivingTask() end

--- **Native**: `CLEAR_PED_ENV_DIRT` (`0x6585D955A68452A5`)
---@return fx.Ped self
function Ped:clearEnvDirt() end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `CLEAR_FACIAL_CLIPSET_OVERRIDE` (`0x637822DC2AFEEBF8`)
---@return fx.Ped self
function Ped:clearFacialClipsetOverride() end

--- **Native**: `CLEAR_FACIAL_IDLE_ANIM_OVERRIDE` (`0x726256CC1EEB182F`)
---@return fx.Ped self
function Ped:clearFacialIdleAnimOverride() end

--- Immediately removes entity from an interior. Like sets entity to `limbo` room.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `CLEAR_INTERIOR_FOR_ENTITY` (`0x85D5422B2039A70D`)
---@return fx.Ped self
function Ped:clearInterior() end

--- **Native**: `CLEAR_PED_LAST_DAMAGE_BONE` (`0x8EF6B7AC68E2F01B`)
---@return fx.Ped self
function Ped:clearLastDamageBone() end

--- This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
--- **Native**: `CLEAR_ENTITY_LAST_DAMAGE_ENTITY` (`0xA72CD9CA74A5ECBA`)
---@return fx.Ped self
function Ped:clearLastDamageEntity() end

--- Does NOT seem to work with HAS_PED_BEEN_DAMAGED_BY_WEAPON. Use CLEAR_ENTITY_LAST_WEAPON_DAMAGE and HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON instead.
--- **Native**: `CLEAR_PED_LAST_WEAPON_DAMAGE` (`0x0E98F88A24C5F4B8`)
---@return fx.Ped self
function Ped:clearLastWeaponDamage() end

--- **Native**: `CLEAR_PED_PARACHUTE_PACK_VARIATION` (`0x1280804F7CFD2D6C`)
---@return fx.Ped self
function Ped:clearParachutePackVariation() end

--- **Native**: `CLEAR_PED_PROP` (`0x0943E5B8E078E76E`)
---@param propId fx.Enum.AnchorPoints|integer The prop id you want to clear from the ped. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
---@return fx.Ped self
function Ped:clearProp(propId) end

--- ```
--- There seem to be 26 flags
--- ```
--- **Native**: `CLEAR_RAGDOLL_BLOCKING_FLAGS` (`0xD86D101FCFD00A4B`)
---@param flags integer
---@return fx.Ped self
function Ped:clearRagdollBlockingFlags(flags) end

--- **Native**: `CLEAR_ROOM_FOR_ENTITY` (`0xB365FC0C4E27FFA7`)
---@return fx.Ped self
function Ped:clearRoom() end

--- Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
--- **Native**: `CLEAR_PED_SCUBA_GEAR_VARIATION` (`0xB50EB4CCB29704AC`)
---@return fx.Ped self
function Ped:clearScubaGearVariation() end

--- **Native**: `CLEAR_PED_SECONDARY_TASK` (`0x176CECF6F920D707`)
---@return fx.Ped self
function Ped:clearSecondaryTask() end

--- **Native**: `CLEAR_PED_STORED_HAT_PROP` (`0x687C0B594907D2E8`)
---@return fx.Ped self
function Ped:clearStoredHatProp() end

--- Clear a ped's tasks. Stop animations and other tasks created by scripts.
--- **Native**: `CLEAR_PED_TASKS` (`0xE1EF3C1216AFF2CD`)
---@return fx.Ped self
function Ped:clearTasks() end

--- Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
--- **Native**: `CLEAR_PED_TASKS_IMMEDIATELY` (`0xAAA34F8A7CB32098`)
---@return fx.Ped self
function Ped:clearTasksImmediately() end

--- ```
--- It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.
--- ```
--- **Native**: `CLEAR_PED_WETNESS` (`0x9C720776DAA43E7E`)
---@return fx.Ped self
function Ped:clearWetness() end

--- Creates a copy of the passed ped, optionally setting it as local and/or shallow-copying the head blend data.
--- **Native**: `CLONE_PED` (`0xEF29A16337FACADB`)
---@param isNetwork boolean Whether or not the ped should be registered as a network object.
---@param bScriptHostPed boolean Script host flag.
---@param copyHeadBlendFlag boolean If true, head blend data is referenced, not copied.
---@return fx.Ped? result A new ped representing the ped's copy.
function Ped:clone(isNetwork, bScriptHostPed, copyHeadBlendFlag) end

--- Used one time in fmmc_launcher.c instead of CLONE_PED because ?
--- **Native**: `CLONE_PED_EX` (`0x668FD40BCBA5DE48`)
---@param heading number
---@param isNetwork boolean
---@param bScriptHostPed boolean
---@param p4 any
---@return fx.Ped? result
function Ped:cloneEx(heading, isNetwork, bScriptHostPed, p4) end

--- ```
--- Copies ped's components and props to targetPed.
--- ```
--- **Native**: `CLONE_PED_TO_TARGET` (`0xE952D6431689AD9A`)
---@param targetPed fx.Ped|integer
---@return fx.Ped self
function Ped:cloneToTarget(targetPed) end

--- **Native**: `CLONE_PED_TO_TARGET_EX` (`0x148B08C2D2ACB884`)
---@param targetPed fx.Ped|integer
---@param p2 any
---@return fx.Ped self
function Ped:cloneToTargetEx(targetPed, p2) end

--- **Native**: `NETWORK_CONCEAL_ENTITY` (`0x1632BE0AC1E62876`)
---@param toggle boolean
---@return fx.Ped self
function Ped:conceal(toggle) end

--- ```
--- Forces the ped to use the mounted weapon.
--- Returns false if task is not possible.
--- ```
--- **Native**: `CONTROL_MOUNTED_WEAPON` (`0xDCFE42068FE0135A`)
---@return boolean result
function Ped:controlMountedWeapon() end

--- As per the name, this native creates a "fake" gamer tag that is attached to a specific ped.
--- Unlike "real" gamer tags, you cannot set the crew colour of these gamer tags.
---
--- To create gamer tags for actual players and for more gamer tag information, see [CREATE_MP_GAMER_TAG_WITH_CREW_COLOR](#\_0x6DD05E9D83EFA4C9).
--- **Native**: `CREATE_FAKE_MP_GAMER_TAG` (`0xBFEFE3321A3F5015`)
---@param username string The name displayed on the gamer tag.
---@param crewIsPrivate boolean If the crew is private. Public crews have a pointed end cap, private crews do not.
---@param crewIsRockstar boolean If the crew is a Rockstar crew. Rockstar crews include a Rockstar logo before the name.
---@param crewName string The name of the crew.
---@param crewRank integer The rank from 1-5 that the player is within the crew. Use 0 if the player is the founder of the crew. Only relevant for private crews.
---@return integer result The ID of the new gamer tag.
function Ped:createFakeMpGamerTag(username, crewIsPrivate, crewIsRockstar, crewName, crewRank) end

--- **Native**: `CREATE_PARACHUTE_BAG_OBJECT` (`0x8C4F3BF23B6237DB`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Object? result
function Ped:createParachuteBagObject(p1, p2) end

--- ```
--- Returns whether or not the specified property is set for the entity.
--- ```
--- **Native**: `DECOR_EXIST_ON` (`0x05661B80A8C9165F`)
---@param propertyName string
---@return boolean result
function Ped:decorExistOn(propertyName) end

--- **Native**: `DECOR_GET_BOOL` (`0xDACE671663F2F5DB`)
---@param propertyName string
---@return boolean result
function Ped:decorGetBool(propertyName) end

--- **Native**: `DECOR_GET_FLOAT` (`0x6524A2F114706F43`)
---@param propertyName string
---@return number result
function Ped:decorGetFloat(propertyName) end

--- **Native**: `DECOR_GET_INT` (`0xA06C969B02A97298`)
---@param propertyName string
---@return integer result
function Ped:decorGetInt(propertyName) end

--- **Native**: `DECOR_REMOVE` (`0x00EE9F297C738720`)
---@param propertyName string
---@return boolean result
function Ped:decorRemove(propertyName) end

--- ```
--- This function sets metadata of type bool to specified entity.
--- ```
--- **Native**: `DECOR_SET_BOOL` (`0x6B1E8E2ED1335B71`)
---@param propertyName string
---@param value boolean
---@return boolean result
function Ped:decorSetBool(propertyName, value) end

--- **Native**: `DECOR_SET_FLOAT` (`0x211AB1DD8D0F363A`)
---@param propertyName string
---@param value number
---@return boolean result
function Ped:decorSetFloat(propertyName, value) end

--- ```
--- Sets property to int.
--- ```
--- **Native**: `DECOR_SET_INT` (`0x0CE3AA5E1CA19E10`)
---@param propertyName string
---@param value integer
---@return boolean result
function Ped:decorSetInt(propertyName, value) end

--- **Native**: `DECOR_SET_TIME` (`0x95AED7B8E39ECAA4`)
---@param propertyName string
---@param timestamp integer
---@return boolean result
function Ped:decorSetTime(propertyName, timestamp) end

--- ```
--- Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.
--- ```
--- **Native**: `DELETE_PED` (`0x9614299DCB53E54B`)
---@return nil
function Ped:delete() end

--- **Native**: `DETACH_ENTITY` (`0x961AC54BF0613F5D`)
---@param dynamic boolean Set to `true` to keep velocity after detaching
---@param collision boolean
---@return fx.Ped self
function Ped:detach(dynamic, collision) end

--- **Native**: `DISABLE_CAM_COLLISION_FOR_ENTITY` (`0x2AED6301F67007D5`)
---@return fx.Ped self
function Ped:disableCamCollision() end

--- **Native**: `DISABLE_CAM_COLLISION_FOR_OBJECT` (`0x49482F9FCD825AAA`)
---@return fx.Ped self
function Ped:disableCamCollisionForObject() end

--- **Native**: `DISABLE_HEAD_BLEND_PALETTE_COLOR` (`0xA21C118553BBDF02`)
---@return fx.Ped self
function Ped:disableHeadBlendPaletteColor() end

--- **Native**: `DISABLE_PED_HEATSCALE_OVERRIDE` (`0x600048C60D5C2C51`)
---@return fx.Ped self
function Ped:disableHeatscaleOverride() end

--- **Native**: `DISABLE_PED_PAIN_AUDIO` (`0xA9A41C1E940FB0E8`)
---@param shouldDisable boolean
---@return fx.Ped self
function Ped:disablePainAudio(shouldDisable) end

--- **Native**: `DOES_ENTITY_BELONG_TO_THIS_SCRIPT` (`0xDDE6DF5AE89981D2`)
---@param p2 boolean
---@return boolean result
function Ped:doesBelongToThisScript(p2) end

--- Checks if the context exists for the ped, searching through the voices in its PedVoiceGroup.
---
--- The final argument can be set to true to allow searching in backup PVGs
--- **Native**: `DOES_CONTEXT_EXIST_FOR_THIS_PED` (`0x49B99BF3FDA89A7A`)
---@param speechName string
---@param allowBackupPVGs boolean
---@return boolean result True of the PedVoiceGroup exists, false otherwise.
function Ped:doesContextExistForThis(speechName, allowBackupPVGs) end

--- **Native**: `DROP_AMBIENT_PROP` (`0xAFF4710E2A0A6C12`)
---@return fx.Ped self
function Ped:dropAmbientProp() end

--- ```
--- Makes the ped jump around like they're in a tennis match
--- ```
--- **Native**: `ENABLE_TENNIS_MODE` (`0x28A04B411933F8A6`)
---@param toggle boolean
---@param p2 boolean
---@return fx.Ped self
function Ped:enableTennisMode(toggle, p2) end

--- ```
--- ENABLE_*
--- ```
--- **Native**: `ENABLE_ENTITY_UNK` (`0x6CE177D014502E8A`)
---@return fx.Ped self
function Ped:enableUnk() end

--- Internal function for ensuring an entity has a state bag.
--- **Native**: `ENSURE_ENTITY_STATE_BAG` (`0x3BB78F05`)
---@return fx.Ped self
function Ped:ensureStateBag() end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_LOAD_CLONE_SYNC` (`0x6BC189AC`)
---@param data string
---@return fx.Ped self
function Ped:experimentalLoadCloneSync(data) end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_SAVE_CLONE_CREATE` (`0x9D65CAD2`)
---@return string result
function Ped:experimentalSaveCloneCreate() end

--- This native is not implemented.
--- **Native**: `EXPERIMENTAL_SAVE_CLONE_SYNC` (`0x38D19210`)
---@return string result
function Ped:experimentalSaveCloneSync() end

--- Applies lethal damage (FLT_MAX) to the `SKEL_Head` bone of the specified ped using the weapon passed, leading to the
--- ped's untimely demise.
---
--- The naming of the native is a legacy leftover (formerly EXPLODE_CHAR_HEAD in GTA3) as in the early 3D GTA games, lethal
--- damage to a ped head would 'explode' it.
---
--- Do note that this native function does not work in multiplayer/network environment.
--- **Native**: `EXPLODE_PED_HEAD` (`0x2D05CED3A38D0F3A`)
---@param weaponHash integer|string The weapon to attribute the damage to.
---@return fx.Ped self
function Ped:explodeHead(weaponHash) end

--- ```
--- WEAPON::EXPLODE_PROJECTILES(PLAYER::PLAYER_PED_ID(), func_221(0x00000003), 0x00000001);
--- ```
--- **Native**: `EXPLODE_PROJECTILES` (`0xFC4BD125DE7611E4`)
---@param weaponHash integer|string
---@param p2 boolean
---@return fx.Ped self
function Ped:explodeProjectiles(weaponHash, p2) end

--- ```
--- normal - transition like when your coming out of LSC
--- slow - transition like when you walk into a mission
--- ```
--- **Native**: `NETWORK_FADE_OUT_ENTITY` (`0xDE564951F95E09ED`)
---@param normal boolean
---@param slow boolean
---@return fx.Ped self
function Ped:fadeOut(normal, slow) end

--- **Native**: `FINALIZE_HEAD_BLEND` (`0x4668D80430D6C299`)
---@return fx.Ped self
function Ped:finalizeHeadBlend() end

--- **Native**: `FIND_FIRST_OBJECT` (`0xFAA6CB5D`)
---@return integer result
function Ped:findFirstObject() end

--- **Native**: `FIND_FIRST_PED` (`0xFB012961`)
---@return integer result
function Ped:findFirstPed() end

--- **Native**: `FIND_FIRST_PICKUP` (`0x3FF9D340`)
---@return integer result
function Ped:findFirstPickup() end

--- **Native**: `FIND_FIRST_VEHICLE` (`0x15E55694`)
---@return integer result
function Ped:findFirstVehicle() end

--- Native is significantly more complicated than simply generating a random vector & length.
---
--- The 'point' is either 400.0 or 250.0 units away from the Ped's current coordinates; and paths into functions like rage::grcViewport\_\__IsSphereVisible.
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `FIND_RANDOM_POINT_IN_SPACE` (`0x8DC9675797123522`)
---@return vector3 result
function Ped:findRandomPointInSpace() end

--- ```
--- Finds the vehicle that is carrying this entity with a handler frame.
--- The model of the entity must be prop_contr_03b_ld or the function will return 0.
--- ```
--- **Native**: `FIND_VEHICLE_CARRYING_THIS_ENTITY` (`0x375E7FC44F21C8AB`)
---@return fx.Vehicle? result
function Ped:findVehicleCarryingThis() end

--- **Native**: `FORCE_PED_AI_AND_ANIMATION_UPDATE` (`0x2208438012482A1A`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Ped self
function Ped:forceAiAndAnimationUpdate(p1, p2) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_PED_FORCE_GAME_STATE_UPDATE` (`0xF0BC9BCD24A511D5`)
---@return fx.Ped self
function Ped:forceGameStateUpdate() end

--- ```cpp
--- enum ePedMotionState
--- {
---     MOTIONSTATE_NONE = -294553821, // MotionState_None
---     MOTIONSTATE_IDLE = -1871534317, // MotionState_Idle
---     MOTIONSTATE_WALK = -668482597, // MotionState_Walk
---     MOTIONSTATE_RUN = -530524, // MotionState_Run
---     MOTIONSTATE_SPRINT = -1115154469, // MotionState_Sprint
---     MOTIONSTATE_CROUCH_IDLE = 1140525470, // MotionState_Crouch_Idle
---     MOTIONSTATE_CROUCH_WALK = 147004056, // MotionState_Crouch_Walk
---     MOTIONSTATE_CROUCH_RUN = 898879241, // MotionState_Crouch_Run
---     MOTIONSTATE_DONOTHING = 247561816, // MotionState_DoNothing
---     MOTIONSTATE_ANIMATEDVELOCITY = 1427811395, // MotionState_AnimatedVelocity
---     MOTIONSTATE_INVEHICLE = -1797663347, // MotionState_InVehicle
---     MOTIONSTATE_AIMING = 1063765679, // MotionState_Aiming
---     MOTIONSTATE_DIVING_IDLE = 1212730861, // MotionState_Diving_Idle
---     MOTIONSTATE_DIVING_SWIM = -1855028596, // MotionState_Diving_Swim
---     MOTIONSTATE_SWIMMING_TREADWATER = -776007225, // MotionState_Swimming_TreadWater
---     MOTIONSTATE_DEAD = 230360860, // MotionState_Dead
---     MOTIONSTATE_STEALTH_IDLE = 1110276645, // MotionState_Stealth_Idle
---     MOTIONSTATE_STEALTH_WALK = 69908130, // MotionState_Stealth_Walk
---     MOTIONSTATE_STEALTH_RUN = -83133983, // MotionState_Stealth_Run
---     MOTIONSTATE_PARACHUTING = -1161760501, // MotionState_Parachuting
---     MOTIONSTATE_ACTIONMODE_IDLE = -633298724, // MotionState_ActionMode_Idle
---     MOTIONSTATE_ACTIONMODE_WALK = -762290521, // MotionState_ActionMode_Walk
---     MOTIONSTATE_ACTIONMODE_RUN = 834330132, // MotionState_ActionMode_Run
---     MOTIONSTATE_JETPACK = 1398696542 // MotionState_Jetpack
--- }
--- ```
--- **Native**: `FORCE_PED_MOTION_STATE` (`0xF28965D04F570DCA`)
---@param motionStateHash integer|string The motion state hash.
---@param shouldReset boolean If the motion state should be set even if the ped is already in the specified motion state.
---@param updateState integer Integer but treated as a boolean (only allows 1 or 0). Sets ped reset flags `CPED_RESET_FLAG_ForcePreCameraAiAnimUpdateIfFirstPerson` and `CPED_RESET_FLAG_ForcePostCameraAnimUpdate`.
---@param forceAIPreCameraUpdate boolean If `updateState` is 1, will set either `CPED_RESET_FLAG_ForcePreCameraAIUpdate` (if true) or `CPED_RESET_FLAG_ForcePostCameraAIUpdate` (if false) ped reset flags.
---@return boolean result Whether or not the motion state was forced on the ped successfully.
function Ped:forceMotionState(motionStateHash, shouldReset, updateState, forceAIPreCameraUpdate) end

--- ```
--- Forces the particular room in an interior to load incase not teleporting into the portal.
--- ```
--- **Native**: `FORCE_ROOM_FOR_ENTITY` (`0x52923C4710DD9907`)
---@param interior fx.Interior|integer
---@param roomHashKey integer|string
---@return fx.Ped self
function Ped:forceRoom(interior, roomHashKey) end

--- **Native**: `FORCE_PED_TO_OPEN_PARACHUTE` (`0x16E42E800B472221`)
---@return fx.Ped self
function Ped:forceToOpenParachute() end

--- Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
--- **Native**: `FREEZE_ENTITY_POSITION` (`0x428CA6DBD1094446`)
---@param toggle boolean Freeze or unfreeze entity.
---@return fx.Ped self
function Ped:freeze(toggle) end

--- **Native**: `FREEZE_PED_CAMERA_ROTATION` (`0xFF287323B0E2C69A`)
---@return fx.Ped self
function Ped:freezeCameraRotation() end

--- **Native**: `GET_PED_AMMO_BY_TYPE` (`0x39D22031557946C1`)
---@param ammoType integer|string
---@return integer result
function Ped:getAmmoByType(ammoType) end

--- **Native**: `GET_AMMO_IN_CLIP` (`0x2E1202248937775C`)
---@param weaponHash integer|string
---@param ammo integer
---@return boolean result
---@return integer ammo
function Ped:getAmmoInClip(weaponHash, ammo) end

--- ```
--- WEAPON::GET_AMMO_IN_PED_WEAPON(PLAYER::PLAYER_PED_ID(), a_0)
--- From decompiled scripts
--- Returns total ammo in weapon
--- GTALua Example :
--- natives.WEAPON.GET_AMMO_IN_PED_WEAPON(plyPed, WeaponHash)
--- ```
--- **Native**: `GET_AMMO_IN_PED_WEAPON` (`0x015A522136D7F951`)
---@param weaponhash integer|string
---@return integer result
function Ped:getAmmoInWeapon(weaponhash) end

--- ```
--- Returns the current ammo type of the specified ped's specified weapon.
---
--- MkII magazines will change the return value, like Pistol MkII returning AMMO_PISTOL without any components and returning AMMO_PISTOL_TRACER after Tracer Rounds component is attached.
---
--- Use 0xF489B44DD5AF4BD9 if you always want AMMO_PISTOL.
--- ```
--- **Native**: `GET_PED_AMMO_TYPE_FROM_WEAPON` (`0x7FEAD38B326B9F74`)
---@param weaponHash integer|string
---@return integer result
function Ped:getAmmoTypeFromWeapon(weaponHash) end

--- ```
--- Returns the base/default ammo type of the specified ped's specified weapon.
---
--- Use GET_PED_AMMO_TYPE_FROM_WEAPON if you want current ammo type (like AMMO_MG_INCENDIARY/AMMO_MG_TRACER while using MkII magazines) and use this if you want base ammo type. (AMMO_MG)
--- ```
--- **Native**: `GET_PED_AMMO_TYPE_FROM_WEAPON_2` (`0xF489B44DD5AF4BD9`)
---@param weaponHash integer|string
---@return integer result
function Ped:getAmmoTypeFromWeapon2(weaponHash) end

--- ```
--- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.
--- Example:
--- 0.000000 - mark the starting of animation.
--- 0.500000 - mark the midpoint of the animation.
--- 1.000000 - mark the end of animation.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ENTITY_ANIM_CURRENT_TIME` (`0x346D81500D088F42`)
---@param animDict string
---@param animName string
---@return number result
function Ped:getAnimCurrentTime(animDict, animName) end

--- ```
--- Returns a float value representing animation's total playtime in milliseconds.
--- Example:
--- GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")
--- return 20800.000000
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ENTITY_ANIM_TOTAL_TIME` (`0x50BD2730B191E360`)
---@param animDict string
---@param animName string
---@return number result
function Ped:getAnimTotalTime(animDict, animName) end

--- **Native**: `GET_BEST_PED_WEAPON` (`0x8483E98E8B888AE2`)
---@param ignoreAmmoCount boolean If set to true, the best weapon can have no ammo, otherwise, it will return the best weapon with ammo. Default value is `0`.
---@return integer result The hash of the best weapon the specified ped has
function Ped:getBestWeapon(ignoreAmmoCount) end

--- ```
--- Gets the position of the specified bone of the specified ped.
--- ped: The ped to get the position of a bone from.
--- boneId: The ID of the bone to get the position from. This is NOT the index.
--- offsetX: The X-component of the offset to add to the position relative to the bone's rotation.
--- offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.
--- offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.
--- ```
--- **Native**: `GET_PED_BONE_COORDS` (`0x17C07FC640E86B4E`)
---@param boneId integer
---@param offset vector3
---@return vector3 result
function Ped:getBoneCoords(boneId, offset) end

--- ```cpp
--- enum ePedBoneId : uint16_t
--- {
---     SKEL_ROOT = 0x0,
---     SKEL_Pelvis = 0x2E28,
---     SKEL_L_Thigh = 0xE39F,
---     SKEL_L_Calf = 0xF9BB,
---     SKEL_L_Foot = 0x3779,
---     SKEL_L_Toe0 = 0x83C,
---     EO_L_Foot = 0x84C5,
---     EO_L_Toe = 0x68BD,
---     IK_L_Foot = 0xFEDD,
---     PH_L_Foot = 0xE175,
---     MH_L_Knee = 0xB3FE,
---     SKEL_R_Thigh = 0xCA72,
---     SKEL_R_Calf = 0x9000,
---     SKEL_R_Foot = 0xCC4D,
---     SKEL_R_Toe0 = 0x512D,
---     EO_R_Foot = 0x1096,
---     EO_R_Toe = 0x7163,
---     IK_R_Foot = 0x8AAE,
---     PH_R_Foot = 0x60E6,
---     MH_R_Knee = 0x3FCF,
---     RB_L_ThighRoll = 0x5C57,
---     RB_R_ThighRoll = 0x192A,
---     SKEL_Spine_Root = 0xE0FD,
---     SKEL_Spine0 = 0x5C01,
---     SKEL_Spine1 = 0x60F0,
---     SKEL_Spine2 = 0x60F1,
---     SKEL_Spine3 = 0x60F2,
---     SKEL_L_Clavicle = 0xFCD9,
---     SKEL_L_UpperArm = 0xB1C5,
---     SKEL_L_Forearm = 0xEEEB,
---     SKEL_L_Hand = 0x49D9,
---     SKEL_L_Finger00 = 0x67F2,
---     SKEL_L_Finger01 = 0xFF9,
---     SKEL_L_Finger02 = 0xFFA,
---     SKEL_L_Finger10 = 0x67F3,
---     SKEL_L_Finger11 = 0x1049,
---     SKEL_L_Finger12 = 0x104A,
--- [...]
--- **Native**: `GET_PED_BONE_INDEX` (`0x3F428D08BE5AAE31`)
---@param boneId integer
---@return fx.Enum.PedBoneId result
function Ped:getBoneIndex(boneId) end

--- ```
--- Returns the index of the bone. If the bone was not found, -1 will be returned.
--- list:
--- pastebin.com/D7JMnX1g
--- BoneNames:
--- 	chassis,
--- 	windscreen,
--- 	seat_pside_r,
--- 	seat_dside_r,
--- 	bodyshell,
--- 	suspension_lm,
--- 	suspension_lr,
--- 	platelight,
--- 	attach_female,
--- 	attach_male,
--- 	bonnet,
--- 	boot,
--- 	chassis_dummy,	//Center of the dummy
--- 	chassis_Control,	//Not found yet
--- 	door_dside_f,	//Door left, front
--- 	door_dside_r,	//Door left, back
--- 	door_pside_f,	//Door right, front
--- 	door_pside_r,	//Door right, back
--- 	Gun_GripR,
--- 	windscreen_f,
--- 	platelight,	//Position where the light above the numberplate is located
--- 	VFX_Emitter,
--- 	window_lf,	//Window left, front
--- 	window_lr,	//Window left, back
--- 	window_rf,	//Window right, front
--- 	window_rr,	//Window right, back
--- 	engine,	//Position of the engine
--- 	gun_ammo,
--- 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".
--- 	wheel_lf,	//Wheel left, front
--- 	wheel_lr,	//Wheel left, back
--- 	wheel_rf,	//Wheel right, front
--- 	wheel_rr,	//Wheel right, back
--- 	exhaust,	//Exhaust. shows only the position of the stock-exhaust
--- 	overheat,	//A position on the engine(not exactly sure, how to name it)
--- [...]
--- **Native**: `GET_ENTITY_BONE_INDEX_BY_NAME` (`0xFB71170B7E76ACBA`)
---@param boneName string
---@return integer result
function Ped:getBoneIndexByName(boneName) end

--- ```
--- Gets the world rotation of the specified bone of the specified entity.
--- This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
--- ```
--- **Native**: `GET_ENTITY_BONE_POSITION_2` (`0x46F8696933A63C9B`)
---@param boneIndex integer
---@return vector3 result
function Ped:getBonePosition2(boneIndex) end

--- ```
--- Gets the world rotation of the specified bone of the specified entity.
--- ```
--- **Native**: `GET_ENTITY_BONE_ROTATION` (`0xCE6294A232D03786`)
---@param boneIndex integer
---@return vector3 result
function Ped:getBoneRotation(boneIndex) end

--- Gets the local rotation of the specified bone of the specified entity.
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `GET_ENTITY_BONE_ROTATION_LOCAL` (`0xBD8D32550E5CEBFE`)
---@param boneIndex integer
---@return vector3 result
function Ped:getBoneRotationLocal(boneIndex) end

--- Gets local index inside a collection (which can be obtained using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B)) for the given global drawable ID. The collection name and index are used in functions like [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA).
--- **Native**: `GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE` (`0x94EB1FE4`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param drawableId integer Global drawable ID. Same as set in [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80). Global drawable ID points to drawables as if drawables from all collections for the given component are placed…
---@return integer result Local index inside a collection that the given global drawable ID corresponds to. Returns -1 if Ped is not found or the global index is out of bounds.
function Ped:getCollectionLocalIndexFromDrawable(componentId, drawableId) end

--- Gets local index inside a collection (which can be obtained using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17)) for the given global prop index. The collection name and index are used in functions like [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB).
--- **Native**: `GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP` (`0xFBDB885F`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param propIndex integer Global prop index. Same as set by `drawableId` in [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F). Global prop index points to prop as if props from all collections for the given component are placed int…
---@return integer result Local index inside a collection that the given global prop index corresponds to. Returns -1 if Ped is not found or the global index is out of bounds.
function Ped:getCollectionLocalIndexFromProp(anchorPoint, propIndex) end

--- Returns name of collection under given index for the given Ped.
---
--- Collections are groups of drawable components or props available for the given Ped. Usually collection corresponds to a certain DLC or the base game. See [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA), [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB), [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271) etc natives for more details on how to work with collections.
---
--- `GET_PED_COLLECTION_NAME` can be used together with [GET_PED_COLLECTIONS_COUNT](#\_0x45946359) to list all collections attached to Ped.
--- **Native**: `GET_PED_COLLECTION_NAME` (`0xFED5D83A`)
---@param index integer The target collection index
---@return string result Name of the collection with given index. Base game collection (always stored with index 0) is an empty string. Returns null if Ped is not found or index is out of bounds.
function Ped:getCollectionName(index) end

--- Gets collection name for the given global drawable ID. Together with [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) is used to get collection and local index (inside the given collection) of the drawable. The collection name and index are used in functions like [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA).
--- **Native**: `GET_PED_COLLECTION_NAME_FROM_DRAWABLE` (`0xD6BBA48B`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param drawableId integer Global drawable ID. Same as set in [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80). Global drawable ID points to drawables as if drawables from all collections for the given component are placed…
---@return string result Name of the collection that the given global drawable ID corresponds to. Base game collection is an empty string. Returns null if Ped is not found or the global index is out of bounds.
function Ped:getCollectionNameFromDrawable(componentId, drawableId) end

--- Gets collection name for the given global prop index. Together with [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) is used to get collection and local index (inside the given collection) of the prop. The collection name and index are used in functions like [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB).
--- **Native**: `GET_PED_COLLECTION_NAME_FROM_PROP` (`0x8ED0C17`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param propIndex integer Global prop index. Same as set by `drawableId` in [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F). Global prop index points to prop as if props from all collections for the given component are placed int…
---@return string result Name of the collection that the given global drawable ID corresponds to. Base game collection is an empty string. Returns null if Ped is not found or the global index is out of bounds.
function Ped:getCollectionNameFromProp(anchorPoint, propIndex) end

--- ```
--- p0: Ped Handle
--- p1: int i | 0 <= i <= 27
--- p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:
--- <BlindFireChance value="0.1"/>
--- <WeaponShootRateModifier value="1.0"/>
--- <TimeBetweenBurstsInCover value="1.25"/>
--- <BurstDurationInCover value="2.0"/>
--- <TimeBetweenPeeks value="10.0"/>
--- <WeaponAccuracy value="0.18"/>
--- <FightProficiency value="0.8"/>
--- <StrafeWhenMovingChance value="1.0"/>
--- <WalkWhenStrafingChance value="0.0"/>
--- <AttackWindowDistanceForCover value="55.0"/>
--- <TimeToInvalidateInjuredTarget value="9.0"/>
--- <TriggerChargeTime_Near value="4.0"/>
--- <TriggerChargeTime_Far value="10.0"/>
--- -------------Confirmed by editing combatbehavior.meta:
--- p1:
--- 0=BlindFireChance
--- 1=BurstDurationInCover
--- 3=TimeBetweenBurstsInCover
--- 4=TimeBetweenPeeks
--- 5=StrafeWhenMovingChance
--- 8=WalkWhenStrafingChance
--- 11=AttackWindowDistanceForCover
--- 12=TimeToInvalidateInjuredTarget
--- 16=OptimalCoverDistance
--- ```
--- **Native**: `GET_COMBAT_FLOAT` (`0x52DFF8A10508090A`)
---@param p1 integer
---@return number result
function Ped:getCombatFloat(p1) end

--- See [`SET_PED_CONFIG_FLAG`](#\_0x1913FE4CBF41C463).
--- **Native**: `GET_PED_CONFIG_FLAG` (`0x7EE53118C892B513`)
---@param flagId fx.Enum.PedConfigFlags|integer
---@param p2 boolean
---@return boolean result
function Ped:getConfigFlag(flagId, p2) end

--- Gets the current coordinates (world position) for a specified entity.
--- **Native**: `GET_ENTITY_COORDS` (`0x3FEF770D40960D5A`)
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@return vector3 result The current entity coordinates.
function Ped:getCoords(alive) end

--- **Native**: `GET_COORDS_OF_PROJECTILE_TYPE_WITHIN_DISTANCE` (`0xDFB4138EEFED7B81`)
---@param weaponHash integer|string
---@param distance number
---@param ownedByPlayer boolean
---@return boolean result
---@return vector3 outCoords
function Ped:getCoordsOfProjectileTypeWithinDistance(weaponHash, distance, ownedByPlayer) end

--- **Native**: `GET_PED_CURRENT_MOVEMENT_SPEED` (`0xF60165E1D2C5370B`)
---@return boolean result
---@return number speedX
---@return number speedY
function Ped:getCurrentMovementSpeed() end

--- **Native**: `GET_CURRENT_PED_VEHICLE_WEAPON` (`0x1017582BCD3832DC`)
---@param weaponHash integer|string
---@return boolean result
---@return integer weaponHash
function Ped:getCurrentVehicleWeapon(weaponHash) end

--- ```
--- The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash.
--- p2 seems to be 1 most of the time; and is not implemented.
--- ```
--- **Native**: `GET_CURRENT_PED_WEAPON` (`0x3A87E44BB9A01D54`)
---@param p2 boolean
---@return boolean result
---@return integer weaponHash
function Ped:getCurrentWeapon(p2) end

--- **Native**: `GET_DEAD_PED_PICKUP_COORDS` (`0xCD5003B097200F36`)
---@param p1 number
---@param p2 number
---@return vector3 result
function Ped:getDeadPickupCoords(p1, p2) end

--- **Native**: `GET_PED_DEFENSIVE_AREA_POSITION` (`0x3C06B8786DD94CD1`)
---@param p1 boolean
---@return vector3 result
function Ped:getDefensiveAreaPosition(p1) end

--- Returns global drawable index based on the local one. Is it a reverse to [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
---
--- Drawables are stored inside collections. Each collection usually corresponds to a certain DCL or the base game.
---
--- If all drawables from all collections are placed into one continuous array - the global index will correspond to the index of drawable in such array. Local index is index of drawable in this array relative to the start of the given collection.
--- **Native**: `GET_PED_DRAWABLE_GLOBAL_INDEX_FROM_COLLECTION` (`0x280F1FC3`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param drawableId integer Local drawable Id inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271).
---@return integer result Global drawable ID that corresponds to the given collection and local drawable index. Returns -1 if Ped or collection does not exist or local index is out of bounds.
function Ped:getDrawableGlobalIndexFromCollection(componentId, collection, drawableId) end

--- ```
--- Ids
--- 0 - Head
--- 1 - Beard
--- 2 - Hair
--- 3 - Torso
--- 4 - Legs
--- 5 - Hands
--- 6 - Foot
--- 7 - Scarfs/Neck Accessories
--- 8 - Accessories 1
--- 9 - Accessories 2
--- 10- Decals
--- 11 - Auxiliary parts for torso
--- ```
--- **Native**: `GET_PED_DRAWABLE_VARIATION` (`0x67F3780DD425D4FC`)
---@param componentId fx.Enum.PedVarComp|integer
---@return integer result
function Ped:getDrawableVariation(componentId) end

--- An analogue to [GET_PED_DRAWABLE_VARIATION](#\_0x67F3780DD425D4FC) that returns collection local drawable index (inside [GET_PED_DRAWABLE_VARIATION_COLLECTION_NAME](#\_0xBCE0AB63) collection) instead of the global drawable index.
--- **Native**: `GET_PED_DRAWABLE_VARIATION_COLLECTION_LOCAL_INDEX` (`0x9970386F`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@return integer result Local drawable index of the drawable that is currently used in the given ped and component.
function Ped:getDrawableVariationCollectionLocalIndex(componentId) end

--- An analogue to [GET_PED_DRAWABLE_VARIATION](#\_0x67F3780DD425D4FC) that returns collection name instead of the global drawable index.
---
--- Should be used together with [GET_PED_DRAWABLE_VARIATION_COLLECTION_LOCAL_INDEX](#\_0x9970386F).
--- **Native**: `GET_PED_DRAWABLE_VARIATION_COLLECTION_NAME` (`0xBCE0AB63`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@return string result Collection name to which the current drawable used in the given ped and component belongs to. Returns null if Ped is not found or index is out of bounds.
function Ped:getDrawableVariationCollectionName(componentId) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `GET_PED_EVENT_DATA` (`0xBA656A3BB01BDEA3`)
---@param eventType integer
---@param outData any
---@return boolean result
---@return any outData
function Ped:getEventData(eventType, outData) end

--- ```
--- Gets the offset the specified ped has moved since the previous tick.
--- If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.
--- If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.
--- ```
--- **Native**: `GET_PED_EXTRACTED_DISPLACEMENT` (`0xE0AF41401ADF87E3`)
---@param worldSpace boolean
---@return vector3 result
function Ped:getExtractedDisplacement(worldSpace) end

--- A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
--- **Native**: `GET_PED_FACE_FEATURE` (`0xBA352ADD`)
---@param index integer Face feature index
---@return number result Returns ped's face feature value, or 0.0 if fails to get.
function Ped:getFaceFeature(index) end

--- **Native**: `GET_HASH_NAME_FOR_COMPONENT` (`0x0368B3A838070348`)
---@param componentId integer
---@param drawableVariant integer
---@param textureVariant integer
---@return integer result
function Ped:getHashNameForComponent(componentId, drawableVariant, textureVariant) end

--- **Native**: `GET_HASH_NAME_FOR_PROP` (`0x5D6160275CAEC8DD`)
---@param componentId integer
---@param propIndex integer
---@param propTextureIndex integer
---@return integer result
function Ped:getHashNameForProp(componentId, propIndex, propTextureIndex) end

--- ```
--- The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.
--- pass this struct in the second parameter
--- typedef struct
--- {
---         int shapeFirst, shapeSecond, shapeThird;
---         int skinFirst, skinSecond, skinThird;
--- 	float shapeMix, skinMix, thirdMix;
--- } headBlendData;
--- ```
--- **Native**: `GET_PED_HEAD_BLEND_DATA` (`0x2746BD9D88C5C5D0`)
---@param headBlendData any
---@return boolean result
---@return any headBlendData
function Ped:getHeadBlendData(headBlendData) end

--- A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
--- **Native**: `GET_PED_HEAD_OVERLAY_DATA` (`0xC46EE605`)
---@param index integer Overlay index
---@return boolean result Returns ped's head overlay data.
---@return integer overlayValue Overlay value pointer
---@return integer colourType Colour type pointer
---@return integer firstColour First colour pointer
---@return integer secondColour Second colour pointer
---@return number overlayOpacity Opacity pointer
function Ped:getHeadOverlayData(index) end

--- ```
--- Likely a char, if that overlay is not set, e.i. "None" option, returns 255;
--- This might be the once removed native GET_PED_HEAD_OVERLAY.
--- ```
--- **Native**: `GET_PED_HEAD_OVERLAY_VALUE` (`0xA60EF3B6461A4D43`)
---@param overlayID integer
---@return integer result
function Ped:getHeadOverlayValue(overlayID) end

--- **Native**: `GET_ENTITY_HEIGHT` (`0x5A504562485944DD`)
---@param coords vector3
---@param atTop boolean
---@param inWorldCoords boolean
---@return number result
function Ped:getHeight(coords, atTop, inWorldCoords) end

--- **Native**: `GET_PED_LAST_DAMAGE_BONE` (`0xD75960F6BD9EA49C`)
---@param outBone integer
---@return boolean result
---@return integer outBone
function Ped:getLastDamageBone(outBone) end

--- ```
--- Pass ped. Pass address of Vector3.
--- The coord will be put into the Vector3.
--- The return will determine whether there was a coord found or not.
--- ```
--- **Native**: `GET_PED_LAST_WEAPON_IMPACT_COORD` (`0x6C4D0409BA1A2BC2`)
---@param coords vector3
---@return boolean result
---@return vector3 coords
function Ped:getLastWeaponImpactCoord(coords) end

--- Retrieves the map data and entity handles from a specific entity.
--- This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `GET_ENTITY_MAPDATA_OWNER` (`0xF6B815C5`)
---@return boolean result True if successful, false if not.
---@return integer mapdataHandle The output map data handle.
---@return integer entityHandle The output entity handle.
function Ped:getMapdataOwner() end

--- **Native**: `GET_ENTITY_MATRIX` (`0xECB2FC7235A7D137`)
---@return vector3 forwardVector
---@return vector3 rightVector
---@return vector3 upVector
---@return vector3 position
function Ped:getMatrix() end

--- **Native**: `GET_MAX_AMMO` (`0xDC16122C7A20C933`)
---@param weaponHash integer|string
---@param ammo integer
---@return boolean result
---@return integer ammo
function Ped:getMaxAmmo(weaponHash, ammo) end

--- **Native**: `GET_MAX_AMMO_BY_TYPE` (`0x585847C5E4E11709`)
---@param ammoType integer|string
---@param ammo integer
---@return boolean result
---@return integer ammo
function Ped:getMaxAmmoByType(ammoType, ammo) end

--- ```
--- p2 is mostly 1 in the scripts.
--- ```
--- **Native**: `GET_MAX_AMMO_IN_CLIP` (`0xA38DCFFCEA8962FA`)
---@param weaponHash integer|string
---@param p2 boolean
---@return integer result
function Ped:getMaxAmmoInClip(weaponHash, p2) end

--- ```
--- Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.
--- Return value of native is the same as GET_NAVMESH_ROUTE_RESULT
--- Looks like the native returns an int for the path's state:
--- 1 - ???
--- 2 - ???
--- 3 - Finished Generating
--- ```
--- **Native**: `GET_NAVMESH_ROUTE_DISTANCE_REMAINING` (`0xC6F5C0BCDC74D62D`)
---@return integer result
---@return number distanceRemaining
---@return boolean isPathReady
function Ped:getNavmeshRouteDistanceRemaining() end

--- Console/PC structure definitions and example: pastebin.com/SsFej963
---
--- For FiveM/Cfx.Re use-cases refer to: [`GET_GAME_POOL`](#\_0x2B9D4F50).
--- **Native**: `GET_PED_NEARBY_PEDS` (`0x23F8F5FC7E8C4A6B`)
---@param ignore integer Ped type to ignore
---@return integer result
---@return integer sizeAndPeds
function Ped:getNearbyPeds(ignore) end

--- ```
--- Returns size of array, passed into the second variable.
--- See below for usage information.
--- This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.
--- //Setup the array
--- 	const int numElements = 10;
--- 	const int arrSize = numElements * 2 + 2;
--- 	Any veh[arrSize];
--- 	//0 index is the size of the array
--- 	veh[0] = numElements;
--- 	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);
--- 	if (veh != NULL)
--- 	{
--- //Simple loop to go through results
--- for (int i = 0; i < count; i++)
--- {
--- 	int offsettedID = i * 2 + 2;
--- 	//Make sure it exists
--- 	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))
--- 	{
--- //Do something
--- 	}
--- }
--- 	}
--- Here's the right way to do it (console and pc):
--- pastebin.com/SsFej963
--- ```
--- **Native**: `GET_PED_NEARBY_VEHICLES` (`0xCFF869CBFA210D82`)
---@param sizeAndVehs integer
---@return integer result
---@return integer sizeAndVehs
function Ped:getNearbyVehicles(sizeAndVehs) end

--- **Native**: `GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM` (`0x4DC9A62F844D9337`)
---@param team integer
---@return fx.Player? result
function Ped:getNearestPlayerToOnTeam(team) end

--- An analogue of [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842) that returns number of drawable variations inside a single collection instead of the total number across all collections.
--- **Native**: `GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS` (`0x310D0271`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@return integer result Number of drawables available in the given collection. Returns 0 if ped or collection does not exist.
function Ped:getNumberOfCollectionDrawableVariations(componentId, collection) end

--- An analogue of [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47) that returns number of prop variations inside a single collection instead of the total number across all collections.
--- **Native**: `GET_NUMBER_OF_PED_COLLECTION_PROP_DRAWABLE_VARIATIONS` (`0x3B6A13E1`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@return integer result Number of props available in the given collection. Returns 0 if ped or collection does not exist.
function Ped:getNumberOfCollectionPropDrawableVariations(anchorPoint, collection) end

--- An alternative to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171) that uses local collection indexing instead of the global one.
--- **Native**: `GET_NUMBER_OF_PED_COLLECTION_PROP_TEXTURE_VARIATIONS` (`0x75CAF9CC`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param propIndex integer Local prop index inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_PROP_DRAWABLE_VARIATIONS](#\_0x3B6A13E1).
---@return integer result Number of texture variations available for the given prop. Returns 0 if ped or collection does not exist or index is out of bounds.
function Ped:getNumberOfCollectionPropTextureVariations(anchorPoint, collection, propIndex) end

--- An alternative to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD) that uses local collection indexing instead of the global one.
--- **Native**: `GET_NUMBER_OF_PED_COLLECTION_TEXTURE_VARIATIONS` (`0xD2C15D7`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param drawableId integer Local drawable Id inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271).
---@return integer result Number of texture variations available for the given drawable component. Returns 0 if ped or collection does not exist or index is out of bounds.
function Ped:getNumberOfCollectionTextureVariations(componentId, collection, drawableId) end

--- **Native**: `GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS` (`0x27561561732A7842`)
---@param componentId integer The component id you want to get the drawable variatons of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@return integer result
function Ped:getNumberOfDrawableVariations(componentId) end

--- **Native**: `GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS` (`0x5FAF9754E789FB47`)
---@param propId integer The prop id you want to get the drawable variations of. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@return integer result
function Ped:getNumberOfPropDrawableVariations(propId) end

--- ```
--- Need to check behavior when drawableId = -1
--- ```
--- **Native**: `GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS` (`0xA6E7F1CEB523E171`)
---@param propId integer The prop id you want to get the texture variations of. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param drawableId integer The drawable id of the prop you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@return integer result
function Ped:getNumberOfPropTextureVariations(propId, drawableId) end

--- **Native**: `GET_NUMBER_OF_PED_TEXTURE_VARIATIONS` (`0x8F7156A3142A6BAD`)
---@param componentId integer The component id you want to get the texture variations of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId integer The drawable id of the component you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@return integer result
function Ped:getNumberOfTextureVariations(componentId, drawableId) end

--- ```
--- Converts world coords (posX - Z) to coords relative to the entity
--- Example:
--- posX = 50
--- posY = 1000
--- posZ = 60
--- Entity's coords are: x=30, y=1000, z=60.
--- All three returned coords will then be in range of [-20,20] depending on rotation of the entity.
--- ```
--- **Native**: `GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS` (`0x2274BC1C4885E333`)
---@param pos vector3
---@return vector3 result
function Ped:getOffsetFromGivenWorldCoords(pos) end

--- ```
--- Offset values are relative to the entity.
--- x = left/right
--- y = forward/backward
--- z = up/down
--- ```
--- **Native**: `GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS` (`0x1899F328B0E12848`)
---@param offset vector3
---@return vector3 result
function Ped:getOffsetFromInWorldCoords(offset) end

--- **Native**: `GET_PED_PALETTE_VARIATION` (`0xE3DD5F2A84B42281`)
---@param componentId integer The component id to get the palette variation from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return integer result
function Ped:getPaletteVariation(componentId) end

--- **Native**: `GET_PED_PARACHUTE_TINT_INDEX` (`0xEAF5F7E5AE7C6C9D`)
---@param outTintIndex integer
---@return integer outTintIndex
function Ped:getParachuteTintIndex(outTintIndex) end

--- ```
--- GET_ENTITY_*
---
--- Seems to return the handle of the entity's portable pickup.
---
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `GET_ENTITY_PICKUP` (`0x1F922734E259BD26`)
---@param modelHash fx.Model|integer|string
---@return fx.Entity? result
function Ped:getPickup(modelHash) end

--- **Native**: `GET_PROJECTILE_NEAR_PED` (`0x82FDE6A57EE4EE44`)
---@param weaponHash integer|string
---@param distance number
---@param ownedByPlayer boolean
---@return boolean result
---@return vector3 outCoords
---@return fx.Object? outProjectile
function Ped:getProjectileNear(weaponHash, distance, ownedByPlayer) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `GET_ENTITY_PROOFS` (`0xBE8CD9BE829BBEBF`)
---@return boolean result
---@return boolean bulletProof
---@return boolean fireProof
---@return boolean explosionProof
---@return boolean collisionProof
---@return boolean meleeProof
---@return boolean steamProof
---@return boolean p7
---@return boolean drownProof
function Ped:getProofs() end

--- An analogue to [GET_PED_PROP_INDEX](#\_0x898CC20EA75BACD8) that returns collection local prop index (inside [GET_PED_PROP_COLLECTION_NAME](#\_0x6B5653E4) collection) instead of the global prop index.
--- **Native**: `GET_PED_PROP_COLLECTION_LOCAL_INDEX` (`0xCD420AD1`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@return integer result Local drawable index of the drawable that is currently used in the given ped and component, or -1 if the ped does not have a prop at the specified anchor point
function Ped:getPropCollectionLocalIndex(anchorPoint) end

--- An analogue to [GET_PED_PROP_INDEX](#\_0x898CC20EA75BACD8) that returns collection name instead of the global drawable index.
---
--- Should be used together with [GET_PED_PROP_COLLECTION_LOCAL_INDEX](#\_0xCD420AD1).
--- **Native**: `GET_PED_PROP_COLLECTION_NAME` (`0x6B5653E4`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@return string result Collection name to which the current prop used in the given ped and anchor point belongs to. Returns null if Ped is not found, does not have a prop at the specified anchor point, or if the index is o…
function Ped:getPropCollectionName(anchorPoint) end

--- Returns global prop index based on the local one. Is it a reverse to [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
---
--- Props are stored inside collections. Each collection usually corresponds to a certain DCL or the base game.
---
--- If all props from all collections are placed into one continuous array - the global index will correspond to the index of the prop in such array. Local index is index of the prop in this array relative to the start of the given collection.
--- **Native**: `GET_PED_PROP_GLOBAL_INDEX_FROM_COLLECTION` (`0x2CB45CDC`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param propIndex integer Local prop index inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_PROP_DRAWABLE_VARIATIONS](#\_0x3B6A13E1).
---@return integer result Global prop index that corresponds to the given collection and local prop index. Returns -1 if Ped or collection does not exist or local index is out of bounds.
function Ped:getPropGlobalIndexFromCollection(anchorPoint, collection, propIndex) end

--- **Native**: `GET_PED_PROP_INDEX` (`0x898CC20EA75BACD8`)
---@param componentId fx.Enum.AnchorPoints|integer The component id to get the prop index from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return integer result
function Ped:getPropIndex(componentId) end

--- **Native**: `GET_PED_PROP_TEXTURE_INDEX` (`0xE131A28626F81AB2`)
---@param componentId fx.Enum.AnchorPoints|integer The component id to get the prop texture index from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return integer result
function Ped:getPropTextureIndex(componentId) end

--- ```
--- w is the correct parameter name!
--- ```
--- **Native**: `GET_ENTITY_QUATERNION` (`0x7B3703D2D32DFA18`)
---@return number x
---@return number y
---@return number z
---@return number w
function Ped:getQuaternion() end

--- **Native**: `GET_PED_RAGDOLL_BONE_INDEX` (`0x2057EF813397A772`)
---@param bone integer
---@return integer result
function Ped:getRagdollBoneIndex(bone) end

--- ```
--- Gets the relationship between two peds. This should be called twice (once for each ped).
--- Relationship types:
--- 0 = Companion
--- 1 = Respect
--- 2 = Like
--- 3 = Neutral
--- 4 = Dislike
--- 5 = Hate
--- 255 = Pedestrians
--- (Credits: Inco)
--- Example:
--- PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);
--- PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);
--- ```
--- **Native**: `GET_RELATIONSHIP_BETWEEN_PEDS` (`0xEBA5AD3A0EAF7121`)
---@param ped2 fx.Ped|integer
---@return integer result
function Ped:getRelationshipBetweenPeds(ped2) end

--- **Native**: `GET_PED_RESET_FLAG` (`0xAF9E59B1B1FBF2A0`)
---@param flagId integer
---@return boolean result
function Ped:getResetFlag(flagId) end

--- **NOTE**: What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
---
--- ```cpp
--- enum eRotationOrder {
---     // Rotate around the z-axis, then the y-axis and finally the x-axis.
---     ROT_ZYX = 0,
---     // Rotate around the y-axis, then the z-axis and finally the x-axis.
---     ROT_YZX = 1,
---     // Rotate around the z-axis, then the x-axis and finally the y-axis.
---     ROT_ZXY = 2,
---     // Rotate around the x-axis, then the z-axis and finally the y-axis.
---     ROT_XZY = 3,
---     // Rotate around the y-axis, then the x-axis and finally the z-axis.
---     ROT_YXZ = 4,
---     // Rotate around the x-axis, then the y-axis and finally the z-axis.
---     ROT_XYZ = 5,
--- }
--- ```
--- **Native**: `GET_ENTITY_ROTATION` (`0xAFBD61CC738D9EB9`)
---@param rotationOrder fx.Enum.RotationOrder|integer The order yaw, pitch and roll is applied. Usually 2.
---@return vector3 result A vector where the Z coordinate is the yaw.
function Ped:getRotation(rotationOrder) end

--- ```
--- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.
--- ```
--- **Native**: `GET_ENTITY_SCRIPT` (`0xA6E9C38DB51D7748`)
---@param script integer
---@return string result
---@return integer script
function Ped:getScript(script) end

--- Gets the status of a spesifed script-assigned task on the given ped. The return value is always an int between 0-7.
---
--- You can set taskHash to `SCRIPT_TASK_ANY` to check if any task is active, it will return 1 for active, 3 for no active.
--- `SCRIPT_TASK_INVALID` can be similarly used, it returns 7 if there are any active task, and 3 if there are no active tasks.
---
--- taskHash list: https://alloc8or.re/gta5/doc/enums/eScriptTaskHash.txt
---
--- Returns:
---
--- ```
--- 0 = WAITING_TO_START_TASK
--- 1 = PERFORMING_TASK
--- 2 = DORMANT_TASK
--- 3 = VACANT_STAGE
--- 7 = TASK_FINISHED_OR_NOT_FOUND
--- ```
--- **Native**: `GET_SCRIPT_TASK_STATUS` (`0x77F1BEB8863288D5`)
---@param taskHash integer|string The hash of the task
---@return integer result The status of the script-assigned task.
function Ped:getScriptTaskStatus(taskHash) end

--- ```
--- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).
--- ```
--- **Native**: `GET_ENTITY_SPEED_VECTOR` (`0x9A8D700A51CB7B0D`)
---@param relative boolean
---@return vector3 result
function Ped:getSpeedVector(relative) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `GET_PED_TASK_COMBAT_TARGET` (`0x32C27A11307B01CC`)
---@param p1 any
---@return fx.Entity? result
function Ped:getTaskCombatTarget(p1) end

--- **Native**: `GET_TASK_MOVE_NETWORK_EVENT` (`0xB4F47213DF45A64C`)
---@param eventName string
---@return boolean result
function Ped:getTaskMoveNetworkEvent(eventName) end

--- **Native**: `GET_TASK_MOVE_NETWORK_SIGNAL_BOOL` (`0xA7FFBA498E4AAF67`)
---@param signalName string
---@return boolean result
function Ped:getTaskMoveNetworkSignalBool(signalName) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `GET_TASK_MOVE_NETWORK_SIGNAL_FLOAT` (`0x44AB0B3AFECCE242`)
---@param signalName string
---@return number result
function Ped:getTaskMoveNetworkSignalFloat(signalName) end

--- **Native**: `GET_PED_TEXTURE_VARIATION` (`0x04A355E041E004E6`)
---@param componentId fx.Enum.PedVarComp|integer The component id to get the texture variation from. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@return integer result
function Ped:getTextureVariation(componentId) end

--- ```
--- GET_TIME_*
--- ```
--- **Native**: `GET_TIME_OF_LAST_PED_WEAPON_DAMAGE` (`0x36B77BB84687C318`)
---@param weaponHash integer|string
---@return integer result
function Ped:getTimeOfLastWeaponDamage(weaponHash) end

--- **Native**: `GET_PED_WEAPON_LIVERY_COLOR` (`0xF0A60040BE558F2D`)
---@param weaponHash integer|string
---@param camoComponentHash integer|string
---@return integer result
function Ped:getWeaponLiveryColor(weaponHash, camoComponentHash) end

--- ```
--- Drops the current weapon and returns the object
--- Unknown behavior when unarmed.
--- ```
--- **Native**: `GET_WEAPON_OBJECT_FROM_PED` (`0xCAE1DC9A0E22A16D`)
---@param p1 boolean
---@return fx.Object? result
function Ped:getWeaponObject(p1) end

--- **Native**: `GET_PED_WEAPON_TINT_INDEX` (`0x2B9EEDC07BD06B9F`)
---@param weaponHash integer|string
---@return integer result
function Ped:getWeaponTintIndex(weaponHash) end

--- **Native**: `GET_PED_WEAPONTYPE_IN_SLOT` (`0xEFFED78E9011134D`)
---@param weaponSlot integer|string
---@return integer result
function Ped:getWeapontypeInSlot(weaponSlot) end

--- ```
--- Returns the coordinates of an entity-bone.
--- ```
--- **Native**: `GET_WORLD_POSITION_OF_ENTITY_BONE` (`0x44A8FCB8ED227738`)
---@param boneIndex integer
---@return vector3 result
function Ped:getWorldPositionOfBone(boneIndex) end

--- ```
--- Gives a weapon to PED with a delay, example:
--- WEAPON::GIVE_DELAYED_WEAPON_TO_PED(PED::PLAYER_PED_ID(), MISC::GET_HASH_KEY("WEAPON_PISTOL"), 1000, false)
--- ```
--- **Native**: `GIVE_DELAYED_WEAPON_TO_PED` (`0xB282DC6EBD803C75`)
---@param weaponHash integer|string
---@param ammoCount integer
---@param bForceInHand boolean
---@return fx.Ped self
function Ped:giveDelayedWeapon(weaponHash, ammoCount, bForceInHand) end

--- Gives the ped a helmet. Can be removed by invoking [`REMOVE_PED_HELMET`](#\_0xA7B2458D0AD6DED8).
---
--- ```cpp
--- enum ePedCompFlags {
---   PV_FLAG_NONE                  = 0, // 0
---   PV_FLAG_BULKY                 = 1, // 1<<0
---   PV_FLAG_JOB                   = 2, // 1<<1
---   PV_FLAG_SUNNY                 = 4, // 1<<2
---   PV_FLAG_WET                   = 8, // 1<<3
---   PV_FLAG_COLD                  = 16, // 1<<4
---   PV_FLAG_NOT_IN_CAR            = 32, // 1<<5
---   PV_FLAG_BIKE_ONLY             = 64, // 1<<6
---   PV_FLAG_NOT_INDOORS           = 128, // 1<<7
---   PV_FLAG_FIRE_RETARDENT        = 256, // 1<<8
---   PV_FLAG_ARMOURED              = 512, // 1<<9
---   PV_FLAG_LIGHTLY_ARMOURED      = 1024, // 1<<10
---   PV_FLAG_HIGH_DETAIL           = 2048, // 1<<11
---   PV_FLAG_DEFAULT_HELMET        = 4096, // 1<<12
---   PV_FLAG_RANDOM_HELMET         = 8192, // 1<<13
---   PV_FLAG_SCRIPT_HELMET         = 16384, // 1<<14
---   PV_FLAG_FLIGHT_HELMET         = 32768, // 1<<15
---   PV_FLAG_HIDE_IN_FIRST_PERSON  = 65536, // 1<<16
---   PV_FLAG_USE_PHYSICS_HAT_2     = 131072, // 1<<17
---   PV_FLAG_PILOT_HELMET          = 262144 // 1<<18
--- };
--- ```
--- **Native**: `GIVE_PED_HELMET` (`0x54C7C4A94367717E`)
---@param cannotRemove boolean Can remove helmet or not.
---@param helmetFlag fx.Enum.PedCompFlags|integer Flag for the helmet, the helmet appearance depends on the ped it's being applied on.
---@param textureIndex integer Texture index; any value other than `-1` will overwrite the default texture index. The helmet texture index needs to be valid for it to be applied.
---@return fx.Ped self
function Ped:giveHelmet(cannotRemove, helmetFlag, textureIndex) end

--- List of all available loadouts:
---
--- ```
--- LOADOUT_DEFAULT
--- LOADOUT_ANIMAL
--- LOADOUT_COUGAR
--- LOADOUT_HILLBILLY
--- LOADOUT_CULT
--- LOADOUT_CHEAT_0
--- LOADOUT_CHEAT_1
--- LOADOUT_GUARD
--- LOADOUT_NETWORK_BOT
--- LOADOUT_LOST
--- LOADOUT_LOST_L1
--- LOADOUT_LOST_L2
--- LOADOUT_LOST_L3
--- LOADOUT_MEXICAN
--- LOADOUT_MEXICAN_L1
--- LOADOUT_MEXICAN_L2
--- LOADOUT_MEXICAN_L3
--- LOADOUT_FAMILY
--- LOADOUT_ASIAN
--- LOADOUT_SECUR
--- LOADOUT_POLICE_GUARD
--- LOADOUT_COP
--- LOADOUT_COP_L1
--- LOADOUT_COP_L2
--- LOADOUT_COP_L3
--- LOADOUT_SWAT
--- LOADOUT_SWAT_NO_LASER
--- LOADOUT_COP_SHOTGUN
--- LOADOUT_FIREMAN
--- LOADOUT_COP_HELI
--- LOADOUT_COP_BOAT
--- LOADOUT_ARMY
--- LOADOUT_ANIMAL_RETRIEVER
--- LOADOUT_SMALL_DOG
--- LOADOUT_TIGER_SHARK
--- LOADOUT_HAMMERHEAD_SHARK
--- LOADOUT_KILLER_WHALE
--- [...]
--- **Native**: `GIVE_LOADOUT_TO_PED` (`0x68F8BE6AF5CDF8A6`)
---@param loadoutHash integer|string The loadout to use (needs to be a hash).
---@return fx.Ped self
function Ped:giveLoadout(loadoutHash) end

--- ```
--- Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.
--- If a message hasn't been created already, this function does nothing.
--- If the Ped is not ragdolled with Euphoria enabled, this function does nothing.
--- The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);
--- Call order:
--- SET_PED_TO_RAGDOLL
--- CREATE_NM_MESSAGE
--- GIVE_PED_NM_MESSAGE
--- Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:
--- SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);
--- CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
--- CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
--- CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.
--- GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
--- ```
--- **Native**: `GIVE_PED_NM_MESSAGE` (`0xB158DFCCC56E5C5B`)
---@return fx.Ped self
function Ped:giveNmMessage() end

--- ```
--- p1 is either 1 or 2 in the PC scripts.
--- ```
---
--- This native is used to "give"/duplicate a player ped to a frontend menu as configured via the `ACTIVATE_FRONTEND_MENU` native, you first must utilize the [CLONE_PED](#\_0xEF29A16337FACADB) to clone said ped.
--- **Native**: `GIVE_PED_TO_PAUSE_MENU` (`0xAC0BFBDC3BE00E14`)
---@param p1 integer
---@return fx.Ped self
function Ped:giveToPauseMenu(p1) end

--- **Native**: `GIVE_WEAPON_TO_PED` (`0xBF0FD6E56C964FCB`)
---@param weaponHash integer|string
---@param ammoCount integer
---@param isHidden boolean
---@param bForceInHand boolean
---@return fx.Ped self
function Ped:giveWeapon(weaponHash, ammoCount, isHidden, bForceInHand) end

--- **Native**: `GIVE_WEAPON_COMPONENT_TO_PED` (`0xD966D51AA5B28BB9`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return fx.Ped self
function Ped:giveWeaponComponent(weaponHash, componentHash) end

--- **Native**: `GIVE_WEAPON_OBJECT_TO_PED` (`0xB1FA61371AF7C4B7`)
---@param weaponObject fx.Object|integer
---@return fx.Ped self
function Ped:giveWeaponObject(weaponObject) end

--- ```
--- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
--- ```
--- **Native**: `HAS_ANIM_EVENT_FIRED` (`0xEAF4CD9EA3E7E922`)
---@param actionHash integer|string
---@return boolean result
function Ped:hasAnimEventFired(actionHash) end

--- ```
--- P3 is always 3 as far as i cant tell
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `HAS_ENTITY_ANIM_FINISHED` (`0x20B711662962B472`)
---@param animDict string
---@param animName string
---@param p3 integer
---@return boolean result
function Ped:hasAnimFinished(animDict, animName, p3) end

--- **Native**: `HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY` (`0xC86D67D52A707CF8`)
---@param damager fx.Entity|integer The entity that caused the damage.
---@param bCheckDamagerVehicle boolean If the damager is driving a vehicle then check to see if the entity was damaged by the vehicle.
---@return boolean result Returns true if the entity has been damaged by the specified entity.
function Ped:hasBeenDamagedByEntity(damager, bCheckDamagerVehicle) end

--- ```
--- It determines what weapons caused damage:
--- If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0
--- If you want to define any melee weapon, second parameter=0, third parameter=1.
--- If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
--- ```
--- **Native**: `HAS_PED_BEEN_DAMAGED_BY_WEAPON` (`0x2D343D2219CD027A`)
---@param weaponHash integer|string
---@param weaponType integer
---@return boolean result
function Ped:hasBeenDamagedByWeapon(weaponHash, weaponType) end

--- Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
---
--- The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY` (`0xFCDFF7B72D23A1AC`)
---@param entity2 fx.Entity|integer Entity to check to
---@param flags integer A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#\_0x377906D8A31E5586)). 17 is most common in GTA scripts.
---@return boolean result Returns `true` if no collider of specified bitmask is hit.
function Ped:hasClearLosToEntity(entity2, flags) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY_2` (`0x394BDE2A7BBA031E`)
---@param entity2 fx.Entity|integer
---@param traceType integer
---@return any result
function Ped:hasClearLosToEntity2(entity2, traceType) end

--- ```
--- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.
--- This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops
--- ```
--- **Native**: `HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT` (`0x0267D00AF114F17A`)
---@param entity2 fx.Entity|integer
---@return boolean result
function Ped:hasClearLosToEntityInFront(entity2) end

--- ```
--- p2 should be FALSE, otherwise it seems to always return FALSE
--- Bool does not check if the weapon is current equipped, unfortunately.
--- ```
--- **Native**: `HAS_PED_GOT_WEAPON` (`0x8DECB02F88F428BC`)
---@param weaponHash integer|string
---@param p2 boolean
---@return boolean result
function Ped:hasGotWeapon(weaponHash, p2) end

--- **Native**: `HAS_PED_GOT_WEAPON_COMPONENT` (`0xC593212475FAE340`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return boolean result
function Ped:hasGotWeaponComponent(weaponHash, componentHash) end

--- **Native**: `HAS_PED_RECEIVED_EVENT` (`0x8507BCB710FA6DC0`)
---@param eventId integer
---@return boolean result
function Ped:hasReceivedEvent(eventId) end

--- ```
--- Third Parameter = unsure, but pretty sure it is weapon hash
--- --> get_hash_key("weapon_stickybomb")
--- Fourth Parameter = unsure, almost always -1
--- ```
--- **Native**: `HAS_VEHICLE_GOT_PROJECTILE_ATTACHED` (`0x717C8481234E3B88`)
---@param vehicle fx.Vehicle|integer
---@param weaponHash integer|string
---@param p3 any
---@return boolean result
function Ped:hasVehicleGotProjectileAttached(vehicle, weaponHash, p3) end

--- **Native**: `HAVE_ALL_STREAMING_REQUESTS_COMPLETED` (`0x7350823473013C02`)
---@return boolean result
function Ped:haveAllStreamingRequestsCompleted() end

--- **Native**: `HIDE_PED_BLOOD_DAMAGE_BY_ZONE` (`0x62AB793144DE75DC`)
---@param p1 any
---@param p2 boolean
---@return fx.Ped self
function Ped:hideBloodDamageByZone(p1, p2) end

--- ```
--- Hides the players weapon during a cutscene.
--- ```
--- **Native**: `HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE` (`0x6F6981D2253C208F`)
---@param toggle boolean
---@return fx.Ped self
function Ped:hideWeaponForScriptedCutscene(toggle) end

--- Handles conversation interrupts, using the code-side system for improved timing and to minimize unfriendly logic interactions.
--- **Native**: `INTERRUPT_CONVERSATION` (`0xA018A12E5C5C2FA6`)
---@param context string the line to use
---@param voiceName string the voicename for the audio asset
---@return fx.Ped self
function Ped:interruptConversation(context, voiceName) end

--- Handles conversation interrupts and pauses, using the code-side system for improved timing and to minimize unfriendly logic interactions.
--- **Native**: `INTERRUPT_CONVERSATION_AND_PAUSE` (`0x8A694D7A68F8DC38`)
---@param context string the line to use
---@param voiceName string the voicename for the audio asset
---@return fx.Ped self
function Ped:interruptConversationAndPause(context, voiceName) end

--- **Native**: `IS_ANY_HOSTILE_PED_NEAR_POINT` (`0x68772DB2B2526F9F`)
---@param coords vector3
---@param radius number
---@return boolean result
function Ped:isAnyHostileNearPoint(coords, radius) end

--- Checks if the ped is currently equipped with a weapon matching a bit specified using a bitwise-or in typeFlags.
---
--- | Bit value | Effect            |
--- |-----------|-------------------|
--- | 1         | Melee weapons     |
--- | 2         | Explosive weapons |
--- | 4         | Any other weapons |
---
--- Not specifying any bit will lead to the native *always* returning 'false', and for example specifying '4 | 2' will check for any weapon except fists and melee weapons.
--- **Native**: `IS_PED_ARMED` (`0x475768A975D5AD17`)
---@param typeFlags integer Type flags to check.
---@return boolean result Whether or not the ped is currently equipped with any weapon matching typeFlags.
function Ped:isArmed(typeFlags) end

--- ```
--- Checks if entity is within x/y/zSize distance of x/y/z.
--- Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0
--- ```
--- **Native**: `IS_ENTITY_AT_COORD` (`0x20B60995556D004F`)
---@param pos vector3
---@param size vector3
---@param p7 boolean
---@param p8 boolean
---@param p9 integer
---@return boolean result
function Ped:isAtCoord(pos, size, p7, p8, p9) end

--- ```
--- Checks if entity1 is within the box defined by x/y/zSize of entity2.
--- Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0
--- ```
--- **Native**: `IS_ENTITY_AT_ENTITY` (`0x751B70C3D034E187`)
---@param entity2 fx.Entity|integer
---@param size vector3
---@param p5 boolean
---@param p6 boolean
---@param p7 integer
---@return boolean result
function Ped:isAtEntity(entity2, size, p5, p6, p7) end

--- **Native**: `IS_ENTITY_ATTACHED_TO_ENTITY` (`0xEFBE71898A993728`)
---@param to fx.Entity|integer
---@return boolean result
function Ped:isAttachedToEntity(to) end

--- ```
--- p1 is always 0
--- ```
--- **Native**: `IS_PED_BEING_STUNNED` (`0x4FBACCE3B4138EE8`)
---@param p1 integer
---@return boolean result
function Ped:isBeingStunned(p1) end

--- An alternative to [IS_PED_COMPONENT_VARIATION_GEN9\_EXCLUSIVE](#\_0xC767B581) that uses local collection indexing instead of the global one.
---
--- The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
---
--- Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
--- **Native**: `IS_PED_COLLECTION_COMPONENT_VARIATION_GEN9_EXCLUSIVE` (`0x33B2AFA2`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param drawableId integer Local drawable Id inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271).
---@return boolean result Whether or not the ped component variation is a gen9 exclusive (stub assets).
function Ped:isCollectionComponentVariationGen9Exclusive(componentId, collection, drawableId) end

--- An alternative to [IS_PED_COMPONENT_VARIATION_VALID](#\_0xE825F6B6CEA7671D) that uses local collection indexing instead of the global one.
---
--- The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
---
--- Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
--- **Native**: `IS_PED_COLLECTION_COMPONENT_VARIATION_VALID` (`0xCA63A52A`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param drawableId integer Local drawable Id inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_COLLECTION_TEXTURE_VARIATIONS](#\_0xD2C15D7).
---@return boolean result Returns true if the component variation is valid. This may be useful for randomizing components using loops.
function Ped:isCollectionComponentVariationValid(componentId, collection, drawableId, textureId) end

--- **Native**: `IS_PED_COMPONENT_VARIATION_GEN9_EXCLUSIVE` (`0xC767B581`)
---@param componentId integer The component id.
---@param drawableId integer The drawable id.
---@return boolean result Whether or not the ped component variation is a gen9 exclusive (stub assets).
function Ped:isComponentVariationGen9Exclusive(componentId, drawableId) end

--- Checks if the component variation is valid, this works great for randomizing components using loops.
--- **Native**: `IS_PED_COMPONENT_VARIATION_VALID` (`0xE825F6B6CEA7671D`)
---@param componentId integer The component id to check the variation of. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId integer The drawable id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId integer The texture id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@return boolean result
function Ped:isComponentVariationValid(componentId, drawableId, textureId) end

--- Determines if a ped is dead. Contrary to what the name might suggest, it does not always detect when a ped is in the 'dying' phase (transitioning to death). The exception is when `checkMeleeDeathFlags` is set to `true`, which then includes peds in the midst of melee takedown moves as being in a dying state, even if the death task has not yet started.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `IS_PED_DEAD_OR_DYING` (`0x3317DEDB88C95038`)
---@param checkMeleeDeathFlags boolean If set to `true`, extends the check to include melee takedown moves as part of the dying phase.
---@return boolean result Returns `true` if the ped is dead. When `checkMeleeDeathFlags` is set to `true`, it also considers peds in melee takedown moves as dying, although the broader 'dying' phase may not be detected.
function Ped:isDeadOrDying(checkMeleeDeathFlags) end

--- **Native**: `IS_PED_DEFENSIVE_AREA_ACTIVE` (`0xBA63D9FE45412247`)
---@param p1 boolean
---@return boolean result
function Ped:isDefensiveAreaActive(p1) end

--- ```
--- Presumably returns the Entity that the Ped is currently diving out of the way of.
--- var num3;
---     if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)
---         if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
--- ```
--- **Native**: `IS_PED_EVASIVE_DIVING` (`0x414641C26E105898`)
---@param evadingEntity fx.Entity|integer
---@return boolean result
---@return fx.Entity? evadingEntity
function Ped:isEvasiveDiving(evadingEntity) end

--- **Native**: `IS_PED_EXCLUSIVE_DRIVER_OF_VEHICLE` (`0xB09D25E77C33EB3F`)
---@param vehicle fx.Vehicle|integer
---@param outIndex integer
---@return boolean result
---@return integer outIndex
function Ped:isExclusiveDriverOfVehicle(vehicle, outIndex) end

--- ```
--- angle is ped's view cone
--- ```
--- **Native**: `IS_PED_FACING_PED` (`0xD71649DB0A545AA3`)
---@param otherPed fx.Ped|integer
---@param angle number
---@return boolean result
function Ped:isFacingPed(otherPed, angle) end

--- ```
--- gadgetHash - was always 0xFBAB5776 ("GADGET_PARACHUTE").
--- ```
--- **Native**: `GET_IS_PED_GADGET_EQUIPPED` (`0xF731332072F5156C`)
---@param gadgetHash integer|string
---@return boolean result
function Ped:isGadgetEquipped(gadgetHash) end

--- **Native**: `IS_PED_GROUP_MEMBER` (`0x9BB01E3834671191`)
---@param groupId fx.PedGroup|integer
---@return boolean result
function Ped:isGroupMember(groupId) end

--- **Native**: `IS_PED_HEADING_TOWARDS_POSITION` (`0xFCF37A457CB96DC0`)
---@param coords vector3
---@param p4 number
---@return boolean result
function Ped:isHeadingTowardsPosition(coords, p4) end

--- **Native**: `IS_PED_HEADTRACKING_ENTITY` (`0x813A0A7C9D2E831F`)
---@param entity fx.Entity|integer
---@return boolean result
function Ped:isHeadtrackingEntity(entity) end

--- **Native**: `IS_PED_HEADTRACKING_PED` (`0x5CD3CB88A7F8850D`)
---@param ped2 fx.Ped|integer
---@return boolean result
function Ped:isHeadtrackingPed(ped2) end

--- p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#\_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#\_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#\_0x20B60995556D004F).
---
--- See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
--- **Native**: `IS_ENTITY_IN_ANGLED_AREA` (`0x51210CED3DA1C78A`)
---@param coords1 vector3 dimension of the angled area 'origin'
---@param coords2 vector3 dimension of the angled area 'extent'
---@param width number Width of the angled area
---@param debug boolean a debug flag invoking functions in the same path as `DRAW_MARKER`
---@param includez boolean If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
---@param p10 any
---@return boolean result
function Ped:isInAngledArea(coords1, coords2, width, debug, includez, p10) end

--- Returns whether the specified ped is in any vehicle. If `atGetIn` is set to true, also returns true if the ped is
--- currently in the process of entering a vehicle (a specific stage check for `CTaskEnterVehicle`).
--- **Native**: `IS_PED_IN_ANY_VEHICLE` (`0x997ABD671D25CA0B`)
---@param atGetIn boolean `true` to also consider attempting to enter a vehicle.
---@return boolean result Whether or not the ped is currently involved in any vehicle.
function Ped:isInAnyVehicle(atGetIn) end

--- **Native**: `IS_ENTITY_IN_AREA` (`0x54736AA40E271165`)
---@param coords1 vector3
---@param coords2 vector3
---@param p7 boolean
---@param p8 boolean
---@param p9 any
---@return boolean result
function Ped:isInArea(coords1, coords2, p7, p8, p9) end

--- Examines whether the ped is engaged in combat; when given a target ped index, it confirms if the ped is actively fighting the specified target, returning true if engaged and false if not.
--- **Native**: `IS_PED_IN_COMBAT` (`0x4859F1FC66A6278E`)
---@param target fx.Ped|integer
---@return boolean result
function Ped:isInCombat(target) end

--- ```
--- p1 is nearly always 0 in the scripts.
--- ```
--- **Native**: `IS_PED_IN_COVER` (`0x60DFD0691A170B88`)
---@param exceptUseWeapon boolean
---@return boolean result
function Ped:isInCover(exceptUseWeapon) end

--- **Native**: `IS_PED_IN_MODEL` (`0x796D90EFB19AA332`)
---@param modelHash fx.Model|integer|string
---@return boolean result
function Ped:isInModel(modelHash) end

--- ```
--- Gets a value indicating whether the specified ped is in the specified vehicle.
--- If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.
--- ```
--- **Native**: `IS_PED_IN_VEHICLE` (`0xA3EE4A07279BB9DB`)
---@param vehicle fx.Vehicle|integer
---@param atGetIn boolean
---@return boolean result
function Ped:isInVehicle(vehicle, atGetIn) end

--- **Native**: `IS_ENTITY_IN_ZONE` (`0xB6463CF6AF527071`)
---@param zone string
---@return boolean result
function Ped:isInZone(zone) end

--- **Native**: `IS_PED_MODEL` (`0xC9D55B1A358A5BF7`)
---@param modelHash fx.Model|integer|string
---@return boolean result
function Ped:isModel(modelHash) end

--- **Native**: `IS_PED_ON_SPECIFIC_VEHICLE` (`0xEC5F66E459AF3BB2`)
---@param vehicle fx.Vehicle|integer
---@return boolean result
function Ped:isOnSpecificVehicle(vehicle) end

--- See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#\_0x6EC47A344923E1ED)
---
--- ```
--- Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)
--- p4 is always 3 in the scripts.
--- taskFlag:
--- 2 - Check synchronized scene
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `IS_ENTITY_PLAYING_ANIM` (`0x1F0B79228E461EC9`)
---@param animDict string
---@param animName string
---@param taskFlag integer
---@return boolean result
function Ped:isPlayingAnim(animDict, animName, taskFlag) end

--- **Native**: `IS_PED_RESPONDING_TO_EVENT` (`0x625B774D75C87068`)
---@param event any
---@return boolean result
function Ped:isRespondingToEvent(event) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM` (`0x6EC47A344923E1ED`)
---@param animDict string
---@param anim string
---@return boolean result
function Ped:isScriptedScenarioUsingConditionalAnim(animDict, anim) end

--- **Native**: `IS_PED_SHOOTING_IN_AREA` (`0x7E9DFE24AC1E58EF`)
---@param coords1 vector3
---@param coords2 vector3
---@param p7 boolean
---@param p8 boolean
---@return boolean result
function Ped:isShootingInArea(coords1, coords2, p7, p8) end

--- ```
--- Detect if ped is sitting in the specified vehicle
--- [True/False]
--- ```
--- **Native**: `IS_PED_SITTING_IN_VEHICLE` (`0xA808AA1D79230FC2`)
---@param vehicle fx.Vehicle|integer
---@return boolean result
function Ped:isSittingInVehicle(vehicle) end

--- ```
--- Task index enum: https://alloc8or.re/gta5/doc/enums/eTaskTypeIndex.txt
--- ```
--- **Native**: `GET_IS_TASK_ACTIVE` (`0xB0760331C7AA4155`)
---@param taskIndex integer
---@return boolean result
function Ped:isTaskActive(taskIndex) end

--- **Native**: `IS_ENTITY_TOUCHING_ENTITY` (`0x17FFC1B2BA35A494`)
---@param targetEntity fx.Entity|integer
---@return boolean result
function Ped:isTouchingEntity(targetEntity) end

--- **Native**: `IS_ENTITY_TOUCHING_MODEL` (`0x0F42323798A58C8C`)
---@param modelHash fx.Model|integer|string
---@return boolean result
function Ped:isTouchingModel(modelHash) end

--- **Native**: `IS_ENTITY_UPRIGHT` (`0x5333F526F6AB19AA`)
---@param angle number
---@return boolean result
function Ped:isUpright(angle) end

--- See [`TASK_START_SCENARIO_IN_PLACE`](#\_0x142A02425FF02BD9) for a list of scenarios.
--- **Native**: `IS_PED_USING_SCENARIO` (`0x1BF094736DD62C2E`)
---@param scenario string The scenario name.
---@return boolean result Returns true if the specified ped is using the specified scenario.
function Ped:isUsingScenario(scenario) end

--- ```
--- Check if a vehicle seat is accessible. If you park your vehicle near a wall and the ped cannot enter/exit this side, the return value toggles from true (not blocked) to false (blocked).
--- side = only relevant for bikes/motorcycles to check if the left (false)/right (true) side is blocked.
--- onEnter = check if you can enter (true) or exit (false) a vehicle.
--- ```
--- **Native**: `IS_VEHICLE_SEAT_ACCESSIBLE` (`0x639431E895B9AA57`)
---@param vehicle fx.Vehicle|integer The vehicle to check.
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param side boolean
---@param onEnter boolean
---@return boolean result
function Ped:isVehicleSeatAccessible(vehicle, seatIndex, side, onEnter) end

--- **Native**: `IS_PED_WEAPON_COMPONENT_ACTIVE` (`0x0D78DE0572D3969E`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return boolean result
function Ped:isWeaponComponentActive(weaponHash, componentHash) end

--- **Native**: `KNOCK_OFF_PED_PROP` (`0x6FD7816A36615F48`)
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p4 boolean
---@return fx.Ped self
function Ped:knockOffProp(p1, p2, p3, p4) end

--- **Native**: `KNOCK_PED_OFF_VEHICLE` (`0x45BBCBA77C29A841`)
---@return fx.Ped self
function Ped:knockOffVehicle() end

--- Forces a ped to reload only if they are able to; if they have a full magazine, they will not reload.
--- **Native**: `MAKE_PED_RELOAD` (`0x20AE33F3AC9C0033`)
---@return boolean result
function Ped:makeReload() end

--- Fade the given entity back in, usually used after the entity has been faded out with [NETWORK_FADE_OUT_ENTITY](#\_0xDE564951F95E09ED)
---
--- When used on a entity which isn't invisible or faded out then the native will still work, it will just instanly make the ped invisible before fading in.
---
--- **Additional Parameters**:
---
--- *   **flash**: If set to true the entity will flash while fading in.
--- **Native**: `NETWORK_FADE_IN_ENTITY` (`0x1F4ED342ACEFE62D`)
---@param bNetwork boolean When set to true the fade in will be networked.
---@return fx.Ped self
function Ped:networkFadeIn(bNetwork) end

--- ```
--- Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
--- ```
--- **Native**: `OVERRIDE_PED_BADGE_TEXTURE` (`0x95EB5E34F821BABE`)
---@param txd string
---@param txn string
---@return boolean result
function Ped:overrideBadgeTexture(txd, txn) end

--- **Native**: `NETWORK_OVERRIDE_COORDS_AND_HEADING` (`0xA7E30DE9272B6D49`)
---@param coords vector3
---@param heading number
---@return fx.Ped self
function Ped:overrideCoordsAndHeading(coords, heading) end

--- See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#\_0x8E04FEDD28D42462) for parameter specifications.
---
--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE` (`0xC6941B4A3A8FBBB9`)
---@param speechName string
---@param speechParam string
---@return fx.Ped self
function Ped:playAmbientSpeechAndCloneNative(speechName, speechParam) end

--- Plays ambient speech; see also [`PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE`](#\_0xC6941B4A3A8FBBB9).
---
--- ```
--- speechParam: Can be one of the following:
--- SPEECH_PARAMS_STANDARD
--- SPEECH_PARAMS_ALLOW_REPEAT
--- SPEECH_PARAMS_BEAT
--- SPEECH_PARAMS_FORCE
--- SPEECH_PARAMS_FORCE_FRONTEND
--- SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND
--- SPEECH_PARAMS_FORCE_NORMAL
--- SPEECH_PARAMS_FORCE_NORMAL_CLEAR
--- SPEECH_PARAMS_FORCE_NORMAL_CRITICAL
--- SPEECH_PARAMS_FORCE_SHOUTED
--- SPEECH_PARAMS_FORCE_SHOUTED_CLEAR
--- SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY
--- SPEECH_PARAMS_MEGAPHONE
--- SPEECH_PARAMS_HELI
--- SPEECH_PARAMS_FORCE_MEGAPHONE
--- SPEECH_PARAMS_FORCE_HELI
--- SPEECH_PARAMS_INTERRUPT
--- SPEECH_PARAMS_INTERRUPT_SHOUTED
--- SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR
--- SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL
--- SPEECH_PARAMS_INTERRUPT_NO_FORCE
--- SPEECH_PARAMS_INTERRUPT_FRONTEND
--- SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND
--- SPEECH_PARAMS_ADD_BLIP
--- SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT
--- SPEECH_PARAMS_ADD_BLIP_FORCE
--- SPEECH_PARAMS_ADD_BLIP_SHOUTED
--- SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE
--- SPEECH_PARAMS_ADD_BLIP_INTERRUPT
--- SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR
--- SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL
--- SPEECH_PARAMS_SHOUTED
--- SPEECH_PARAMS_SHOUTED_CLEAR
--- [...]
--- **Native**: `PLAY_PED_AMBIENT_SPEECH_NATIVE` (`0x8E04FEDD28D42462`)
---@param speechName string Name of the speech to play, eg. "GENERIC_HI".
---@param speechParam string
---@return fx.Ped self
function Ped:playAmbientSpeechNative(speechName, speechParam) end

--- ```
--- This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.
--- EX (C#):
--- GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);
--- The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.
--- ```
--- **Native**: `PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE` (`0x3523634255FC3318`)
---@param speechName string
---@param voiceName string
---@param speechParam string
---@param p4 boolean
---@return fx.Ped self
function Ped:playAmbientSpeechWithVoiceNative(speechName, voiceName, speechParam, p4) end

--- ```
--- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.
--- The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_ENTITY_ANIM` (`0x7FB218262B810701`)
---@param animName string
---@param animDict string
---@param p3 number
---@param loop boolean
---@param stayInAnim boolean
---@param p6 boolean
---@param delta number
---@param bitset any
---@return boolean result
function Ped:playAnim(animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

--- ```cpp
--- enum eAudAnimalType {
--- 	AUD_ANIMAL_NONE = -1,
--- 	AUD_ANIMAL_BOAR = 0,
--- 	AUD_ANIMAL_CHICKEN = 1,
--- 	AUD_ANIMAL_DOG = 2,
--- 	AUD_ANIMAL_DOG_ROTTWEILER = 3,
--- 	AUD_ANIMAL_HORSE = 4,
--- 	AUD_NUM_ANIMALS = 5
--- }
--- ```
--- **Native**: `PLAY_ANIMAL_VOCALIZATION` (`0xEE066C7006C49C0A`)
---@param animalType fx.Enum.AudAnimalType|integer
---@param speechName string
---@return fx.Ped self
function Ped:playAnimalVocalization(animalType, speechName) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_ANIM_ON_RUNNING_SCENARIO` (`0x748040460F8DF5DC`)
---@param animDict string
---@param animName string
---@return fx.Ped self
function Ped:playAnimOnRunningScenario(animDict, animName) end

--- **Native**: `PLAY_FACIAL_ANIM` (`0xE1E65CA8AC9C00ED`)
---@param animName string
---@param animDict string
---@return fx.Ped self
function Ped:playFacialAnim(animName, animDict) end

--- This native had a 4th parameter added in newer game builds
--- `syncOverNetwork` creates a `CPedPlayPainEvent` when set to true, by default this variable is false.
---
--- You won't be able to use this for clones (remote pedestrians that are not owned by you) or migrating peds if `syncOverNetwork` is set to true; it simply won't execute.
---
--- The `ped` should also have speech for this to work.
---
--- ```cpp
--- enum eAudDamageReason {
--- 	AUD_DAMAGE_REASON_DEFAULT = 0,
--- 	AUD_DAMAGE_REASON_FALLING = 1,
--- 	AUD_DAMAGE_REASON_SUPER_FALLING = 2,
--- 	AUD_DAMAGE_REASON_SCREAM_PANIC = 3,
--- 	AUD_DAMAGE_REASON_SCREAM_PANIC_SHORT = 4,
--- 	AUD_DAMAGE_REASON_SCREAM_SCARED = 5,
--- 	AUD_DAMAGE_REASON_SCREAM_SHOCKED = 6,
--- 	AUD_DAMAGE_REASON_SCREAM_TERROR = 7,
--- 	AUD_DAMAGE_REASON_ON_FIRE = 8,
--- 	AUD_DAMAGE_REASON_DROWNING = 9,
--- 	// drowning on the surface of water, after we time out
--- 	AUD_DAMAGE_REASON_SURFACE_DROWNING = 10,
--- 	AUD_DAMAGE_REASON_INHALE = 11,
--- 	AUD_DAMAGE_REASON_EXHALE = 12,
--- 	AUD_DAMAGE_REASON_POST_FALL_GRUNT = 13,
--- 	AUD_DAMAGE_REASON_ENTERING_RAGDOLL_DEATH = 14,
--- 	AUD_DAMAGE_REASON_EXPLOSION = 15,
--- 	AUD_DAMAGE_REASON_MELEE = 16,
--- 	AUD_DAMAGE_REASON_SHOVE = 17,
--- 	AUD_DAMAGE_REASON_WHEEZE = 18,
--- 	AUD_DAMAGE_REASON_COUGH = 19,
--- 	AUD_DAMAGE_REASON_TAZER = 20,
--- 	AUD_DAMAGE_REASON_EXHAUSTION = 21,
--- 	AUD_DAMAGE_REASON_CLIMB_LARGE = 22,
--- 	AUD_DAMAGE_REASON_CLIMB_SMALL = 23,
--- 	AUD_DAMAGE_REASON_JUMP = 24,
--- 	AUD_DAMAGE_REASON_COWER = 25,
--- 	AUD_DAMAGE_REASON_WHIMPER = 26,
--- 	AUD_DAMAGE_REASON_DYING_MOAN = 27,
--- 	AUD_DAMAGE_REASON_CYCLING_EXHALE = 28,
--- 	AUD_DAMAGE_REASON_PAIN_RAPIDS = 29,
--- [...]
--- **Native**: `PLAY_PAIN` (`0xBC9AE166038A5CEC`)
---@param damageReason fx.Enum.AudDamageReason|integer The damage reason/type, refer to eAudDamageReason
---@param rawDamage number Damage value, defaults to 0.0
---@return fx.Ped self
function Ped:playPain(damageReason, rawDamage) end

--- Plays a preloaded stream back from the specified ped.
--- **Native**: `PLAY_STREAM_FROM_PED` (`0x89049DD63C08B5D1`)
---@return fx.Ped self
function Ped:playStream() end

--- ```
--- p4 and p7 are usually 1000.0f.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_SYNCHRONIZED_ENTITY_ANIM` (`0xC77720A12FE14A86`)
---@param syncedScene integer
---@param animation string
---@param propName string
---@param p4 number
---@param p5 number
---@param p6 any
---@param p7 number
---@return boolean result
function Ped:playSynchronizedAnim(syncedScene, animation, propName, p4, p5, p6, p7) end

--- **Native**: `PLAY_TENNIS_DIVE_ANIM` (`0x8FA9C42FC5D7C64B`)
---@param p1 integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 boolean
---@return fx.Ped self
function Ped:playTennisDiveAnim(p1, p2, p3, p4, p5) end

--- **Native**: `PLAY_TENNIS_SWING_ANIM` (`0xE266ED23311F24D4`)
---@param animDict string
---@param animName string
---@param p3 number
---@param p4 number
---@param p5 boolean
---@return fx.Ped self
function Ped:playTennisSwingAnim(animDict, animName, p3, p4, p5) end

--- ```
--- Called to update entity attachments.
--- ```
--- **Native**: `PROCESS_ENTITY_ATTACHMENTS` (`0xF4080490ADC51C6F`)
---@return fx.Ped self
function Ped:processAttachments() end

--- **Native**: `REFILL_AMMO_INSTANTLY` (`0x8C0D57EA686FAD87`)
---@return boolean result
function Ped:refillAmmoInstantly() end

--- **Native**: `NETWORK_REGISTER_ENTITY_AS_NETWORKED` (`0x06FAACD625D80CAA`)
---@return fx.Ped self
function Ped:registerAsNetworked() end

--- This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#\_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#\_0xC59F528E9AB9F339)
--- **Native**: `REGISTER_ENTITY_FOR_CUTSCENE` (`0xE40C1C56DF95C2E8`)
---@param cutsceneEntName string cHandle of cutscene entity, i.e Michael, MP\_1, MP\_4, Lamar
---@param p2 integer
---@param modelHash fx.Model|integer|string Not strictly neccasary, often 0 in R\* scripts
---@param p4 integer 0 for SP, 64 for MP seemingly
---@return fx.Ped self
function Ped:registerForCutscene(cutsceneEntName, p2, modelHash, p4) end

--- ```
--- Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).
--- ```
--- **Native**: `REGISTER_HATED_TARGETS_AROUND_PED` (`0x9222F300BF8354FE`)
---@param radius number
---@return fx.Ped self
function Ped:registerHatedTargetsAround(radius) end

--- ```
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--- ```
--- **Native**: `REGISTER_PEDHEADSHOT` (`0x4462658788425076`)
---@return integer result It returns a Pedheadshot handle, which can be used by natives such as [`GET_PEDHEADSHOT_TXD_STRING`](#\_0xDB4EACD4AD0A5D6B)
function Ped:registerPedheadshot() end

--- **Native**: `REGISTER_PEDHEADSHOT_3` (`0xBA8805A1108A2515`)
---@return integer result
function Ped:registerPedheadshot3() end

--- Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black.
---
--- **Result of the example code:**
--- <https://i.imgur.com/iHz8ztn.png>
--- **Native**: `REGISTER_PEDHEADSHOT_TRANSPARENT` (`0x953563CE563143AF`)
---@return integer result The Pedheadshot handle.
function Ped:registerPedheadshotTransparent() end

--- ```
--- PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.
--- l_216 = RECSBRobber1
--- ```
--- **Native**: `REGISTER_TARGET` (`0x2F25D9AEFA34FBA2`)
---@param target fx.Ped|integer
---@return fx.Ped self
function Ped:registerTarget(target) end

--- **Native**: `RELEASE_PED_PRELOAD_PROP_DATA` (`0xF79F9DEF0AADE61A`)
---@return fx.Ped self
function Ped:releasePreloadPropData() end

--- **Native**: `RELEASE_PED_PRELOAD_VARIATION_DATA` (`0x5AAB586FFEC0FD96`)
---@return fx.Ped self
function Ped:releasePreloadVariationData() end

--- Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
--- ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
--- **Native**: `RELEASE_SCRIPT_GUID_FROM_ENTITY` (`0x2B3334BCA57CD799`)
---@return fx.Ped self
function Ped:releaseScriptGuid() end

--- ```
--- Used in am_mp_property_ext and am_mp_property_int
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Ped ped
--- ```
--- **Native**: `REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY` (`0x715135F4B82AC90D`)
---@return fx.Ped self
function Ped:removeAllStickyBombs() end

--- Parameter `p1` does not seem to be used or referenced in game binaries.\
--- **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
--- **Native**: `REMOVE_ALL_PED_WEAPONS` (`0xF25DF915FA38C5F3`)
---@param p1 boolean
---@return fx.Ped self
function Ped:removeAllWeapons(p1) end

--- ```
--- Ped will no longer get angry when you stay near him.
--- ```
--- **Native**: `REMOVE_PED_DEFENSIVE_AREA` (`0x74D4E028107450A9`)
---@param toggle boolean
---@return fx.Ped self
function Ped:removeDefensiveArea(toggle) end

--- ```
--- Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed.
--- ```
--- **Native**: `REMOVE_PED_ELEGANTLY` (`0xAC6D445B994DF95E`)
---@return fx.Ped self
function Ped:removeElegantly() end

--- Removes an entity from its current mix group.
--- **Native**: `REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP` (`0x18EB48CFC41F2EA0`)
---@param fadeOut number Defaults to 0.0
---@return fx.Ped self
function Ped:removeFromAudioMixGroup(fadeOut) end

--- **Native**: `REMOVE_PED_FROM_GROUP` (`0xED74007FFB146BC2`)
---@return fx.Ped self
function Ped:removeFromGroup() end

--- Remove a helmet from a ped
--- **Native**: `REMOVE_PED_HELMET` (`0xA7B2458D0AD6DED8`)
---@param instantly boolean Force to remove.
---@return fx.Ped self
function Ped:removeHelmet(instantly) end

--- **Native**: `REMOVE_PARTICLE_FX_FROM_ENTITY` (`0xB8FEAEEBCC127425`)
---@return fx.Ped self
function Ped:removeParticleFx() end

--- **Native**: `REMOVE_PED_PREFERRED_COVER_SET` (`0xFDDB234CF74073D9`)
---@return fx.Ped self
function Ped:removePreferredCoverSet() end

--- ```
--- This native removes a specified weapon from your selected ped.
--- Weapon Hashes: pastebin.com/0wwDZgkF
--- Example:
--- C#:
--- Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);
--- C++:
--- WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);
--- The code above removes the knife from the player.
--- ```
--- **Native**: `REMOVE_WEAPON_FROM_PED` (`0x4899CB088EDF59B8`)
---@param weaponHash integer|string
---@return fx.Ped self
function Ped:removeWeapon(weaponHash) end

--- **Native**: `REMOVE_WEAPON_COMPONENT_FROM_PED` (`0x1E8BE90C74FB4C09`)
---@param weaponHash integer|string
---@param componentHash integer|string
---@return fx.Ped self
function Ped:removeWeaponComponent(weaponHash, componentHash) end

--- **Native**: `NETWORK_REQUEST_CONTROL_OF_ENTITY` (`0xB69317BF5E782347`)
---@return boolean result
function Ped:requestControl() end

--- **Native**: `REQUEST_TASK_MOVE_NETWORK_STATE_TRANSITION` (`0xD01015C7316AE176`)
---@param name string The name of the target request state in the move network file.
---@return boolean result Technically a `void`. Scripts treat this as a boolean, but the game never sets the result, so it will return the ped handle instead.
function Ped:requestTaskMoveNetworkStateTransition(name) end

--- Loads the tennis vocalization banks into a couple animal slots.
--- **Native**: `REQUEST_TENNIS_BANKS` (`0x4ADA3F19BE4A6047`)
---@return fx.Ped self
function Ped:requestTennisBanks() end

--- **Native**: `REQUEST_PED_VEHICLE_VISIBILITY_TRACKING` (`0x2BC338A7B21F4608`)
---@param p1 boolean
---@return fx.Ped self
function Ped:requestVehicleVisibilityTracking(p1) end

--- **Native**: `REQUEST_PED_VISIBILITY_TRACKING` (`0x7D7A2E43E74E2EB8`)
---@return fx.Ped self
function Ped:requestVisibilityTracking() end

--- **Native**: `REQUEST_WEAPON_HIGH_DETAIL_MODEL` (`0x48164DBB970AC3F0`)
---@return fx.Ped self
function Ped:requestWeaponHighDetailModel() end

--- **Native**: `RESET_ENTITY_ALPHA` (`0x9B1E824FFBB7027A`)
---@return fx.Ped self
function Ped:resetAlpha() end

--- **Native**: `RESET_PED_AUDIO_FLAGS` (`0xF54BB7B61036F335`)
---@return fx.Ped self
function Ped:resetAudioFlags() end

--- **Native**: `RESET_PED_IN_VEHICLE_CONTEXT` (`0x22EF8FF8778030EB`)
---@return fx.Ped self
function Ped:resetInVehicleContext() end

--- ```
--- Resets the value for the last vehicle driven by the Ped.
--- ```
--- **Native**: `RESET_PED_LAST_VEHICLE` (`0xBB8DE8CF6A8DD8BB`)
---@return fx.Ped self
function Ped:resetLastVehicle() end

--- **Native**: `RESET_PED_MOVEMENT_CLIPSET` (`0xAA74EC0CB0AAEA2C`)
---@param transitionSpeed number
---@return fx.Ped self
function Ped:resetMovementClipset(transitionSpeed) end

--- **Native**: `RESET_PED_RAGDOLL_TIMER` (`0x9FA4664CF62E47E8`)
---@return fx.Ped self
function Ped:resetRagdollTimer() end

--- **Native**: `RESET_PED_STRAFE_CLIPSET` (`0x20510814175EA477`)
---@return fx.Ped self
function Ped:resetStrafeClipset() end

--- **Native**: `RESET_PED_VISIBLE_DAMAGE` (`0x3AC1F7B898F30C05`)
---@return fx.Ped self
function Ped:resetVisibleDamage() end

--- **Native**: `RESET_PED_WEAPON_MOVEMENT_CLIPSET` (`0x97B0DB5B4AA74E77`)
---@return fx.Ped self
function Ped:resetWeaponMovementClipset() end

--- ```
--- This function will simply bring the dead person back to life.
--- Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).
--- Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.)
--- Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.
--- ```
--- **Native**: `RESURRECT_PED` (`0x71BC8E838B9C6035`)
---@return fx.Ped self
function Ped:resurrect() end

--- ```
--- It will revive/cure the injured ped. The condition is ped must not be dead.
--- Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).
--- This function is well suited there.
--- ```
--- **Native**: `REVIVE_INJURED_PED` (`0x8D8ACD8388CD99CE`)
---@return fx.Ped self
function Ped:reviveInjured() end

--- Records that a player has successfully passed a checkpoint during a scripted race in GTA:Online. This native should be used after initializing the race with [`SCRIPT_RACE_INIT`](#\_0x0A60017F841A54F2).
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SCRIPT_RACE_PLAYER_HIT_CHECKPOINT` (`0x1BB299305C3E8C13`)
---@param checkpoint fx.Checkpoint|integer The checkpoint number that the player has passed.
---@param lap integer The current lap that the player is on.
---@param time integer The time it took for the player to reach this checkpoint from the start of the race or the last checkpoint.
---@return fx.Ped self
function Ped:scriptRacePlayerHitCheckpoint(checkpoint, lap, time) end

--- ```
--- if "flag" is true, the AI blip will always be displayed for the specified ped, if it has an AI blip
--- If "flag" is false, the AI blip will only be displayed when the player is in combat with the specified ped, if it has an AI blip
--- ```
--- **Native**: `SET_PED_AI_BLIP_FORCED_ON` (`0x0C4BBF625CA98C4E`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAiBlipForcedOn(toggle) end

--- **Native**: `SET_PED_AI_BLIP_GANG_ID` (`0xE52B8E7F85D39A08`)
---@param gangId integer
---@return fx.Ped self
function Ped:setAiBlipGangId(gangId) end

--- **Native**: `SET_PED_AI_BLIP_HAS_CONE` (`0x3EED80DFF7325CAA`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAiBlipHasCone(toggle) end

--- **Native**: `SET_PED_AI_BLIP_NOTICE_RANGE` (`0x97C65887D4B37FA9`)
---@param range number
---@return fx.Ped self
function Ped:setAiBlipNoticeRange(range) end

--- **Native**: `SET_PED_AI_BLIP_SPRITE` (`0xFCFACD0DB9D7A57D`)
---@param spriteId integer
---@return fx.Ped self
function Ped:setAiBlipSprite(spriteId) end

--- **Native**: `SET_PED_ALLOWED_TO_DUCK` (`0xDA1F1B7BE1A8766F`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAllowedToDuck(toggle) end

--- **Native**: `SET_PED_ALLOW_VEHICLES_OVERRIDE` (`0x3C028C636A414ED9`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAllowVehiclesOverride(toggle) end

--- This native sets the entity's alpha level.
--- **Native**: `SET_ENTITY_ALPHA` (`0x44A0870B7E92D7C0`)
---@param alphaLevel integer The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
---@param skin boolean Whether or not to change the alpha of the entity's skin.
---@return fx.Ped self
function Ped:setAlpha(alphaLevel, skin) end

--- ```
--- stance:
--- 0 = idle
--- 1 = walk
--- 2 = running
--- p5 = usually set to true
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `SET_PED_ALTERNATE_MOVEMENT_ANIM` (`0x90A43CC281FFAB46`)
---@param stance integer
---@param animDictionary string
---@param animationName string
---@param p4 number
---@param p5 boolean
---@return fx.Ped self
function Ped:setAlternateMovementAnim(stance, animDictionary, animationName, p4, p5) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `SET_PED_ALTERNATE_WALK_ANIM` (`0x6C60394CB4F75E9A`)
---@param animDict string
---@param animName string
---@param p3 number
---@param p4 boolean
---@return fx.Ped self
function Ped:setAlternateWalkAnim(animDict, animName, p3, p4) end

--- **Native**: `SET_ENTITY_ALWAYS_PRERENDER` (`0xACAD101E1FB66689`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAlwaysPrerender(toggle) end

--- Sets the specified ped to use a specific voice different to the one associated with their model.
--- **Native**: `SET_AMBIENT_VOICE_NAME` (`0x6C8065A3B780185B`)
---@param voiceName string
---@return fx.Ped self
function Ped:setAmbientVoiceName(voiceName) end

--- ```
--- NativeDB Added Parameter 4: BOOL p3
--- ```
--- **Native**: `SET_PED_AMMO` (`0x14E56BC5B5DB6A19`)
---@param weaponHash integer|string
---@param ammo integer
---@return fx.Ped self
function Ped:setAmmo(weaponHash, ammo) end

--- **Native**: `SET_PED_AMMO_BY_TYPE` (`0x5FD1E1F011E76D7E`)
---@param ammoType integer|string
---@param ammo integer
---@return fx.Ped self
function Ped:setAmmoByType(ammoType, ammo) end

--- **Native**: `SET_AMMO_IN_CLIP` (`0xDCD2A934D65CB497`)
---@param weaponHash integer|string
---@param ammo integer
---@return boolean result
function Ped:setAmmoInClip(weaponHash, ammo) end

--- **Native**: `SET_PED_AMMO_TO_DROP` (`0xA4EFEF9440A5B0EF`)
---@param ammo integer
---@return fx.Ped self
function Ped:setAmmoToDrop(ammo) end

--- **Native**: `SET_PED_ANGLED_DEFENSIVE_AREA` (`0xC7F76DF27A5045A1`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 boolean
---@param p9 boolean
---@return fx.Ped self
function Ped:setAngledDefensiveArea(p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_ENTITY_ANGULAR_VELOCITY` (`0x8339643499D1222E`)
---@param coords vector3
---@return fx.Ped self
function Ped:setAngularVelocity(coords) end

--- ```cpp
--- enum eAudAnimalMood {
--- 	AUD_ANIMAL_MOOD_ANGRY = 0,
--- 	AUD_ANIMAL_MOOD_PLAYFUL = 1,
---
--- 	AUD_ANIMAL_MOOD_NUM_MOODS = 2
--- }
--- ```
--- **Native**: `SET_ANIMAL_MOOD` (`0xCC97B29285B1DC3B`)
---@param mood fx.Enum.AudAnimalMood|integer Refer to `eAudAnimalMood`
---@return fx.Ped self
function Ped:setAnimalMood(mood) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `SET_ENTITY_ANIM_CURRENT_TIME` (`0x4487C259F0F70977`)
---@param animDictionary string
---@param animName string
---@param time number
---@return fx.Ped self
function Ped:setAnimCurrentTime(animDictionary, animName, time) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `SET_ANIM_PHASE` (`0xDDF3CB5A0A4C0B49`)
---@param p1 number
---@param p2 any
---@param p3 boolean
---@return fx.Ped self
function Ped:setAnimPhase(p1, p2, p3) end

--- **Native**: `SET_ENTITY_ANIM_SPEED` (`0x28D1A16553C51776`)
---@param animDictionary string
---@param animName string
---@param speedMultiplier number
---@return fx.Ped self
function Ped:setAnimSpeed(animDictionary, animName, speedMultiplier) end

--- ```
--- Enable/disable ped shadow (ambient occlusion). https://gfycat.com/thankfulesteemedgecko
--- ```
--- **Native**: `SET_PED_AO_BLOB_RENDERING` (`0x2B5AA717A181FB4C`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAoBlobRendering(toggle) end

--- ```
--- Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.
--- ```
--- **Native**: `SET_PED_AS_COP` (`0xBB03C38DD3FB7FFD`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAsCop(toggle) end

--- **Native**: `SET_PED_AS_ENEMY` (`0x02A0C9720B854BFA`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAsEnemy(toggle) end

--- **Native**: `SET_PED_AS_GROUP_LEADER` (`0x2A7819605465FBCE`)
---@param groupId fx.PedGroup|integer
---@return fx.Ped self
function Ped:setAsGroupLeader(groupId) end

--- **Native**: `SET_PED_AS_GROUP_MEMBER` (`0x9F3480FE65DB31B5`)
---@param groupId fx.PedGroup|integer
---@return fx.Ped self
function Ped:setAsGroupMember(groupId) end

--- Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
---
--- Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
--- **Native**: `SET_ENTITY_AS_MISSION_ENTITY` (`0xAD738C3085FE7E11`)
---@param scriptHostObject boolean Whether or not to assign script info to this entity, if set to false the entity will only be protected from despawning locally.
---@param bGrabFromOtherScript boolean Changes the entity so it's owned by the current script if the entity is already a mission entity. This will only work on entities the machine has control of (non-remote entities).
---@return fx.Ped self
function Ped:setAsMissionEntity(scriptHostObject, bGrabFromOtherScript) end

--- ```
--- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
--- ```
--- **Native**: `SET_PED_AS_NO_LONGER_NEEDED` (`0x2595DD4236549CE3`)
---@return fx.Ped self
function Ped:setAsNoLongerNeeded() end

--- ```
--- Enables/disables ped's "loud" footstep sound.
--- ```
---
--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_PED_AUDIO_FOOTSTEP_LOUD` (`0x0653B735BFBDFE87`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setAudioFootstepLoud(toggle) end

--- **Native**: `SET_PED_AUDIO_GENDER` (`0xA5342D390CDA41D6`)
---@param p1 boolean
---@return fx.Ped self
function Ped:setAudioGender(p1) end

--- **Native**: `SET_PED_BLEND_FROM_PARENTS` (`0x137BBD05230DB22D`)
---@param father fx.Ped|integer
---@param mother fx.Ped|integer
---@param fathersSide number
---@param mothersSide number
---@return fx.Ped self
function Ped:setBlendFromParents(father, mother, fathersSide, mothersSide) end

--- ```
--- works with TASK::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him
--- ```
--- **Native**: `SET_BLOCKING_OF_NON_TEMPORARY_EVENTS` (`0x9F8AA94D6D97DBF4`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setBlockingOfNonTemporaryEvents(toggle) end

--- **Native**: `SET_PED_BLOCKS_PATHING_WHEN_DEAD` (`0x576594E8D64375E2`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setBlocksPathingWhenDead(toggle) end

--- **Native**: `SET_PED_BOUNDS_ORIENTATION` (`0x4F5F651ACCC9C4CF`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@return fx.Ped self
function Ped:setBoundsOrientation(p1, p2, p3, p4, p5) end

--- **Native**: `SET_PED_CAN_ARM_IK` (`0x6C3B4D6D13B4C841`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanArmIk(toggle) end

--- ```
--- Setting ped to true allows the ped to shoot "friendlies".
--- p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.
--- p1 = false & p2 = false for unable to aim at.
--- p1 = true & p2 = false for able to aim at.
--- ```
--- **Native**: `SET_CAN_ATTACK_FRIENDLY` (`0xB3B1CB349FF9C75D`)
---@param toggle boolean
---@param p2 boolean
---@return fx.Ped self
function Ped:setCanAttackFriendly(toggle, p2) end

--- **Native**: `SET_CAN_AUTO_VAULT_ON_ENTITY` (`0xE12ABE5E3A389A6C`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanAutoVault(toggle) end

--- **Native**: `SET_ENTITY_CAN_BE_DAMAGED` (`0x1760FFA8AB074D66`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeDamaged(toggle) end

--- **Native**: `SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP` (`0xE22D8FDE858B8119`)
---@param bCanBeDamaged boolean
---@param relGroup integer
---@return fx.Ped self
function Ped:setCanBeDamagedByRelationshipGroup(bCanBeDamaged, relGroup) end

--- **Native**: `SET_PED_CAN_BE_DRAGGED_OUT` (`0xC1670E958EEE24E5`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeDraggedOut(toggle) end

--- ```
--- state: https://alloc8or.re/gta5/doc/enums/eKnockOffVehicle.txt
--- ```
--- **Native**: `SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE` (`0x7A6535691B477C48`)
---@param state integer
---@return fx.Ped self
function Ped:setCanBeKnockedOffVehicle(state) end

--- **Native**: `SET_PED_CAN_BE_SHOT_IN_VEHICLE` (`0xC7EF1BA83230BA07`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeShotInVehicle(toggle) end

--- **Native**: `SET_PED_CAN_BE_TARGETED_WHEN_INJURED` (`0x638C03B0F9878F57`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeTargetedWhenInjured(toggle) end

--- **Native**: `SET_PED_CAN_BE_TARGETED_WITHOUT_LOS` (`0x4328652AE5769C71`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeTargetedWithoutLos(toggle) end

--- **Native**: `SET_PED_CAN_BE_TARGETTED` (`0x63F58F7C80513AAD`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeTargetted(toggle) end

--- **Native**: `SET_PED_CAN_BE_TARGETTED_BY_PLAYER` (`0x66B57B72E0836A76`)
---@param player fx.Player|integer
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeTargettedByPlayer(player, toggle) end

--- **Native**: `SET_PED_CAN_BE_TARGETTED_BY_TEAM` (`0xBF1CA77833E58F2C`)
---@param team integer
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBeTargettedByTeam(team, toggle) end

--- **Native**: `NETWORK_SET_ENTITY_CAN_BLEND` (`0xD830567D88A1E873`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanBlend(toggle) end

--- **Native**: `SET_CAN_CLIMB_ON_ENTITY` (`0xA80AE305E0A3044F`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanClimb(toggle) end

--- ```
--- It simply makes the said ped to cower behind cover object(wall, desk, car)
--- Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.
--- ```
--- **Native**: `SET_PED_CAN_COWER_IN_COVER` (`0xCB7553CDCEF4A735`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanCowerInCover(toggle) end

--- Does the same as [`_SET_CAN_PED_SELECT_WEAPON`](#\_0xB4771B9AAF4E68E4) except for all weapons.
--- **Native**: `SET_CAN_PED_EQUIP_ALL_WEAPONS` (`0xEFF296097FF1E509`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanEquipAllWeapons(toggle) end

--- Disables selecting the given weapon. Ped isn't forced to put the gun away. However you can't reselect the weapon if you holster then unholster. Weapon is also grayed out on the weapon wheel.
--- **Native**: `SET_CAN_PED_EQUIP_WEAPON` (`0xB4771B9AAF4E68E4`)
---@param weaponHash integer|string
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanEquipWeapon(weaponHash, toggle) end

--- **Native**: `SET_PED_CAN_EVASIVE_DIVE` (`0x6B7A646C242A7059`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanEvasiveDive(toggle) end

--- **Native**: `SET_PED_CAN_HEAD_IK` (`0xC11C18092C5530DC`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanHeadIk(toggle) end

--- **Native**: `SET_PED_CAN_LEG_IK` (`0x73518ECE2485412B`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanLegIk(toggle) end

--- It makes the ped lose (or not lose) their props (like glasses or helmets/hat) when someone punches or pushes the ped.
--- This is probably what's being used in GTA:O to keep players from knocking other player's hats/glasses off when in combat.
--- **Native**: `SET_PED_CAN_LOSE_PROPS_ON_DAMAGE` (`0xE861D0B05C7662B8`)
---@param loseProps boolean true = allow props to fall off, false = don't let props fall off
---@param p2 integer purpose unknown, usually 0
---@return fx.Ped self
function Ped:setCanLosePropsOnDamage(loseProps, p2) end

--- **Native**: `SET_PED_CAN_PEEK_IN_COVER` (`0xC514825C507E3736`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanPeekInCover(toggle) end

--- **Native**: `SET_PED_CAN_PLAY_AMBIENT_ANIMS` (`0x6373D1349925A70E`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanPlayAmbientAnims(toggle) end

--- **Native**: `SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS` (`0x0EB0585D15254740`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanPlayAmbientBaseAnims(toggle) end

--- Prevents a ped from playing ambient idle animations.
---
--- **Note:** This native must be called every frame.
--- **Native**: `SET_PED_CAN_PLAY_AMBIENT_IDLES` (`0x8FD89A6240813FD0`)
---@param bBlockIdleClips boolean If true, prevents a ped from playing an idle animation this frame.
---@param bRemoveIdleClipIfPlaying boolean If true and the ped is playing an idle animation, the clip is stopped.
---@return fx.Ped self
function Ped:setCanPlayAmbientIdles(bBlockIdleClips, bRemoveIdleClipIfPlaying) end

--- **Native**: `SET_PED_CAN_PLAY_GESTURE_ANIMS` (`0xBAF20C5432058024`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanPlayGestureAnims(toggle) end

--- **Native**: `SET_PED_CAN_PLAY_INJURED_ANIMS` (`0x33A60D8BDD6E508C`)
---@param p1 boolean
---@return fx.Ped self
function Ped:setCanPlayInjuredAnims(p1) end

--- ```
--- p2 usually 0
--- ```
--- **Native**: `SET_PED_CAN_PLAY_VISEME_ANIMS` (`0xF833DDBA3B104D43`)
---@param toggle boolean
---@param p2 boolean
---@return fx.Ped self
function Ped:setCanPlayVisemeAnims(toggle, p2) end

--- **Native**: `SET_PED_CAN_RAGDOLL` (`0xB128377056A54E2A`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanRagdoll(toggle) end

--- **Native**: `SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT` (`0xDF993EE5E90ABA25`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanRagdollFromPlayerImpact(toggle) end

--- **Native**: `SET_PED_CAN_SMASH_GLASS` (`0x1CCE141467FF42A2`)
---@param p1 boolean
---@param p2 boolean
---@return fx.Ped self
function Ped:setCanSmashGlass(p1, p2) end

--- **Native**: `SET_PED_CAN_SWITCH_WEAPON` (`0xED7F7EFE9FABF340`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanSwitchWeapon(toggle) end

--- ```
--- This only will teleport the ped to the group leader if the group leader teleports (sets coords).
--- Only works in singleplayer
--- ```
--- **Native**: `SET_PED_CAN_TELEPORT_TO_GROUP_LEADER` (`0x2E2F4240B3F24647`)
---@param groupHandle integer
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanTeleportToGroupLeader(groupHandle, toggle) end

--- **Native**: `SET_PED_CAN_TORSO_IK` (`0xF2B7106D37947CE0`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanTorsoIk(toggle) end

--- **Native**: `SET_PED_CAN_TORSO_REACT_IK` (`0xF5846EDB26A98A24`)
---@param p1 boolean
---@return fx.Ped self
function Ped:setCanTorsoReactIk(p1) end

--- **Native**: `SET_PED_CAN_TORSO_VEHICLE_IK` (`0x6647C5F6F5792496`)
---@param p1 boolean
---@return fx.Ped self
function Ped:setCanTorsoVehicleIk(p1) end

--- **Native**: `SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT` (`0xEC4686EC06434678`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCanUseAutoConversationLookat(toggle) end

--- ```
--- Overrides the ped's collision capsule radius for the current tick.
--- Must be called every tick to be effective.
--- Setting this to 0.001 will allow warping through some objects.
--- ```
--- **Native**: `SET_PED_CAPSULE` (`0x364DF566EC833DE2`)
---@param value number
---@return fx.Ped self
function Ped:setCapsule(value) end

--- **Native**: `SET_CG_AT_BOUNDCENTER` (`0xBE520D9761FF811F`)
---@return fx.Ped self
function Ped:setCgAtBoundcenter() end

--- **Native**: `SET_PED_CHANCE_OF_FIRING_BLANKS` (`0x8378627201D5497D`)
---@param xBias number
---@param yBias number
---@return fx.Ped self
function Ped:setChanceOfFiringBlanks(xBias, yBias) end

--- ```
--- True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
--- ```
--- **Native**: `SET_ENTITY_CLEANUP_BY_ENGINE` (`0x3910051CCECDB00C`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setCleanupByEngine(toggle) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_PED_CLOTH_EVENTS_ENABLED` (`0x29DA3CA8D8B2692D`)
---@param enabled boolean
---@return fx.Ped self
function Ped:setClothEventsEnabled(enabled) end

--- **Native**: `SET_PED_CLOTH_PACKAGE_INDEX` (`0x78C4E9961DB3EB5B`)
---@param p1 integer
---@return fx.Ped self
function Ped:setClothPackageIndex(p1) end

--- An alternative to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80) that uses local collection indexing instead of the global one.
---
--- The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
---
--- Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
--- **Native**: `SET_PED_COLLECTION_COMPONENT_VARIATION` (`0x88711BBA`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param drawableId integer Local drawable Id inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_COLLECTION_TEXTURE_VARIATIONS](#\_0xD2C15D7).
---@param paletteId integer 0 to 3.
---@return fx.Ped self
function Ped:setCollectionComponentVariation(componentId, collection, drawableId, textureId, paletteId) end

--- An alternative to [SET_PED_PRELOAD_PROP_DATA](#\_0x2B16A3BFF1FBCE49) that uses local collection indexing instead of the global one.
---
--- The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
---
--- Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
--- **Native**: `SET_PED_COLLECTION_PRELOAD_PROP_DATA` (`0x14B5BBE0`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param propIndex integer Local prop index inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_PROP_DRAWABLE_VARIATIONS](#\_0x3B6A13E1).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_COLLECTION_PROP_TEXTURE_VARIATIONS](#\_0x75CAF9CC).
---@return fx.Ped self
function Ped:setCollectionPreloadPropData(anchorPoint, collection, propIndex, textureId) end

--- An alternative to [SET_PED_PRELOAD_VARIATION_DATA](#\_0x39D55A620FCB6A3A) that uses local collection indexing instead of the global one.
---
--- The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
---
--- Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
--- **Native**: `SET_PED_COLLECTION_PRELOAD_VARIATION_DATA` (`0x3EC75558`)
---@param componentId integer One of the components from [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param drawableId integer Local drawable Id inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_COLLECTION_TEXTURE_VARIATIONS](#\_0xD2C15D7).
---@return fx.Ped self
function Ped:setCollectionPreloadVariationData(componentId, collection, drawableId, textureId) end

--- An alternative to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F) that uses local collection indexing instead of the global one.
---
--- The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
---
--- Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
--- **Native**: `SET_PED_COLLECTION_PROP_INDEX` (`0x75240BCB`)
---@param anchorPoint integer One of the anchor points from [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F)
---@param collection string Name of the collection. Empty string for the base game collection. See [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) in order to list all available collections.
---@param propIndex integer Local prop index inside the given collection. Refer to [GET_NUMBER_OF_PED_COLLECTION_PROP_DRAWABLE_VARIATIONS](#\_0x3B6A13E1).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_COLLECTION_PROP_TEXTURE_VARIATIONS](#\_0x75CAF9CC).
---@param attach boolean Attached or not.
---@return fx.Ped self
function Ped:setCollectionPropIndex(anchorPoint, collection, propIndex, textureId, attach) end

--- **Native**: `SET_ENTITY_COLLISION` (`0x1A9205C1B9EE827F`)
---@param toggle boolean
---@param keepPhysics boolean
---@return fx.Ped self
function Ped:setCollision(toggle, keepPhysics) end

--- ```
--- 100 would equal attack
--- less then 50ish would mean run away
--- Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta:
--- 0: CA_Poor
--- 1: CA_Average
--- 2: CA_Professional
--- Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.
--- ```
--- **Native**: `SET_PED_COMBAT_ABILITY` (`0xC7622C0D36B2FDA8`)
---@param p1 integer
---@return fx.Ped self
function Ped:setCombatAbility(p1) end

--- **Native**: `SET_COMBAT_FLOAT` (`0xFF41B4B141ED981C`)
---@param combatType integer A value between 0-14, See [`GET_COMBAT_FLOAT`](#\_0x52DFF8A10508090A) for a list of possible parameters.
---@param p2 number
---@return fx.Ped self
function Ped:setCombatFloat(combatType, p2) end

--- **Native**: `SET_ENTITY_COMPLETELY_DISABLE_COLLISION` (`0x9EBC85ED0FFFE51C`)
---@param toggle boolean
---@param keepPhysics boolean
---@return fx.Ped self
function Ped:setCompletelyDisableCollision(toggle, keepPhysics) end

--- This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
--- ### MP Freemode list of components
---
--- **0**: Face
--- **1**: Mask
--- **2**: Hair
--- **3**: Torso
--- **4**: Leg
--- **5**: Parachute / bag
--- **6**: Shoes
--- **7**: Accessory
--- **8**: Undershirt
--- **9**: Kevlar
--- **10**: Badge
--- **11**: Torso 2
---
--- List of Component IDs
---
--- ```cpp
--- // Components
--- enum ePedVarComp
--- {
---     PV_COMP_INVALID = 0xFFFFFFFF,
---     PV_COMP_HEAD = 0, // "HEAD"
---     PV_COMP_BERD = 1, // "BEARD"
---     PV_COMP_HAIR = 2, // "HAIR"
---     PV_COMP_UPPR = 3, // "UPPER"
---     PV_COMP_LOWR = 4, // "LOWER"
---     PV_COMP_HAND = 5, // "HAND"
---     PV_COMP_FEET = 6, // "FEET"
---     PV_COMP_TEEF = 7, // "TEETH"
---     PV_COMP_ACCS = 8, // "ACCESSORIES"
---     PV_COMP_TASK = 9, // "TASK"
---     PV_COMP_DECL = 10, // "DECL"
---     PV_COMP_JBIB = 11, // "JBIB"
---     PV_COMP_MAX = 12,
--- };
--- ```
--- **Native**: `SET_PED_COMPONENT_VARIATION` (`0x262B14F48D29DE80`)
---@param componentId fx.Enum.PedVarComp|integer The component that you want to set.
---@param drawableId integer The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD).
---@param paletteId integer 0 to 3.
---@return fx.Ped self
function Ped:setComponentVariation(componentId, drawableId, textureId, paletteId) end

--- ```cpp
--- // Potential names and hash collisions included as comments
--- enum ePedConfigFlags {
--- 	CPED_CONFIG_FLAG_CreatedByFactory = 0,
--- 	CPED_CONFIG_FLAG_CanBeShotInVehicle = 1,
--- 	CPED_CONFIG_FLAG_NoCriticalHits = 2,
--- 	CPED_CONFIG_FLAG_DrownsInWater = 3,
--- 	CPED_CONFIG_FLAG_DrownsInSinkingVehicle = 4,
--- 	CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming = 5,
--- 	CPED_CONFIG_FLAG_HasBulletProofVest = 6,
--- 	CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
--- 	CPED_CONFIG_FLAG_NeverFallOffSkis = 8,
--- 	CPED_CONFIG_FLAG_NeverEverTargetThisPed = 9,
--- 	CPED_CONFIG_FLAG_ThisPedIsATargetPriority = 10,
--- 	CPED_CONFIG_FLAG_TargettableWithNoLos = 11,
--- 	CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands = 12,
--- 	CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
--- 	CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead = 14,
--- 	CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent = 15,
--- 	CPED_CONFIG_FLAG_KeepTasksAfterCleanUp = 16,
--- 	CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
--- 	CPED_CONFIG_FLAG_HasAScriptBrain = 18,
--- 	CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad = 19,
--- 	CPED_CONFIG_FLAG_AllowMedicsToReviveMe = 20,
--- 	CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript = 21,
--- 	CPED_CONFIG_FLAG_NotAllowedToCrouch = 22,
--- 	CPED_CONFIG_FLAG_DeathPickupsPersist = 23,
--- 	CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
--- 	CPED_CONFIG_FLAG_ForceDieIfInjured = 25,
--- 	CPED_CONFIG_FLAG_DontDragMeOutCar = 26,
--- 	CPED_CONFIG_FLAG_StayInCarOnJack = 27,
--- 	CPED_CONFIG_FLAG_ForceDieInCar = 28,
--- 	CPED_CONFIG_FLAG_GetOutUndriveableVehicle = 29,
--- 	CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds = 30,
--- 	CPED_CONFIG_FLAG_DontStoreAsPersistent = 31,
--- 	CPED_CONFIG_FLAG_WillFlyThroughWindscreen = 32,
--- 	CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
--- 	CPED_CONFIG_FLAG_HasHelmet = 34,
--- 	CPED_CONFIG_FLAG_UseHelmet = 35,
--- 	CPED_CONFIG_FLAG_DontTakeOffHelmet = 36,
--- [...]
--- **Native**: `SET_PED_CONFIG_FLAG` (`0x1913FE4CBF41C463`)
---@param flagId fx.Enum.PedConfigFlags|integer
---@param value boolean
---@return fx.Ped self
function Ped:setConfigFlag(flagId, value) end

--- Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
--- **Native**: `SET_ENTITY_COORDS` (`0x06843DA7060A026B`)
---@param pos vector3 The X coordinate. / The Y coordinate. / The Z coordinate, ground level.
---@param alive boolean Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
---@param deadFlag boolean Whether to disable physics for dead peds, too, and not just living peds.
---@param ragdollFlag boolean A special flag used for ragdolling peds.
---@param clearArea boolean Whether to clear any entities in the target area.
---@return fx.Ped self
function Ped:setCoords(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- ```
--- teleports ped to coords along with the vehicle ped is in
--- ```
--- **Native**: `SET_PED_COORDS_KEEP_VEHICLE` (`0x9AFEFF481A85AB2E`)
---@param pos vector3
---@return fx.Ped self
function Ped:setCoordsKeepVehicle(pos) end

--- **Native**: `SET_PED_COORDS_NO_GANG` (`0x87052FE446E07247`)
---@param pos vector3
---@return fx.Ped self
function Ped:setCoordsNoGang(pos) end

--- Teleports an entity to specified coordinates directly, with options to maintain certain behaviors post-teleportation.
---
--- **Note**:
---
--- *   This native allows precise placement of entities without the usual adjustments for collision or interaction with the environment that may occur with other teleportation natives.
--- *   The `keepTasks` and `keepIK` parameters are specifically useful for maintaining the current state of a ped, ensuring actions or animations are not abruptly stopped due to the teleportation.
--- *   Setting `doWarp` to `false` is useful when simulating continuous movement or when the entity should interact with its immediate surroundings upon arrival.
--- **Native**: `SET_ENTITY_COORDS_NO_OFFSET` (`0x239A3351AC1DA385`)
---@param coords vector3 coordinate for the new position.
---@param keepTasks boolean If `true`, the tasks currently assigned to the ped are not removed upon teleportation. Applies only to peds.
---@param keepIK boolean If `true`, the Inverse Kinematics (IK) on the ped are not reset upon teleportation. Applies only to peds.
---@param doWarp boolean If `false`, the entity will maintain continuous motion and will not clear contacts nor create space for itself upon teleportation.
---@return fx.Ped self
function Ped:setCoordsNoOffset(coords, keepTasks, keepIK, doWarp) end

--- **Native**: `SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET` (`0x621873ECE1178967`)
---@param pos vector3
---@param alive boolean
---@param deadFlag boolean
---@param ragdollFlag boolean
---@param clearArea boolean
---@return fx.Ped self
function Ped:setCoordsWithoutPlantsReset(pos, alive, deadFlag, ragdollFlag, clearArea) end

--- ```
--- Found in the b617d scripts:
--- PED::_9DBA107B4937F809(v_7, "trevor_heist_cover_2h");
--- SET_PED_MO*
--- ```
--- **Native**: `SET_PED_COVER_CLIPSET_OVERRIDE` (`0x9DBA107B4937F809`)
---@param p1 string
---@return fx.Ped self
function Ped:setCoverClipsetOverride(p1) end

--- ```
--- p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.
--- ```
--- **Native**: `SET_PED_COWER_HASH` (`0xA549131166868ED3`)
---@param p1 string
---@return fx.Ped self
function Ped:setCowerHash(p1) end

--- **Native**: `SET_CURRENT_PED_VEHICLE_WEAPON` (`0x75C55983C2C39DAA`)
---@param weaponHash integer|string
---@return boolean result
function Ped:setCurrentVehicleWeapon(weaponHash) end

--- **Native**: `SET_CURRENT_PED_WEAPON` (`0xADF692B254977C0C`)
---@param weaponHash integer|string
---@param bForceInHand boolean
---@return fx.Ped self
function Ped:setCurrentWeapon(weaponHash, bForceInHand) end

--- ```
--- Has 5 parameters since latest patches.
--- ```
--- **Native**: `SET_PED_CURRENT_WEAPON_VISIBLE` (`0x0725A4CCFDED9A70`)
---@param visible boolean
---@param deselectWeapon boolean
---@param p3 boolean
---@param p4 boolean
---@return fx.Ped self
function Ped:setCurrentWeaponVisible(visible, deselectWeapon, p3, p4) end

--- **Native**: `SET_DAMPING` (`0xEEA3B200A6FEB65B`)
---@param vertex integer
---@param value number
---@return fx.Ped self
function Ped:setDamping(vertex, value) end

--- ```
--- SET_ENTITY_*
--- ```
--- **Native**: `SET_ENTITY_DECALS_DISABLED` (`0x2C2E3DC128F44309`)
---@param p1 boolean
---@return fx.Ped self
function Ped:setDecalsDisabled(p1) end

--- **Native**: `SET_DECISION_MAKER` (`0xB604A2942ADED0EE`)
---@param name integer|string
---@return fx.Ped self
function Ped:setDecisionMaker(name) end

--- ```
--- Sets Ped Default Clothes
--- ```
--- **Native**: `SET_PED_DEFAULT_COMPONENT_VARIATION` (`0x45EEE61580806D63`)
---@return fx.Ped self
function Ped:setDefaultComponentVariation() end

--- **Native**: `SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED` (`0x4EF47FE21698A8B6`)
---@param attachPed fx.Ped|integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 number
---@param p9 boolean
---@param p10 boolean
---@return fx.Ped self
function Ped:setDefensiveAreaAttachedToPed(attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- **Native**: `SET_PED_DEFENSIVE_AREA_DIRECTION` (`0x413C6C763A4AFFAD`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
---@return fx.Ped self
function Ped:setDefensiveAreaDirection(p1, p2, p3, p4) end

--- **Native**: `SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED` (`0xF9B8F91AAD3B953E`)
---@param target fx.Ped|integer
---@param offset vector3
---@param radius number
---@param p6 boolean
---@return fx.Ped self
function Ped:setDefensiveSphereAttachedToPed(target, offset, radius, p6) end

--- **Native**: `SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_VEHICLE` (`0xE4723DB6E736CCFF`)
---@param target fx.Vehicle|integer
---@param offset vector3
---@param radius number
---@param p6 boolean
---@return fx.Ped self
function Ped:setDefensiveSphereAttachedToVehicle(target, offset, radius, p6) end

--- **Native**: `SET_PED_DESIRED_HEADING` (`0xAA5A7ECE2AA8FE70`)
---@param heading number
---@return fx.Ped self
function Ped:setDesiredHeading(heading) end

--- **Native**: `SET_PED_DIES_IN_SINKING_VEHICLE` (`0xD718A22995E2B4BC`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDiesInSinkingVehicle(toggle) end

--- **Native**: `SET_PED_DIES_INSTANTLY_IN_WATER` (`0xEEB64139BA29A7CF`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDiesInstantlyInWater(toggle) end

--- **Native**: `SET_PED_DIES_IN_VEHICLE` (`0x2A30922C90C9B42C`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDiesInVehicle(toggle) end

--- **Native**: `SET_PED_DIES_WHEN_INJURED` (`0x5BA7919BED300023`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDiesWhenInjured(toggle) end

--- Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
--- **Native**: `SET_ENTITY_DRAW_OUTLINE` (`0x76180407`)
---@param enabled boolean Whether or not to draw an outline.
---@return fx.Ped self
function Ped:setDrawOutline(enabled) end

--- **Native**: `SET_PED_DRIVE_BY_CLIPSET_OVERRIDE` (`0xED34AB6C5CB36520`)
---@param clipset string
---@return fx.Ped self
function Ped:setDriveByClipsetOverride(clipset) end

--- ```
--- For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.
--- ```
--- **Native**: `SET_DRIVEBY_TASK_TARGET` (`0xE5B302114D8162EE`)
---@param targetPed fx.Ped|integer
---@param targetVehicle fx.Vehicle|integer
---@param coords vector3
---@return fx.Ped self
function Ped:setDrivebyTaskTarget(targetPed, targetVehicle, coords) end

--- ```
--- The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.
--- ```
--- **Native**: `SET_DRIVER_ABILITY` (`0xB195FFA8042FC5C3`)
---@param ability number
---@return fx.Ped self
function Ped:setDriverAbility(ability) end

--- ```
--- range 0.0f - 1.0f
--- ```
--- **Native**: `SET_DRIVER_AGGRESSIVENESS` (`0xA731F608CA104E3C`)
---@param aggressiveness number
---@return fx.Ped self
function Ped:setDriverAggressiveness(aggressiveness) end

--- ```
--- Scripts use 0.2, 0.5 and 1.0. Value must be >= 0.0 && <= 1.0
--- ```
--- **Native**: `SET_DRIVER_RACING_MODIFIER` (`0xDED5AF5A0EA4B297`)
---@param modifier number
---@return fx.Ped self
function Ped:setDriverRacingModifier(modifier) end

--- **Native**: `SET_DRIVE_TASK_CRUISE_SPEED` (`0x5C9B84BD7D31D908`)
---@param cruiseSpeed number
---@return fx.Ped self
function Ped:setDriveTaskCruiseSpeed(cruiseSpeed) end

--- Sets the driving style for a ped currently performing a driving task.
---
--- Each flag in the `eVehicleDrivingFlags` enum can be combined to create a driving style, with each enabling or disabling a specific driving behavior. The driving style can be set to one of the predefined driving styles, or a custom driving style can be created by combining the flags. This can be done by using the bitwise OR operator (`|`) to combine the flags or by adding the decimal values of the flags together.
---
--- ```cpp
--- enum eVehicleDrivingFlags
--- {
---   None = 0,
---   StopForVehicles = 1,
---   StopForPeds = 2,
---   SwerveAroundAllVehicles = 4,
---   SteerAroundStationaryVehicles = 8,
---   SteerAroundPeds = 16,
---   SteerAroundObjects = 32,
---   DontSteerAroundPlayerPed = 64,
---   StopAtTrafficLights = 128,
---   GoOffRoadWhenAvoiding = 256,
---   AllowGoingWrongWay = 512,
---   Reverse = 1024,
---   UseWanderFallbackInsteadOfStraightLine = 2048,
---   AvoidRestrictedAreas = 4096,
---   PreventBackgroundPathfinding = 8192,
---   AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
---   UseShortCutLinks = 262144,
---   ChangeLanesAroundObstructions = 524288,
---   UseSwitchedOffNodes = 2097152,
---   PreferNavmeshRoute = 4194304,
---   PlaneTaxiMode = 8388608,
---   ForceStraightLine = 16777216,
---   UseStringPullingAtJunctions = 33554432,
---   TryToAvoidHighways = 536870912,
---   ForceJoinInRoadDirection = 1073741824,
---   StopAtDestination = 2147483648,
---   // StopForVehicles | StopForPeds | SteerAroundObjects | SteerAroundStationaryVehicles | StopAtTrafficLights | UseShortCutLinks | ChangeLanesAroundObstructions
---   DrivingModeStopForVehicles = 786603,
---   // StopForVehicles | StopForPeds | StopAtTrafficLights | UseShortCutLinks
---   DrivingModeStopForVehiclesStrict = 262275,
---   // SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
---   DrivingModeAvoidVehicles = 786469,
---   // SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
--- [...]
--- **Native**: `SET_DRIVE_TASK_DRIVING_STYLE` (`0xDACE1BE37D88AF67`)
---@param drivingStyle fx.Enum.VehicleDrivingFlags|integer The driving style (see `eVehicleDrivingFlags`).
---@return fx.Ped self
function Ped:setDriveTaskDrivingStyle(drivingStyle) end

--- **Native**: `SET_PED_DROPS_INVENTORY_WEAPON` (`0x208A1888007FC0E6`)
---@param weaponHash integer|string
---@param offset vector3
---@param ammoCount integer
---@return fx.Ped self
function Ped:setDropsInventoryWeapon(weaponHash, offset, ammoCount) end

--- **Native**: `SET_PED_DROPS_WEAPON` (`0x6B7513D9966FBEC0`)
---@return fx.Ped self
function Ped:setDropsWeapon() end

--- **Native**: `SET_PED_DROPS_WEAPONS_WHEN_DEAD` (`0x476AE72C1D19D1A8`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDropsWeaponsWhenDead(toggle) end

--- ```
--- This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.
--- ```
--- **Native**: `SET_PED_DUCKING` (`0x030983CA930B692D`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDucking(toggle) end

--- **Native**: `SET_ENTITY_DYNAMIC` (`0x1718DE8E3F2823CA`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setDynamic(toggle) end

--- Used with [SET_ENABLE_HANDCUFFS](#\_0xDF1AF8B5D56542FA) in decompiled scripts. From my observations, I have noticed that while being ragdolled you are not able to get up but you can still run. Your legs can also bend.
--- **Native**: `SET_ENABLE_BOUND_ANKLES` (`0xC52E0F855C58FC2E`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setEnableBoundAnkles(toggle) end

--- **Native**: `SET_ENABLE_PED_ENVEFF_SCALE` (`0xD2C5AA0C0E8D0F1E`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setEnableEnveffScale(toggle) end

--- ```
--- ped can not pull out a weapon when true
--- ```
--- **Native**: `SET_ENABLE_HANDCUFFS` (`0xDF1AF8B5D56542FA`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setEnableHandcuffs(toggle) end

--- ```
--- Enables diving motion when underwater.
--- ```
--- **Native**: `SET_ENABLE_SCUBA` (`0xF99F62004024D506`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setEnableScuba(toggle) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_ENABLE_SCUBA_GEAR_LIGHT` (`0xEE2476B9EE4A094F`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setEnableScubaGearLight(toggle) end

--- **Native**: `SET_PED_ENABLE_WEAPON_BLOCKING` (`0x97A790315D3831FD`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setEnableWeaponBlocking(toggle) end

--- ```
--- Something related to the environmental effects natives.
--- In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
--- ```
--- **Native**: `SET_PED_ENVEFF_COLOR_MODULATOR` (`0xD69411AA0CEBF9E9`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Ped self
function Ped:setEnveffColorModulator(r, g, b) end

--- Sets the various freemode face features, e.g. nose length, chin shape.
---
--- **Indexes (From 0 to 19):**
---
--- Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
---
--- *   **0**: Nose Width (Thin/Wide)
--- *   **1**: Nose Peak (Up/Down)
--- *   **2**: Nose Length (Long/Short)
--- *   **3**: Nose Bone Curveness (Crooked/Curved)
--- *   **4**: Nose Tip (Up/Down)
--- *   **5**: Nose Bone Twist (Left/Right)
--- *   **6**: Eyebrow (Up/Down)
--- *   **7**: Eyebrow (In/Out)
--- *   **8**: Cheek Bones (Up/Down)
--- *   **9**: Cheek Sideways Bone Size (In/Out)
--- *   **10**: Cheek Bones Width (Puffed/Gaunt)
--- *   **11**: Eye Opening (Both) (Wide/Squinted)
--- *   **12**: Lip Thickness (Both) (Fat/Thin)
--- *   **13**: Jaw Bone Width (Narrow/Wide)
--- *   **14**: Jaw Bone Shape (Round/Square)
--- *   **15**: Chin Bone (Up/Down)
--- *   **16**: Chin Bone Length (In/Out or Backward/Forward)
--- *   **17**: Chin Bone Shape (Pointed/Square)
--- *   **18**: Chin Hole (Chin Bum)
--- *   **19**: Neck Thickness (Thin/Thick)
---
--- **Note:**
---
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- **Native**: `SET_PED_FACE_FEATURE` (`0x71A5C1DBA060049E`)
---@param index integer An integer ranging from 0 to 19
---@param scale number A float ranging from -1.0 to 1.0
---@return fx.Ped self
function Ped:setFaceFeature(index, scale) end

--- Clipsets:
--- "facials@gen_female@base"
--- "facials@gen_male@base"
--- "facials@p_m_zero@base"
---
--- Typically followed with [SET_FACIAL_IDLE_ANIM_OVERRIDE](#\_0xFFC24B988B938B38):
--- "mood_drunk\_1"
--- "mood_stressed\_1"
--- "mood_happy\_1"
--- "mood_talking\_1"
---
--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_FACIAL_CLIPSET_OVERRIDE` (`0x5687C7F05B39E401`)
---@param animDict string
---@return fx.Ped self
function Ped:setFacialClipsetOverride(animDict) end

--- **Native**: `SET_FACIAL_IDLE_ANIM_OVERRIDE` (`0xFFC24B988B938B38`)
---@param animName string
---@param animDict string
---@return fx.Ped self
function Ped:setFacialIdleAnimOverride(animName, animDict) end

--- ```
--- FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 )
--- FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 )
--- FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 )
--- FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 )
--- FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 )
--- FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 )
--- FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 )
--- FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 )
--- FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 )
--- FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 )
--- FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 )
--- FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 )
--- FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 )
--- FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 )
--- FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 )
--- FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )
--- if anyone is interested firing pattern info: pastebin.com/Px036isB
--- ```
--- **Native**: `SET_PED_FIRING_PATTERN` (`0x9AC577F5A12AD8A9`)
---@param patternHash integer|string
---@return fx.Ped self
function Ped:setFiringPattern(patternHash) end

--- Enables/disables flashlight on ped's weapon.
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `SET_FLASH_LIGHT_ENABLED` (`0x988DB6FE9B3AC000`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setFlashLightEnabled(toggle) end

--- ```
--- bit 15 (0x8000) = force cower
--- ```
--- **Native**: `SET_PED_FLEE_ATTRIBUTES` (`0x70A2D1137C8ED7C9`)
---@param attributeFlags integer
---@param enable boolean
---@return fx.Ped self
function Ped:setFleeAttributes(attributeFlags, enable) end

--- ```
--- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.
--- ```
--- **Native**: `SET_FOCUS_ENTITY` (`0x198F77705FA0931D`)
---@return fx.Ped self
function Ped:setFocus() end

--- **Native**: `SET_FORCE_FOOTSTEP_UPDATE` (`0x129466ED55140F8D`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setForceFootstepUpdate(toggle) end

--- **Native**: `SET_FORCE_STEP_TYPE` (`0xCB968B53FC7F916D`)
---@param p1 boolean
---@param type_ integer
---@param p3 integer
---@return fx.Ped self
function Ped:setForceStepType(p1, type_, p3) end

--- ```
--- p1/gadgetHash was always 0xFBAB5776 ("GADGET_PARACHUTE").
--- p2 is always true.
--- ```
--- **Native**: `SET_PED_GADGET` (`0xD0D7B1E680ED4A1A`)
---@param gadgetHash integer|string
---@param p2 boolean
---@return fx.Ped self
function Ped:setGadget(gadgetHash, p2) end

--- **Native**: `SET_GAMEPLAY_CAM_FOLLOW_PED_THIS_UPDATE` (`0x8BBACBF51DA047A8`)
---@return fx.Ped self
function Ped:setGameplayCamFollowThisUpdate() end

--- **Native**: `SET_GAMEPLAY_PED_HINT` (`0x2B486269ACD548D3`)
---@param coords1 vector3
---@param p4 boolean
---@param duration integer
---@param blendOutDuration integer
---@param blendInDuration integer
---@return fx.Ped self
function Ped:setGameplayHint(coords1, p4, duration, blendOutDuration, blendInDuration) end

--- **Native**: `SET_PED_GENERATES_DEAD_BODY_EVENTS` (`0x7FB17BA2E7DECA5B`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setGeneratesDeadBodyEvents(toggle) end

--- ```
--- From the scripts:
--- PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),
--- "ANIM_GROUP_GESTURE_MISS_FRA0");
--- PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),
--- "ANIM_GROUP_GESTURE_MISS_DocksSetup1");
--- ```
--- **Native**: `SET_PED_GESTURE_GROUP` (`0xDDF803377F94AAA8`)
---@param animGroupGesture string
---@return fx.Ped self
function Ped:setGestureGroup(animGroupGesture) end

--- **Native**: `SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE` (`0xBC0ED94165A48BC2`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setGetOutUpsideDownVehicle(toggle) end

--- **Native**: `NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER` (`0x4BA166079D658ED4`)
---@param p1 boolean
---@return fx.Ped self
function Ped:setGhostedWithOwner(p1) end

--- ```
--- enable or disable the gravity of a ped
--- Examples:
--- PED::SET_PED_GRAVITY(PLAYER::PLAYER_PED_ID(), 0x00000001);
--- PED::SET_PED_GRAVITY(Local_289[iVar0 /*20*/], 0x00000001);
--- ```
--- **Native**: `SET_PED_GRAVITY` (`0x9FF447B6B6AD960A`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setGravity(toggle) end

--- **Native**: `SET_PED_GROUP_MEMBER_PASSENGER_INDEX` (`0x0BDDB8D9EC6BCF3C`)
---@param index integer
---@return fx.Ped self
function Ped:setGroupMemberPassengerIndex(index) end

--- Sets the tint index for the hair on the specified ped.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_PED_HAIR_TINT` (`0x4CFFC65454C93A49`)
---@param colorID integer The tint index for the primary hair color.
---@param highlightColorID integer The tint index for the hair highlight color.
---@return fx.Ped self
function Ped:setHairTint(colorID, highlightColorID) end

--- ```
--- This native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.
--- See gtaforums.com/topic/884370-native-research-ai-blips for further information.
--- ```
--- **Native**: `SET_PED_HAS_AI_BLIP` (`0xD30C50DF888D58B5`)
---@param hasCone boolean
---@return fx.Ped self
function Ped:setHasAiBlip(hasCone) end

--- **Native**: `SET_PED_HAS_AI_BLIP_WITH_COLOR` (`0xB13DCB4C6FAAD238`)
---@param hasCone boolean
---@param color integer See [`SET_BLIP_COLOUR`](#\_0x03D7FB09E75D6B7E).
---@return fx.Ped self
function Ped:setHasAiBlipWithColor(hasCone, color) end

--- **Native**: `SET_ENTITY_HAS_GRAVITY` (`0x4A4722448F18EEF5`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setHasGravity(toggle) end

--- For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
---
--- **Other information:**
---
--- IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
---
--- This native function is often called prior to calling natives such as:
---
--- *   [`SetPedHairColor`](#\_0xBB43F090)
--- *   [`SetPedHeadOverlayColor`](#\_0x78935A27)
--- *   [`SetPedHeadOverlay`](#\_0xD28DBA90)
--- *   [`SetPedFaceFeature`](#\_0x6C8D4458)
--- **Native**: `SET_PED_HEAD_BLEND_DATA` (`0x9414E18B9434C2FE`)
---@param shapeFirstID integer Controls the shape of the first ped's face
---@param shapeSecondID integer Controls the shape of the second ped's face
---@param shapeThirdID integer Controls the shape of the third ped's face
---@param skinFirstID integer Controls the first id's skin tone
---@param skinSecondID integer Controls the second id's skin tone
---@param skinThirdID integer Controls the third id's skin tone
---@param shapeMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (shapeFirstID and shapeSecondID)
---@param skinMix number 0.0 - 1.0 Of whose characteristics to take Mother -> Father (skinFirstID and skinSecondID)
---@param thirdMix number Overrides the others in favor of the third IDs.
---@param isParent boolean IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.
---@return fx.Ped self
function Ped:setHeadBlendData(shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent) end

--- Preview: https://gfycat.com/MaleRareAmazonparrot
--- **Native**: `SET_HEAD_BLEND_PALETTE_COLOR` (`0xCC9682B8951C5229`)
---@param r integer
---@param g integer
---@param b integer
---@param id integer From 0 to 3.
---@return fx.Ped self
function Ped:setHeadBlendPaletteColor(r, g, b, id) end

--- ```
--- OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.
--- overlayID       Part                  Index, to disable
--- 0               Blemishes             0 - 23, 255
--- 1               Facial Hair           0 - 28, 255
--- 2               Eyebrows              0 - 33, 255
--- 3               Ageing                0 - 14, 255
--- 4               Makeup                0 - 74, 255
--- 5               Blush                 0 - 6, 255
--- 6               Complexion            0 - 11, 255
--- 7               Sun Damage            0 - 10, 255
--- 8               Lipstick              0 - 9, 255
--- 9               Moles/Freckles        0 - 17, 255
--- 10              Chest Hair            0 - 16, 255
--- 11              Body Blemishes        0 - 11, 255
--- 12              Add Body Blemishes    0 - 1, 255
--- ```
---
--- **Note:**
---
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- **Native**: `SET_PED_HEAD_OVERLAY` (`0x48F44967FA05CC1E`)
---@param overlayID integer The overlay id displayed up above.
---@param index integer An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
---@param opacity number A float ranging from 0.0 to 1.0
---@return fx.Ped self
function Ped:setHeadOverlay(overlayID, index, opacity) end

--- ```
--- Used for freemode (online) characters.
--- Called after SET_PED_HEAD_OVERLAY().
--- ```
---
--- **Note:**
---
--- You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
--- **Native**: `SET_PED_HEAD_OVERLAY_COLOR` (`0x497BF74A7B9CB952`)
---@param overlayID integer An integer representing the overlay id
---@param colorType integer 1 for eyebrows, beards, makeup, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.
---@param colorID integer An integer representing the primary color id
---@param secondColorID integer An integer representing the secondary color id
---@return fx.Ped self
function Ped:setHeadOverlayColor(overlayID, colorType, colorID, secondColorID) end

--- **Native**: `SET_PED_HEARING_RANGE` (`0x33A8F7F7D5F7F33C`)
---@param value number
---@return fx.Ped self
function Ped:setHearingRange(value) end

--- **Native**: `SET_PED_HEATSCALE_OVERRIDE` (`0xC1F6EBF9A3D55538`)
---@param heatScale number
---@return fx.Ped self
function Ped:setHeatscaleOverride(heatScale) end

--- Sets whether a pedestrian should wear a helmet.
--- **Native**: `SET_PED_HELMET` (`0x560A43136EB58105`)
---@param bEnable boolean Boolean value that indicates whether the helmet should be worn or not.
---@return fx.Ped self
function Ped:setHelmet(bEnable) end

--- **Native**: `SET_PED_HELMET_FLAG` (`0xC0E78D5C2CE3EB25`)
---@param helmetFlag integer
---@return fx.Ped self
function Ped:setHelmetFlag(helmetFlag) end

--- ```
--- NativeDB Added Parameter 3: BOOL p2
--- ```
--- **Native**: `SET_PED_HELMET_PROP_INDEX` (`0x26D83693ED99291C`)
---@param propIndex integer The prop index to set the helmet to. Refer to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F).
---@return fx.Ped self
function Ped:setHelmetPropIndex(propIndex) end

--- **Native**: `SET_PED_HELMET_TEXTURE_INDEX` (`0xF1550C4BD22582E2`)
---@param textureIndex integer
---@return fx.Ped self
function Ped:setHelmetTextureIndex(textureIndex) end

--- **Native**: `SET_PED_HELMET_UNK` (`0x3F7325574E41B44D`)
---@param p1 boolean
---@param p2 integer
---@param p3 integer
---@return fx.Ped self
function Ped:setHelmetUnk(p1, p2, p3) end

--- **Native**: `SET_HIGH_FALL_TASK` (`0x8C825BDC7741D37C`)
---@param duration any
---@param p2 any
---@param p3 any
---@return fx.Ped self
function Ped:setHighFallTask(duration, p2, p3) end

--- **Native**: `SET_PED_HIGHLY_PERCEPTIVE` (`0x52D59AB61DDC05DD`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setHighlyPerceptive(toggle) end

--- **Native**: `SET_ENTITY_ICON_COLOR` (`0x1D5F595CCAE2E238`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@return fx.Ped self
function Ped:setIconColor(red, green, blue, alpha) end

--- **Native**: `SET_ENTITY_ICON_VISIBILITY` (`0xE0E8BEECCA96BA31`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setIconVisibility(toggle) end

--- **Native**: `SET_PED_ID_RANGE` (`0xF107E836A70DCE05`)
---@param value number
---@return fx.Ped self
function Ped:setIdRange(value) end

--- Sets the IK target for a given IK part belonging to the ped.
---
--- **Please note:** The IK target will only be valid for one update, so it needs to be set for as long as it is needed (to avoid IK targets not being cleared and getting stuck enabled).
---
--- ```cpp
--- enum eIkPart {
---   IK_PART_INVALID = 0,
---   // head
---   IK_PART_HEAD = 1,
---   // spine
---   IK_PART_SPINE = 2,
---   // Left Arm
---   IK_PART_ARM_LEFT = 3,
---   // Right Arm
---   IK_PART_ARM_RIGHT = 4,
---   // Left Leg
---   IK_PART_LEG_LEFT = 5,
---   // Right Leg
---   IK_PART_LEG_RIGHT = 6
--- };
---
--- ```
---
--- ```cpp
--- enum eIkTargetFlags {
---   ITF_DEFAULT = 0,
---   // arm target relative to the handbone
---   ITF_ARM_TARGET_WRT_HANDBON = 1,
---   // arm target relative to the pointhelper
---   ITF_ARM_TARGET_WRT_POINTHELPER = 2,
---   // arm target relative to the ikhelper
---   ITF_ARM_TARGET_WRT_IKHELPE = 4,
---   // use animation tags directly
---   ITF_IK_TAG_MODE_NORMAL = 8,
---   // use animation tags in ALLOW mode
---   ITF_IK_TAG_MODE_ALLOW = 16,
---   // use animation tags in BLOCK mode
---   ITF_IK_TAG_MODE_BLOCK = 32,
---   // solve for orientation in addition to position
---   ITF_ARM_USE_ORIENTATION = 64
--- [...]
--- **Native**: `SET_IK_TARGET` (`0xC32779C16FCEECD9`)
---@param ikIndex fx.Enum.IkPart|integer See `eIkPart` for indexes.
---@param entityLookAt fx.Entity|integer Set to 0 for no entity, offsets will be world coordinates instead.
---@param boneLookAt integer Set to -1 for no target bone.
---@param offset vector3 -axis offset calculated from the position of `entityLookAt`.
---@param ikTargetFlags fx.Enum.IkTargetFlags|integer See `eIkTargetFlags` for flags.
---@param blendInDuration integer Animation blending in (in ms). `-1` by default.
---@param blendOutDuration integer Animation blending out (in ms). `-1` by default.
---@return fx.Ped self
function Ped:setIkTarget(ikIndex, entityLookAt, boneLookAt, offset, ikTargetFlags, blendInDuration, blendOutDuration) end

--- **Native**: `SET_PED_INCREASED_AVOIDANCE_RADIUS` (`0x570389D1C3DE3C6B`)
---@return fx.Ped self
function Ped:setIncreasedAvoidanceRadius() end

--- **Native**: `SET_PED_INFINITE_AMMO` (`0x3EDCB0505123623B`)
---@param toggle boolean
---@param weaponHash integer|string
---@return fx.Ped self
function Ped:setInfiniteAmmo(toggle, weaponHash) end

--- **Native**: `SET_PED_INFINITE_AMMO_CLIP` (`0x183DADC6AA953186`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setInfiniteAmmoClip(toggle) end

--- **Native**: `SET_PED_INTO_VEHICLE` (`0xF75B0D629E1C063D`)
---@param vehicle fx.Vehicle|integer
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669). -2 for the first available seat.
---@return fx.Ped self
function Ped:setIntoVehicle(vehicle, seatIndex) end

--- ```
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, MISC::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(num3, MISC::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE"));
--- PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));
--- ```
--- **Native**: `SET_PED_IN_VEHICLE_CONTEXT` (`0x530071295899A8C6`)
---@param context integer|string
---@return fx.Ped self
function Ped:setInVehicleContext(context) end

--- ```
--- Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.
--- If you use this for a ped and you want Ragdoll to stay enabled, then do:
--- *(DWORD *)(pedAddress + 0x188) |= (1 << 9);
--- Use this if you want to get the invincibility status:
--- 	bool IsPedInvincible(Ped ped)
--- 	{
--- auto addr = getScriptHandleBaseAddress(ped);
--- if (addr)
--- {
--- 	DWORD flag = *(DWORD *)(addr + 0x188);
--- 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);
--- }
--- return false;
--- 	}
--- ```
--- **Native**: `SET_ENTITY_INVINCIBLE` (`0x3882114BDE571AD4`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setInvincible(toggle) end

--- ```
--- if set to true other network players can't see it
--- if set to false other network player can see it
--- =========================================
--- ^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.
--- pc or last gen?
--- ^^ last-gen
--- ```
--- **Native**: `NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK` (`0xF1CA12B18AEF5298`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setInvisibleToNetwork(toggle) end

--- Sets the ped so they sound drunk
--- **Native**: `SET_PED_IS_DRUNK` (`0x95D2D383D5396B8A`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setIsDrunk(toggle) end

--- **Native**: `SET_ENTITY_IS_TARGET_PRIORITY` (`0xEA02E132F5C68722`)
---@param p1 boolean
---@param p2 number
---@return fx.Ped self
function Ped:setIsTargetPriority(p1, p2) end

--- **Native**: `SET_PED_KEEP_TASK` (`0x971D38760FBC02EF`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setKeepTask(toggle) end

--- ```
--- "IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1
--- ```
--- **Native**: `SET_PED_LEG_IK_MODE` (`0xC396F5B86FF9FEBD`)
---@param mode integer
---@return fx.Ped self
function Ped:setLegIkMode(mode) end

--- **Native**: `SET_ENTITY_LIGHTS` (`0x7CFBA6A80BDF3874`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setLights(toggle) end

--- Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
---
--- Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SET_ENTITY_LOAD_COLLISION_FLAG` (`0x0DC7CABAB1E9B67E`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setLoadCollisionFlag(toggle) end

--- Sets the provided entity not visible for yourself for the current frame.
--- **Native**: `SET_ENTITY_LOCALLY_INVISIBLE` (`0xE135A9FF3F5D05D8`)
---@return fx.Ped self
function Ped:setLocallyInvisible() end

--- Sets the provided entity visible for yourself for the current frame.
--- **Native**: `SET_ENTITY_LOCALLY_VISIBLE` (`0x241E289B5C059EDC`)
---@return fx.Ped self
function Ped:setLocallyVisible() end

--- **Native**: `SET_PED_LOD_MULTIPLIER` (`0xDC2C5C242AAC342B`)
---@param multiplier number
---@return fx.Ped self
function Ped:setLodMultiplier(multiplier) end

--- Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
--- **Native**: `SET_ENTITY_MATRIX` (`0xFB0639B`)
---@param forward vector3
---@param right vector3
---@param up vector3
---@param at vector3
---@return fx.Ped self
function Ped:setMatrix(forward, right, up, at) end

--- **Native**: `SET_PED_MAX_MOVE_BLEND_RATIO` (`0x433083750C5E064A`)
---@param value number
---@return fx.Ped self
function Ped:setMaxMoveBlendRatio(value) end

--- **Native**: `SET_ENTITY_MAX_SPEED` (`0x0E46A3FCBDE2A1B1`)
---@param speed number Speed in meters per second
---@return fx.Ped self
function Ped:setMaxSpeed(speed) end

--- **Native**: `SET_PED_MAX_TIME_IN_WATER` (`0x43C851690662113D`)
---@param value number
---@return fx.Ped self
function Ped:setMaxTimeInWater(value) end

--- Set the maximum time a ped can stay underwater. Maximum seems to be 50 seconds.
--- **Native**: `SET_PED_MAX_TIME_UNDERWATER` (`0x6BA428C528D9E522`)
---@param value number Time in seconds. Maximum is 50.0, any value above will be changed to 50.0.
---@return fx.Ped self
function Ped:setMaxTimeUnderwater(value) end

--- Overwrites the minimum time the ped will stay on the ground for after being stunned. Setting this while the ped is stunned will not alter the duration of the current stun but will still effect future stuns.
---
--- Passing -1 into the second parameter `minTimeInMs` will reset the modifier, making it use the weapons original `DamageTime` as the stun duration (see `update/update.rpf/common/data/ai/weapons.meta`)
---
--- **NOTE**: Unlike what the native name implies, this works on any weapon that has its `DamageType` in the `weapons.meta` set to `ELECTRIC`.
--- **Native**: `SET_PED_MIN_GROUND_TIME_FOR_STUNGUN` (`0xFA0675AB151073FA`)
---@param minTimeInMs integer The minimum time the stun should last in milliseconds.
---@return fx.Ped self
function Ped:setMinGroundTimeForStungun(minTimeInMs) end

--- **Native**: `SET_PED_MIN_MOVE_BLEND_RATIO` (`0x01A898D26E2333DD`)
---@param value number
---@return fx.Ped self
function Ped:setMinMoveBlendRatio(value) end

--- **Native**: `SET_PED_MOTION_BLUR` (`0x0A986918B102B448`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setMotionBlur(toggle) end

--- ```
--- Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.
--- ```
---
--- ```
--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- ```
--- **Native**: `SET_MOUNTED_WEAPON_TARGET` (`0xCCD892192C6D2BB9`)
---@param targetPed fx.Ped|integer
---@param targetVehicle fx.Vehicle|integer
---@param coords vector3
---@return fx.Ped self
function Ped:setMountedWeaponTarget(targetPed, targetVehicle, coords) end

--- **Native**: `SET_PED_MOVE_ANIMS_BLEND_OUT` (`0x9E8C908F41584ECD`)
---@return fx.Ped self
function Ped:setMoveAnimsBlendOut() end

--- ```
--- List of movement clipsets:
--- Thanks to elsewhat for list.
---  "ANIM_GROUP_MOVE_BALLISTIC"
---  "ANIM_GROUP_MOVE_LEMAR_ALLEY"
---  "clipset@move@trash_fast_turn"
---  "FEMALE_FAST_RUNNER"
---  "missfbi4prepp1_garbageman"
---  "move_characters@franklin@fire"
---  "move_characters@Jimmy@slow@"
---  "move_characters@michael@fire"
---  "move_f@flee@a"
---  "move_f@scared"
---  "move_f@sexy@a"
---  "move_heist_lester"
---  "move_injured_generic"
---  "move_lester_CaneUp"
---  "move_m@bag"
---  "MOVE_M@BAIL_BOND_NOT_TAZERED"
---  "MOVE_M@BAIL_BOND_TAZERED"
---  "move_m@brave"
---  "move_m@casual@d"
---  "move_m@drunk@moderatedrunk"
---  "MOVE_M@DRUNK@MODERATEDRUNK"
---  "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"
---  "MOVE_M@DRUNK@SLIGHTLYDRUNK"
---  "MOVE_M@DRUNK@VERYDRUNK"
---  "move_m@fire"
---  "move_m@gangster@var_e"
---  "move_m@gangster@var_f"
---  "move_m@gangster@var_i"
---  "move_m@JOG@"
---  "MOVE_M@PRISON_GAURD"
---  "MOVE_P_M_ONE"
---  "MOVE_P_M_ONE_BRIEFCASE"
---  "move_p_m_zero_janitor"
---  "move_p_m_zero_slow"
---  "move_ped_bucket"
---  "move_ped_crouched"
---  "move_ped_mop"
--- [...]
--- **Native**: `SET_PED_MOVEMENT_CLIPSET` (`0xAF8A94EDE7712BEF`)
---@param clipSet string
---@param transitionSpeed number time in seconds it takes to transition from one movement clipset to another.
---@return fx.Ped self
function Ped:setMovementClipset(clipSet, transitionSpeed) end

--- ```
--- name: "MP_FEMALE_ACTION" found multiple times in the b617d scripts.
--- ```
--- **Native**: `SET_MOVEMENT_MODE_OVERRIDE` (`0x781DE8FA214E87D2`)
---@param name string
---@return fx.Ped self
function Ped:setMovementModeOverride(name) end

--- ```
--- Min: 0.00
--- Max: 10.00
--- Can be used in combo with fast run cheat.
--- When value is set to 10.00:
--- Sprinting without fast run cheat: 66 m/s
--- Sprinting with fast run cheat: 77 m/s
--- Needs to be looped!
--- Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.
--- ```
--- **Native**: `SET_PED_MOVE_RATE_OVERRIDE` (`0x085BF80FA50A39D1`)
---@param value number
---@return fx.Ped self
function Ped:setMoveRateOverride(value) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- *untested but char *name could also be a hash for a localized string
--- ```
--- **Native**: `SET_PED_NAME_DEBUG` (`0x98EFA132A4117BE1`)
---@param name string
---@return fx.Ped self
function Ped:setNameDebug(name) end

--- **Native**: `SET_PED_NEVER_LEAVES_GROUP` (`0x3DBFC55D5C9BB447`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setNeverLeavesGroup(toggle) end

--- ```
--- Calling this function disables collision between two entities.
--- The importance of the order for entity1 and entity2 is unclear.
--- The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--- ```
--- **Native**: `SET_ENTITY_NO_COLLISION_ENTITY` (`0xA53ED5520C07654A`)
---@param entity2 fx.Entity|integer
---@param thisFrameOnly boolean
---@return fx.Ped self
function Ped:setNoCollisionEntity(entity2, thisFrameOnly) end

--- **Native**: `SET_ENTITY_ONLY_DAMAGED_BY_PLAYER` (`0x79F020FF9EDC0748`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setOnlyDamagedByPlayer(toggle) end

--- **Native**: `SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP` (`0x7022BD828FA0B082`)
---@param p1 boolean
---@param relationshipHash integer|string
---@return fx.Ped self
function Ped:setOnlyDamagedByRelationshipGroup(p1, relationshipHash) end

--- **Native**: `SET_PED_PANIC_EXIT_SCENARIO` (`0xFE07FF6495D52E2A`)
---@param coords vector3
---@return any result
function Ped:setPanicExitScenario(coords) end

--- **Native**: `SET_PARACHUTE_TASK_TARGET` (`0xC313379AF0FCEDA7`)
---@param coords vector3
---@return fx.Ped self
function Ped:setParachuteTaskTarget(coords) end

--- **Native**: `SET_PARACHUTE_TASK_THRUST` (`0x0729BAC1B8C64317`)
---@param thrust number
---@return fx.Ped self
function Ped:setParachuteTaskThrust(thrust) end

--- **Native**: `SET_PED_PARACHUTE_TINT_INDEX` (`0x333FC8DB079B7186`)
---@param tintIndex integer
---@return fx.Ped self
function Ped:setParachuteTintIndex(tintIndex) end

--- **Native**: `SET_PED_PATH_AVOID_FIRE` (`0x4455517B28441E60`)
---@param avoidFire boolean
---@return fx.Ped self
function Ped:setPathAvoidFire(avoidFire) end

--- **Native**: `SET_PED_PATH_CAN_DROP_FROM_HEIGHT` (`0xE361C5C71C431A4F`)
---@param Toggle boolean
---@return fx.Ped self
function Ped:setPathCanDropFromHeight(Toggle) end

--- **Native**: `SET_PED_PATH_CAN_USE_CLIMBOVERS` (`0x8E06A6FE76C9EFF4`)
---@param Toggle boolean
---@return fx.Ped self
function Ped:setPathCanUseClimbovers(Toggle) end

--- **Native**: `SET_PED_PATH_CAN_USE_LADDERS` (`0x77A5B103C87F476E`)
---@param Toggle boolean
---@return fx.Ped self
function Ped:setPathCanUseLadders(Toggle) end

--- ```
--- Default modifier is 1.0, minimum is 0.0 and maximum is 10.0.
--- ```
--- **Native**: `SET_PED_PATH_CLIMB_COST_MODIFIER` (`0x88E32DB8C1A4AA4B`)
---@param modifier number
---@return fx.Ped self
function Ped:setPathClimbCostModifier(modifier) end

--- **Native**: `SET_PED_PATH_MAY_ENTER_WATER` (`0xF35425A4204367EC`)
---@param mayEnterWater boolean
---@return fx.Ped self
function Ped:setPathMayEnterWater(mayEnterWater) end

--- **Native**: `SET_PED_PATH_PREFER_TO_AVOID_WATER` (`0x38FE1EC73743793C`)
---@param avoidWater boolean
---@return fx.Ped self
function Ped:setPathPreferToAvoidWater(avoidWater) end

--- Sets the palette index of a ped's phone.
---
--- | Value | Color      |
--- | :---: | :-----:    |
--- |  `0`  | Light Blue |
--- |  `1`  | Green      |
--- |  `2`  | Red        |
--- |  `3`  | Orange     |
--- |  `4`  | Grey       |
--- |  `5`  | Purple     |
--- |  `6`  | Pink       |
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_PED_PHONE_PALETTE_IDX` (`0x83A169EABCDB10A2`)
---@param index integer The index of the color palette to apply to the ped's phone.
---@return fx.Ped self
function Ped:setPhonePaletteIdx(index) end

--- Configures an entity to either allow or prevent it from being picked up by Cargobobs.
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_PICK_UP_BY_CARGOBOB_DISABLED` (`0xD7B80E7C3BEFC396`)
---@param toggle boolean A boolean value where `true` prevents the entity from being picked up by Cargobobs, and `false` allows it.
---@return fx.Ped self
function Ped:setPickUpByCargobobDisabled(toggle) end

--- ```
--- i could be time. Only example in the decompiled scripts uses it as -1.
--- ```
--- **Native**: `SET_PED_PINNED_DOWN` (`0xAAD6D1ACF08F4612`)
---@param pinned boolean
---@param i integer
---@return any result
function Ped:setPinnedDown(pinned, i) end

--- Sets a player ped to use his ANGRY speech contexts
--- **Native**: `SET_PLAYER_ANGRY` (`0xEA241BB04110F091`)
---@param isAngry boolean
---@return fx.Ped self
function Ped:setPlayerAngry(isAngry) end

--- **This native does absolutely nothing, just a nullsub**
---
--- ```
--- Points to the same function as for example GET_RANDOM_VEHICLE_MODEL_IN_MEMORY and it does absolutely nothing.
--- ```
--- **Native**: `SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE` (`0x94D94BF1A75AED3D`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setPlaysHeadOnHornAnimWhenDiesInVehicle(toggle) end

--- **Native**: `SET_PED_PREFERRED_COVER_SET` (`0x8421EB4DA7E391B9`)
---@param itemSet any
---@return fx.Ped self
function Ped:setPreferredCoverSet(itemSet) end

--- **Native**: `SET_PED_PRELOAD_PROP_DATA` (`0x2B16A3BFF1FBCE49`)
---@param componentId integer The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId integer The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@return boolean result
function Ped:setPreloadPropData(componentId, drawableId, textureId) end

--- ```
--- from extreme3.c4
--- PED::_39D55A620FCB6A3A(PLAYER::PLAYER_PED_ID(), 8, PED::GET_PED_DRAWABLE_VARIATION(PLAYER::PLAYER_PED_ID(), 8), PED::GET_PED_TEXTURE_VARIATION(PLAYER::PLAYER_PED_ID(), 8));
--- p1 is probably componentId
--- ```
--- **Native**: `SET_PED_PRELOAD_VARIATION_DATA` (`0x39D55A620FCB6A3A`)
---@param slot integer
---@param drawableId integer
---@param textureId integer
---@return any result
function Ped:setPreloadVariationData(slot, drawableId, textureId) end

--- ```
--- This is only called once in the scripts.
--- sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);
---                     sub_1CA8("WORLD_HUMAN_SMOKING", 2);
---                     PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());
--- ```
--- **Native**: `SET_PED_PRIMARY_LOOKAT` (`0xCD17B554996A8D9E`)
---@param lookAt fx.Ped|integer
---@return fx.Ped self
function Ped:setPrimaryLookat(lookAt) end

--- ```
--- Enable / disable each type of damage.
--- --------------
--- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);
--- ```
--- **Native**: `SET_ENTITY_PROOFS` (`0xFAEE099C6F890BB8`)
---@param bulletProof boolean
---@param fireProof boolean
---@param explosionProof boolean
---@param collisionProof boolean
---@param meleeProof boolean
---@param steamProof boolean
---@param p7 boolean
---@param drownProof boolean
---@return fx.Ped self
function Ped:setProofs(bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof) end

--- **Native**: `SET_ENTITY_PROOF_UNK` (`0x15F944730C832252`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setProofUnk(toggle) end

--- This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
---
--- ### MP Freemode list of props
---
--- **0**: Hats
--- **1**: Glasses
--- **2**: Ears
--- **6**: Watches
--- **7**: Bracelets
---
--- List of Prop IDs
---
--- ```cpp
--- enum eAnchorPoints
--- {
---     ANCHOR_HEAD = 0, // "p_head"
---     ANCHOR_EYES = 1, // "p_eyes"
---     ANCHOR_EARS = 2, // "p_ears"
---     ANCHOR_MOUTH = 3, // "p_mouth"
---     ANCHOR_LEFT_HAND = 4, // "p_lhand"
---     ANCHOR_RIGHT_HAND = 5, // "p_rhand"
---     ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
---     ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
---     ANCHOR_HIP = 8, // "p_lhip"
---     ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
---     ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
---     ANCHOR_PH_L_HAND = 11, // "ph_lhand"
---     ANCHOR_PH_R_HAND = 12, // "ph_rhand"
---     NUM_ANCHORS = 13,
--- };
--- ```
--- **Native**: `SET_PED_PROP_INDEX` (`0x93376B65A266EB5F`)
---@param componentId fx.Enum.AnchorPoints|integer The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80).
---@param drawableId integer The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47).
---@param textureId integer The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171).
---@param attach boolean Attached or not.
---@return fx.Ped self
function Ped:setPropIndex(componentId, drawableId, textureId, attach) end

--- ```
--- w is the correct parameter name!
--- ```
--- **Native**: `SET_ENTITY_QUATERNION` (`0x77B21BE7AC540F07`)
---@param coords vector3
---@param w number
---@return fx.Ped self
function Ped:setQuaternion(coords, w) end

--- **Native**: `SET_PED_RACE_AND_VOICE_GROUP` (`0x1B7ABE26CBCBF8C7`)
---@param pedRace integer
---@param pvgHash integer PedVoiceGroup hash, defaults to 0
---@return fx.Ped self
function Ped:setRaceAndVoiceGroup(pedRace, pvgHash) end

--- ```
--- Works for both player and peds, but some flags don't seem to work for the player (1, for example)
--- 1 - Blocks ragdolling when shot.
--- 2 - Blocks ragdolling when hit by a vehicle. The ped still might play a falling animation.
--- 4 - Blocks ragdolling when set on fire.
--- -----------------------------------------------------------------------
--- There seem to be 26 flags
--- ```
--- **Native**: `SET_RAGDOLL_BLOCKING_FLAGS` (`0x26695EC767728D84`)
---@param flags integer
---@return fx.Ped self
function Ped:setRagdollBlockingFlags(flags) end

--- **Native**: `SET_PED_RAGDOLL_FORCE_FALL` (`0x01F6594B923B9251`)
---@return fx.Ped self
function Ped:setRagdollForceFall() end

--- Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.
--- Needs to be recalled after each ragdoll from a Collision.
--- **Native**: `SET_PED_RAGDOLL_ON_COLLISION` (`0xF0A4F1BBF4FA7497`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setRagdollOnCollision(toggle) end

--- ```
--- p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.
--- ```
--- **Native**: `SET_PED_RANDOM_COMPONENT_VARIATION` (`0xC8A9481A01E63C28`)
---@param p1 integer
---@return fx.Ped self
function Ped:setRandomComponentVariation(p1) end

--- **Native**: `SET_PED_RANDOM_PROPS` (`0xC44AA05345C992C6`)
---@return fx.Ped self
function Ped:setRandomProps() end

--- **Native**: `SET_ENTITY_RECORDS_COLLISIONS` (`0x0A50A1EEDAD01E65`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setRecordsCollisions(toggle) end

--- **Native**: `SET_ENTITY_RENDER_SCORCHED` (`0x730F5F8D3F0F2050`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setRenderScorched(toggle) end

--- **Native**: `SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK` (`0x694E00132F2823ED`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setRequiresMoreExpensiveRiverCheck(toggle) end

--- **Native**: `SET_PED_RESERVE_PARACHUTE_TINT_INDEX` (`0xE88DA0751C22A2AD`)
---@param p1 any
---@return fx.Ped self
function Ped:setReserveParachuteTintIndex(p1) end

--- PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
--- Known values:
--- **Native**: `SET_PED_RESET_FLAG` (`0xC1E8A365BF3B29F2`)
---@param flagId integer
---@param doReset boolean
---@return fx.Ped self
function Ped:setResetFlag(flagId, doReset) end

--- Sets the rotation of a specified entity in the game world.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SET_ENTITY_ROTATION` (`0x8524A8B0171D5E07`)
---@param pitch number The pitch (X-axis) rotation in degrees.
---@param roll number The roll (Y-axis) rotation in degrees.
---@param yaw number The yaw (Z-axis) rotation in degrees.
---@param rotationOrder fx.Enum.RotationOrder|integer Specifies the order in which yaw, pitch, and roll are applied, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9) for the available rotation orders.
---@param bDeadCheck boolean Usually set to `true`. Determines whether to check if the entity is dead before applying the rotation.
---@return fx.Ped self
function Ped:setRotation(pitch, roll, yaw, rotationOrder, bDeadCheck) end

--- **Native**: `SET_SCRIPTED_ANIM_SEAT_OFFSET` (`0x5917BBA32D06C230`)
---@param p1 number
---@return fx.Ped self
function Ped:setScriptedAnimSeatOffset(p1) end

--- This native sets a scuba mask for freemode models and an oxygen bottle for player_\* models. It works on freemode and player_\* models.
--- **Native**: `SET_PED_SCUBA_GEAR_VARIATION` (`0x36C6984C3ED0C911`)
---@return fx.Ped self
function Ped:setScubaGearVariation() end

--- **Native**: `SET_PED_SEEING_RANGE` (`0xF29CF591C4BF6CEE`)
---@param value number
---@return fx.Ped self
function Ped:setSeeingRange(value) end

--- ```
--- Returns handle of the projectile.
--- ```
--- **Native**: `SET_PED_SHOOT_ORDNANCE_WEAPON` (`0xB4C8D77C80C0421E`)
---@param p1 number
---@return fx.Object? result
function Ped:setShootOrdnanceWeapon(p1) end

--- ```
--- shootRate 0-1000
--- ```
--- **Native**: `SET_PED_SHOOT_RATE` (`0x614DA022990752DC`)
---@param shootRate integer
---@return fx.Ped self
function Ped:setShootRate(shootRate) end

--- Fires a weapon at a coordinate using a ped.
--- **Native**: `SET_PED_SHOOTS_AT_COORD` (`0x96A05E4FB321B1BA`)
---@param coords vector3
---@param toggle boolean
---@return fx.Ped self
function Ped:setShootsAtCoord(coords, toggle) end

--- When this ped receives its next script task, they will exit from their scenario using the normal scenario exit.
--- Exiting the scenario may take several frames while the ped is playing the exit animation.
--- If the ped is not currently using a scenario at the time of the command or 0,0,0 is specified as the reaction position,
--- then the ped will by default attempt to direct their exit forwards.
--- **Native**: `SET_PED_SHOULD_PLAY_DIRECTED_SCENARIO_EXIT` (`0xEC6935EBE0847B90`)
---@param coords vector3 Coordinate.
---@return boolean result Returns true if the position was successfully set.
function Ped:setShouldPlayDirectedScenarioExit(coords) end

--- **Native**: `SET_PED_SHOULD_PLAY_FLEE_SCENARIO_EXIT` (`0xEEED8FAFEC331A70`)
---@param p1 any
---@param p2 any
---@param p3 any
---@return any result
function Ped:setShouldPlayFleeScenarioExit(p1, p2, p3) end

--- **Native**: `SET_PED_SHOULD_PLAY_IMMEDIATE_SCENARIO_EXIT` (`0xF1C03A5352243A30`)
---@return fx.Ped self
function Ped:setShouldPlayImmediateScenarioExit() end

--- **Native**: `SET_PED_SHOULD_PLAY_NORMAL_SCENARIO_EXIT` (`0xA3A9299C4F2ADB98`)
---@return fx.Ped self
function Ped:setShouldPlayNormalScenarioExit() end

--- **Native**: `SET_PED_SPHERE_DEFENSIVE_AREA` (`0x9D3151A373974804`)
---@param coords vector3
---@param radius number
---@param p5 boolean
---@param p6 boolean
---@return fx.Ped self
function Ped:setSphereDefensiveArea(coords, radius, p5, p6) end

--- **Native**: `SET_PED_STAY_IN_VEHICLE_WHEN_JACKED` (`0xEDF4079F9D54C9A1`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setStayInVehicleWhenJacked(toggle) end

--- ```
--- p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".
--- ```
--- **Native**: `SET_PED_STEALTH_MOVEMENT` (`0x88CBB5CEB96B7BD2`)
---@param p1 boolean
---@param action string
---@return fx.Ped self
function Ped:setStealthMovement(p1, action) end

--- **Native**: `SET_PED_STEERS_AROUND_OBJECTS` (`0x1509C089ADC208BF`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setSteersAroundObjects(toggle) end

--- **Native**: `SET_PED_STEERS_AROUND_PEDS` (`0x46F2193B3AD1D891`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setSteersAroundPeds(toggle) end

--- **Native**: `SET_PED_STEERS_AROUND_VEHICLES` (`0xEB6FB9D48DDE23EC`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setSteersAroundVehicles(toggle) end

--- **Native**: `SET_PED_STRAFE_CLIPSET` (`0x29A28F3F8CF6D854`)
---@param clipSet string
---@return fx.Ped self
function Ped:setStrafeClipset(clipSet) end

--- Ped no longer takes critical damage modifiers if set to FALSE.
---
--- Example: Headshotting a player no longer one shots them. Instead they will take the same damage as a torso shot.
--- **Native**: `SET_PED_SUFFERS_CRITICAL_HITS` (`0xEBD76F2359F190AC`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setSuffersCriticalHits(toggle) end

--- ```
--- Only 1 and 2 appear in the scripts. combatbehaviour.meta seems to only have TLR_SearchForTarget for all peds, but we don't know if that's 1 or 2.
--- ```
--- **Native**: `SET_PED_TARGET_LOSS_RESPONSE` (`0x0703B9079823DA4A`)
---@param responseType integer
---@return fx.Ped self
function Ped:setTargetLossResponse(responseType) end

--- **Native**: `SET_TASK_MOVE_NETWORK_SIGNAL_BOOL` (`0xB0A6CFD2C69C1088`)
---@param signalName string The property name.
---@param value boolean The property value to set.
---@return fx.Ped self
function Ped:setTaskMoveNetworkSignalBool(signalName, value) end

--- ```
--- p0 - PLAYER::PLAYER_PED_ID();
--- p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".
--- p2 - From what i can see it goes up to 1f (maybe).
--- -LcGamingHD
--- Example: TASK::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);
--- ```
--- **Native**: `SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT` (`0xD5BB4025AE449A4E`)
---@param signalName string The property name.
---@param value number The property value to set.
---@return fx.Ped self
function Ped:setTaskMoveNetworkSignalFloat(signalName, value) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT_2` (`0x373EF409B82697A3`)
---@param signalName string
---@param value number
---@return fx.Ped self
function Ped:setTaskMoveNetworkSignalFloat2(signalName, value) end

--- ```
--- * Flag 1: Aggressive ramming of suspect
--- * Flag 2: Ram attempts
--- * Flag 8: Medium-aggressive boxing tactic with a bit of PIT
--- * Flag 16: Ramming, seems to be slightly less aggressive than 1-2.
--- * Flag 32: Stay back from suspect, no tactical contact. Convoy-like.
--- ```
--- **Native**: `SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG` (`0xCC665AAC360D31E7`)
---@param flag integer
---@param set boolean
---@return fx.Ped self
function Ped:setTaskVehicleChaseBehaviorFlag(flag, set) end

--- **Native**: `SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE` (`0x639B642FACBE4EDD`)
---@param distance number
---@return fx.Ped self
function Ped:setTaskVehicleChaseIdealPursuitDistance(distance) end

--- **Native**: `SET_PED_TO_INFORM_RESPECTED_FRIENDS` (`0x112942C6E708F70B`)
---@param radius number
---@param maxFriends integer
---@return fx.Ped self
function Ped:setToInformRespectedFriends(radius, maxFriends) end

--- **Native**: `SET_PED_TO_LOAD_COVER` (`0x332B562EEDA62399`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setToLoadCover(toggle) end

--- p4/p5: Unusued in TU27
---
--- ### Ragdoll Types
---
--- **0**: CTaskNMRelax
--- **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
--- **Else**: CTaskNMBalance
--- **Native**: `SET_PED_TO_RAGDOLL` (`0xAE99FB955581844A`)
---@param time1 integer Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
---@param time2 integer
---@param ragdollType integer
---@param p4 boolean
---@param p5 boolean
---@param p6 boolean
---@return boolean result
function Ped:setToRagdoll(time1, time2, ragdollType, p4, p5, p6) end

--- ```
--- Return variable is never used in R*'s scripts.
--- Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.
--- x, y, and z are coordinates, most likely to where the ped will fall.
--- p7 is probably the force of the fall, but untested, so I left the variable name the same.
--- p8 to p13 are always 0f in R*'s scripts.
--- (Simplified) Example of the usage of the function from R*'s scripts:
--- ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
--- ```
--- **Native**: `SET_PED_TO_RAGDOLL_WITH_FALL` (`0xD76632D99E4966C8`)
---@param time integer
---@param p2 integer
---@param ragdollType integer
---@param coords vector3
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
---@param p11 number
---@param p12 number
---@param p13 number
---@return boolean result
function Ped:setToRagdollWithFall(time, p2, ragdollType, coords, p7, p8, p9, p10, p11, p12, p13) end

--- Changing traffic-lights will not change the behavior of NPCs.
---
--- Example: [here](https://www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340)
---
--- ```cpp
--- enum eTrafficlightOverrideMode
--- {
---     TLO_RED = 0,
---     TLO_AMBER = 1,
---     TLO_GREEN = 2,
---     TLO_NONE = 3
--- }
--- ```
--- **Native**: `SET_ENTITY_TRAFFICLIGHT_OVERRIDE` (`0x57C5DB656185EAC4`)
---@param state fx.Enum.TrafficlightOverrideMode|integer
---@return fx.Ped self
function Ped:setTrafficlightOverride(state) end

--- ```
--- p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".
--- ```
--- **Native**: `SET_PED_USING_ACTION_MODE` (`0xD75ACCF5E0FB5367`)
---@param p1 boolean
---@param p2 integer
---@param action string
---@return fx.Ped self
function Ped:setUsingActionMode(p1, p2, action) end

--- ```
--- NativeDB Added Parameter 5: Any p4
--- ```
--- **Native**: `SET_PED_VEHICLE_FORCED_SEAT_USAGE` (`0x952F06BEECD775CC`)
---@param vehicle fx.Vehicle|integer
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param flags integer
---@return fx.Ped self
function Ped:setVehicleForcedSeatUsage(vehicle, seatIndex, flags) end

--- ```
--- Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:
--- WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);
--- ```
--- **Native**: `SET_VEHICLE_SHOOT_AT_TARGET` (`0x74CD9A9327A282EA`)
---@param entity fx.Entity|integer
---@param target vector3
---@return fx.Ped self
function Ped:setVehicleShootAtTarget(entity, target) end

--- Toggle the visibility of a given entity.
--- **Native**: `SET_ENTITY_VISIBLE` (`0xEA1C610A04DB6BBB`)
---@param toggle boolean Whether or not the entity will be visible
---@param unk boolean Always 0 in scripts
---@return fx.Ped self
function Ped:setVisible(toggle, unk) end

--- **Native**: `SET_PED_VISUAL_FIELD_MAX_ANGLE` (`0x70793BDCA1E854D4`)
---@param value number
---@return fx.Ped self
function Ped:setVisualFieldMaxAngle(value) end

--- ```
--- This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.
--- ```
--- **Native**: `SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE` (`0x78D0B67629D75856`)
---@param angle number
---@return fx.Ped self
function Ped:setVisualFieldMaxElevationAngle(angle) end

--- **Native**: `SET_PED_VISUAL_FIELD_MIN_ANGLE` (`0x2DB492222FB21E26`)
---@param value number
---@return fx.Ped self
function Ped:setVisualFieldMinAngle(value) end

--- ```
--- This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.
--- ```
--- **Native**: `SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE` (`0x7A276EB2C224D70F`)
---@param angle number
---@return fx.Ped self
function Ped:setVisualFieldMinElevationAngle(angle) end

--- **Native**: `SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE` (`0x9C74B0BC831B753A`)
---@param range number
---@return fx.Ped self
function Ped:setVisualFieldPeripheralRange(range) end

--- Calls the same internal function [`_SET_PED_VOICE_GROUP`](#\_0x7CDC8C3B89F661B3) calls, but passes `voiceGroupHash` (defined as a parameter in the referenced native) as `0`.
--- **Native**: `SET_PED_VOICE_FULL` (`0x40CF0D12D142A9E8`)
---@return fx.Ped self
function Ped:setVoiceFull() end

--- ```
--- From the scripts:
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("PAIGE_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("TALINA_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));
--- AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));
--- ```
--- **Native**: `SET_PED_VOICE_GROUP` (`0x7CDC8C3B89F661B3`)
---@param voiceGroupHash integer|string
---@return fx.Ped self
function Ped:setVoiceGroup(voiceGroupHash) end

--- ```
--- Dat151RelType == 29
--- ```
---
--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `SET_PED_VOICE_GROUP_RACE` (`0x0BABC1345ABBFB16`)
---@param voiceGroupHash integer|string
---@return fx.Ped self
function Ped:setVoiceGroupRace(voiceGroupHash) end

--- ```
--- SET_*
--- Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.
--- Ran after these 2 natives,
--- set_object_targettable(uParam0, 0);
--- set_entity_invincible(uParam0, 1);
--- ```
--- **Native**: `SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE` (`0xDC6F8601FAF2E893`)
---@param toggle boolean
---@return fx.Ped self
function Ped:setWaitForCollisionsBeforeProbe(toggle) end

--- **Native**: `SET_PED_WEAPON_LIVERY_COLOR` (`0x9FE5633880ECD8ED`)
---@param weaponHash integer|string
---@param camoComponentHash integer|string
---@param colorIndex integer
---@return fx.Ped self
function Ped:setWeaponLiveryColor(weaponHash, camoComponentHash, colorIndex) end

--- **Native**: `SET_PED_WEAPON_MOVEMENT_CLIPSET` (`0x2622E35B77D3ACA2`)
---@param clipSet string
---@return fx.Ped self
function Ped:setWeaponMovementClipset(clipSet) end

--- ```
--- tintIndex can be the following:
--- 0 : Default/Black
--- 1 : Green
--- 2 : Gold
--- 3 : Pink
--- 4 : Army
--- 5 : LSPD
--- 6 : Orange
--- 7 : Platinum
---
--- tintIndex for MK2 weapons :
--- 0 : Classic Black
--- 1 : Classic Gray
--- 2 : Classic Two-Tone
--- 3 : Classic White
--- 4 : Classic Beige
--- 5 : Classic Green
--- 6 : Classic Blue
--- 7 : Classic Earth
--- 8 : Classic Brown & Black
--- 9 : Red Contrast
--- 10 : Blue Contrast
--- 11 : Yellow Contrast
--- 12 : Orange Contrast
--- 13 : Bold Pink
--- 14 : Bold Purple & Yellow
--- 15 : Bold Orange
--- 16 : Bold Green & Purple
--- 17 : Bold Red Features
--- 18 : Bold Green Features
--- 19 : Bold Cyan Features
--- 20 : Bold Yellow Features
--- 21 : Bold Red & White
--- 22 : Bold Blue & White
--- 23 : Metallic Gold
--- 24 : Metallic Platinum
--- 25 : Metallic Gray & Lilac
--- 26 : Metallic Purple & Lime
--- 27 : Metallic Red
--- [...]
--- **Native**: `SET_PED_WEAPON_TINT_INDEX` (`0x50969B9B89ED5738`)
---@param weaponHash integer|string The target weapon hash
---@param tintIndex integer Tint for weapon hash
---@return fx.Ped self
function Ped:setWeaponTintIndex(weaponHash, tintIndex) end

--- ```
--- combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function
--- ```
--- **Native**: `SET_PED_WETNESS_ENABLED_THIS_FRAME` (`0xB5485E4907B53019`)
---@return fx.Ped self
function Ped:setWetnessEnabledThisFrame() end

--- ```
--- It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.
--- ```
--- **Native**: `SET_PED_WETNESS_HEIGHT` (`0x44CB6447D2571AA0`)
---@param height number
---@return fx.Ped self
function Ped:setWetnessHeight(height) end

--- Kicks the ped from the current vehicle and keeps the rendering-focus on this ped (also disables its collision). If doing this for your player ped, you'll still be able to drive the vehicle.\
--- Only to be used in very specific situations where the ped needs to be inside the car still but not attached.
--- **Native**: `SPECIAL_FUNCTION_DO_NOT_USE` (`0xF9ACF4A08098EA25`)
---@param noCollisionUntilClear boolean
---@return fx.Ped self
function Ped:specialFunctionDoNotUse(noCollisionUntilClear) end

--- **Native**: `START_ENTITY_FIRE` (`0xF6A9D9708F6F23DF`)
---@return integer result
function Ped:startFire() end

--- ```cpp
--- enum ePlayerSwitchType
--- {
--- 	SWITCH_TYPE_AUTO = 0,
--- 	SWITCH_TYPE_LONG = 1,
--- 	SWITCH_TYPE_MEDIUM = 2,
--- 	SWITCH_TYPE_SHORT = 3
--- };
--- ```
---
--- ```cpp
--- enum eSwitchFlags {
--- 	SKIP_INTRO = 1,
--- 	SKIP_OUTRO = 2,
--- 	PAUSE_BEFORE_PAN = 4,
--- 	PAUSE_BEFORE_OUTRO = 8,
--- 	SKIP_PAN = 16,
--- 	UNKNOWN_DEST = 32,
--- 	DESCENT_ONLY = 64,
--- 	START_FROM_CAMPOS = 128,
--- 	PAUSE_BEFORE_ASCENT = 256,
--- 	PAUSE_BEFORE_DESCENT = 512,
--- 	ALLOW_SNIPER_AIM_INTRO = 1024,
--- 	ALLOW_SNIPER_AIM_OUTRO = 2048,
--- 	SKIP_TOP_DESCENT = 4096,
--- 	SUPPRESS_OUTRO_FX = 8192,
--- 	SUPPRESS_INTRO_FX = 16384,
--- 	DELAY_ASCENT_FX = 32768
--- }
--- ```
--- **Native**: `START_PLAYER_SWITCH` (`0xFAA23F2CBA159D67`)
---@param to fx.Ped|integer
---@param flags fx.Enum.SwitchFlags|integer Refer to `eSwitchFlags`
---@param switchType fx.Enum.PlayerSwitchType|integer Refer to `ePlayerSwitchType`
---@return fx.Ped self
function Ped:startPlayerSwitch(to, flags, switchType) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_BOUND` (`0x37181417CE7C8900`)
---@param flags1 integer
---@param flags2 integer
---@return integer result
function Ped:startShapeTestBound(flags1, flags2) end

--- See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
--- **Native**: `START_SHAPE_TEST_BOUNDING_BOX` (`0x052837721A854EC7`)
---@param flags1 integer
---@param flags2 integer
---@return integer result
function Ped:startShapeTestBoundingBox(flags1, flags2) end

--- ```
--- RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
--- ```
--- **Native**: `STOP_ENTITY_ANIM` (`0x28004F88151E03E0`)
---@param animation string
---@param animGroup string
---@param p3 number
---@return any result
function Ped:stopAnim(animation, animGroup, p3) end

--- ```
--- Looks like p1 may be a flag, still need to do some research, though.
--- ```
--- **Native**: `STOP_ANIM_PLAYBACK` (`0xEE08C992D238C5D1`)
---@param p1 integer
---@param p2 boolean
---@return fx.Ped self
function Ped:stopAnimPlayback(p1, p2) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `STOP_ANIM_TASK` (`0x97FF36A1D40EA00A`)
---@param animDictionary string
---@param animationName string
---@param animExitSpeed number Greater than `0.0`, higher is faster. Setting to `0.0` or using an integer, will cause animation lockout - requiring the animation to be played again or the player be killed.
---@return fx.Ped self
function Ped:stopAnimTask(animDictionary, animationName, animExitSpeed) end

--- Stops currently playing ambient speech.
--- **Native**: `STOP_CURRENT_PLAYING_AMBIENT_SPEECH` (`0xB8BEC0CA6F0EDB0F`)
---@return fx.Ped self
function Ped:stopCurrentPlayingAmbientSpeech() end

--- Stops currently playing speech (Pain, ambient, scripted, breathing).
--- **Native**: `STOP_CURRENT_PLAYING_SPEECH` (`0x7A73D05A607734C7`)
---@return fx.Ped self
function Ped:stopCurrentPlayingSpeech() end

--- **Native**: `STOP_ENTITY_FIRE` (`0x7F0DD2EBBB651AFF`)
---@return fx.Ped self
function Ped:stopFire() end

--- Stops a ped's ringtone from playing
--- **Native**: `STOP_PED_RINGTONE` (`0x6C5AE23EFA885092`)
---@return fx.Ped self
function Ped:stopRingtone() end

--- This doesn't stop a piece of dialogue that has been triggered.
---
--- This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.
---
--- Nb. This does not sync over the network, it will only affect peds locally. Use [STOP_PED_SPEAKING_SYNCED](#\_0xAB6781A5F3101470) if you need to affect peds on other machines too.
--- **Native**: `STOP_PED_SPEAKING` (`0x9D64D7405520E3D3`)
---@param shouldDisable boolean
---@return fx.Ped self
function Ped:stopSpeaking(shouldDisable) end

--- This doesn't stop a piece of dialogue that has been triggered.
---
--- This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.
---
--- The ped will also be prevented from speaking on remote machines. Use [STOP_PED_SPEAKING](#\_0x9D64D7405520E3D3) if you just want to affect the local machine.
--- **Native**: `STOP_PED_SPEAKING_SYNCED` (`0xAB6781A5F3101470`)
---@param shouldDisable boolean
---@return fx.Ped self
function Ped:stopSpeakingSynced(shouldDisable) end

--- ```
--- p1 sync task id?
--- ```
--- **Native**: `STOP_SYNCHRONIZED_ENTITY_ANIM` (`0x43D3807C077261E3`)
---@param p1 number
---@param p2 boolean
---@return boolean result
function Ped:stopSynchronizedAnim(p1, p2) end

--- **Native**: `STOP_PED_WEAPON_FIRING_WHEN_DROPPED` (`0xC158D28142A34608`)
---@return fx.Ped self
function Ped:stopWeaponFiringWhenDropped() end

--- You can check if the player is in a Switch state with [`IS_PLAYER_SWITCH_IN_PROGRESS`](#\_0xD9D2CFFF49FAB35F).
---
--- ***Note:** Doesn't act normally when used on Mount Chiliad.*
--- **Native**: `SWITCH_TO_MULTI_FIRSTPART` (`0xAAB3200ED59016BC`)
---@param flags integer Flags control various functionalities: 0 for normal behavior, 1 for no transition, and 255 for Switch IN.
---@param switchType integer Specifies the type of switch (0 - 3): 0 for 1 step towards ped, 1 for 3 steps out from ped, 2 for 1 step out from ped, and 3 for 1 step towards ped.
---@return fx.Ped self
function Ped:switchToMultiFirstpart(flags, switchType) end

--- After using [`SWITCH_TO_MULTI_FIRSTPART`](#\_0xAAB3200ED59016BC) , use this native to smoothly return the camera to the player's character.
--- **Native**: `SWITCH_TO_MULTI_SECONDPART` (`0xD8295AF639FD9CB8`)
---@return fx.Ped self
function Ped:switchToMultiSecondpart() end

--- ```
--- Makes the specified ped achieve the specified heading.
--- pedHandle: The handle of the ped to assign the task to.
--- heading: The desired heading.
--- timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.
--- ```
--- **Native**: `TASK_ACHIEVE_HEADING` (`0x93B93A37987F1F3D`)
---@param heading number
---@param timeout integer
---@return fx.Ped self
function Ped:taskAchieveHeading(heading, timeout) end

--- **Native**: `TASK_AGITATED_ACTION` (`0x19D1B791CB3670FE`)
---@param ped2 fx.Ped|integer
---@return fx.Ped self
function Ped:taskAgitatedAction(ped2) end

--- **Native**: `TASK_AIM_GUN_AT_COORD` (`0x6671F3EEC681BDA1`)
---@param coords vector3
---@param time integer
---@param bInstantBlendToAim boolean
---@param bPlayAimIntro boolean
---@return fx.Ped self
function Ped:taskAimGunAtCoord(coords, time, bInstantBlendToAim, bPlayAimIntro) end

--- ```
--- duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
--- ```
--- **Native**: `TASK_AIM_GUN_AT_ENTITY` (`0x9B53BB6E8943AF53`)
---@param entity fx.Entity|integer
---@param duration integer
---@param bInstantBlendToAim boolean
---@return fx.Ped self
function Ped:taskAimGunAtEntity(entity, duration, bInstantBlendToAim) end

--- **Native**: `TASK_AIM_GUN_SCRIPTED` (`0x7A192BE16D373D00`)
---@param scriptTask integer|string
---@param bDisableBlockingClip boolean
---@param bInstantBlendToAim boolean
---@return fx.Ped self
function Ped:taskAimGunScripted(scriptTask, bDisableBlockingClip, bInstantBlendToAim) end

--- **Native**: `TASK_AIM_GUN_SCRIPTED_WITH_TARGET` (`0x8605AF0DE8B3A5AC`)
---@param targetPed fx.Ped|integer
---@param coords vector3
---@param iGunTaskType integer|string
---@param bDisableBlockingClip boolean
---@param bForceAim boolean
---@return fx.Ped self
function Ped:taskAimGunScriptedWithTarget(targetPed, coords, iGunTaskType, bDisableBlockingClip, bForceAim) end

--- ```
--- Example from "me_amanda1.ysc.c4":
--- TASK::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());
--- Example from "armenian1.ysc.c4":
--- if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {
---     TASK::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());
--- }
--- I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.
--- Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.
--- ```
--- **Native**: `TASK_ARREST_PED` (`0xF3B9A78A178572B1`)
---@param target fx.Ped|integer
---@return fx.Ped self
function Ped:taskArrest(target) end

--- All parameters except ped and boat are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).
---
--- If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget` and other int parameters, and `-1.0f` for the remaining float parameters.
---
--- ```cpp
--- enum eBoatMissionFlags
--- {
---   None = 0,
---   StopAtEnd = 1,
---   StopAtShore = 2,
---   AvoidShore = 4,
---   PreferForward = 8,
---   NeverStop = 16,
---   NeverNavMesh = 32,
---   NeverRoute = 64,
---   ForceBeached = 128,
---   UseWanderRoute = 256,
---   UseFleeRoute = 512,
---   NeverPause = 1024,
---   // StopAtEnd | StopAtShore | AvoidShore
---   DefaultSettings = 7,
---   // StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverRoute
---   OpenOceanSettings = 111,
---   // StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverPause
---   BoatTaxiSettings = 1071,
--- }
--- ```
--- **Native**: `TASK_BOAT_MISSION` (`0x15C86013127CE63F`)
---@param boat fx.Vehicle|integer The boats' entity handle.
---@param vehicleTarget fx.Vehicle|integer The target vehicle (default is 0).
---@param pedTarget fx.Ped|integer The target ped (default is 0).
---@param coords vector3 The coordinate of the target (default is 0.0f).
---@param missionType integer The mission type (default is 0) (see [TaskVehicleMission](#\_0x659427E0EF36BCDE)).
---@param speed number The speed in m/s (default is -1.0f).
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param radius number The radius of when the task will be completed (default is -1.0f).
---@param missionFlags fx.Enum.BoatMissionFlags|integer The mission flags (default is 0) (see `eBoatMissionFlags`).
---@return fx.Ped self
function Ped:taskBoatMission(boat, vehicleTarget, pedTarget, coords, missionType, speed, drivingStyle, radius, missionFlags) end

--- ```
--- p2 tend to be 16, 17 or 1
--- p3 to p7 tend to be 0.0
--- ```
--- **Native**: `TASK_CHAT_TO_PED` (`0x8C338E0263E4FD19`)
---@param target fx.Ped|integer
---@param p2 any
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@return fx.Ped self
function Ped:taskChatToPed(target, p2, p3, p4, p5, p6, p7) end

--- ```
--- Not clear what it actually does, but here's how script uses it -
--- if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)
--- {
---  if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))
---     {
---      TASK::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());
---   }
---  ...
--- }
--- Another one where it doesn't "look" at current player -
--- TASK::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);
--- PED::_2208438012482A1A(l_3ED, 0, 0);
--- TASK::TASK_CLEAR_LOOK_AT(l_3ED);
--- ```
--- **Native**: `TASK_CLEAR_LOOK_AT` (`0x0F804F1DB19B9689`)
---@return fx.Ped self
function Ped:taskClearLookAt() end

--- ```
--- Climbs or vaults the nearest thing.
--- ```
--- **Native**: `TASK_CLIMB` (`0x89D9FCC2435112F1`)
---@param unused boolean
---@return fx.Ped self
function Ped:taskClimb(unused) end

--- **Native**: `TASK_CLIMB_LADDER` (`0xB6C987F9285A3814`)
---@param p1 integer
---@return fx.Ped self
function Ped:taskClimbLadder(p1) end

--- ```
--- Makes the specified ped attack the target ped.
--- p2 should be 0
--- p3 should be 16
--- ```
--- **Native**: `TASK_COMBAT_PED` (`0xF166E48407BAC484`)
---@param targetPed fx.Ped|integer
---@param p2 integer
---@param p3 integer
---@return fx.Ped self
function Ped:taskCombat(targetPed, p2, p3) end

--- ```
--- Despite its name, it only attacks ONE hated target. The one closest hated target.
--- p2 seems to be always 0
--- ```
--- **Native**: `TASK_COMBAT_HATED_TARGETS_AROUND_PED` (`0x7BF835BB9E2698C8`)
---@param radius number
---@param p2 integer
---@return fx.Ped self
function Ped:taskCombatHatedTargetsAround(radius, p2) end

--- ```
--- Despite its name, it only attacks ONE hated target. The one closest to the specified position.
--- ```
--- **Native**: `TASK_COMBAT_HATED_TARGETS_IN_AREA` (`0x4CF5F55DAC3280A0`)
---@param coords vector3
---@param radius number
---@param p5 any
---@return fx.Ped self
function Ped:taskCombatHatedTargetsInArea(coords, radius, p5) end

--- The ped will act like NPC's involved in a gunfight. The ped will squat down with their heads held in place and look around.
--- **Native**: `TASK_COWER` (`0x3EB1FE9E8E908E15`)
---@param duration integer Duration of the animation in ms. Set to -1 if you do not want a duration.
---@return fx.Ped self
function Ped:taskCower(duration) end

--- ```
--- Example:
--- TASK::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
--- Needs working example. Doesn't seem to do anything.
--- I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
--- I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
--- I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
--- ```
--- **Native**: `TASK_DRIVE_BY` (`0x2F8AF0E82773A171`)
---@param targetPed fx.Ped|integer
---@param targetVehicle fx.Vehicle|integer
---@param target vector3
---@param distanceToShoot number
---@param pedAccuracy integer
---@param p8 boolean
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskDriveBy(targetPed, targetVehicle, target, distanceToShoot, pedAccuracy, p8, firingPattern) end

--- ```
--- speed 1.0 = walk, 2.0 = run
--- p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle
--- p6 is always 0
--- ```
--- **Native**: `TASK_ENTER_VEHICLE` (`0xC20E50AA46D09CA8`)
---@param vehicle fx.Vehicle|integer
---@param timeout integer
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@param speed number
---@param flag integer
---@param p6 any
---@return fx.Ped self
function Ped:taskEnterVehicle(vehicle, timeout, seatIndex, speed, flag, p6) end

--- Sometimes a path may not be able to be found. This could happen because there simply isn't any way to get there, or maybe a bunch of dynamic objects have blocked the way,
--- or maybe the destination is too far away. In this case the ped will simply stand still.
--- To identify when this has happened, you can use GET_NAVMESH_ROUTE_RESULT. This will help you find situations where peds cannot get to their target.
---
--- ```cpp
--- enum eNavScriptFlags {
---     // Default flag
---     ENAV_DEFAULT = 0,
---     // Will ensure the ped continues to move whilst waiting for the path
---     // to be found, and will not slow down at the end of their route.
---     ENAV_NO_STOPPING = 1,
---     // Performs a slide-to-coord at the end of the task. This requires that the
---     // accompanying NAVDATA structure has the 'SlideToCoordHeading' member set correctly.
---     ENAV_ADV_SLIDE_TO_COORD_AND_ACHIEVE_HEADING_AT_END = 2,
---     // If the navmesh is not loaded in under the target position, then this will
---     // cause the ped to get as close as is possible on whatever navmesh is loaded.
---     // The navmesh must still be loaded at the path start.
---     ENAV_GO_FAR_AS_POSSIBLE_IF_TARGET_NAVMESH_NOT_LOADED = 4,
---     // Will allow navigation underwater - by default this is not allowed.
---     ENAV_ALLOW_SWIMMING_UNDERWATER = 8,
---     // Will only allow navigation on pavements. If the path starts or ends off
---     // the pavement, the command will fail. Likewise if no pavement-only route
---     // can be found even although the start and end are on pavement.
---     ENAV_KEEP_TO_PAVEMENTS = 16,
---     // Prevents the path from entering water at all.
---     ENAV_NEVER_ENTER_WATER = 32,
---     // Disables object-avoidance for this path. The ped may still make minor
---     // steering adjustments to avoid objects, but will not pathfind around them.
---     ENAV_DONT_AVOID_OBJECTS = 64,
---     // Specifies that the navmesh route will only be able to traverse up slopes
---     // which are under the angle specified, in the MaxSlopeNavigable member of the accompanying NAVDATA structure.
---     ENAV_ADVANCED_USE_MAX_SLOPE_NAVIGABLE = 128,
---     // Unused.
---     ENAV_STOP_EXACTLY = 512,
---     // The entity will look ahead in its path for a longer distance to make the
---     // walk/run start go more in the right direction.
---     ENAV_ACCURATE_WALKRUN_START = 1024,
---     // Disables ped-avoidance for this path while we move.
---     ENAV_DONT_AVOID_PEDS = 2048,
---     // If target pos is inside the boundingbox of an object it will otherwise be pushed out.
--- [...]
--- **Native**: `TASK_FOLLOW_NAV_MESH_TO_COORD` (`0x15D3A79D4E44B913`)
---@param coords vector3 X Position Coordinate. / Y Position Coordinate. / Z Position Coordinate
---@param moveBlendRatio number Ratio for ped movement (0 to 3.0 in the following order: still, walk, run and sprint)
---@param time integer INT value in milliseconds.
---@param radius number distance from the final coordinates that the pedestrian should be to consider itself at the target.
---@param flags fx.Enum.NavScriptFlags|integer Navigation Flags for the ped (see `eNavScriptFlags`).
---@param finalHeading number Peds heading when finished.
---@return fx.Ped self
function Ped:taskFollowNavMeshToCoord(coords, moveBlendRatio, time, radius, flags, finalHeading) end

--- **Native**: `TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED` (`0x17F58B88D085DBAC`)
---@param coords vector3
---@param speed number
---@param timeout integer
---@param unkFloat number
---@param unkInt integer
---@param unk vector3
---@param unk_40000f number
---@return fx.Ped self
function Ped:taskFollowNavMeshToCoordAdvanced(coords, speed, timeout, unkFloat, unkInt, unk, unk_40000f) end

--- Makes the ped go on a point route.
---
--- ```cpp
--- enum eFollowPointRouteMode {
--- 	TICKET_SINGLE = 0,
--- 	TICKET_RETURN = 1,
--- 	TICKET_SEASON = 2,
--- 	TICKET_LOOP = 3
--- }
--- ```
---
--- This native is often times used with [`TASK_FLUSH_ROUTE`](#\_0x841142A1376E9006) and [`TASK_EXTEND_ROUTE`](#\_0x1E7889778264843A)
--- **Native**: `TASK_FOLLOW_POINT_ROUTE` (`0x595583281858626E`)
---@param speed number The speed to move at in m/s.
---@param routeMode fx.Enum.FollowPointRouteMode|integer The route mode to use, refer to `eFollowPointRouteMode`
---@return fx.Ped self
function Ped:taskFollowPointRoute(speed, routeMode) end

--- ```
--- p6 always -1
--- p7 always 10.0
--- p8 always 1
--- ```
--- **Native**: `TASK_FOLLOW_TO_OFFSET_OF_ENTITY` (`0x304AE42E357B8C7E`)
---@param entity fx.Entity|integer
---@param offset vector3
---@param movementSpeed number
---@param timeout integer
---@param stoppingRange number
---@param persistFollowing boolean
---@return fx.Ped self
function Ped:taskFollowToOffsetOfEntity(entity, offset, movementSpeed, timeout, stoppingRange, persistFollowing) end

--- See [`FORCE_PED_MOTION_STATE`](#\_0xF28965D04F570DCA)
--- **Native**: `TASK_FORCE_MOTION_STATE` (`0x4F056E1AFFEF17AB`)
---@param state integer|string
---@param p2 boolean
---@return fx.Ped self
function Ped:taskForceMotionState(state, p2) end

--- **Native**: `TASK_GET_OFF_BOAT` (`0x9C00E77AF14B2DFF`)
---@param boat fx.Vehicle|integer
---@return fx.Ped self
function Ped:taskGetOffBoat(boat) end

--- **Native**: `TASK_GO_STRAIGHT_TO_COORD` (`0xD76B57B44F1E6F8B`)
---@param coords vector3 The coordinate.
---@param speed number The ped movement speed.
---@param timeout integer \-1 , other values appear to break the ped movement.
---@param targetHeading number The heading you want the ped to be on x,y,z coord.
---@param distanceToSlide number The distance from x,y,z where the ped will start sliding.
---@return fx.Ped self
function Ped:taskGoStraightToCoord(coords, speed, timeout, targetHeading, distanceToSlide) end

--- **Native**: `TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY` (`0x61E360B7E040D12E`)
---@param entity2 fx.Entity|integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@return fx.Ped self
function Ped:taskGoStraightToCoordRelativeToEntity(entity2, p2, p3, p4, p5, p6) end

--- ```
--- The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.
--- If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.
--- If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.
--- The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.
--- I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.
--- I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.
--- Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.
--- The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).
--- Example:
--- enum AimFlag
--- {
---    AimAtFocusLocation,
---    AimAtGoToLocation
--- };
--- Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.
--- Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.
--- Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground
--- // 1st example
--- TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);
--- // 2nd example
--- TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);
--- 1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.
--- 2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.
--- ```
--- **Native**: `TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD` (`0xA55547801EB331FC`)
---@param goToLocation vector3
---@param focusLocation vector3
---@param speed number
---@param shootAtEnemies boolean
---@param distanceToStopAt number
---@param noRoadsDistance number
---@param unkTrue boolean
---@param unkFlag integer
---@param aimingFlag fx.Enum.AimFlag|integer
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskGoToCoordAndAimAtHatedEntitiesNearCoord(goToLocation, focusLocation, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, unkTrue, unkFlag, aimingFlag, firingPattern) end

--- Tells a ped to go to a coord by any means.
---
--- ```cpp
--- enum eDrivingMode {
---   DF_StopForCars = 1,
---   DF_StopForPeds = 2,
---   DF_SwerveAroundAllCars = 4,
---   DF_SteerAroundStationaryCars = 8,
---   DF_SteerAroundPeds = 16,
---   DF_SteerAroundObjects = 32,
---   DF_DontSteerAroundPlayerPed = 64,
---   DF_StopAtLights = 128,
---   DF_GoOffRoadWhenAvoiding = 256,
---   DF_DriveIntoOncomingTraffic = 512,
---   DF_DriveInReverse = 1024,
---
---   // If pathfinding fails, cruise randomly instead of going on a straight line
---   DF_UseWanderFallbackInsteadOfStraightLine = 2048,
---
---   DF_AvoidRestrictedAreas = 4096,
---
---   // These only work on MISSION_CRUISE
---   DF_PreventBackgroundPathfinding = 8192,
---   DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
---
---   DF_UseShortCutLinks =  262144,
---   DF_ChangeLanesAroundObstructions = 524288,
---   // cruise tasks ignore this anyway--only used for goto's
---   DF_UseSwitchedOffNodes =  2097152,
---   // if you're going to be primarily driving off road
---   DF_PreferNavmeshRoute =  4194304,
---
---   // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
---   DF_PlaneTaxiMode =  8388608,
---
---   DF_ForceStraightLine = 16777216,
---   DF_UseStringPullingAtJunctions = 33554432,
---
---   DF_AvoidHighways = 536870912,
---   DF_ForceJoinInRoadDirection = 1073741824,
--- [...]
--- **Native**: `TASK_GO_TO_COORD_ANY_MEANS` (`0x5BC448CB78FA3E88`)
---@param coords vector3 The goto target coordinate.
---@param fMoveBlendRatio number 0.0 = still, 1.0 = walk, 2.0 = run, 3.0 = sprint.
---@param vehicle fx.Vehicle|integer If defined, the pedestrian will only move if said vehicle exists. If you don't want any sort of association, just set it to `0`.
---@param bUseLongRangeVehiclePathing boolean Setting to `true` tells the vehicle to use longrange vehicle pathing.
---@param drivingFlags fx.Enum.DrivingMode|integer See `eDrivingMode` enum.
---@param fMaxRangeToShootTargets number Determines the maximum distance at which the `Ped` will engage in combat with threatening targets.
---@return fx.Ped self
function Ped:taskGoToCoordAnyMeans(coords, fMoveBlendRatio, vehicle, bUseLongRangeVehiclePathing, drivingFlags, fMaxRangeToShootTargets) end

--- ```
--- NativeDB Added Parameter 13: Any p12
--- ```
--- **Native**: `TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS` (`0x1DD45F9ECFDB1BC9`)
---@param coords vector3
---@param speed number
---@param p5 any
---@param p6 boolean
---@param walkingStyle integer
---@param p8 number
---@param p9 any
---@param p10 any
---@param p11 any
---@return fx.Ped self
function Ped:taskGoToCoordAnyMeansExtraParams(coords, speed, p5, p6, walkingStyle, p8, p9, p10, p11) end

--- ```
--- NativeDB Added Parameter 14: Any p13
--- ```
--- **Native**: `TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED` (`0xB8ECD61F531A7B02`)
---@param coords vector3
---@param speed number
---@param p5 any
---@param p6 boolean
---@param walkingStyle integer
---@param p8 number
---@param p9 any
---@param p10 any
---@param p11 any
---@param p12 any
---@return fx.Ped self
function Ped:taskGoToCoordAnyMeansExtraParamsWithCruiseSpeed(coords, speed, p5, p6, walkingStyle, p8, p9, p10, p11, p12) end

--- Will make the ped move to a coordinate while aiming (and optionally shooting) at given coordinates.
--- **Native**: `TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD` (`0x11315AB3385B8AC0`)
---@param coords vector3 Destination position
---@param aimAt vector3 Aim at target position
---@param moveSpeed number mostly 2f, but also 1/1.2f, etc.
---@param shoot boolean If true ped will shoot; false - will not
---@param p9 number Usually 2.0f
---@param p10 number Usually 0.5f
---@param p11 boolean If true ped will stay still; false - will not
---@param flags any 0 / 512 / 513, etc
---@param p13 boolean
---@param firingPattern integer|string ${firing_pattern_full_auto}, 0xC6EE6B4C
---@return fx.Ped self
function Ped:taskGoToCoordWhileAimingAtCoord(coords, aimAt, moveSpeed, shoot, p9, p10, p11, flags, p13, firingPattern) end

--- Will make the ped move to a coordinate while aiming (and optionally shooting) at the given entity.
---
--- ```cpp
--- enum eFiringPatternHashes {
---     FIRING_PATTERN_DEFAULT = 0,
---     FIRING_PATTERN_BURST_FIRE = -687903391,
---     FIRING_PATTERN_BURST_FIRE_DRIVEBY = -753768974,
---     FIRING_PATTERN_FULL_AUTO = -957453492,
---     FIRING_PATTERN_SINGLE_SHOT = 1566631136,
---     FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 2055493265,
---     FIRING_PATTERN_BURST_FIRE_HELI = -1857128337,
---     FIRING_PATTERN_SHORT_BURSTS = 445831135,
---     FIRING_PATTERN_BURST_FIRE_MICRO = 1122960381,
---     FIRING_PATTERN_SLOW_FIRE_TANK = -490063247,
---     FIRING_PATTERN_TAMPA_MORTAR = -1842093953
--- }
--- ```
--- **Native**: `TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY` (`0xB2A16444EAD9AE47`)
---@param coords vector3 Destination position
---@param entityToAimAt fx.Entity|integer Entity that the ped will aim at.
---@param moveSpeed number Mostly 2f, but also 1/1.2f, etc.
---@param shoot boolean If true ped will shoot; false - will not
---@param targetRadius number Usually 0.5f
---@param slowDistance number Usually 4f
---@param useNavMesh boolean
---@param navFlags integer Usually 0 or 64
---@param instantBlendAtAim boolean
---@param firingPattern integer|string The firing pattern to use, refer to `eFiringPatternHashes`
---@param time integer Usually 20000 (ms)
---@return fx.Ped self
function Ped:taskGoToCoordWhileAimingAtEntity(coords, entityToAimAt, moveSpeed, shoot, targetRadius, slowDistance, useNavMesh, navFlags, instantBlendAtAim, firingPattern, time) end

--- ```
--- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
--- Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
--- Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
--- Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
--- ```
--- **Native**: `TASK_GO_TO_ENTITY` (`0x6A071245EB0D1882`)
---@param target fx.Entity|integer
---@param duration integer
---@param distance number
---@param speed number
---@param p5 number
---@param p6 integer
---@return fx.Ped self
function Ped:taskGoToEntity(target, duration, distance, speed, p5, p6) end

--- ```
--- eg
---  TASK::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);
--- ped = Ped you want to perform this task.
--- target = the Entity they should aim at.
--- distanceToStopAt = distance from the target, where the ped should stop to aim.
--- StartAimingDist = distance where the ped should start to aim.
--- ```
--- **Native**: `TASK_GOTO_ENTITY_AIMING` (`0xA9DA48FAB8A76C12`)
---@param target fx.Entity|integer
---@param distanceToStopAt number
---@param StartAimingDist number
---@return fx.Ped self
function Ped:taskGotoEntityAiming(target, distanceToStopAt, StartAimingDist) end

--- **Native**: `TASK_GOTO_ENTITY_OFFSET` (`0xE39B4FF4FDEBDE27`)
---@param p1 any
---@param p2 any
---@param coords vector3
---@param duration integer
---@return fx.Ped self
function Ped:taskGotoEntityOffset(p1, p2, coords, duration) end

--- **Native**: `TASK_GOTO_ENTITY_OFFSET_XY` (`0x338E7EF52B6095A9`)
---@param entity fx.Entity|integer
---@param duration integer
---@param offset vector3
---@param moveBlendRatio number
---@param useNavmesh boolean
---@return fx.Ped self
function Ped:taskGotoEntityOffsetXy(entity, duration, offset, moveBlendRatio, useNavmesh) end

--- ```
--- shootatEntity:
--- If true, peds will shoot at Entity till it is dead.
--- If false, peds will just walk till they reach the entity and will cease shooting.
--- ```
--- **Native**: `TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY` (`0x97465886D35210E9`)
---@param entityToWalkTo fx.Entity|integer
---@param entityToAimAt fx.Entity|integer
---@param speed number
---@param shootatEntity boolean
---@param p5 number
---@param p6 number
---@param p7 boolean
---@param p8 boolean
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskGoToEntityWhileAimingAtEntity(entityToWalkTo, entityToAimAt, speed, shootatEntity, p5, p6, p7, p8, firingPattern) end

--- ```
--- From re_prisonvanbreak:
--- TASK::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);
--- ```
--- **Native**: `TASK_GUARD_CURRENT_POSITION` (`0x4A58A47A72E3FCB4`)
---@param p1 number
---@param p2 number
---@param p3 boolean
---@return fx.Ped self
function Ped:taskGuardCurrentPosition(p1, p2, p3) end

--- ```
--- p0 - Guessing PedID
--- p1, p2, p3 - XYZ?
--- p4 - ???
--- p5 - Maybe the size of sphere from XYZ?
--- p6 - ???
--- p7, p8, p9 - XYZ again?
--- p10 - Maybe the size of sphere from second XYZ?
--- ```
--- **Native**: `TASK_GUARD_SPHERE_DEFENSIVE_AREA` (`0xC946FE14BE0EB5E2`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 any
---@param p7 number
---@param p8 number
---@param p9 number
---@param p10 number
---@return fx.Ped self
function Ped:taskGuardSphereDefensiveArea(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- ```
--- In the scripts, p3 was always -1.
--- p3 seems to be duration or timeout of turn animation.
--- Also facingPed can be 0 or -1 so ped will just raise hands up.
--- ```
--- **Native**: `TASK_HANDS_UP` (`0xF2EAB31979A7F910`)
---@param duration integer
---@param facingPed fx.Ped|integer
---@param p3 integer
---@param p4 boolean
---@return fx.Ped self
function Ped:taskHandsUp(duration, facingPed, p3, p4) end

--- ```
--- Ped pilot should be in a heli.
--- EntityToFollow can be a vehicle or Ped.
--- x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)
--- NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.
--- ```
--- **Native**: `TASK_HELI_CHASE` (`0xAC83B1DB38D0ADA0`)
---@param entityToFollow fx.Entity|integer
---@param coords vector3
---@return fx.Ped self
function Ped:taskHeliChase(entityToFollow, coords) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `TASK_HELI_ESCORT_HELI` (`0xB385523325077210`)
---@param heli1 fx.Vehicle|integer
---@param heli2 fx.Vehicle|integer
---@param p3 number
---@param p4 number
---@param p5 number
---@return fx.Ped self
function Ped:taskHeliEscortHeli(heli1, heli2, p3, p4, p5) end

--- All parameters except ped, heli and speed are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).
---
--- If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget`, `0` for other int parameters, and `-1.0f` for the remaining float parameters.
---
--- ```cpp
--- enum eHeliMissionFlags
--- {
---   None = 0,
---   AttainRequestedOrientation = 1,
---   DontModifyOrientation = 2,
---   DontModifyPitch = 4,
---   DontModifyThrottle = 8,
---   DontModifyRoll = 16,
---   LandOnArrival = 32,
---   DontDoAvoidance = 64,
---   StartEngineImmediately = 128,
---   ForceHeightMapAvoidance = 256,
---   DontClampProbesToDestination = 512,
---   EnableTimeslicingWhenPossible = 1024,
---   CircleOppositeDirection = 2048,
---   MaintainHeightAboveTerrain = 4096,
---   IgnoreHiddenEntitiesDuringLand = 8192,
---   DisableAllHeightMapAvoidance = 16384,
---   // ForceHeightMapAvoidance | DontDoAvoidance
---   HeightMapOnlyAvoidance = 320,
--- }
--- ```
--- **Native**: `TASK_HELI_MISSION` (`0xDAD029E187A2BEB4`)
---@param heli fx.Vehicle|integer The helicopters' entity handle.
---@param vehicleTarget fx.Vehicle|integer The target vehicle (default is 0).
---@param pedTarget fx.Ped|integer The target ped (default is 0).
---@param coords vector3 The coordinate of the target (default is 0.0f).
---@param missionType integer The mission type (default is 0) (see [TaskVehicleMission](#\_0x659427E0EF36BCDE)).
---@param speed number The speed in m/s.
---@param radius number The radius of when the task will be completed (default is -1.0f).
---@param heading number The heading the helicopter will face at task completion (default is -1.0f).
---@param height number The height the helicopter will fly at (default is -1.0f).
---@param minHeight number The height the helicopter will not fly below (default is -1.0f).
---@param slowDist number The distance to the target at which the helicopter will slow down (default is -1.0f).
---@param missionFlags fx.Enum.HeliMissionFlags|integer The mission flags (default is 0) (see `eHeliMissionFlags`).
---@return fx.Ped self
function Ped:taskHeliMission(heli, vehicleTarget, pedTarget, coords, missionType, speed, radius, heading, height, minHeight, slowDist, missionFlags) end

--- ```
--- Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).
--- v350: Ped ped, bool unused
--- v678: Ped ped, bool unused, bool flag1, bool flag2
--- flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `TASK_JUMP` (`0x0AE4086104E067B1`)
---@param unused boolean
---@return fx.Ped self
function Ped:taskJump(unused) end

--- Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
--- **Native**: `TASK_LEAVE_ANY_VEHICLE` (`0x504D54DF3F6F2247`)
---@param p1 integer
---@param flags integer
---@return fx.Ped self
function Ped:taskLeaveAnyVehicle(p1, flags) end

--- ```
--- Flags from decompiled scripts:
--- 0 = normal exit and closes door.
--- 1 = normal exit and closes door.
--- 16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)
--- 64 = normal exit and closes door, maybe a bit slower animation than 0.
--- 256 = normal exit but does not close the door.
--- 4160 = ped is throwing himself out, even when the vehicle is still.
--- 262144 = ped moves to passenger seat first, then exits normally
--- Others to be tried out: 320, 512, 131072.
--- ```
--- **Native**: `TASK_LEAVE_VEHICLE` (`0xD3DBCE61A490BE02`)
---@param vehicle fx.Vehicle|integer
---@param flags integer
---@return fx.Ped self
function Ped:taskLeaveVehicle(vehicle, flags) end

--- **Native**: `TASK_LOOK_AT_COORD` (`0x6FA46612594F7973`)
---@param coords vector3
---@param duration integer
---@param p5 any
---@param p6 any
---@return fx.Ped self
function Ped:taskLookAtCoord(coords, duration, p5, p6) end

--- ```
--- param3: duration in ms, use -1 to look forever
--- param4: using 2048 is fine
--- param5: using 3 is fine
--- ```
--- **Native**: `TASK_LOOK_AT_ENTITY` (`0x69F4BE8C8CC4796C`)
---@param lookAt fx.Entity|integer
---@param duration integer
---@param unknown1 integer
---@param unknown2 integer
---@return fx.Ped self
function Ped:taskLookAtEntity(lookAt, duration, unknown1, unknown2) end

--- ```
--- Example:
--- TASK::TASK_MOVE_NETWORK_ADVANCED_BY_NAME(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13f, 181.29f, 102.6f, 0.0f, 0.0f, 22.32f, 2, 0, false, 0, 0);
--- ```
--- **Native**: `TASK_MOVE_NETWORK_ADVANCED_BY_NAME` (`0xD5B35BEA41919ACB`)
---@param p1 string
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 any
---@param p9 number
---@param p10 boolean
---@param animDict string
---@param flags integer
---@return fx.Ped self
function Ped:taskMoveNetworkAdvancedByName(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, animDict, flags) end

--- ```
--- Example:
--- TASK::TASK_MOVE_NETWORK_BY_NAME(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0f, true, "mini@arm_wrestling", 0);
--- ```
--- **Native**: `TASK_MOVE_NETWORK_BY_NAME` (`0x2D537BA194896636`)
---@param task string
---@param multiplier number
---@param p3 boolean
---@param animDict string
---@param flags integer
---@return fx.Ped self
function Ped:taskMoveNetworkByName(task, multiplier, p3, animDict, flags) end

--- ```
--- Used only once in the scripts (am_mp_nightclub)
--- ```
---
--- ```
--- Used only once in the scripts (am_mp_nightclub)
---
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `TASK_MOVE_NETWORK_BY_NAME_WITH_INIT_PARAMS` (`0x3D45B0B355C5E0C9`)
---@param p1 string
---@param p3 number
---@param p4 boolean
---@param animDict string
---@param flags integer
---@return any data
function Ped:taskMoveNetworkByNameWithInitParams(p1, p3, p4, animDict, flags) end

--- The given ped will try to open the nearest door to 'seat'.
---
--- Example: telling the ped to open the door for the driver seat does not necessarily mean it will open the driver door, it may choose to open the passenger door instead if that one is closer.
--- **Native**: `TASK_OPEN_VEHICLE_DOOR` (`0x965791A9A488A062`)
---@param vehicle fx.Vehicle|integer The vehicle whose doors the ped shoud open
---@param timeOut integer Sets a timeout to the task; doesn't work for 0
---@param seat fx.Enum.SeatPosition|integer The seat index - the ped will attempt to open doors to get to the specified seat
---@param speed number
---@return fx.Ped self
function Ped:taskOpenVehicleDoor(vehicle, timeOut, seat, speed) end

--- ```
--- This function has a third parameter as well (bool).
--- Second parameter is unused.
--- seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed
--- ```
---
--- ```
--- NativeDB Added Parameter 3: BOOL p2
--- ```
--- **Native**: `TASK_PARACHUTE` (`0xD2F1C53C97EE81AB`)
---@param p1 boolean
---@return fx.Ped self
function Ped:taskParachute(p1) end

--- ```
--- makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED
--- ```
--- **Native**: `TASK_PARACHUTE_TO_TARGET` (`0xB33E291AFA6BD03A`)
---@param coords vector3
---@return fx.Ped self
function Ped:taskParachuteToTarget(coords) end

--- ```
--- After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:
--- "miss_Tower_01" (this went from 01 - 10)
--- "miss_Ass0" (0, 4, 6, 3)
--- "MISS_PATROL_8"
--- I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.
--- As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.
--- From the scripts
---     TASK::OPEN_PATROL_ROUTE("miss_Ass0");
---     TASK::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
---     TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
---     TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
---     TASK::ADD_PATROL_ROUTE_LINK(0, 1);
---     TASK::ADD_PATROL_ROUTE_LINK(1, 2);
---     TASK::ADD_PATROL_ROUTE_LINK(2, 0);
---     TASK::CLOSE_PATROL_ROUTE();
---     TASK::CREATE_PATROL_ROUTE();
--- ```
--- **Native**: `TASK_PATROL` (`0xBDA5DF49D080FE4E`)
---@param p1 string
---@param p2 any
---@param p3 boolean
---@param p4 boolean
---@return fx.Ped self
function Ped:taskPatrol(p1, p2, p3, p4) end

--- This tasks the ped to do nothing for the specified amount of miliseconds.
--- This is useful if you want to add a delay between tasks when using a sequence task.
--- **Native**: `TASK_PAUSE` (`0xE73A266DB0CA9042`)
---@param ms integer The amount of miliseconds to wait.
---@return fx.Ped self
function Ped:taskPause(ms) end

--- For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#\_0xE8854A4326B9E12B)
--- **Native**: `TASK_PERFORM_SEQUENCE` (`0x5ABA3986D90D8A3B`)
---@param taskSequenceId integer The sequenceId to perform
---@return fx.Ped self
function Ped:taskPerformSequence(taskSequenceId) end

--- **Native**: `TASK_PERFORM_SEQUENCE_FROM_PROGRESS` (`0x89221B16730234F0`)
---@param taskIndex integer
---@param progress1 integer The progress to start from
---@param progress2 integer Unknown what it does, it has to be set higher than 0 to not break the sequence
---@return fx.Ped self
function Ped:taskPerformSequenceFromProgress(taskIndex, progress1, progress2) end

--- For an example on how to use this please refer to \[OPEN_SEQUENCE_TASK]\(#\_0xE8854A4326B9E12B
--- **Native**: `TASK_PERFORM_SEQUENCE_LOCALLY` (`0x8C33220C8D78CA0D`)
---@param taskSequenceId integer The sequence to perform
---@return fx.Ped self
function Ped:taskPerformSequenceLocally(taskSequenceId) end

--- **Native**: `TASK_PLANE_CHASE` (`0x2D2386F273FF7A25`)
---@param entityToFollow fx.Entity|integer
---@param coords vector3
---@return fx.Ped self
function Ped:taskPlaneChase(entityToFollow, coords) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `TASK_PLANE_GOTO_PRECISE_VTOL` (`0xF7F9DCCA89E7505B`)
---@param vehicle fx.Vehicle|integer
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
---@return fx.Ped self
function Ped:taskPlaneGotoPreciseVtol(vehicle, p2, p3, p4, p5, p6, p7, p8, p9) end

--- **Native**: `TASK_PLANE_LAND` (`0xBF19721FA34D32C0`)
---@param plane fx.Vehicle|integer
---@param runwayStart vector3
---@param runwayEnd vector3
---@return fx.Ped self
function Ped:taskPlaneLand(plane, runwayStart, runwayEnd) end

--- The given ped will try to drive the plane to the given coordinates and will then drive around the given coords (the plane will form 8s on the ground)
--- **Native**: `TASK_PLANE_TAXI` (`0x92C360B5F15D2302`)
---@param aircraft fx.Vehicle|integer The plane used.
---@param pos vector3 The coordinate.
---@param fCruiseSpeed number The speed of the plane (in m/s).
---@param fTargetReachedDist number Distance (in meters) at which the plane thinks it has arrived to the given coordinates.
---@return fx.Ped self
function Ped:taskPlaneTaxi(aircraft, pos, fCruiseSpeed, fTargetReachedDist) end

--- **Native**: `TASK_PLANT_BOMB` (`0x965FEC691D55E9BF`)
---@param coords vector3
---@param heading number
---@return fx.Ped self
function Ped:taskPlantBomb(coords, heading) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
---
--- ```cpp
--- enum eScriptedAnimFlags
--- {
---     AF_LOOPING = 1,
---     AF_HOLD_LAST_FRAME = 2,
---     AF_REPOSITION_WHEN_FINISHED = 4,
---     AF_NOT_INTERRUPTABLE = 8,
---     AF_UPPERBODY = 16,
---     AF_SECONDARY = 32,
---     AF_REORIENT_WHEN_FINISHED = 64,
---     AF_ABORT_ON_PED_MOVEMENT = 128,
---     AF_ADDITIVE = 256,
---     AF_TURN_OFF_COLLISION = 512,
---     AF_OVERRIDE_PHYSICS = 1024,
---     AF_IGNORE_GRAVITY = 2048,
---     AF_EXTRACT_INITIAL_OFFSET = 4096,
---     AF_EXIT_AFTER_INTERRUPTED = 8192,
---     AF_TAG_SYNC_IN = 16384,
---     AF_TAG_SYNC_OUT = 32768,
---     AF_TAG_SYNC_CONTINUOUS = 65536,
---     AF_FORCE_START = 131072,
---     AF_USE_KINEMATIC_PHYSICS = 262144,
---     AF_USE_MOVER_EXTRACTION = 524288,
---     AF_HIDE_WEAPON = 1048576,
---     AF_ENDS_IN_DEAD_POSE = 2097152,
---     AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304,
---     AF_DONT_EXIT_ON_DEATH = 8388608,
---     AF_ABORT_ON_WEAPON_DAMAGE = 16777216,
---     AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432,
---     AF_PROCESS_ATTACHMENTS_ON_START = 67108864,
---     AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728,
---     AF_USE_ALTERNATIVE_FP_ANIM = 268435456,
---     AF_BLENDOUT_WRT_LAST_FRAME = 536870912,
---     AF_USE_FULL_BLENDING = 1073741824
--- }
--- ```
--- **Native**: `TASK_PLAY_ANIM` (`0xEA47FE3719165B94`)
---@param animDictionary string The animation dictionary
---@param animationName string The animation name
---@param blendInSpeed number The speed at which the animation blends in. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param blendOutSpeed number The speed at which the animation blends out. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param duration integer The duration of the animation in milliseconds. -1 will play the animation until canceled
---@param flag fx.Enum.ScriptedAnimFlags|integer The animation flags (see enum)
---@param playbackRate number The playback rate (between 0.0 and 1.0)
---@param lockX boolean
---@param lockY boolean
---@param lockZ boolean
---@return fx.Ped self
function Ped:taskPlayAnim(animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ) end

--- Similar in functionality to [`TASK_PLAY_ANIM`](#\_0xEA47FE3719165B94), except the position and rotation parameters let you specify the initial position and rotation of the task. The ped is teleported to the position specified.
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `TASK_PLAY_ANIM_ADVANCED` (`0x83CDB10EA29B370B`)
---@param animDictionary string The animation dictionary
---@param animationName string The animation name
---@param pos vector3 Initial position of the task
---@param rot vector3 Initial rotation of the task
---@param blendInSpeed number The speed at which the animation blends in. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param blendOutSpeed number The speed at which the animation blends out. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
---@param duration integer The duration of the animation in milliseconds. -1 will play the animation until canceled
---@param flag any See [`TASK_PLAY_ANIM`](#\_0xEA47FE3719165B94)
---@param animTime number Value between 0.0 and 1.0, lets you start an animation from the given point
---@param p14 any
---@param p15 any
---@return fx.Ped self
function Ped:taskPlayAnimAdvanced(animDictionary, animationName, pos, rot, blendInSpeed, blendOutSpeed, duration, flag, animTime, p14, p15) end

--- ```
--- Example from the scripts:
--- TASK::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);
--- =========================================================
--- ^^ No offense, but Idk how that would really help anyone.
--- As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.
--- Known boneMaskTypes'
--- "BONEMASK_HEADONLY"
--- "BONEMASK_HEAD_NECK_AND_ARMS"
--- "BONEMASK_HEAD_NECK_AND_L_ARM"
--- "BONEMASK_HEAD_NECK_AND_R_ARM"
--- p4 known args - 0.0f, 0.5f, 0.25f
--- p5 known args - 0.0f, 0.25f
--- p6 known args - 1 if a global if check is passed.
--- p7 known args - 1 if a global if check is passed.
--- The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).
--- =========================================================
--- ```
--- **Native**: `TASK_PLAY_PHONE_GESTURE_ANIMATION` (`0x8FBB6758B3B3E9EC`)
---@param animDict string
---@param animation string
---@param boneMaskType string
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 boolean
---@return fx.Ped self
function Ped:taskPlayPhoneGestureAnimation(animDict, animation, boneMaskType, p4, p5, p6, p7) end

--- **Native**: `TASK_PUT_PED_DIRECTLY_INTO_COVER` (`0x4172393E6BE1FECE`)
---@param coords vector3
---@param timeout any
---@param p5 boolean
---@param p6 number
---@param p7 boolean
---@param p8 boolean
---@param p9 any
---@param p10 boolean
---@return fx.Ped self
function Ped:taskPutDirectlyIntoCover(coords, timeout, p5, p6, p7, p8, p9, p10) end

--- ```
--- from armenian3.c4
--- TASK::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);
--- ```
--- **Native**: `TASK_PUT_PED_DIRECTLY_INTO_MELEE` (`0x1C6CD14A876FFE39`)
---@param meleeTarget fx.Ped|integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 boolean
---@return fx.Ped self
function Ped:taskPutDirectlyIntoMelee(meleeTarget, p2, p3, p4, p5) end

--- Attaches a ped to a rope and allows player control to rappel down a wall.
--- Disables all collisions while on the rope.
---
--- NativeDB Introduced: v1868
--- **Native**: `TASK_RAPPEL_DOWN_WALL` (`0xEAF66ACDDC794793`)
---@param coords1 vector3 coord to start the task
---@param coords2 vector3 Second X coord, uses the same position as above in the scripts / Second Y coord / Second Z coord
---@param minZ number Minimum Z that the player can descend to
---@param ropeId fx.Rope|integer Rope to attach this task to, must be created with [ADD_ROPE](#\_0xE832D760399EB220)
---@param clipset string Clipset to use for the task
---@param p10 any Usually 1 in the scripts
---@return fx.Ped self
function Ped:taskRappelDownWall(coords1, coords2, minZ, ropeId, clipset, p10) end

--- ```
--- Only appears twice in the scripts.
--- TASK::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);
--- TASK::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);
--- ```
--- **Native**: `TASK_RAPPEL_FROM_HELI` (`0x09693B0312F91649`)
---@param unused number
---@return fx.Ped self
function Ped:taskRappelFromHeli(unused) end

--- **Native**: `TASK_REACT_AND_FLEE_PED` (`0x72C896464915D1B1`)
---@param fleeTarget fx.Ped|integer
---@return fx.Ped self
function Ped:taskReactAndFlee(fleeTarget) end

--- ```
--- The 2nd param (unused) is not implemented.
--- -----------------------------------------------------------------------
--- The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):
---             if (((v_3 < v_4) && (TASK::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {
---                 TASK::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);
---             }
--- ```
--- **Native**: `TASK_RELOAD_WEAPON` (`0x62D2916F56B9CD2D`)
---@param unused boolean
---@return fx.Ped self
function Ped:taskReloadWeapon(unused) end

--- ```
--- From fm_mission_controller.c:
--- reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);
--- 	vVar28 = {0.094f, 0.02f, -0.005f};
--- 	vVar29 = {-92.24f, 63.64f, 150.24f};
--- 	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);
--- 	set_entity_lod_dist(net_to_ent(uVar30), 500);
--- 	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);
--- 	Var31.imm_4 = 1065353216;
--- 	Var31.imm_5 = 1065353216;
--- 	Var31.imm_9 = 1065353216;
--- 	Var31.imm_10 = 1065353216;
--- 	Var31.imm_14 = 1065353216;
--- 	Var31.imm_15 = 1065353216;
--- 	Var31.imm_17 = 1040187392;
--- 	Var31.imm_18 = 1040187392;
--- 	Var31.imm_19 = -1;
--- 	Var32.imm_4 = 1065353216;
--- 	Var32.imm_5 = 1065353216;
--- 	Var32.imm_9 = 1065353216;
--- 	Var32.imm_10 = 1065353216;
--- 	Var32.imm_14 = 1065353216;
--- 	Var32.imm_15 = 1065353216;
--- 	Var32.imm_17 = 1040187392;
--- 	Var32.imm_18 = 1040187392;
--- 	Var32.imm_19 = -1;
--- 	Var31 = 1;
--- 	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";
--- 	Var31.imm_2 = "idle";
--- 	Var31.imm_20 = 1048633;
--- 	Var31.imm_4 = 0.5f;
--- 	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");
--- 	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);
--- 	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));
--- 	remove_anim_dict("anim@heists@biolab@");
--- ```
--- **Native**: `TASK_SCRIPTED_ANIMATION` (`0x126EF75F1E17ABE5`)
---@param p4 number
---@param p5 number
---@return any p1
---@return any p2
---@return any p3
function Ped:taskScriptedAnimation(p4, p5) end

--- **Native**: `TASK_SEEK_COVER_FROM_PED` (`0x84D32B3BEC531324`)
---@param target fx.Ped|integer
---@param duration integer
---@param p3 boolean
---@return fx.Ped self
function Ped:taskSeekCoverFromPed(target, duration, p3) end

--- **Native**: `TASK_SEEK_COVER_FROM_POS` (`0x75AC2B60386D89F2`)
---@param coords vector3
---@param duration integer
---@param p5 boolean
---@return fx.Ped self
function Ped:taskSeekCoverFromPos(coords, duration, p5) end

--- ```
--- from michael2:
--- TASK::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);
--- appears to be shorter variation
--- from michael3:
--- TASK::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);
--- ```
--- **Native**: `TASK_SEEK_COVER_TO_COORDS` (`0x39246A6958EF072C`)
---@param coords1 vector3
---@param coords2 vector3
---@param p7 any
---@param p8 boolean
---@return fx.Ped self
function Ped:taskSeekCoverToCoords(coords1, coords2, p7, p8) end

--- ```
--- I cant believe I have to define this, this is one of the best natives.
--- It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.
--- Since it is a task, every time the native is called the ped will stop for a moment.
--- ```
--- **Native**: `TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS` (`0x90D2156198831D69`)
---@param toggle boolean
---@return fx.Ped self
function Ped:taskSetBlockingOfNonTemporaryEvents(toggle) end

--- ```
--- p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used
--- ```
--- **Native**: `TASK_SET_DECISION_MAKER` (`0xEB8517DDA73720DA`)
---@param p1 integer|string
---@return fx.Ped self
function Ped:taskSetDecisionMaker(p1) end

--- **Native**: `TASK_SHOCKING_EVENT_REACT` (`0x452419CBD838065B`)
---@param eventHandle integer
---@return fx.Ped self
function Ped:taskShockingEventReact(eventHandle) end

--- ```
--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
--- ```
--- **Native**: `TASK_SHOOT_AT_COORD` (`0x46A6CC01E0826106`)
---@param coords vector3
---@param duration integer
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskShootAtCoord(coords, duration, firingPattern) end

--- ```
--- //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
--- Entity aimedentity;
--- Player player = PLAYER::PLAYER_ID();
--- PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);
--- //bg is an array of peds
--- TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
--- in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
--- Firing Pattern Hash Information: https://pastebin.com/Px036isB
--- ```
--- **Native**: `TASK_SHOOT_AT_ENTITY` (`0x08DA95E8298AE772`)
---@param target fx.Entity|integer
---@param duration integer
---@param firingPattern integer|string
---@return fx.Ped self
function Ped:taskShootAtEntity(target, duration, firingPattern) end

--- ```
--- Makes the specified ped shuffle to the next vehicle seat.
--- The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT` (`0x7AA80209BDA643EB`)
---@param vehicle fx.Vehicle|integer
---@return fx.Ped self
function Ped:taskShuffleToNextVehicleSeat(vehicle) end

--- ```
--- NativeDB Added Parameter 2: BOOL p1
--- ```
--- **Native**: `TASK_SKY_DIVE` (`0x601736CFE536B0A0`)
---@return fx.Ped self
function Ped:taskSkyDive() end

--- **Native**: `TASK_PED_SLIDE_TO_COORD` (`0xD04FE6765D990A06`)
---@param coords vector3
---@param heading number
---@param duration number
---@return fx.Ped self
function Ped:taskSlideToCoord(coords, heading, duration) end

--- **Native**: `TASK_PED_SLIDE_TO_COORD_HDG_RATE` (`0x5A4A6A6D3DC64F52`)
---@param coords vector3
---@param heading number
---@param p5 number
---@param p6 number
---@return fx.Ped self
function Ped:taskSlideToCoordHdgRate(coords, heading, p5, p6) end

--- ```
--- Makes a ped run away from another ped (fleeTarget).
--- distance = ped will flee this distance.
--- fleeTime = ped will flee for this amount of time, set to "-1" to flee forever
--- ```
--- **Native**: `TASK_SMART_FLEE_PED` (`0x22B0D0E37CCB840D`)
---@param fleeTarget fx.Ped|integer
---@param distance number
---@param fleeTime any
---@param p4 boolean
---@param p5 boolean
---@return fx.Ped self
function Ped:taskSmartFlee(fleeTarget, distance, fleeTime, p4, p5) end

--- ```
--- Makes the specified ped flee the specified distance from the specified position.
--- ```
--- **Native**: `TASK_SMART_FLEE_COORD` (`0x94587F17E9C365D5`)
---@param coords vector3
---@param distance number
---@param time integer
---@param p6 boolean
---@param p7 boolean
---@return fx.Ped self
function Ped:taskSmartFleeCoord(coords, distance, time, p6, p7) end

--- ```
--- scenarioName example: "WORLD_HUMAN_GUARD_STAND"
--- ```
--- **Native**: `TASK_STAND_GUARD` (`0xAE032F8BBA959E90`)
---@param coords vector3
---@param heading number
---@param scenarioName string
---@return fx.Ped self
function Ped:taskStandGuard(coords, heading, scenarioName) end

--- ```
--- Makes the specified ped stand still for (time) milliseconds.
--- ```
--- **Native**: `TASK_STAND_STILL` (`0x919BE13EED931959`)
---@param time integer
---@return fx.Ped self
function Ped:taskStandStill(time) end

--- The ped will move or warp to the position and heading given, then start the scenario passed. See [`TASK_START_SCENARIO_IN_PLACE`](#\_0x142A02425FF02BD9) for a list of scenarios.
--- **Native**: `TASK_START_SCENARIO_AT_POSITION` (`0xFA4EFC79F69D4F07`)
---@param scenarioName string The name of the scenario to start.
---@param coords vector3 The x coordinate to start at. / The y coordinate to start at. / The z coordinate to start at. Should be the ground position plus the ped's ground to root offset.
---@param heading number The heading to start at.
---@param timeToLeave integer Sets the timeout on the scenario point to the specified time in milliseconds. If less than 0, sets the `IdleForever` flag.
---@param playIntro boolean If the ped should play the scenarios enter animation. Sets the `SkipEnterClip` flag.
---@param warp boolean If the ped should be warped to the position. Sets the `Warp` flag.
---@return fx.Ped self
function Ped:taskStartScenarioAtPosition(scenarioName, coords, heading, timeToLeave, playIntro, warp) end

--- Puts the ped into the given scenario immediately at their current location. [List of scenario names](https://pastebin.com/6mrYTdQv) or in `update/update.rpf/common/data/ai/scenarios.meta`.
--- **Native**: `TASK_START_SCENARIO_IN_PLACE` (`0x142A02425FF02BD9`)
---@param scenarioName string The name of the scenario to start.
---@param timeToLeave integer Sets the timeout on the scenario point to the specified time in milliseconds. If less than 0, sets the `IdleForever` flag.
---@param playIntroClip boolean If the ped should play the scenarios enter animation. Sets the `SkipEnterClip` flag.
---@return fx.Ped self
function Ped:taskStartScenarioInPlace(scenarioName, timeToLeave, playIntroClip) end

--- ```
--- Makes the ped run to take cover
--- ```
--- **Native**: `TASK_STAY_IN_COVER` (`0xE5DA8615A6180789`)
---@return fx.Ped self
function Ped:taskStayInCover() end

--- ```
--- Stealth kill action name hashes:
--- stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta
--- ...
--- {
---     "ACT_stealth_kill_a",
---     "ACT_stealth_kill_weapon",
---     "ACT_stealth_kill_b",
---     "ACT_stealth_kill_c",
---     "ACT_stealth_kill_d",
---     "ACT_stealth_kill_a_gardener"
--- }
--- Only known script using this native: fbi4_prep2
--- EXAMPLE:
--- ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);
--- Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target
--- ```
--- **Native**: `TASK_STEALTH_KILL` (`0xAA5DC05579D60BD9`)
---@param target fx.Ped|integer
---@param actionType integer|string
---@param p3 number
---@param p4 any
---@return fx.Ped self
function Ped:taskStealthKill(target, actionType, p3, p4) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `TASK_STOP_PHONE_GESTURE_ANIMATION` (`0x3FA00D4F4641BFAE`)
---@return fx.Ped self
function Ped:taskStopPhoneGestureAnimation() end

--- **Native**: `TASK_SWAP_WEAPON` (`0xA21C51255B205245`)
---@param p1 boolean
---@return fx.Ped self
function Ped:taskSwapWeapon(p1) end

--- ```
--- This function is called on peds in vehicles.
--- anim: animation name
--- p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"
--- p5: no idea what it does but is usually -1
--- ```
--- **Native**: `TASK_SWEEP_AIM_ENTITY` (`0x2047C02158D6405A`)
---@param anim string
---@param p2 string
---@param p3 string
---@param p4 string
---@param p5 integer
---@param vehicle fx.Vehicle|integer
---@param p7 number
---@param p8 number
---@return fx.Ped self
function Ped:taskSweepAimEntity(anim, p2, p3, p4, p5, vehicle, p7, p8) end

--- ```
---  TASK::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);
--- ```
--- **Native**: `TASK_SYNCHRONIZED_SCENE` (`0xEEA929141F699854`)
---@param scene integer
---@param animDictionary string
---@param animationName string
---@param speed number
---@param speedMultiplier number
---@param duration integer
---@param flag integer
---@param playbackRate number
---@param p9 any
---@return fx.Ped self
function Ped:taskSynchronizedScene(scene, animDictionary, animationName, speed, speedMultiplier, duration, flag, playbackRate, p9) end

--- ```
--- In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.
--- The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.
--- ---
--- It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).
--- It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.
--- ----------------------------------------------------
--- The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.
--- ```
---
--- ```
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `TASK_THROW_PROJECTILE` (`0x7285951DBF6B5A51`)
---@param coords vector3
---@return fx.Ped self
function Ped:taskThrowProjectile(coords) end

--- ```
--- duration in milliseconds
--- ```
--- **Native**: `TASK_TURN_PED_TO_FACE_COORD` (`0x1DDA930A0AC38571`)
---@param coords vector3
---@param duration integer
---@return fx.Ped self
function Ped:taskTurnToFaceCoord(coords, duration) end

--- ```
--- duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
--- ```
--- **Native**: `TASK_TURN_PED_TO_FACE_ENTITY` (`0x5AD23D40115353AC`)
---@param entity fx.Entity|integer
---@param duration integer
---@return fx.Ped self
function Ped:taskTurnToFaceEntity(entity, duration) end

--- ```
--- Actually has 3 params, not 2.
--- p0: Ped
--- p1: int (or bool?)
--- p2: int
--- ```
---
--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `TASK_USE_MOBILE_PHONE` (`0xBD2A8EC3AF4DE7DB`)
---@param p1 integer
---@return fx.Ped self
function Ped:taskUseMobilePhone(p1) end

--- **Native**: `TASK_USE_MOBILE_PHONE_TIMED` (`0x5EE02954A14C69DB`)
---@param duration integer
---@return fx.Ped self
function Ped:taskUseMobilePhoneTimed(duration) end

--- ```
--- Updated variables
--- An alternative to TASK::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.
--- ```
--- **Native**: `TASK_USE_NEAREST_SCENARIO_TO_COORD` (`0x277F471BA9DB000B`)
---@param coords vector3
---@param distance number
---@param duration integer
---@return fx.Ped self
function Ped:taskUseNearestScenarioToCoord(coords, distance, duration) end

--- **Native**: `TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP` (`0x58E2E0F23F6B76C3`)
---@param coords vector3
---@param radius number
---@param p5 any
---@return fx.Ped self
function Ped:taskUseNearestScenarioToCoordWarp(coords, radius, p5) end

--- **Native**: `TASK_VEHICLE_AIM_AT_COORD` (`0x447C1E9EF844BC0F`)
---@param coords vector3
---@return fx.Ped self
function Ped:taskVehicleAimAtCoord(coords) end

--- **Native**: `TASK_VEHICLE_AIM_AT_PED` (`0xE41885592B08B097`)
---@param target fx.Ped|integer
---@return fx.Ped self
function Ped:taskVehicleAimAtPed(target) end

--- ```
--- chases targetEnt fast and aggressively
--- --
--- Makes ped (needs to be in vehicle) chase targetEnt.
--- ```
--- **Native**: `TASK_VEHICLE_CHASE` (`0x3C08A8E30363B353`)
---@param targetEnt fx.Entity|integer
---@return fx.Ped self
function Ped:taskVehicleChase(targetEnt) end

--- ```
--- info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/
--- ---------------------------------------------------------------
--- Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.
--- P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.
--- Here the e.g. code I used
--- Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);
--- ```
--- **Native**: `TASK_VEHICLE_DRIVE_TO_COORD` (`0xE2A2AA2F659D77A7`)
---@param vehicle fx.Vehicle|integer
---@param coords vector3
---@param speed number
---@param p6 any
---@param vehicleModel fx.Model|integer|string
---@param drivingMode integer
---@param stopRange number
---@param p10 number
---@return fx.Ped self
function Ped:taskVehicleDriveToCoord(vehicle, coords, speed, p6, vehicleModel, drivingMode, stopRange, p10) end

--- You can let your character drive to the destination at the speed and driving style you set. You can use map marks to set the destination.
---
--- ```cpp
--- enum eDriveBehaviorFlags {
---   DF_StopForCars = 1,
---   DF_StopForPeds = 2,
---   DF_SwerveAroundAllCars = 4,
---   DF_SteerAroundStationaryCars = 8,
---   DF_SteerAroundPeds = 16,
---   DF_SteerAroundObjects = 32,
---   DF_DontSteerAroundPlayerPed = 64,
---   DF_StopAtLights = 128,
---   DF_GoOffRoadWhenAvoiding = 256,
---   DF_DriveIntoOncomingTraffic = 512,
---   DF_DriveInReverse = 1024,
---   DF_UseWanderFallbackInsteadOfStraightLine = 2048,
---   DF_AvoidRestrictedAreas = 4096,
---   DF_PreventBackgroundPathfinding = 8192, // **These only work on MISSION_CRUISE**
---   DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
---   DF_UseShortCutLinks = 262144,
---   DF_ChangeLanesAroundObstructions = 524288,
---   DF_UseSwitchedOffNodes = 2097152,	//cruise tasks ignore this anyway--only used for goto's
---   DF_PreferNavmeshRoute = 4194304,	//if you're going to be primarily driving off road
---   DF_PlaneTaxiMode = 8388608, // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
---   DF_ForceStraightLine = 16777216,
---   DF_UseStringPullingAtJunctions = 33554432,
---   DF_AvoidHighways = 536870912,
---   DF_ForceJoinInRoadDirection = 1073741824
--- }
--- ```
--- **Native**: `TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE` (`0x158BB33F920D360C`)
---@param vehicle fx.Vehicle|integer Vehicle entity id for the task.
---@param coords vector3 Destination coordinate.
---@param speed number Speed of driving.
---@param drivingStyle fx.Enum.DriveBehaviorFlags|integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param stopRange number Stops in the specific range near the destination. 20.0 works fine.
---@return fx.Ped self
function Ped:taskVehicleDriveToCoordLongrange(vehicle, coords, speed, drivingStyle, stopRange) end

--- Drive randomly with no destination set.
--- **Native**: `TASK_VEHICLE_DRIVE_WANDER` (`0x480142959D337D00`)
---@param vehicle fx.Vehicle|integer Vehicle entity id for the task.
---@param speed number Speed of driving.
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@return fx.Ped self
function Ped:taskVehicleDriveWander(vehicle, speed, drivingStyle) end

--- ```
--- Makes a ped follow the targetVehicle with <minDistance> in between.
--- note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.
--- Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.
--- -1 = behind
--- 0 = ahead
--- 1 = left
--- 2 = right
--- 3 = back left
--- 4 = back right
--- if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.
--- Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/
--- ```
--- **Native**: `TASK_VEHICLE_ESCORT` (`0x0FA6E4B75F302400`)
---@param vehicle fx.Vehicle|integer
---@param targetVehicle fx.Vehicle|integer
---@param mode integer
---@param speed number
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param minDistance number
---@param p7 integer
---@param noRoadsDistance number
---@return fx.Ped self
function Ped:taskVehicleEscort(vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance) end

--- ```
--- Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)
--- drivingStyle: http://gtaforums.com/topic/822314-guide-driving-styles/
--- ```
--- **Native**: `TASK_VEHICLE_FOLLOW` (`0xFC545A9F0626E3B6`)
---@param vehicle fx.Vehicle|integer
---@param targetEntity fx.Entity|integer
---@param speed number
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param minDistance integer
---@return fx.Ped self
function Ped:taskVehicleFollow(vehicle, targetEntity, speed, drivingStyle, minDistance) end

--- ```
--- task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)
--- p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf
--- p3 = 786468
--- p4 = 0
--- p5 = 16
--- p6 = -1 (angle?)
--- p7/8/9 = usually v3.zero
--- p10 = bool (repeat?)
--- p11 = 1073741824
--- -khorio
--- ```
--- **Native**: `TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING` (`0x3123FAA6DB1CF7ED`)
---@param vehicle fx.Vehicle|integer
---@param WPRecording string
---@param p3 integer
---@param p4 integer
---@param p5 integer
---@param p6 integer
---@param p7 number
---@param p8 boolean
---@param p9 number
---@return fx.Ped self
function Ped:taskVehicleFollowWaypointRecording(vehicle, WPRecording, p3, p4, p5, p6, p7, p8, p9) end

--- ```
--- Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.
--- WARNING:
--- A behaviorFlag value of 0 will result in a clunky, stupid driver!
--- Recommended settings:
--- speed = 30.0f,
--- behaviorFlag = 156,
--- stoppingRange = 5.0f;
--- If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.
--- If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.
--- EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/
--- ```
--- **Native**: `TASK_VEHICLE_GOTO_NAVMESH` (`0x195AEEB13CEFE2EE`)
---@param vehicle fx.Vehicle|integer
---@param coords vector3
---@param speed number
---@param behaviorFlag integer
---@param stoppingRange number
---@return fx.Ped self
function Ped:taskVehicleGotoNavmesh(vehicle, coords, speed, behaviorFlag, stoppingRange) end

--- ```
--- pilot, vehicle and altitude are rather self-explanatory.
--- p4: is unused variable in the function.
--- entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.
--- 'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.
--- 'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.
--- NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.
--- NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.
--- ```
--- **Native**: `TASK_VEHICLE_HELI_PROTECT` (`0x1E09C32048FEFD1C`)
---@param vehicle fx.Vehicle|integer
---@param entityToFollow fx.Entity|integer
---@param targetSpeed number
---@param p4 integer
---@param radius number
---@param altitude integer
---@param p7 integer
---@return fx.Ped self
function Ped:taskVehicleHeliProtect(vehicle, entityToFollow, targetSpeed, p4, radius, altitude, p7) end

--- All parameters except ped, vehicle, vehicleTarget and speed are optional; with `missionType` being only those that require a target entity.
---
--- If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.
---
--- ```cpp
--- enum eVehicleMissionType
--- {
---   None = 0,
---   Cruise = 1,
---   Ram = 2,
---   Block = 3,
---   GoTo = 4,
---   Stop = 5,
---   Attack = 6,
---   Follow = 7,
---   Flee = 8,
---   Circle = 9,
---   Escort = 12,
---   GoToRacing = 14,
---   FollowRecording = 15,
---   PoliceBehaviour = 16,
---   Land = 19,
---   LandAndWait = 20,
---   Crash = 21,
---   PullOver = 22,
---   HeliProtect = 23
--- }
--- ```
--- **Native**: `TASK_VEHICLE_MISSION` (`0x659427E0EF36BCDE`)
---@param vehicle fx.Vehicle|integer The vehicles' entity handle.
---@param vehicleTarget fx.Vehicle|integer The target vehicle.
---@param missionType fx.Enum.VehicleMissionType|integer The mission type (default is 0) (see `eVehicleMissionType`).
---@param speed number The speed in m/s.
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param radius number The radius of when the task will be completed (default is -1.0f).
---@param straightLineDist number The distance before the vehicle will drive straight to the target (default is -1.0f).
---@param DriveAgainstTraffic boolean Whether the vehicle should drive against traffic (default is false).
---@return fx.Ped self
function Ped:taskVehicleMission(vehicle, vehicleTarget, missionType, speed, drivingStyle, radius, straightLineDist, DriveAgainstTraffic) end

--- All parameters except ped, vehicle, x, y, z and speed are optional; with `missionType` being only those that don't require a target entity.
---
--- If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.
--- **Native**: `TASK_VEHICLE_MISSION_COORS_TARGET` (`0xF0AF20AA7731F8C3`)
---@param vehicle fx.Vehicle|integer The vehicles' entity handle.
---@param coords vector3 The coordinate.
---@param missionType integer The mission type (default is 0) (see [TaskVehicleMission](#\_0x659427E0EF36BCDE)).
---@param speed number The speed in m/s.
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param radius number The radius of when the task will be completed (default is -1.0f).
---@param straightLineDist number The distance before the vehicle will drive straight to the target (default is -1.0f).
---@param DriveAgainstTraffic boolean Whether the vehicle should drive against traffic (default is false).
---@return fx.Ped self
function Ped:taskVehicleMissionCoorsTarget(vehicle, coords, missionType, speed, drivingStyle, radius, straightLineDist, DriveAgainstTraffic) end

--- All parameters except ped, vehicle, pedTarget and speed are optional; with `missionType` being only those that require a target entity.
---
--- If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.
--- **Native**: `TASK_VEHICLE_MISSION_PED_TARGET` (`0x9454528DF15D657A`)
---@param vehicle fx.Vehicle|integer The vehicles' entity handle.
---@param pedTarget fx.Ped|integer The target ped.
---@param missionType integer The mission type (default is 0) (see [TaskVehicleMission](#\_0x659427E0EF36BCDE)).
---@param speed number The speed in m/s.
---@param drivingStyle integer The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#\_0xDACE1BE37D88AF67)).
---@param radius number The radius of when the task will be completed (default is -1.0f).
---@param straightLineDist number The distance before the vehicle will drive straight to the target (default is -1.0f).
---@param DriveAgainstTraffic boolean Whether the vehicle should drive against traffic (default is false).
---@return fx.Ped self
function Ped:taskVehicleMissionTarget(vehicle, pedTarget, missionType, speed, drivingStyle, radius, straightLineDist, DriveAgainstTraffic) end

--- ```
--- Modes:
--- 0 - ignore heading
--- 1 - park forward
--- 2 - park backwards
--- Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.
--- Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.
--- ```
--- **Native**: `TASK_VEHICLE_PARK` (`0x0F3E34E968EA374E`)
---@param vehicle fx.Vehicle|integer
---@param coords vector3
---@param heading number
---@param mode integer
---@param radius number
---@param keepEngineOn boolean
---@return fx.Ped self
function Ped:taskVehiclePark(vehicle, coords, heading, mode, radius, keepEngineOn) end

--- **Native**: `TASK_VEHICLE_SHOOT_AT_COORD` (`0x5190796ED39C9B6D`)
---@param coords vector3
---@param p4 number
---@return fx.Ped self
function Ped:taskVehicleShootAtCoord(coords, p4) end

--- **Native**: `TASK_VEHICLE_SHOOT_AT_PED` (`0x10AB107B887214D8`)
---@param target fx.Ped|integer
---@param p2 number
---@return fx.Ped self
function Ped:taskVehicleShootAtPed(target, p2) end

--- Gives the vehicle a temporary action.
---
--- **Note**: For migrating objects, a `CScriptEntityStateChangeEvent` will be sent over the network to let other clients know that this object is being given a temporary action. At the same time, temporary actions cannot be applied to clones/remote objects.
---
--- ```cpp
--- enum eTempAction {
---     TA_NONE = 0,
---     TA_WAIT = 1,
---     TA_UNUSED = 2,
---     TA_BRAKE_REVERSE = 3,
---     TA_HANDBRAKE_TURN_LEFT = 4,
---     TA_HANDBRAKE_TURN_RIGHT = 5,
---     TA_HANDBRAKE_UNTIL_TIME_ENDS = 6,
---     TA_TURN_LEFT = 7,
---     TA_TURN_RIGHT = 8,
---     TA_ACCELERATE = 9,
---     TA_TURN_LEFT = 10,
---     TA_TURN_RIGHT = 11,
---     TA_UNUSED_12 = 12,
---     TA_TURN_LEFT_GO_REVERSE = 13,
---     TA_TURN_RIGHT_GO_REVERSE = 14,
---     TA_PLANE_FLY_UP = 15, // (crashes game if not in plane)
---     TA_PLANE_FLY_STRAIGHT = 16, // (crashes game if not in plane)
---     TA_PLANE_SHARP_LEFT = 17, // (crashes game if not in plane)
---     TA_PLANE_SHARP_RIGHT = 18, // (crashes game if not in plane)
---     TA_STRONG_BRAKE = 19,
---     TA_TURN_LEFT_AND_STOP = 20,
---     TA_TURN_RIGHT_AND_STOP = 21,
---     TA_GO_IN_REVERSE = 22,
---     TA_ACCELERATE_FAST = 23,
---     TA_BRAKE_ACTION = 24,
---     TA_HANDBRAKE_TURN_LEFT_MORE = 25,
---     TA_HANDBRAKE_TURN_RIGHT_MORE = 26,
---     TA_HANDBRAKE_BRAKE_STRAIGHT = 27,
---     TA_BRAKE_STRONG_REVERSE_ACCELERATION = 28,
---     TA_UNUSED_29 = 29,
---     TA_PERFORMS_BURNOUT = 30,
---     TA_REV_ENGINE = 31,
---     TA_ACCELERATE_VERY_STRONG = 32,
---     TA_SURFACE_IN_SUBMARINE = 33
--- [...]
--- **Native**: `TASK_VEHICLE_TEMP_ACTION` (`0xC429DCEEB339E129`)
---@param vehicle fx.Vehicle|integer The vehicle handle.
---@param action fx.Enum.TempAction|integer The temporary action, see `eTempAction`.
---@param time integer The time to run this temp action for, use `-1` for infinite. Time is in milliseconds.
---@return fx.Ped self
function Ped:taskVehicleTempAction(vehicle, action, time) end

--- Makes a ped wander/patrol around the specified area.
---
--- The ped will continue to wander after getting distracted, but only if this additional task is temporary, ie. killing a target, after killing the target it will continue to wander around.
---
--- Use `GetIsTaskActive(ped, 222)` to check if the ped is still wandering the area.
--- **Native**: `TASK_WANDER_IN_AREA` (`0xE054346CA3A0F315`)
---@param coords vector3 The X coordinate. / The Y coordinate / The Z coordinate
---@param radius number The radius of the area to wander around in
---@param minimalLength integer The minimal length it will wander before waiting timeBetweenWalks seconds before continuing
---@param timeBetweenWalks number The length of time the ped will stand still/rest between walks
---@return fx.Ped self
function Ped:taskWanderInArea(coords, radius, minimalLength, timeBetweenWalks) end

--- ```
--- Makes ped walk around the area.
--- set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.
--- ```
--- **Native**: `TASK_WANDER_STANDARD` (`0xBB9CE077274F6A1B`)
---@param p1 number
---@param p2 integer
---@return fx.Ped self
function Ped:taskWanderStandard(p1, p2) end

--- This task warps a ped directly into a cover position closest to the specified point. This can be used to quickly place peds in strategic positions during gameplay.
---
--- ```
--- NativeDB Introduced: 2545
--- ```
--- **Native**: `TASK_WARP_PED_DIRECTLY_INTO_COVER` (`0x6E01E9E8D89F8276`)
---@param time integer Duration in milliseconds the ped should take to enter the cover.
---@param canPeekAndAim boolean If `true`, allows the ped to peek and aim while in cover.
---@param forceInitialFacingDirection boolean If `true`, forces the ped to face the initial direction when entering cover.
---@param forceFaceLeft boolean If `true`, forces the ped to face left relative to the cover position.
---@param coverIndex integer The index of the cover point to warp the ped to. If `null`, the game will choose the nearest cover point.
---@return fx.Ped self
function Ped:taskWarpDirectlyIntoCover(time, canPeekAndAim, forceInitialFacingDirection, forceFaceLeft, coverIndex) end

--- ```
--- NativeDB Introduced: v323
--- ```
---
--- Warp a ped into a vehicle.
---
--- **Note**: It's better to use [`TASK_ENTER_VEHICLE`](#\_0xC20E50AA46D09CA8) with the flag "warp" flag instead of this native.
--- **Native**: `TASK_WARP_PED_INTO_VEHICLE` (`0x9A7D091411C5F684`)
---@param vehicle fx.Vehicle|integer The target vehicle into which the ped will be warped.
---@param seatIndex fx.Enum.SeatPosition|integer See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#\_0x22AC59A870E6A669).
---@return fx.Ped self
function Ped:taskWarpIntoVehicle(vehicle, seatIndex) end

--- ```
--- NativeDB Added Parameter 5: Any p4
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `TASK_WRITHE` (`0xCDDC2B77CE54AC6E`)
---@param target fx.Ped|integer
---@param time integer
---@param p3 integer
---@return fx.Ped self
function Ped:taskWrithe(target, time, p3) end

--- ```
--- gets the network id of a ped
--- ```
--- **Native**: `PED_TO_NET` (`0x0EDEC3C276198689`)
---@return integer result
function Ped:toNet() end

--- **Native**: `UNCUFF_PED` (`0x67406F2C8F87FC4F`)
---@return fx.Ped self
function Ped:uncuff() end

--- **Native**: `NETWORK_UNREGISTER_NETWORKED_ENTITY` (`0x7368E683BB9038D6`)
---@return fx.Ped self
function Ped:unregisterNetworked() end

--- See [`SET_PED_HEAD_BLEND_DATA`](#\_0x9414E18B9434C2FE)
--- **Native**: `UPDATE_PED_HEAD_BLEND_DATA` (`0x723538F61C647C5A`)
---@param shapeMix number
---@param skinMix number
---@param thirdMix number
---@return fx.Ped self
function Ped:updateHeadBlendData(shapeMix, skinMix, thirdMix) end

--- **Native**: `UPDATE_LIGHTS_ON_ENTITY` (`0xDEADC0DEDEADC0DE`)
---@return fx.Ped self
function Ped:updateLights() end

--- **Native**: `UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET` (`0x9724FB59A3E72AD0`)
---@param p1 fx.Ped|integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 boolean
---@return fx.Ped self
function Ped:updateTaskAimGunScriptedTarget(p1, p2, p3, p4, p5) end

--- **Native**: `UPDATE_TASK_HANDS_UP_DURATION` (`0xA98FCAFD7893C834`)
---@param duration integer
---@return fx.Ped self
function Ped:updateTaskHandsUpDuration(duration) end

--- **Native**: `UPDATE_TASK_SWEEP_AIM_ENTITY` (`0xE4973DBDBE6E44B3`)
---@param entity fx.Entity|integer
---@return fx.Ped self
function Ped:updateTaskSweepAimEntity(entity) end

--- Allows script to trigger a sweetener footstep sound
--- **Native**: `USE_FOOTSTEP_SCRIPT_SWEETENERS` (`0xBF4DC1784BE94DFA`)
---@param useSweetner boolean
---@param soundSetHash integer|string
---@return fx.Ped self
function Ped:useFootstepScriptSweeteners(useSweetner, soundSetHash) end

--- **Native**: `NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME` (`0xCD71A4ECAB22709E`)
---@return fx.Ped self
function Ped:useLogarithmicBlendingThisFrame() end

---@class fx.PedStatic
---@overload fun(handle: integer): fx.Ped?
---@field canCreateRandomBikeRider boolean (read-only) [CAN_CREATE_RANDOM_BIKE_RIDER]
---@field canCreateRandomCops boolean (read-only) [CAN_CREATE_RANDOM_COPS]
---@field canCreateRandomDriver boolean (read-only) [CAN_CREATE_RANDOM_DRIVER]
---@field hasPedheadshotImgUploadFailed boolean (read-only) [HAS_PEDHEADSHOT_IMG_UPLOAD_FAILED]
---@field hasPedheadshotImgUploadSucceeded boolean (read-only) [HAS_PEDHEADSHOT_IMG_UPLOAD_SUCCEEDED]
---@field isPedheadshotImgUploadAvailable boolean (read-only) [IS_PEDHEADSHOT_IMG_UPLOAD_AVAILABLE]
---@field numHairColors integer (read-only) [GET_NUM_HAIR_COLORS]
---@field numMakeupColors integer (read-only) [GET_NUM_MAKEUP_COLORS]
local PedStatic = {}

---Loads the model, creates the ped, releases the model, then waits for `readyAsync()`. Never yields.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.PedCreateOptions
---@return fx.Promise<fx.Ped>
function PedStatic.createAsync(model, position, heading, options) end

---Raw version: immediate CREATE_PED. Does NOT load the model. Model not loaded: error in debug mode, nil otherwise.
---@param model fx.Model|integer|string
---@param position vector3|vector4
---@param heading? number
---@param options? fx.PedCreateOptions
---@return fx.Ped?
function PedStatic.createRaw(model, position, heading, options) end

---Releases a headshot slot (UNREGISTER_PEDHEADSHOT).
---@param id integer
function PedStatic.releaseHeadshot(id) end

--- True when value is an fx.Ped, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function PedStatic.is(value) end

--- ```
--- Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.
--- ```
--- **Native**: `ADD_RELATIONSHIP_GROUP` (`0xF372BC22FCB88606`)
---@param name string
---@param groupHash integer|string
---@return any result
---@return integer groupHash
function PedStatic.addRelationshipGroup(name, groupHash) end

--- Sets an area where scenarios are blocked
--- **Native**: `ADD_SCENARIO_BLOCKING_AREA` (`0x1B5C85C612E5256E`)
---@param posMin vector3 Min Coordinate.
---@param posMax vector3 Max Coordinate.
---@param network boolean Optionally networked to all other players
---@param cancelActive boolean Should this cause peds already in active scenario points in the area specified to leave
---@param blockPeds boolean if this area effects scenarios with peds
---@param blockVehicles boolean if this area effects scenarios with vehicles
---@return integer result
function PedStatic.addScenarioBlockingArea(posMin, posMax, network, cancelActive, blockPeds, blockVehicles) end

--- **Native**: `ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY` (`0x272E4723B56A3B96`)
---@param sceneID integer
---@param entity fx.Entity|integer
---@param boneIndex integer
function PedStatic.attachSynchronizedSceneToEntity(sceneID, entity, boneIndex) end

--- **Native**: `CAN_CREATE_RANDOM_PED` (`0x3E8349C08E4B82E4`)
---@param unk boolean
---@return boolean result
function PedStatic.canCreateRandom(unk) end

--- **Native**: `CLEAR_PED_NON_CREATION_AREA` (`0x2E05208086BA0651`)
function PedStatic.clearNonCreationArea() end

--- ```
--- Clears the relationship between two groups. This should be called twice (once for each group).
--- Relationship types:
--- 0 = Companion
--- 1 = Respect
--- 2 = Like
--- 3 = Neutral
--- 4 = Dislike
--- 5 = Hate
--- 255 = Pedestrians
--- (Credits: Inco)
--- Example:
--- PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);
--- PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
--- ```
--- **Native**: `CLEAR_RELATIONSHIP_BETWEEN_GROUPS` (`0x5E29243FB56FC6D4`)
---@param relationship integer
---@param group1 integer|string
---@param group2 integer|string
function PedStatic.clearRelationshipBetweenGroups(relationship, group1, group2) end

--- ```
--- Creates a new NaturalMotion message.
--- startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.
--- messageId: The ID of the NaturalMotion message.
--- If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.
--- ```
--- **Native**: `CREATE_NM_MESSAGE` (`0x418EF2A1BCE56685`)
---@param startImmediately boolean
---@param messageId integer
function PedStatic.createNmMessage(startImmediately, messageId) end

--- ```
--- vb.net
--- Dim ped_handle As Integer
---                     With Game.Player.Character
---                         Dim pos As Vector3 = .Position + .ForwardVector * 3
---                         ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)
---                     End With
--- Creates a Ped at the specified location, returns the Ped Handle.
--- Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
--- ```
--- **Native**: `CREATE_RANDOM_PED` (`0xB4AC7D0CF06BFE8F`)
---@param pos vector3
---@return fx.Ped? result
function PedStatic.createRandom(pos) end

--- ```
--- p6 always 2 (but it doesnt seem to matter...)
--- roll and pitch 0
--- yaw to Ped.rotation
--- ```
--- **Native**: `CREATE_SYNCHRONIZED_SCENE` (`0x8C18E0F9080ADD73`)
---@param coords vector3
---@param roll number
---@param pitch number
---@param yaw number
---@param p6 integer
---@return integer result
function PedStatic.createSynchronizedScene(coords, roll, pitch, yaw, p6) end

--- **Native**: `CREATE_SYNCHRONIZED_SCENE_2` (`0x62EC273D00187DCA`)
---@param coords vector3
---@param radius number
---@param object integer|string
---@return integer result
function PedStatic.createSynchronizedScene2(coords, radius, object) end

--- **Native**: `DETACH_SYNCHRONIZED_SCENE` (`0x6D38F1F04CBB37EA`)
---@param sceneID integer
function PedStatic.detachSynchronizedScene(sceneID) end

--- **Native**: `DOES_RELATIONSHIP_GROUP_EXIST` (`0xCC6E3B6BB69501F1`)
---@param groupHash integer|string
---@return boolean result
function PedStatic.doesRelationshipGroupExist(groupHash) end

--- **Native**: `DOES_SCENARIO_BLOCKING_AREA_EXIST` (`0x8A24B067D175A7BD`)
---@param coords1 vector3
---@param coords2 vector3
---@return boolean result
function PedStatic.doesScenarioBlockingAreaExist(coords1, coords2) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ANIM_INITIAL_OFFSET_POSITION` (`0xBE22B26DD764C040`)
---@param animDict string
---@param animName string
---@param coords vector3
---@param rot vector3
---@param p8 number
---@param p9 integer
---@return vector3 result
function PedStatic.getAnimInitialOffsetPosition(animDict, animName, coords, rot, p8, p9) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `GET_ANIM_INITIAL_OFFSET_ROTATION` (`0x4B805E6046EE9E47`)
---@param animDict string
---@param animName string
---@param coords vector3
---@param rot vector3
---@param p8 number
---@param p9 integer
---@return vector3 result
function PedStatic.getAnimInitialOffsetRotation(animDict, animName, coords, rot, p8, p9) end

--- **Native**: `GET_PED_AS_GROUP_LEADER` (`0x5CCE68DBD5FE93EC`)
---@param groupID integer
---@return fx.Ped? result
function PedStatic.getAsGroupLeader(groupID) end

--- ```
--- from fm_mission_controller.c4 (variable names changed for clarity):
--- int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());
--- PED::GET_GROUP_SIZE(group, &unused, &groupSize);
--- if (groupSize >= 1) {
--- . . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {
--- . . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);
--- . . . . . . . . //and so on
--- ```
--- **Native**: `GET_PED_AS_GROUP_MEMBER` (`0x51455483CF23ED97`)
---@param groupID integer
---@param memberNumber integer
---@return fx.Ped? result
function PedStatic.getAsGroupMember(groupID, memberNumber) end

--- ```
--- Gets the closest ped in a radius.
--- Ped Types:
--- Any ped = -1
--- Player = 1
--- Male = 4
--- Female = 5
--- Cop = 6
--- Human = 26
--- SWAT = 27
--- Animal = 28
--- Army = 29
--- ------------------
--- P4 P5 P7 P8
--- 1  0  x  x  = return nearest walking Ped
--- 1  x  0  x  = return nearest walking Ped
--- x  1  1  x  = return Ped you are using
--- 0  0  x  x  = no effect
--- 0  x  0  x  = no effect
--- x = can be 1 or 0. Does not have any obvious changes.
--- This function does not return ped who is:
--- 1. Standing still
--- 2. Driving
--- 3. Fleeing
--- 4. Attacking
--- This function only work if the ped is:
--- 1. walking normally.
--- 2. waiting to cross a road.
--- Note: PED::GET_PED_NEARBY_PEDS works for more peds.
--- ```
--- **Native**: `GET_CLOSEST_PED` (`0xC33AB876A77F8164`)
---@param coords vector3
---@param radius number
---@param p4 boolean
---@param p5 boolean
---@param p7 boolean
---@param p8 boolean
---@param pedType integer
---@return boolean result
---@return fx.Ped? outPed
function PedStatic.getClosest(coords, radius, p4, p5, p7, p8, pedType) end

--- ```cpp
--- enum ePedDecorationZone
--- {
--- 	ZONE_TORSO = 0,
--- 	ZONE_HEAD = 1,
--- 	ZONE_LEFT_ARM = 2,
--- 	ZONE_RIGHT_ARM = 3,
--- 	ZONE_LEFT_LEG = 4,
--- 	ZONE_RIGHT_LEG = 5,
--- 	ZONE_UNKNOWN = 6,
--- 	ZONE_NONE = 7
--- };
--- ```
--- **Native**: `GET_PED_DECORATION_ZONE_FROM_HASHES` (`0x9FD452BFBE7A7A8B`)
---@param collection integer|string
---@param overlay integer|string
---@return fx.Enum.PedDecorationZone result Returns the doeciration zone for the specific collection and overlay combination, refer to `ePedDecorationZone`
function PedStatic.getDecorationZoneFromHashes(collection, overlay) end

--- **Native**: `GET_FOCUS_PED_ON_SCREEN` (`0x89215EC747DF244A`)
---@param p0 number
---@param p1 integer
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 integer
---@param p8 integer
---@return fx.Ped? result
function PedStatic.getFocusOnScreen(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- ```
--- p1 may be a BOOL representing whether or not the group even exists
--- ```
--- **Native**: `GET_GROUP_SIZE` (`0x8DE69FE35CA09A45`)
---@param groupID integer
---@return any unknown
---@return integer sizeInMembers
function PedStatic.getGroupSize(groupID) end

--- Input: Haircolor index, value between 0 and 63 (inclusive).
--- Output: RGB values for the haircolor specified in the input.
---
--- This is used with the hair color swatches scaleform.
---
--- Use [`_0x013E5CFC38CD5387`](#\_0x013E5CFC38CD5387) to get the makeup colors.
--- **Native**: `GET_PED_HAIR_RGB_COLOR` (`0x4852FC386E2E1BB5`)
---@param hairColorIndex integer The hair color index. Value between 0-63 (inclusive).
---@return integer outR Output red value.
---@return integer outG Output green value.
---@return integer outB Output blue value.
function PedStatic.getHairRgbColor(hairColorIndex) end

--- ```
--- Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
--- Used when calling SET_PED_HEAD_BLEND_DATA.
--- ```
--- **Native**: `GET_PED_HEAD_BLEND_FIRST_INDEX` (`0x68D353AB88B97E0C`)
---@param type_ integer
---@return integer result
function PedStatic.getHeadBlendFirstIndex(type_) end

--- ```
--- Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
--- ```
--- **Native**: `GET_PED_HEAD_BLEND_NUM_HEADS` (`0x5EF37013A6539C9D`)
---@param type_ integer
---@return integer result
function PedStatic.getHeadBlendNumHeads(type_) end

--- ```
--- Used with freemode (online) characters.
--- ```
--- **Native**: `GET_PED_HEAD_OVERLAY_NUM` (`0xCF1CE768BB43480E`)
---@param overlayID integer
---@return integer result
function PedStatic.getHeadOverlayNum(overlayID) end

--- Input: Makeup color index, value between 0 and 63 (inclusive).
--- Output: RGB values for the makeup color specified in the input.
---
--- This is used with the makeup color swatches scaleform.
---
--- Use [`_0x4852FC386E2E1BB5`](#\_0x4852FC386E2E1BB5) to get the hair colors.
--- **Native**: `GET_PED_MAKEUP_RGB_COLOR` (`0x013E5CFC38CD5387`)
---@param makeupColorIndex integer The hair color index. Value between 0-63 (inclusive).
---@return integer outR Output red value.
---@return integer outG Output green value.
---@return integer outB Output blue value.
function PedStatic.getMakeupRgbColor(makeupColorIndex) end

--- ```
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--- ```
--- **Native**: `GET_PEDHEADSHOT_TXD_STRING` (`0xDB4EACD4AD0A5D6B`)
---@param id integer
---@return string result
function PedStatic.getPedheadshotTxdString(id) end

--- ```
--- Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.
--- Ped Types:
--- Any = -1
--- Player = 1
--- Male = 4
--- Female = 5
--- Cop = 6
--- Human = 26
--- SWAT = 27
--- Animal = 28
--- Army = 29
--- ```
--- **Native**: `GET_RANDOM_PED_AT_COORD` (`0x876046A8E3A4B71C`)
---@param coords vector3
---@param radius vector3
---@param pedType integer
---@return fx.Ped? result
function PedStatic.getRandomAtCoord(coords, radius, pedType) end

--- ```
--- Gets the relationship between two groups. This should be called twice (once for each group).
--- Relationship types:
--- 0 = Companion
--- 1 = Respect
--- 2 = Like
--- 3 = Neutral
--- 4 = Dislike
--- 5 = Hate
--- 255 = Pedestrians
--- Example:
--- PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);
--- PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);
--- ```
--- **Native**: `GET_RELATIONSHIP_BETWEEN_GROUPS` (`0x9E6B70061662AE5C`)
---@param group1 integer|string
---@param group2 integer|string
---@return integer result
function PedStatic.getRelationshipBetweenGroups(group1, group2) end

--- **Native**: `GET_SYNCHRONIZED_SCENE_PHASE` (`0xE4A310B1D7FA73CC`)
---@param sceneID integer
---@return number result
function PedStatic.getSynchronizedScenePhase(sceneID) end

--- **Native**: `GET_SYNCHRONIZED_SCENE_RATE` (`0xD80932D577274D40`)
---@param sceneID integer
---@return number result
function PedStatic.getSynchronizedSceneRate(sceneID) end

--- **Native**: `HAS_ACTION_MODE_ASSET_LOADED` (`0xE4B5F4BF2CB24E65`)
---@param asset string
---@return boolean result
function PedStatic.hasActionModeAssetLoaded(asset) end

--- **Native**: `HAS_STEALTH_MODE_ASSET_LOADED` (`0xE977FC5B08AF3441`)
---@param asset string
---@return boolean result
function PedStatic.hasStealthModeAssetLoaded(asset) end

--- **Native**: `INSTANTLY_FILL_PED_POPULATION` (`0x4759CC730F947C81`)
function PedStatic.instantlyFillPopulation() end

--- **Native**: `IS_ANY_PED_NEAR_POINT` (`0x083961498679DC9F`)
---@param coords vector3
---@param radius number
---@return boolean result
function PedStatic.isAnyNearPoint(coords, radius) end

--- Verifies whether a ped is firing within a specific area.
--- **Native**: `IS_ANY_PED_SHOOTING_IN_AREA` (`0xA0D3D71EA1086C55`)
---@param min vector3 Minimum vector
---@param max vector3 Maximum vector
---@param bHighlightArea boolean Highlights the area to check when set to `true`.
---@param bDo3DCheck boolean Conducts a 3D height check when set to `true`.
---@return boolean result `true` if a ped is within the defined area, `false` otherwise.
function PedStatic.isAnyShootingInArea(min, max, bHighlightArea, bDo3DCheck) end

--- **Native**: `IS_PED_BLUSH_COLOR_VALID` (`0x604E810189EE3A59`)
---@param colorID integer
---@return boolean result
function PedStatic.isBlushColorValid(colorID) end

--- **Native**: `IS_PED_BLUSH_COLOR_VALID_2` (`0xF41B5D290C99A3D6`)
---@param colorId integer
---@return boolean result
function PedStatic.isBlushColorValid2(colorId) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `IS_PED_BODY_BLEMISH_VALID` (`0x09E7ECA981D9B210`)
---@param colorID integer
---@return boolean result
function PedStatic.isBodyBlemishValid(colorID) end

--- ```
--- xyz - relative to the world origin.
--- ```
--- **Native**: `IS_COP_PED_IN_AREA_3D` (`0x16EC4839969F9F5E`)
---@param coords1 vector3
---@param coords2 vector3
---@return boolean result
function PedStatic.isCopInArea3d(coords1, coords2) end

--- **Native**: `IS_PED_HAIR_COLOR_VALID` (`0xE0D36E5D9E99CC21`)
---@param colorID integer
---@return boolean result
function PedStatic.isHairColorValid(colorID) end

--- **Native**: `IS_PED_HAIR_COLOR_VALID_2` (`0xED6D8E27A43B8CDE`)
---@param colorId integer
---@return boolean result
function PedStatic.isHairColorValid2(colorId) end

--- **Native**: `IS_PED_LIPSTICK_COLOR_VALID` (`0x0525A2C2562F3CD4`)
---@param colorID integer
---@return boolean result
function PedStatic.isLipstickColorValid(colorID) end

--- **Native**: `IS_PED_LIPSTICK_COLOR_VALID_2` (`0x3E802F11FBE27674`)
---@param colorId integer
---@return boolean result
function PedStatic.isLipstickColorValid2(colorId) end

--- ```
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--- ```
--- **Native**: `IS_PEDHEADSHOT_READY` (`0x7085228842B13A67`)
---@param id integer
---@return boolean result
function PedStatic.isPedheadshotReady(id) end

--- ```
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--- ```
--- **Native**: `IS_PEDHEADSHOT_VALID` (`0xA0A9668F158129A2`)
---@param id integer
---@return boolean result
function PedStatic.isPedheadshotValid(id) end

--- **Native**: `IS_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME` (`0x7F2F4F13AC5257EF`)
---@param sceneID integer
---@return boolean result
function PedStatic.isSynchronizedSceneHoldLastFrame(sceneID) end

--- **Native**: `IS_SYNCHRONIZED_SCENE_LOOPED` (`0x62522002E0C391BA`)
---@param sceneID integer
---@return boolean result
function PedStatic.isSynchronizedSceneLooped(sceneID) end

--- ```
--- Returns true if a synchronized scene is running
--- ```
--- **Native**: `IS_SYNCHRONIZED_SCENE_RUNNING` (`0x25D39B935A038A26`)
---@param sceneId integer
---@return boolean result
function PedStatic.isSynchronizedSceneRunning(sceneId) end

--- ```
--- gets the ped id of a network id
--- ```
--- **Native**: `NET_TO_PED` (`0xBDCD95FC216A8B3E`)
---@param netHandle integer
---@return fx.Ped? result
function PedStatic.net(netHandle) end

--- **Native**: `RELEASE_PEDHEADSHOT_IMG_UPLOAD` (`0x5D517B27CF6ECD04`)
---@param id integer
function PedStatic.releasePedheadshotImgUpload(id) end

--- **Native**: `REMOVE_ACTION_MODE_ASSET` (`0x13E940F88470FA51`)
---@param asset string
function PedStatic.removeActionModeAsset(asset) end

--- **Native**: `REMOVE_RELATIONSHIP_GROUP` (`0xB6BA2444AB393DA2`)
---@param groupHash integer|string
function PedStatic.removeRelationshipGroup(groupHash) end

--- **Native**: `REMOVE_SCENARIO_BLOCKING_AREA` (`0x31D16B74C6E29D66`)
---@param scenarioBlockingIndex integer the index of the Scenario blocking area
---@param bNetwork boolean Optionally networked to all other players
function PedStatic.removeScenarioBlockingArea(scenarioBlockingIndex, bNetwork) end

--- **Native**: `REMOVE_SCENARIO_BLOCKING_AREAS` (`0xD37401D78A929A49`)
function PedStatic.removeScenarioBlockingAreas() end

--- **Native**: `REMOVE_STEALTH_MODE_ASSET` (`0x9219857D21F0E842`)
---@param asset string
function PedStatic.removeStealthModeAsset(asset) end

--- **Native**: `REQUEST_ACTION_MODE_ASSET` (`0x290E2780BB7AA598`)
---@param asset string
function PedStatic.requestActionModeAsset(asset) end

--- **Native**: `REQUEST_PEDHEADSHOT_IMG_UPLOAD` (`0xF0DAEF2F545BEE25`)
---@param id integer
---@return boolean result
function PedStatic.requestPedheadshotImgUpload(id) end

--- **Native**: `REQUEST_STEALTH_MODE_ASSET` (`0x2A0A62FCDEE16D4F`)
---@param asset string
function PedStatic.requestStealthModeAsset(asset) end

--- **Native**: `RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER` (`0x46E56A7CD1D63C3F`)
function PedStatic.resetAiMeleeWeaponDamageModifier() end

--- **Native**: `RESET_AI_WEAPON_DAMAGE_MODIFIER` (`0xEA16670E7BA4743C`)
function PedStatic.resetAiWeaponDamageModifier() end

--- **Native**: `RESET_GROUP_FORMATION_DEFAULT_SPACING` (`0x63DAB4CCB3273205`)
---@param groupHandle integer
function PedStatic.resetGroupFormationDefaultSpacing(groupHandle) end

--- **Native**: `SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER` (`0x66460DEDDD417254`)
---@param modifier number
function PedStatic.setAiMeleeWeaponDamageModifier(modifier) end

--- **Native**: `SET_AI_WEAPON_DAMAGE_MODIFIER` (`0x1B1E2A40A65B8521`)
---@param value number
function PedStatic.setAiWeaponDamageModifier(value) end

--- **Native**: `SET_AMBIENT_PEDS_DROP_MONEY` (`0x6B0E6172C9A4D902`)
---@param p0 boolean
function PedStatic.setAmbientPedsDropMoney(p0) end

--- Prevents ambient peds from dropping their weapons for the current frame.
---
--- ```
--- NativeDB Introduced: v3258
--- ```
--- **Native**: `SET_BLOCK_AMBIENT_PEDS_FROM_DROPPING_WEAPONS_THIS_FRAME` (`0xC73EFFC5E043A8BA`)
function PedStatic.setBlockAmbientPedsFromDroppingWeaponsThisFrame() end

--- **Native**: `SET_PED_CLOTH_PRONE` (`0x82A3D6D9CC2CB8E3`)
---@param p0 any
---@param p1 any
function PedStatic.setClothProne(p0, p1) end

--- **Native**: `SET_CREATE_RANDOM_COPS` (`0x102E68B2024D536D`)
---@param toggle boolean
function PedStatic.setCreateRandomCops(toggle) end

--- **Native**: `SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS` (`0x8A4986851C4EF6E7`)
---@param toggle boolean
function PedStatic.setCreateRandomCopsNotOnScenarios(toggle) end

--- **Native**: `SET_CREATE_RANDOM_COPS_ON_SCENARIOS` (`0x444CB7D7DBE6973D`)
---@param toggle boolean
function PedStatic.setCreateRandomCopsOnScenarios(toggle) end

--- **Usage:** Call this native every frame
--- **Native**: `SET_PED_DENSITY_MULTIPLIER_THIS_FRAME` (`0x95E3D6257B166CF2`)
---@param multiplier number Adjust from 0.0 (minimum, indicating no pedestrians in the street) to 1.0 (maximum, representing a normal amount of pedestrians on the street).
function PedStatic.setDensityMultiplierThisFrame(multiplier) end

--- ```
--- Sets the range at which members will automatically leave the group.
--- ```
--- **Native**: `SET_GROUP_SEPARATION_RANGE` (`0x4102C7858CFEE4E4`)
---@param groupHandle integer
---@param separationRange number
function PedStatic.setGroupSeparationRange(groupHandle, separationRange) end

--- ```
--- The distance between these points, is the diagonal of a box (remember it's 3D).
--- ```
--- **Native**: `SET_PED_NON_CREATION_AREA` (`0xEE01041D559983EA`)
---@param coords1 vector3
---@param coords2 vector3
function PedStatic.setNonCreationArea(coords1, coords2) end

--- ```
--- Min and max are usually 100.0 and 200.0
--- ```
--- **Native**: `SET_POP_CONTROL_SPHERE_THIS_FRAME` (`0xD8C3BE3EE94CAF2D`)
---@param coords vector3
---@param min number
---@param max number
function PedStatic.setPopControlSphereThisFrame(coords, min, max) end

--- ```
--- Sets the relationship between two groups. This should be called twice (once for each group).
--- Relationship types:
--- 0 = Companion
--- 1 = Respect
--- 2 = Like
--- 3 = Neutral
--- 4 = Dislike
--- 5 = Hate
--- 255 = Pedestrians
--- Example:
--- PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);
--- PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
--- ```
--- **Native**: `SET_RELATIONSHIP_BETWEEN_GROUPS` (`0xBF25EB89375A37AD`)
---@param relationship integer
---@param group1 integer|string
---@param group2 integer|string
function PedStatic.setRelationshipBetweenGroups(relationship, group1, group2) end

--- **Native**: `SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` (`0x5615E0C5EB2BC6E2`)
---@param group integer|string
---@param p1 boolean
function PedStatic.setRelationshipGroupDontAffectWantedLevel(group, p1) end

--- Set the number of scenario peds on the entire map
--- **Native**: `SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME` (`0x7A556143A1C03898`)
---@param interiorMult number Multiplier for ped scenarios inside interiors.
---@param exteriorMult number Multiplier for ped scenarios outside interiors.
function PedStatic.setScenarioDensityMultiplierThisFrame(interiorMult, exteriorMult) end

--- **Native**: `SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA` (`0x28157D43CF600981`)
---@param coords vector3
---@param range number
---@param p4 integer
function PedStatic.setScenarioPedsSpawnInSphereArea(coords, range, p4) end

--- ```
--- Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.
--- ```
--- **Native**: `SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND` (`0x14F19A8782C8071E`)
---@param value boolean
function PedStatic.setScenarioPedsToBeReturnedByNextCommand(value) end

--- **Native**: `SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME` (`0x5086C7843552CF85`)
---@param coords vector3
function PedStatic.setScriptedConversionCoordThisFrame(coords) end

--- **Native**: `SET_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME` (`0x394B9CD12435C981`)
---@param sceneID integer
---@param toggle boolean
function PedStatic.setSynchronizedSceneHoldLastFrame(sceneID, toggle) end

--- **Native**: `SET_SYNCHRONIZED_SCENE_LOOPED` (`0xD9A897A4C6C2974F`)
---@param sceneID integer
---@param toggle boolean
function PedStatic.setSynchronizedSceneLooped(sceneID, toggle) end

--- **Native**: `SET_SYNCHRONIZED_SCENE_ORIGIN` (`0x6ACF6B7225801CD7`)
---@param sceneID integer
---@param coords vector3
---@param roll number
---@param pitch number
---@param yaw number
---@param p7 boolean
function PedStatic.setSynchronizedSceneOrigin(sceneID, coords, roll, pitch, yaw, p7) end

--- **Native**: `SET_SYNCHRONIZED_SCENE_PHASE` (`0x734292F4F0ABF6D0`)
---@param sceneID integer
---@param phase number
function PedStatic.setSynchronizedScenePhase(sceneID, phase) end

--- **Native**: `SET_SYNCHRONIZED_SCENE_RATE` (`0xB6C49F8A5E295A5D`)
---@param sceneID integer
---@param rate number
function PedStatic.setSynchronizedSceneRate(sceneID, rate) end

--- **Native**: `SPAWNPOINTS_CANCEL_SEARCH` (`0xFEE4A5459472A9F8`)
function PedStatic.spawnpointsCancelSearch() end

--- **Native**: `SPAWNPOINTS_GET_NUM_SEARCH_RESULTS` (`0xA635C11B8C44AFC2`)
---@return integer result
function PedStatic.spawnpointsGetNumSearchResults() end

--- **Native**: `SPAWNPOINTS_GET_SEARCH_RESULT` (`0x280C7E3AC7F56E90`)
---@param randomInt integer
---@return number x
---@return number y
---@return number z
function PedStatic.spawnpointsGetSearchResult(randomInt) end

--- **Native**: `SPAWNPOINTS_GET_SEARCH_RESULT_FLAGS` (`0xB782F8238512BAD5`)
---@param p0 any
---@param p1 any
---@return any p1
function PedStatic.spawnpointsGetSearchResultFlags(p0, p1) end

--- **Native**: `SPAWNPOINTS_IS_SEARCH_ACTIVE` (`0x3C67506996001F5E`)
---@return boolean result
function PedStatic.spawnpointsIsSearchActive() end

--- **Native**: `SPAWNPOINTS_IS_SEARCH_COMPLETE` (`0xA586FBEB32A53DBB`)
---@return boolean result
function PedStatic.spawnpointsIsSearchComplete() end

--- **Native**: `SPAWNPOINTS_IS_SEARCH_FAILED` (`0xF445DE8DA80A1792`)
---@return boolean result
function PedStatic.spawnpointsIsSearchFailed() end

--- **Native**: `SPAWNPOINTS_START_SEARCH` (`0x2DF9038C90AD5264`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param interiorFlags integer
---@param scale number
---@param duration integer
function PedStatic.spawnpointsStartSearch(p0, p1, p2, p3, p4, interiorFlags, scale, duration) end

--- **Native**: `SPAWNPOINTS_START_SEARCH_IN_ANGLED_AREA` (`0xB2AFF10216DEFA2F`)
---@param coords vector3
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param interiorFlags integer
---@param scale number
---@param duration integer
function PedStatic.spawnpointsStartSearchInAngledArea(coords, p3, p4, p5, p6, interiorFlags, scale, duration) end

--- **Native**: `STOP_ANY_PED_MODEL_BEING_SUPPRESSED` (`0xB47BD05FA66B40CF`)
function PedStatic.stopAnyModelBeingSuppressed() end

--- **Native**: `TAKE_OWNERSHIP_OF_SYNCHRONIZED_SCENE` (`0xCD9CC7E200A52A6F`)
---@param scene integer Scene ID returned by [`CREATE_SYNCHRONIZED_SCENE`](#\_0x8C18E0F9080ADD73)
function PedStatic.takeOwnershipOfSynchronizedScene(scene) end

--- ```
--- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--- ```
--- **Native**: `UNREGISTER_PEDHEADSHOT` (`0x96B1361D9B24C2FF`)
---@param id integer
function PedStatic.unregisterPedheadshot(id) end

--- Loads the resource and returns a Promise (never yields). Resolves with `asset`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_ACTION_MODE_ASSET` / `HAS_ACTION_MODE_ASSET_LOADED`.
---@param asset string
---@param timeoutMs? integer
---@return fx.Promise<string>
function PedStatic.loadActionModeAssetAsync(asset, timeoutMs) end

--- Loads the resource and returns a Promise (never yields). Resolves with `asset`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_STEALTH_MODE_ASSET` / `HAS_STEALTH_MODE_ASSET_LOADED`.
---@param asset string
---@param timeoutMs? integer
---@return fx.Promise<string>
function PedStatic.loadStealthModeAssetAsync(asset, timeoutMs) end

