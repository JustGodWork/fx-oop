---@meta
---@diagnostic disable
-- fx.Cam (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.CamCreateOptions
---@field coords vector3
---@field rot? vector3 Default 0, 0, 0
---@field fov? number Default 50.0
---@field name? string Default "DEFAULT_SCRIPTED_CAMERA"
---@field rotationOrder? fx.Enum.RotationOrder|integer Default 2
---@field render? boolean Default true: activate + RENDER_SCRIPT_CAMS
---@field ease? boolean Default false
---@field easeTime? integer ms, default 0
---@class fx.Cam
---@field handle integer Raw handle.
---@field animCurrentPhase number [GET_CAM_ANIM_CURRENT_PHASE / SET_CAM_ANIM_CURRENT_PHASE]
---@field coord vector3 [GET_CAM_COORD / SET_CAM_COORD]
---@field dofStrength number [GET_CAM_DOF_STRENGTH / SET_CAM_DOF_STRENGTH]
---@field exists boolean (read-only) [DOES_CAM_EXIST] Looks up a camera handle in the current camera pool and returns `true` if the handle is found, otherwise it returns `false`.
---@field farClip number [GET_CAM_FAR_CLIP / SET_CAM_FAR_CLIP]
---@field farDof number [GET_CAM_FAR_DOF / SET_CAM_FAR_DOF]
---@field fov number [GET_CAM_FOV / SET_CAM_FOV]
---@field isActive boolean (read-only) [IS_CAM_ACTIVE]
---@field isInterpolating boolean (read-only) [IS_CAM_INTERPOLATING]
---@field isRendering boolean (read-only) [IS_CAM_RENDERING]
---@field isShaking boolean (read-only) [IS_CAM_SHAKING]
---@field nearClip number [GET_CAM_NEAR_CLIP / SET_CAM_NEAR_CLIP]
---@field nearDof number [GET_CAM_NEAR_DOF / SET_CAM_NEAR_DOF]
---@field splineNodeIndex integer (read-only) [GET_CAM_SPLINE_NODE_INDEX]
---@field splineNodePhase number (read-only) [GET_CAM_SPLINE_NODE_PHASE]
---@field splinePhase number [GET_CAM_SPLINE_PHASE / SET_CAM_SPLINE_PHASE]
local Cam = {}

---Activates (or deactivates) the camera and turns script camera rendering on / off.
---@param on? boolean default true
---@param ease? boolean
---@param easeTime? integer ms
---@return fx.Cam self
function Cam:render(on, ease, easeTime) end

---Blends from this camera to `to` over `duration` ms; returns `to`.
---@param to fx.Cam
---@param duration? integer default 1000
---@param easeLocation? integer
---@param easeRotation? integer
---@return fx.Cam
function Cam:blendTo(to, duration, easeLocation, easeRotation) end

---Stops script camera rendering if this camera is the one on screen (optionally eased), then destroys the camera (raw DESTROY_CAM: destroyNative).
---@param ease? boolean
---@param easeTime? integer
---@return nil
function Cam:destroy(ease, easeTime) end

--- ```
--- NativeDB Introduced: v3258
--- ```
--- **Native**: `ACTIVATE_CAM_WITH_INTERP_AND_FOV_CURVE` (`0x34CFC4C2A38E83E3`)
---@param camFrom fx.Cam|integer
---@param duration integer
---@param easeLocation integer
---@param easeRotation integer
---@param easeFove integer
---@return fx.Cam self
function Cam:activateWithInterpAndFovCurve(camFrom, duration, easeLocation, easeRotation, easeFove) end

--- ```
--- I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.
--- p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one
--- p8 big values ~100 will slow down the camera movement before reaching this node
--- p9 != 0 seems to override the rotation/pitch (bool?)
--- ```
--- **Native**: `ADD_CAM_SPLINE_NODE` (`0x8609C75EC438FB3B`)
---@param coords vector3
---@param rot vector3
---@param length integer
---@param p8 integer
---@param transitionType integer
---@return fx.Cam self
function Cam:addSplineNode(coords, rot, length, p8, transitionType) end

--- Takes a camera and uses the information from it as a camera spline node.
--- **Native**: `ADD_CAM_SPLINE_NODE_USING_CAMERA` (`0x0FB82563989CF4FB`)
---@param cam2 fx.Cam|integer Camera used for reference
---@param length integer Duration used for transition, has no effect for the first node.
---@param p3 integer
---@return fx.Cam self
function Cam:addSplineNodeUsingCamera(cam2, length, p3) end

--- **Native**: `ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME` (`0x0A9F2A468B328E74`)
---@param cam2 fx.Cam|integer
---@param p2 integer
---@param p3 integer
---@return fx.Cam self
function Cam:addSplineNodeUsingCameraFrame(cam2, p2, p3) end

--- **Native**: `ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME` (`0x609278246A29CA34`)
---@param p1 integer
---@param p2 integer
---@return fx.Cam self
function Cam:addSplineNodeUsingGameplayFrame(p1, p2) end

--- ```
--- Example from michael2 script.
--- CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);
--- ```
--- **Native**: `ANIMATED_SHAKE_CAM` (`0xA2746EEAE3E577CD`)
---@param p1 string
---@param p2 string
---@param p3 string
---@param amplitude number
---@return fx.Cam self
function Cam:animatedShake(p1, p2, p3, amplitude) end

--- ```
--- Last param determines if its relative to the Entity
--- ```
--- **Native**: `ATTACH_CAM_TO_ENTITY` (`0xFEDB7D269E8C60E3`)
---@param entity fx.Entity|integer The entity handle.
---@param offset vector3 -axis offset
---@param isRelative boolean Whether or not the camera will be relative to the entity
---@return fx.Cam self
function Cam:attachToEntity(entity, offset, isRelative) end

--- This native works with peds only.
--- **Native**: `ATTACH_CAM_TO_PED_BONE` (`0x61A3DBA14AB7F411`)
---@param ped fx.Ped|integer The ped handle.
---@param boneIndex integer This is different to boneID, use ['GET_PED_BONE_INDEX'](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `cam` will be attached to the center of `pe…
---@param offset vector3 -axis offset
---@param isRelative boolean Whether or not the camera will be relative to the bone
---@return fx.Cam self
function Cam:attachToPedBone(ped, boneIndex, offset, isRelative) end

--- This native works with vehicles only.
--- Bone indexes are usually given by this native [GET_ENTITY_BONE_INDEX_BY_NAME](#\_0xFB71170B7E76ACBA).
--- **Native**: `ATTACH_CAM_TO_VEHICLE_BONE` (`0x8DB3F12A02CAEF72`)
---@param vehicle fx.Vehicle|integer The vehicle handle.
---@param boneIndex integer
---@param relativeRotation boolean Whether or not the camera rotation will relative the vehicle rotation.
---@param rot vector3 The rotation.
---@param off vector3 The offset direction.
---@param fixedDirection boolean Whether or not the camera direction will relative to the vehicle direction.
---@return fx.Cam self
function Cam:attachToVehicleBone(vehicle, boneIndex, relativeRotation, rot, off, fixedDirection) end

--- ```
--- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.
--- ```
--- **Native**: `DESTROY_CAM` (`0x865908C81A2C22E9`)
---@param bScriptHostCam boolean
---@return nil
function Cam:destroyNative(bScriptHostCam) end

--- **Native**: `DETACH_CAM` (`0xA2FABBE87F4BAD82`)
---@return fx.Cam self
function Cam:detach() end

--- Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
--- **Native**: `GET_CAM_MATRIX` (`0x8F57A89D`)
---@return vector3 rightVector
---@return vector3 forwardVector
---@return vector3 upVector
---@return vector3 position
function Cam:getMatrix() end

--- Gets a camera's rotation by handle (`cam`) lookup, outputs a `Vector3` in degrees.
--- **Native**: `GET_CAM_ROT` (`0x7D304C1C955E3E12`)
---@param rotationOrder fx.Enum.RotationOrder|integer The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@return vector3 result A `Vector3` representing the camera rotation in degrees.
function Cam:getRot(rotationOrder) end

--- Attaches a camera to an entity, including full matrix transformations for both rotation and position offsets.
---
--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `HARD_ATTACH_CAM_TO_ENTITY` (`0x202A5ED9CE01D6E7`)
---@param entity fx.Entity|integer The entity handle.
---@param rot vector3 -axis rotation.
---@param offset vector3 -axis offset
---@param isRelative boolean Whether or not the camera position will be relative to the entity rotation
---@return fx.Cam self
function Cam:hardAttachToEntity(entity, rot, offset, isRelative) end

--- Attaches a camera to a specific bone of a Ped, including full matrix transformations for both rotation and position offsets.
--- This native works with peds only.
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `HARD_ATTACH_CAM_TO_PED_BONE` (`0x149916F50C34A40D`)
---@param ped fx.Ped|integer The ped handle.
---@param boneIndex integer This is different to boneID, use [`GET_PED_BONE_INDEX`](#\_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `cam` will be attached to the center of `pe…
---@param rot vector3 -axis rotation.
---@param offset vector3 -axis offset.
---@param isRelative boolean Whether or not the camera position will be relative to the bone rotation.
---@return fx.Cam self
function Cam:hardAttachToPedBone(ped, boneIndex, rot, offset, isRelative) end

--- Interpolates the camera to specified parameters over a set duration using various curve types for position, rotation, and fov.
---
--- ```
--- NativeDB Introduced: v3258
--- ```
--- **Native**: `INTERPOLATE_CAM_WITH_PARAMS` (`0xDDA77EE33C005AAF`)
---@param camPos vector3
---@param camRot vector3
---@param fov number
---@param duration integer
---@param posCurveType integer
---@param rotCurveType integer
---@param rotOrder integer
---@param fovCurveType integer
---@return fx.Cam self
function Cam:interpolateWithParams(camPos, camRot, fov, duration, posCurveType, rotCurveType, rotOrder, fovCurveType) end

--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `IS_CAM_PLAYING_ANIM` (`0xC90621D8A0CEECF2`)
---@param animName string
---@param animDictionary string
---@return boolean result
function Cam:isPlayingAnim(animName, animDictionary) end

--- ```
--- Max value for p1 is 15.
--- ```
--- **Native**: `OVERRIDE_CAM_SPLINE_MOTION_BLUR` (`0x7DCF7C708D292D55`)
---@param p1 integer
---@param p2 number
---@param p3 number
---@return fx.Cam self
function Cam:overrideSplineMotionBlur(p1, p2, p3) end

--- **Native**: `OVERRIDE_CAM_SPLINE_VELOCITY` (`0x40B62FA033EB0346`)
---@param p1 integer
---@param p2 number
---@param p3 number
---@return fx.Cam self
function Cam:overrideSplineVelocity(p1, p2, p3) end

--- ```
--- Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.
--- p9 is unknown at this time.
--- p10 throughout all the X360 Scripts is always 2.
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_CAM_ANIM` (`0x9A2D0FB2E7852392`)
---@param animName string
---@param animDictionary string
---@param coords vector3
---@param rot vector3
---@param p9 boolean
---@param p10 integer
---@return boolean result
function Cam:playAnim(animName, animDictionary, coords, rot, p9, p10) end

--- ```
--- Examples:
--- CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::_02C40BF885C567B6(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");
--- CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/*1*/], l_F4D[15/*1*/], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");
--- ```
---
--- [Animations list](https://alexguirre.github.io/animations-list/)
--- **Native**: `PLAY_SYNCHRONIZED_CAM_ANIM` (`0xE32EFE9AB4A9AA0C`)
---@param scene integer
---@param animName string
---@param animDictionary string
---@return boolean result
function Cam:playSynchronizedAnim(scene, animName, animDictionary) end

--- **Native**: `POINT_CAM_AT_COORD` (`0xF75497BB865F0803`)
---@param coords vector3
---@return fx.Cam self
function Cam:pointAtCoord(coords) end

--- Points the camera at the specified entity.
---
--- Offset works like [GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS](#\_0x1899F328B0E12848).
--- **Native**: `POINT_CAM_AT_ENTITY` (`0x5640BFF86B16E8DC`)
---@param entity fx.Entity|integer Entity for the camera to point at.
---@param offset vector3 X offset for the camera (left/right). / Y offset for the camera (forward/backward). / Z offset for the camera (up/down).
---@param p5 boolean Always seems to be 1 (true).
---@return fx.Cam self
function Cam:pointAtEntity(entity, offset, p5) end

--- ```
--- Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong.
--- ```
--- **Native**: `POINT_CAM_AT_PED_BONE` (`0x68B2B5F33BA63C41`)
---@param ped fx.Ped|integer
---@param boneIndex integer
---@param coords vector3
---@param p6 boolean
---@return fx.Cam self
function Cam:pointAtPedBone(ped, boneIndex, coords, p6) end

--- ```
--- Set camera as active/inactive.
--- ```
--- **Native**: `SET_CAM_ACTIVE` (`0x026FB97D0A425F84`)
---@param active boolean
---@return fx.Cam self
function Cam:setActive(active) end

--- ```
--- Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...
--- ```
--- **Native**: `SET_CAM_ACTIVE_WITH_INTERP` (`0x9FBDA379383A52A4`)
---@param camFrom fx.Cam|integer
---@param duration integer
---@param easeLocation integer
---@param easeRotation integer
---@return fx.Cam self
function Cam:setActiveWithInterp(camFrom, duration, easeLocation, easeRotation) end

--- ```
--- Allows you to aim and shoot at the direction the camera is facing.
--- ```
--- **Native**: `SET_CAM_AFFECTS_AIMING` (`0x8C1DC7770C51DC8D`)
---@param toggle boolean
---@return fx.Cam self
function Cam:setAffectsAiming(toggle) end

--- Makes the minimap follow a scripted camera's rotation instead of the gameplay cam.
--- **Native**: `SET_CAM_CONTROLS_MINI_MAP_HEADING` (`0x661B5C8654ADD825`)
---@param toggle boolean Whether or not this camera should control the minimap heading.
---@return fx.Cam self
function Cam:setControlsMiniMapHeading(toggle) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `SET_CAM_DEBUG_NAME` (`0x1B93E0107865DD40`)
---@param name string
---@return fx.Cam self
function Cam:setDebugName(name) end

--- ```
--- This native has its name defined inside its codE
--- ```
--- **Native**: `SET_CAM_DOF_FNUMBER_OF_LENS` (`0x7DD234D6F3914C5B`)
---@param p1 number
---@return fx.Cam self
function Cam:setDofFnumberOfLens(p1) end

--- ```
--- Native name labeled within its code
--- ```
--- **Native**: `SET_CAM_DOF_FOCAL_LENGTH_MULTIPLIER` (`0x47B595D60664CFFA`)
---@param multiplier number
---@return fx.Cam self
function Cam:setDofFocalLengthMultiplier(multiplier) end

--- ```
--- This native has a name defined inside its code
--- ```
--- **Native**: `SET_CAM_DOF_FOCUS_DISTANCE_BIAS` (`0xC669EEA5D031B7DE`)
---@param p1 number
---@return fx.Cam self
function Cam:setDofFocusDistanceBias(p1) end

--- ```
--- This native has a name defined inside its code
--- ```
--- **Native**: `SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE` (`0xC3654A441402562D`)
---@param p1 number
---@return fx.Cam self
function Cam:setDofMaxNearInFocusDistance(p1) end

--- ```
--- This native has a name defined inside its code
--- ```
--- **Native**: `SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE_BLEND_LEVEL` (`0x2C654B4943BDDF7C`)
---@param p1 number
---@return fx.Cam self
function Cam:setDofMaxNearInFocusDistanceBlendLevel(p1) end

--- **Native**: `SET_CAM_DOF_PLANES` (`0x3CF48F6F96E749DC`)
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@return fx.Cam self
function Cam:setDofPlanes(p1, p2, p3, p4) end

--- **Native**: `SET_FLY_CAM_COORD_AND_CONSTRAIN` (`0xC91C6C55199308CA`)
---@param coords vector3
---@return fx.Cam self
function Cam:setFlyCoordAndConstrain(coords) end

--- **Native**: `SET_FLY_CAM_HORIZONTAL_RESPONSE` (`0x503F5920162365B2`)
---@param p1 number
---@param p2 number
---@param p3 number
---@return fx.Cam self
function Cam:setFlyHorizontalResponse(p1, p2, p3) end

--- **Native**: `SET_FLY_CAM_MAX_HEIGHT` (`0xF9D02130ECDD1D77`)
---@param height number
---@return fx.Cam self
function Cam:setFlyMaxHeight(height) end

--- **Native**: `SET_FLY_CAM_VERTICAL_SPEED_MULTIPLIER` (`0xE827B9382CFB41BA`)
---@param p1 number
---@param p2 number
---@param p3 number
---@return fx.Cam self
function Cam:setFlyVerticalSpeedMultiplier(p1, p2, p3) end

--- ```
--- The native seems to only be called once.
--- The native is used as so,
--- CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4));
--- In the exile1 script.
--- ```
--- **Native**: `SET_CAM_INHERIT_ROLL_VEHICLE` (`0x45F1DE9C34B93AE6`)
---@param p1 boolean
---@return fx.Cam self
function Cam:setInheritRollVehicle(p1) end

--- **Native**: `SET_CAM_MOTION_BLUR_STRENGTH` (`0x6F0F77FBA9A8F2E6`)
---@param strength number
---@return fx.Cam self
function Cam:setMotionBlurStrength(strength) end

--- **Native**: `SET_CAM_PARAMS` (`0xBFD8727AEA3CCEBA`)
---@param pos vector3
---@param rot vector3
---@param fieldOfView number
---@param transitionSpeed integer The speed of transition/interpolation to these new values
---@param p9 integer
---@param p10 integer
---@param rotationOrder fx.Enum.RotationOrder|integer The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@return fx.Cam self
function Cam:setParams(pos, rot, fieldOfView, transitionSpeed, p9, p10, rotationOrder) end

--- Sets the rotation of the camera.
--- **Native**: `SET_CAM_ROT` (`0x85973643155D0B07`)
---@param rot vector3 Rotation on
---@param rotationOrder fx.Enum.RotationOrder|integer The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@return fx.Cam self
function Cam:setRot(rot, rotationOrder) end

--- **Native**: `SET_CAM_SHAKE_AMPLITUDE` (`0xD93DB43B82BC0D00`)
---@param amplitude number
---@return fx.Cam self
function Cam:setShakeAmplitude(amplitude) end

--- ```
--- I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.
--- ```
--- **Native**: `SET_CAM_SPLINE_DURATION` (`0x1381539FEE034CDA`)
---@param timeDuration integer
---@return fx.Cam self
function Cam:setSplineDuration(timeDuration) end

--- **Native**: `SET_CAM_SPLINE_NODE_EASE` (`0x83B8201ED82A9A2D`)
---@param p1 integer
---@param p2 integer
---@param p3 number
---@return fx.Cam self
function Cam:setSplineNodeEase(p1, p2, p3) end

--- **Native**: `SET_CAM_SPLINE_NODE_EXTRA_FLAGS` (`0x7BF1A54AE67AC070`)
---@param p1 integer
---@param flags integer
---@return fx.Cam self
function Cam:setSplineNodeExtraFlags(p1, flags) end

--- **Native**: `SET_CAM_SPLINE_NODE_VELOCITY_SCALE` (`0xA6385DEB180F319F`)
---@param p1 integer
---@param scale number
---@return fx.Cam self
function Cam:setSplineNodeVelocityScale(p1, scale) end

--- Sets the smoothing style for a DEFAULT_SPLINE_CAMERA
--- Ranges from 0 to 3 in rockstar scripts although there are actually 26
---
--- ```
--- 0: No lead-in or lead-out smoothing
--- 1: Smooth lead-in
--- 2: Smooth lead-out
--- 3: Both lead-in and lead-out are smoothed
--- 4-6: Longer speed up, lead-in, lead-out, and both in order as above.
--- 6: see above, but missed a node in testing(?)
--- 7: Smoothed lead-in, longer smoothed lead-out
--- 8: Longer lead-in and lead-out than 6, didn't drop node
--- 9: Constant acceleration
--- 10: Constant deceleration. Dropped 2 nodes in testing.
--- 11: Same as 0
--- 12: 10 but slower lead-in, reaches end node less early
--- 13: Extremely close to 3, slightly longer lead-in/lead-out
--- 14: Constant acceleration, dropped last 2 nodes in testing and halted (?)
--- 15: Very similar to 10, did not drop any nodes.
--- 16: Long lead-in, dropped 2 nodes in testing, very long leadout.
--- 17: Constant acceleration, slower speed-up than 9
--- 18: Same as 17 is to 9, slightly longer lead-out, lingers at end node
--- 19: Very long lead in and out
--- 20: Very long, gradual lead-in acceleration at start, gets extremely fast
--- 21: Same as 20 but for constant deceleration
--- 22: 20 and 21 combined, long linger at end node. Dropped 2 nodes in testing
--- 23: Constant acceleration, doesn't complete path before it stops
--- 24: Same as 23 but with constant deceleration, but completes path
--- 25: 23 and 24 combined, insanely fast at middle.
--- 26: No noticable lead-in, misses last 2 nodes in testing
--- 27+: Alternates between 0 and 26
--- ```
---
--- The above is documented and graphed at [Spline Cam Interp Graphs](https://docs.google.com/spreadsheets/d/1ejyiMcEYrhhQOL0mLe8664UN-vU4Oh-SBqQnVcKlFIk/edit?usp=sharing)
---
--- ```
---
--- Using 1-3 will result in misalignment from the passed durations for the spline nodes, the overall duration will remain but other nodes will be shortened if smoothing anything.
---
--- Graph below demonstrates interpolation between 0-1000 and back 10 times.
--- [...]
--- **Native**: `SET_CAM_SPLINE_SMOOTHING_STYLE` (`0xD1B0F412F109EA5D`)
---@param smoothingStyle integer
---@return fx.Cam self
function Cam:setSplineSmoothingStyle(smoothingStyle) end

--- Enables or disables the usage of a shallow DOF. Needs to be set to true to use [`SET_CAM_NEAR_DOF`](#\_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#\_0xEDD91296CD01AEE0), etc. Doesn't need to be called every tick.
---
--- ### Usage Example
---
--- A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897).
--- **Native**: `SET_CAM_USE_SHALLOW_DOF_MODE` (`0x16A96863A17552BB`)
---@param toggle boolean Boolean if the camera should use a shallow depth of field or not
---@return fx.Cam self
function Cam:setUseShallowDofMode(toggle) end

--- ```
--- Possible shake types (updated b617d):
--- DEATH_FAIL_IN_EFFECT_SHAKE
--- DRUNK_SHAKE
--- FAMILY5_DRUG_TRIP_SHAKE
--- HAND_SHAKE
--- JOLT_SHAKE
--- LARGE_EXPLOSION_SHAKE
--- MEDIUM_EXPLOSION_SHAKE
--- SMALL_EXPLOSION_SHAKE
--- ROAD_VIBRATION_SHAKE
--- SKY_DIVING_SHAKE
--- VIBRATE_SHAKE
--- ```
--- **Native**: `SHAKE_CAM` (`0x6A25241C340D3822`)
---@param type_ string
---@param amplitude number
---@return fx.Cam self
function Cam:shake(type_, amplitude) end

--- **Native**: `STOP_CAM_POINTING` (`0xF33AB75780BA57DE`)
---@return fx.Cam self
function Cam:stopPointing() end

--- **Native**: `STOP_CAM_SHAKING` (`0xBDECF64367884AC3`)
---@param p1 boolean
---@return fx.Cam self
function Cam:stopShaking(p1) end

---@class fx.CamStatic
---@overload fun(handle: integer): fx.Cam?
---@field activeViewModeContext fx.Enum.Context (read-only) [GET_CAM_ACTIVE_VIEW_MODE_CONTEXT] Enumerated type defined in camControlHelperMetadataViewModes:
---@field debugCamera? fx.Cam (read-only) [GET_DEBUG_CAMERA]
---@field finalRenderedCoord vector3 (read-only) [GET_FINAL_RENDERED_CAM_COORD]
---@field finalRenderedFarClip number (read-only) [GET_FINAL_RENDERED_CAM_FAR_CLIP]
---@field finalRenderedFarDof number (read-only) [GET_FINAL_RENDERED_CAM_FAR_DOF]
---@field finalRenderedFov number (read-only) [GET_FINAL_RENDERED_CAM_FOV]
---@field finalRenderedMotionBlurStrength number (read-only) [GET_FINAL_RENDERED_CAM_MOTION_BLUR_STRENGTH]
---@field finalRenderedNearClip number (read-only) [GET_FINAL_RENDERED_CAM_NEAR_CLIP]
---@field finalRenderedNearDof number (read-only) [GET_FINAL_RENDERED_CAM_NEAR_DOF]
---@field firstPersonAimZoomFactor number [GET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR / SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR]
---@field followPedViewMode fx.Enum.CamViewMode [GET_FOLLOW_PED_CAM_VIEW_MODE / SET_FOLLOW_PED_CAM_VIEW_MODE]
---@field followPedZoomLevel integer (read-only) [GET_FOLLOW_PED_CAM_ZOOM_LEVEL] See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
---@field followVehicleViewMode integer [GET_FOLLOW_VEHICLE_CAM_VIEW_MODE / SET_FOLLOW_VEHICLE_CAM_VIEW_MODE] See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
---@field followVehicleZoomLevel integer [GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL / SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL] See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
---@field gameplayCoord vector3 (read-only) [GET_GAMEPLAY_CAM_COORD]
---@field gameplayFov number (read-only) [GET_GAMEPLAY_CAM_FOV]
---@field gameplayRelativeHeading number [GET_GAMEPLAY_CAM_RELATIVE_HEADING / SET_GAMEPLAY_CAM_RELATIVE_HEADING]
---@field gameplayRelativePitch number (read-only) [GET_GAMEPLAY_CAM_RELATIVE_PITCH]
---@field isAimActive boolean (read-only) [IS_AIM_CAM_ACTIVE]
---@field isAimThirdPersonActive boolean (read-only) [IS_AIM_CAM_THIRD_PERSON_ACTIVE]
---@field isBonnetCinematicRendering boolean (read-only) [IS_BONNET_CINEMATIC_CAM_RENDERING]
---@field isCinematicIdleRendering boolean (read-only) [IS_CINEMATIC_IDLE_CAM_RENDERING]
---@field isCinematicInputActive boolean (read-only) [IS_CINEMATIC_CAM_INPUT_ACTIVE]
---@field isCinematicRendering boolean (read-only) [IS_CINEMATIC_CAM_RENDERING]
---@field isCinematicShaking boolean (read-only) [IS_CINEMATIC_CAM_SHAKING]
---@field isFirstPersonAimActive boolean (read-only) [IS_FIRST_PERSON_AIM_CAM_ACTIVE]
---@field isFollowPedActive boolean (read-only) [IS_FOLLOW_PED_CAM_ACTIVE]
---@field isFollowVehicleActive boolean (read-only) [IS_FOLLOW_VEHICLE_CAM_ACTIVE]
---@field isGameplayHintActive boolean (read-only) [IS_GAMEPLAY_HINT_ACTIVE]
---@field isGameplayLookingBehind boolean (read-only) [IS_GAMEPLAY_CAM_LOOKING_BEHIND]
---@field isGameplayRendering boolean (read-only) [IS_GAMEPLAY_CAM_RENDERING]
---@field isGameplayShaking boolean (read-only) [IS_GAMEPLAY_CAM_SHAKING]
---@field isInVehicleDisabled boolean (read-only) [IS_IN_VEHICLE_CAM_DISABLED]
---@field isScreenFadedIn boolean (read-only) [IS_SCREEN_FADED_IN]
---@field isScreenFadedOut boolean (read-only) [IS_SCREEN_FADED_OUT]
---@field isScreenFadingIn boolean (read-only) [IS_SCREEN_FADING_IN]
---@field isScreenFadingOut boolean (read-only) [IS_SCREEN_FADING_OUT]
---@field isScriptGlobalShaking boolean (read-only) [IS_SCRIPT_GLOBAL_SHAKING] Determines if a global camera shake is currently active. You can stop the currently active global camera shake using [STOP_SCRIPT_GLOBAL_SHAKING](#\_0x1C9D7949…
---@field rendering? fx.Cam (read-only) [GET_RENDERING_CAM]
local CamStatic = {}

---Creates a scripted camera (CREATE_CAM_WITH_PARAMS) and, unless `render = false`, renders it.
---@param options fx.CamCreateOptions
---@return fx.Cam?
function CamStatic.create(options) end

---Fades the screen to black (DO_SCREEN_FADE_OUT) and resolves once it is black. Never yields.
---```lua
---fx.Cam.fadeOutAsync(500):await()
---ped.position = destination
---fx.Cam.fadeInAsync(500)
---```
---@param duration? integer Milliseconds, default 500
---@return fx.Promise
function CamStatic.fadeOutAsync(duration) end

---Fades the screen back in (DO_SCREEN_FADE_IN) and resolves once it is fully visible. Never yields.
---@param duration? integer Milliseconds, default 500
---@return fx.Promise
function CamStatic.fadeInAsync(duration) end

--- True when value is an fx.Cam, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function CamStatic.is(value) end

--- ```
--- CAM::ANIMATED_SHAKE_SCRIPT_GLOBAL("SHAKE_CAM_medium", "medium", "", 0.5f);
--- ```
--- **Native**: `ANIMATED_SHAKE_SCRIPT_GLOBAL` (`0xC2EAE3FB8CDBED31`)
---@param p0 string
---@param p1 string
---@param p2 string
---@param p3 number
function CamStatic.animatedShakeScriptGlobal(p0, p1, p2, p3) end

--- ```
--- Seems to animate the gameplay camera zoom.
--- Eg. _ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1000f);
--- will animate the camera zooming in from 1000 meters away.
--- Game scripts use it like this:
--- // Setting this to 1 prevents V key from changing zoom
--- PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);
--- // These restrict how far you can move cam up/down left/right
--- CAM::_CLAMP_GAMEPLAY_CAM_YAW(-20f, 50f);
--- CAM::_CLAMP_GAMEPLAY_CAM_PITCH(-60f, 0f);
--- CAM::_ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1f);
--- ```
--- **Native**: `ANIMATE_GAMEPLAY_CAM_ZOOM` (`0xDF2E1F7742402E81`)
---@param p0 number
---@param distance number
function CamStatic.animateGameplayZoom(p0, distance) end

--- ```
--- minimum: Degrees between -90f and 90f.
--- maximum: Degrees between -90f and 90f.
--- Clamps the gameplay camera's current pitch.
--- Eg. _CLAMP_GAMEPLAY_CAM_PITCH(0.0f, 0.0f) will set the vertical angle directly behind the player.
--- ```
--- **Native**: `CLAMP_GAMEPLAY_CAM_PITCH` (`0xA516C198B7DCA1E1`)
---@param minimum number
---@param maximum number
function CamStatic.clampGameplayPitch(minimum, maximum) end

--- ```
--- minimum: Degrees between -180f and 180f.
--- maximum: Degrees between -180f and 180f.
--- Clamps the gameplay camera's current yaw.
--- Eg. _CLAMP_GAMEPLAY_CAM_YAW(0.0f, 0.0f) will set the horizontal angle directly behind the player.
--- ```
--- **Native**: `CLAMP_GAMEPLAY_CAM_YAW` (`0x8F993D26E0CA5E8E`)
---@param minimum number
---@param maximum number
function CamStatic.clampGameplayYaw(minimum, maximum) end

--- Creates a camera with the specified camera hash, You can use `SET_CAM_` natives to manipulate the camera.
--- Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
---
--- Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `CREATE_CAMERA` (`0x5E3CF89C6BCCA67D`)
---@param camHash integer|string The hash of the camera type, use [GET_HASH_KEY](#\_0xD24D37CC275948CC) to get the camera hash from the name.
---@param active boolean Set to true if you wish to make this new camera the active camera.
---@return fx.Cam? result A camera referencing the camera that was created.
function CamStatic.createCamera(camHash, active) end

--- Create a camera with the specified camera hash, You can use `SET_CAM_` natives to manipulate the camera.
--- Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
---
--- Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `CREATE_CAMERA_WITH_PARAMS` (`0x6ABFA3E16460F22D`)
---@param camHash integer|string The hash of the camera type, use [GET_HASH_KEY](#\_0xD24D37CC275948CC) to get the camera hash from the name.
---@param pos vector3 The position of the camera.
---@param rot vector3 The rotation of the camera.
---@param fov number The Field Of View of the camera, is the observable world that is seen.
---@param active boolean Set to true if you wish to make this new camera the active camera.
---@param rotationOrder fx.Enum.RotationOrder|integer The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9).
---@return fx.Cam? result A camera.
function CamStatic.createCameraWithParams(camHash, pos, rot, fov, active, rotationOrder) end

--- **Native**: `CREATE_CINEMATIC_SHOT` (`0x741B0129D4560F31`)
---@param p0 any
---@param p1 integer
---@param p2 any
---@param entity fx.Entity|integer
function CamStatic.createCinematicShot(p0, p1, p2, entity) end

--- Creates a camera with the specified cam name, You can use `SET_CAM_` natives to manipulate the camera.\
--- Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
---
--- ### Camera names:
---
--- *   DEFAULT_SCRIPTED_CAMERA
--- *   DEFAULT_ANIMATED_CAMERA
--- *   DEFAULT_SPLINE_CAMERA
--- *   DEFAULT_SCRIPTED_FLY_CAMERA
--- *   TIMED_SPLINE_CAMERA
--- *   CUSTOM_TIMED_SPLINE_CAMERA
--- *   ROUNDED_SPLINE_CAMERA
--- *   SMOOTHED_SPLINE_CAMERA
--- **Native**: `CREATE_CAM` (`0xC3981DCE61D9E13F`)
---@param camName string A string representing the camera type, the game will convert the string into a joaat hash upon native execution.
---@param active boolean Set to true if you wish to make this new camera the active camera.
---@return fx.Cam? result A camera referencing the camera that was created.
function CamStatic.createNative(camName, active) end

--- Create a camera with the specified cam name/type, You can use `SET_CAM_` natives to manipulate the camera.
---
--- Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
--- **Native**: `CREATE_CAM_WITH_PARAMS` (`0xB51194800B257161`)
---@param camName string A string representing the camera type, the game will convert the string into a joaat hash upon native execution.
---@param pos vector3 The position of the camera (you can also send a vector3 instead of the bulk coordinates)
---@param rot vector3 The rotation of the camera
---@param fov number The Field Of View of the camera, is the observable world that is seen
---@param active boolean Set to true if you wish to make this new camera the active camera.
---@param rotationOrder fx.Enum.RotationOrder|integer The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@return fx.Cam? result A camera.
function CamStatic.createWithParams(camName, pos, rot, fov, active, rotationOrder) end

--- ```
--- some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.
--- ```
--- **Native**: `CUSTOM_MENU_COORDINATES` (`0x487A82C650EB7799`)
---@param p0 number
function CamStatic.customMenuCoordinates(p0) end

--- ```
--- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.
--- ```
--- **Native**: `DESTROY_ALL_CAMS` (`0x8E5FB15663F79120`)
---@param bScriptHostCam boolean
function CamStatic.destroyAllCams(bScriptHostCam) end

--- **Native**: `DISABLE_AIM_CAM_THIS_UPDATE` (`0x1A31FE0049E542F6`)
function CamStatic.disableAimThisUpdate() end

--- ```
--- Disables first person camera for the current frame.
--- Found in decompiled scripts:
--- GRAPHICS::DRAW_DEBUG_TEXT_2D("Disabling First Person Cam", 0.5, 0.8, 0.0, 0, 0, 255, 255);
--- CAM::_DE2EF5DA284CC8DF();
--- ```
--- **Native**: `DISABLE_FIRST_PERSON_CAM_THIS_FRAME` (`0xDE2EF5DA284CC8DF`)
function CamStatic.disableFirstPersonThisFrame() end

--- **Native**: `DISABLE_VEHICLE_FIRST_PERSON_CAM_THIS_FRAME` (`0xADFF1B2A555F5FBA`)
function CamStatic.disableVehicleFirstPersonThisFrame() end

--- ```
--- Fades the screen in.
--- duration: The time the fade should take, in milliseconds.
--- ```
--- **Native**: `DO_SCREEN_FADE_IN` (`0xD4E8E24955024033`)
---@param duration integer
function CamStatic.doScreenFadeIn(duration) end

--- ```
--- Fades the screen out.
--- duration: The time the fade should take, in milliseconds.
--- ```
--- **Native**: `DO_SCREEN_FADE_OUT` (`0x891B5B39AC6302AF`)
---@param duration integer
function CamStatic.doScreenFadeOut(duration) end

--- ```
--- Shows the crosshair even if it wouldn't show normally. Only works for one frame, so make sure to call it repeatedly.
--- ```
--- **Native**: `ENABLE_CROSSHAIR_THIS_FRAME` (`0xEA7F0AD7E9BA676F`)
function CamStatic.enableCrosshairThisFrame() end

--- **Native**: `FORCE_CINEMATIC_RENDERING_THIS_UPDATE` (`0xA41BCD7213805AAC`)
---@param p0 boolean
function CamStatic.forceCinematicRenderingThisUpdate(p0) end

--- **Native**: `GET_FINAL_RENDERED_CAM_ROT` (`0x5B4E4C817FCC2DFB`)
---@param rotationOrder fx.Enum.RotationOrder|integer
---@return vector3 result
function CamStatic.getFinalRenderedRot(rotationOrder) end

--- This function takes a rotation order and outputs a `Vector3` in degrees.
---
--- It first calls a game function to calculate these values given the rotation order and effectively multiplies those values by `180/PI`, hence degrees since the function it calls outputs radians which are then converted to degrees.
--- **Native**: `GET_GAMEPLAY_CAM_ROT` (`0x837765A25378F0BB`)
---@param rotationOrder fx.Enum.RotationOrder|integer The order of rotation, see [`GET_ENTITY_ROTATION`](#\_0xAFBD61CC738D9EB9)
---@return vector3 result A `Vector3` representing the gameplay camera rotation in degrees.
function CamStatic.getGameplayRot(rotationOrder) end

--- See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the view mode enum.
--- **Native**: `GET_CAM_VIEW_MODE_FOR_CONTEXT` (`0xEE778F8C7E1142E2`)
---@param context integer See [`_GET_CAM_ACTIVE_VIEW_MODE_CONTEXT`](#\_0x19CAFA3C87F7C2FF).
---@return integer result
function CamStatic.getViewModeForContext(context) end

--- Resets the idle camera timer. Calling that in a loop once every few seconds is enough to disable the idle cinematic camera.
--- **Native**: `INVALIDATE_IDLE_CAM` (`0xF4F2C0D4EE209E20`)
function CamStatic.invalidateIdle() end

--- Resets the vehicle idle camera timer. Calling this in a loop will disable the idle camera.
--- **Native**: `INVALIDATE_VEHICLE_IDLE_CAM` (`0x9E4CFFF989258472`)
function CamStatic.invalidateVehicleIdle() end

--- **Native**: `IS_CINEMATIC_SHOT_ACTIVE` (`0xCC9F3371A7C28BC9`)
---@param p0 any
---@return boolean result
function CamStatic.isCinematicShotActive(p0) end

--- **Native**: `IS_SPHERE_VISIBLE` (`0xE33D59DA70B58FDF`)
---@param coords vector3
---@param radius number
---@return boolean result
function CamStatic.isSphereVisible(coords, radius) end

--- **Native**: `IS_CAM_SPLINE_PAUSED` (`0x0290F35C0AD97864`)
---@param p0 any
---@return boolean result
function CamStatic.isSplinePaused(p0) end

--- Renders the camera previously created with [CREATE_CAM](#\_0xC3981DCE61D9E13F) or [CREATE_CAMERA](#\_0x5E3CF89C6BCCA67D)
---
--- ```
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `RENDER_SCRIPT_CAMS` (`0x07E5B515DB0636FC`)
---@param render boolean Whether to render the cams or not.
---@param ease boolean If true it will make a smooth transition between the current camera and the new rendered camera.
---@param easeTime integer The in milliseconds for the transition to happen.
---@param easeCoordsAnim boolean If false it will only do the smooth transition to the rotation and the coords will be set instantly.
---@param p4 boolean Doesn't seem to change anything.
function CamStatic.renderScriptCams(render, ease, easeTime, easeCoordsAnim, p4) end

--- **Native**: `REPLAY_FREE_CAM_GET_MAX_RANGE` (`0x8BFCEB5EA1B161B6`)
---@return number result
function CamStatic.replayFreeGetMaxRange() end

--- **Native**: `SET_CINEMATIC_BUTTON_ACTIVE` (`0x51669F7D1FB53D9F`)
---@param p0 boolean
function CamStatic.setCinematicButtonActive(p0) end

--- ```
--- Toggles the vehicle cinematic cam; requires the player ped to be in a vehicle to work.
--- ```
--- **Native**: `SET_CINEMATIC_MODE_ACTIVE` (`0xDCF0754AC3D6FD4E`)
---@param toggle boolean
function CamStatic.setCinematicModeActive(toggle) end

--- **Native**: `SET_CINEMATIC_NEWS_CHANNEL_ACTIVE_THIS_UPDATE` (`0xDC9DA9E8789F5246`)
function CamStatic.setCinematicNewsChannelActiveThisUpdate() end

--- **Native**: `SET_CINEMATIC_CAM_SHAKE_AMPLITUDE` (`0xC724C701C30B2FE7`)
---@param p0 number
function CamStatic.setCinematicShakeAmplitude(p0) end

--- ```
--- if p0 is 0, effect is cancelled
--- if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.
--- if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.
--- ```
--- **Native**: `SET_CAM_EFFECT` (`0x80C8B1846639BB19`)
---@param p0 integer
function CamStatic.setEffect(p0) end

--- **Native**: `SET_FIRST_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE` (`0x0AF7B437918103B3`)
---@param distance number
function CamStatic.setFirstPersonAimNearClipThisUpdate(distance) end

--- **Native**: `SET_FIRST_PERSON_CAM_PITCH_RANGE` (`0xBCFC632DB7673BF0`)
---@param minAngle number
---@param maxAngle number
function CamStatic.setFirstPersonPitchRange(minAngle, maxAngle) end

--- Overrides the ped follow camera (not first person camera) with the specified camera. The game loads all camera metadata from `update/update.rpf/x64/data/metadata/cameras.ymt` and `x64a.rpf/data/metadata/cameras.ymt` with the ped follow cameras being of type `camFollowPedCameraMetadata`.
---
--- | Follow Camera Names                          |
--- |----------------------------------------------|
--- | DEFAULT_FOLLOW_PED_CAMERA                    |
--- | FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA           |
--- | FOLLOW_PED_ON_EXILE1\_LADDER_CAMERA           |
--- | FOLLOW_PED_SKY_DIVING_CAMERA                 |
--- | FOLLOW_PED_SKY_DIVING_FAMILY5\_CAMERA         |
--- | NIGHTCLUB_FOLLOW_PED_CAMERA                  |
--- | FOLLOW_PED_INTIMIDATION_CAMERA               |
--- | FOLLOW_PED_IN_WATER_CAMERA                   |
--- | FOLLOW_PED_PRONE_CAMERA                      |
--- | FOLLOW_PED_ON_SEAT_CAMERA                    |
--- | FOLLOW_PED_HANGING_UPSIDE_DOWN_CAMERA        |
--- | FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA           |
--- | CUSTOM_TRANSITION_AFTER_WARP_SKY_DIVE_CAMERA |
--- | FOLLOW_PED_ON_HORSE_CAMERA                   |
--- | FOLLOW_PED_ON_LOUNGER_CAMERA                 |
---
--- Other camera hashes (names not found yet)
---
--- ```cpp
--- // 0x5DBBFB6E
--- // 0xA38DB056
--- // 0x16B702A3
--- // 0x41D72A2E
--- ```
--- **Native**: `SET_FOLLOW_PED_CAM_THIS_UPDATE` (`0x44A113DD6FFC48D1`)
---@param camName string The name of the camera to use this update
---@param easeTime integer The time in milliseconds to ease in the camera
---@return boolean result Return `true` if the camera is set successfully and `false` otherwise.
function CamStatic.setFollowPedThisUpdate(camName, easeTime) end

--- ```
--- NativeDB Introduced: v1365
--- ```
--- **Native**: `SET_FOLLOW_TURRET_SEAT_CAM` (`0x5C90CAB09951A12F`)
---@param seatIndex integer See [IS_TURRET_SEAT](#\_0xE33FFA906CE74880)
function CamStatic.setFollowTurretSeat(seatIndex) end

--- **Native**: `SET_GAMEPLAY_COORD_HINT` (`0xD51ADCD2D8BC0FB3`)
---@param coords vector3
---@param duration integer
---@param blendOutDuration integer
---@param blendInDuration integer
---@param unk integer
function CamStatic.setGameplayCoordHint(coords, duration, blendOutDuration, blendInDuration, unk) end

--- ```
--- Sets gameplay camera to hash
--- ```
---
--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `SET_GAMEPLAY_CAM_HASH` (`0x425A920FDB9A0DDA`)
---@param camName string
function CamStatic.setGameplayHash(camName) end

--- **Native**: `SET_GAMEPLAY_HINT_ANIM_CLOSEUP` (`0xE3433EADAAF7EE40`)
---@param toggle boolean
function CamStatic.setGameplayHintAnimCloseup(toggle) end

--- **Native**: `SET_GAMEPLAY_HINT_ANIM_OFFSETX` (`0x5D7B620DAE436138`)
---@param xOffset number
function CamStatic.setGameplayHintAnimOffsetx(xOffset) end

--- **Native**: `SET_GAMEPLAY_HINT_ANIM_OFFSETY` (`0xC92717EF615B6704`)
---@param yOffset number
function CamStatic.setGameplayHintAnimOffsety(yOffset) end

--- **Native**: `SET_GAMEPLAY_HINT_BASE_ORBIT_PITCH_OFFSET` (`0xD1F8363DFAD03848`)
---@param value number
function CamStatic.setGameplayHintBaseOrbitPitchOffset(value) end

--- **Native**: `SET_GAMEPLAY_HINT_FOLLOW_DISTANCE_SCALAR` (`0xF8BDBF3D573049A1`)
---@param value number
function CamStatic.setGameplayHintFollowDistanceScalar(value) end

--- **Native**: `SET_GAMEPLAY_HINT_FOV` (`0x513403FB9C56211F`)
---@param FOV number
function CamStatic.setGameplayHintFov(FOV) end

--- **Native**: `SET_GAMEPLAY_OBJECT_HINT` (`0x83E87508A2CA2AC6`)
---@param p0 any
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 boolean
---@param p5 any
---@param p6 any
---@param p7 any
function CamStatic.setGameplayObjectHint(p0, p1, p2, p3, p4, p5, p6, p7) end

--- **Native**: `SET_GAMEPLAY_CAM_RAW_PITCH` (`0x759E13EBC1C15C5A`)
---@param pitch number
function CamStatic.setGameplayRawPitch(pitch) end

--- ```
--- Does nothing
--- ```
---
--- ```
--- NativeDB Added Parameter 2: Any p1
--- ```
--- **Native**: `SET_GAMEPLAY_CAM_RAW_YAW` (`0x103991D4A307D472`)
---@param yaw number
function CamStatic.setGameplayRawYaw(yaw) end

--- This native sets the camera's pitch (rotation on the x-axis).
--- **Native**: `SET_GAMEPLAY_CAM_RELATIVE_PITCH` (`0x6D0858B8EDFD2B7D`)
---@param angle number the angle to rotate the camera by
---@param scalingFactor number always seems to be set to 1.0 in native calls
function CamStatic.setGameplayRelativePitch(angle, scalingFactor) end

--- **Native**: `SET_GAMEPLAY_CAM_RELATIVE_ROTATION` (`0x48608C3464F58AB4`)
---@param roll number
---@param pitch number
---@param yaw number
function CamStatic.setGameplayRelativeRotation(roll, pitch, yaw) end

--- ```
--- Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.
--- ```
--- **Native**: `SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE` (`0xA87E00932DB4D85D`)
---@param amplitude number
function CamStatic.setGameplayShakeAmplitude(amplitude) end

--- ```
--- From b617 scripts:
--- CAM::_21E253A7F8DA5DFB("DINGHY");
--- CAM::_21E253A7F8DA5DFB("ISSI2");
--- CAM::_21E253A7F8DA5DFB("SPEEDO");
--- ```
--- **Native**: `SET_GAMEPLAY_CAM_VEHICLE_CAMERA` (`0x21E253A7F8DA5DFB`)
---@param vehicleName string
function CamStatic.setGameplayVehicleCamera(vehicleName) end

--- Override the camera work of the third-person camera to table game for current frame only.
---
--- |                  HashKey                    |       Hash        |    Game         |
--- | :---------------------------------: | :-----------:| :-------------:  |
--- | `CASINO_LUCKY_WHEEL_CAMERA` |   `5891389`   |  Lucky Wheel    |
--- | `CASINO_SLOT_MACHINE_CAMERA` |  `518572876`  |     Slots       |
--- | `CASINO_ROULETTE_CAMERA` |   `71681063`  |    Roulette     |
--- | `CASINO_BLACKJACK_CAMERA` | `-2124244681` |    Blackjack    |
--- | `CASINO_POKER_CAMERA` | `-1938411241` |   Three Cards   |
--- | `CASINO_INSIDE_TRACK_CAMERA` | `1929822423` |   Inside Track    |
--- | `ARCADE_LOVE_PROFESSOR_P1_CAMERA` | `545868034` |   LoveProfessorP1   |
--- | `ARCADE_LOVE_PROFESSOR_P2_CAMERA` | `935304251` |   LoveProfessorP2   |
--- **Native**: `SET_TABLE_GAMES_CAMERA_THIS_UPDATE` (`0x79C0E43EB9B944E2`)
---@param hash integer|string Hash for table game
---@return boolean result Returns a boolean value indicating if the camera settings were successfully overriden for this current frame.
function CamStatic.setTableGamesCameraThisUpdate(hash) end

--- **Native**: `SET_THIRD_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE` (`0x42156508606DE65E`)
---@param distance number
function CamStatic.setThirdPersonAimNearClipThisUpdate(distance) end

--- Needs to be called every tick to make the active camera use a high depth of field.\
--- The DoF can be customized using [`SET_CAM_NEAR_DOF`](#\_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#\_0xEDD91296CD01AEE0), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#\_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897) and other DoF related natives.
---
--- ### Usage Example
---
--- A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897).
--- **Native**: `SET_USE_HI_DOF` (`0xA13B0222F3D94A94`)
function CamStatic.setUseHiDof() end

--- ```
--- Only used in R* Script fm_mission_controller_2020
--- ```
---
--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `SET_USE_HI_DOF_IN_CUTSCENE` (`0x731A880555DA3647`)
function CamStatic.setUseHiDofInCutscene() end

--- **Native**: `SET_CAM_VIEW_MODE_FOR_CONTEXT` (`0x2A2173E46DAECD12`)
---@param context integer The view context; see [`_GET_CAM_ACTIVE_VIEW_MODE_CONTEXT`](#\_0x19CAFA3C87F7C2FF).
---@param viewMode integer The view mode; see [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A).
function CamStatic.setViewModeForContext(context, viewMode) end

--- **Native**: `SET_WIDESCREEN_BORDERS` (`0xDCD4EA924F42D01A`)
---@param p0 boolean
---@param p1 integer
function CamStatic.setWidescreenBorders(p0, p1) end

--- ```
--- p0 argument found in the b617d scripts: "DRUNK_SHAKE"
--- ```
--- **Native**: `SHAKE_CINEMATIC_CAM` (`0xDCE214D9ED58F3CF`)
---@param p0 string
---@param p1 number
function CamStatic.shakeCinematic(p0, p1) end

--- ```
--- Possible shake types (updated b617d):
--- DEATH_FAIL_IN_EFFECT_SHAKE
--- DRUNK_SHAKE
--- FAMILY5_DRUG_TRIP_SHAKE
--- HAND_SHAKE
--- JOLT_SHAKE
--- LARGE_EXPLOSION_SHAKE
--- MEDIUM_EXPLOSION_SHAKE
--- SMALL_EXPLOSION_SHAKE
--- ROAD_VIBRATION_SHAKE
--- SKY_DIVING_SHAKE
--- VIBRATE_SHAKE
--- ```
--- **Native**: `SHAKE_GAMEPLAY_CAM` (`0xFD55E49555E017CF`)
---@param shakeName string
---@param intensity number
function CamStatic.shakeGameplay(shakeName, intensity) end

--- ```
--- CAM::SHAKE_SCRIPT_GLOBAL("HAND_SHAKE", 0.2);
--- ```
--- **Native**: `SHAKE_SCRIPT_GLOBAL` (`0xF4C8CF9E353AFECA`)
---@param p0 string
---@param p1 number
function CamStatic.shakeScriptGlobal(p0, p1) end

--- **Native**: `STOP_CINEMATIC_CAM_SHAKING` (`0x2238E588E588A6D7`)
---@param p0 boolean
function CamStatic.stopCinematicShaking(p0) end

--- **Native**: `STOP_CINEMATIC_SHOT` (`0x7660C6E75D3A078E`)
---@param p0 integer|string
function CamStatic.stopCinematicShot(p0) end

--- **Native**: `STOP_CUTSCENE_CAM_SHAKING` (`0xDB629FFD9285FA06`)
function CamStatic.stopCutsceneShaking() end

--- Terminates the current gameplay hint camera, with an option for immediate cessation or a gradual fade out.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `STOP_GAMEPLAY_HINT` (`0xF46C581C61718916`)
---@param bStopImmediately boolean Specifies whether the gameplay hint camera should stop instantly `true` or gradually transition out `false`.
function CamStatic.stopGameplayHint(bStopImmediately) end

--- **Native**: `STOP_GAMEPLAY_CAM_SHAKING` (`0x0EF93E9F3D08C178`)
---@param bStopImmediately boolean Should the shake stop this frame.
function CamStatic.stopGameplayShaking(bStopImmediately) end

--- Instructs the game engine to stop rendering scripted cameras and transition back to the gameplay camera, optionally applying custom blending and rendering options.
---
--- ```cpp
--- enum eRenderingOptionFlags {
---     RO_NO_OPTIONS = 0,
---     RO_STOP_RENDERING_OPTION_WHEN_PLAYER_EXITS_INTO_COVER = 1
--- };
--- ```
---
--- ```cpp
--- enum eCamSplineSmoothingFlags {
--- 	// No smoothing just moves at a constant rate
--- 	CAM_SPLINE_NO_SMOOTH = 0,
--- 	// Decelerates when approaching a node
--- 	CAM_SPLINE_SLOW_IN_SMOOTH = 1,
--- 	// Accelerates slowly when leaving a node
--- 	CAM_SPLINE_SLOW_OUT_SMOOTH = 2,
--- 	// Decelerates when approaching a node and accelerates slowly when leaving a node
--- 	CAM_SPLINE_SLOW_IN_OUT_SMOOTH = 3,
--- 	CAM_SPLINE_VERY_SLOW_IN = 4,
--- 	CAM_SPLINE_VERY_SLOW_OUT = 5,
--- 	CAM_SPLINE_VERY_SLOW_IN_SLOW_OUT = 6,
--- 	CAM_SPLINE_SLOW_IN_VERY_SLOW_OUT = 7,
--- 	CAM_SPLINE_VERY_SLOW_IN_VERY_SLOW_OUT = 8,
--- 	CAM_SPLINE_EASE_IN = 9,
--- 	CAM_SPLINE_EASE_OUT = 10,
--- 	CAM_SPLINE_QUADRATIC_EASE_IN = 11,
--- 	CAM_SPLINE_QUADRATIC_EASE_OUT = 12,
--- 	CAM_SPLINE_QUADRATIC_EASE_IN_OUT = 13,
--- 	CAM_SPLINE_CUBIC_EASE_IN = 14,
--- 	CAM_SPLINE_CUBIC_EASE_OUT = 15,
--- 	CAM_SPLINE_CUBIC_EASE_IN_OUT = 16,
--- 	CAM_SPLINE_QUARTIC_EASE_IN = 17,
--- 	CAM_SPLINE_QUARTIC_EASE_OUT = 18,
--- 	CAM_SPLINE_QUARTIC_EASE_IN_OUT = 19,
--- 	CAM_SPLINE_QUINTIC_EASE_IN = 20,
--- 	CAM_SPLINE_QUINTIC_EASE_OUT = 21,
--- 	CAM_SPLINE_QUINTIC_EASE_IN_OUT = 22,
--- 	CAM_SPLINE_CIRCULAR_EASE_IN = 23,
--- 	CAM_SPLINE_CIRCULAR_EASE_OUT = 24,
--- [...]
--- **Native**: `STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP` (`0xC819F3CBB62BF692`)
---@param bShouldApplyAcrossAllThreads boolean If `true`, ensures that the rendering stop request is enforced regardless of other script threads that might still expect rendering to be active. Use with caution to avoid conflicts.
---@param distanceToBlend number Specifies the distance over which the camera should blend from the scripted camera back to the gameplay camera. A value of `0.0` uses the game's default blending distance.
---@param blendType fx.Enum.CamSplineSmoothingFlags|integer An integer representing `eCamSplineSmoothingFlags` to determine the smoothness of the camera transition. Common values include `CAM_SPLINE_SLOW_IN_OUT_SMOOTH` among others, defining the easing of the…
function CamStatic.stopRenderingScriptCamsUsingCatchUp(bShouldApplyAcrossAllThreads, distanceToBlend, blendType) end

--- Stops the currently active global camera shake that was initiated by a script. You can check if a global camera shake is active using [IS_SCRIPT_GLOBAL_SHAKING](#\_0xC912AF078AF19212).
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `STOP_SCRIPT_GLOBAL_SHAKING` (`0x1C9D7949FA533490`)
---@param bStopImmediately boolean A boolean indicating whether the camera shake should stop instantly (TRUE) or gradually fade out (FALSE).
function CamStatic.stopScriptGlobalShaking(bStopImmediately) end

--- Sets the ambient ped & vehicle population spawning origin to be based around the active scripted camera for this frame
--- This will prevent vehicles from being created close to the camera and/or on-screen
--- **Native**: `USE_SCRIPT_CAM_FOR_AMBIENT_POPULATION_ORIGIN_THIS_FRAME` (`0x271401846BD26E92`)
---@param vehicles boolean
---@param peds boolean
function CamStatic.useScriptForAmbientPopulationOriginThisFrame(vehicles, peds) end

--- Applies a predefined set of vehicle camera settings optimized for capturing stunts, effective for the current game update/frame.
---
--- ```
--- NativeDB Introduced: v791
--- ```
--- **Native**: `USE_VEHICLE_CAM_STUNT_SETTINGS_THIS_UPDATE` (`0x6493CF69859B116A`)
function CamStatic.useVehicleStuntSettingsThisUpdate() end

