---@meta
---@diagnostic disable
-- fx.Graphics (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.MarkerOptions
---@field coords vector3
---@field type? integer Default 0
---@field dir? vector3
---@field rot? vector3
---@field scale? vector3 Default 2.0, 2.0, 1.0
---@field color? integer[]|{r: integer, g: integer, b: integer, a?: integer} Default 255, 100, 0, 100
---@field bob? boolean
---@field faceCamera? boolean
---@field rotate? boolean
---@field textureDict? string
---@field textureName? string
---@field drawOnEntities? boolean
---@class fx.Graphics
---@field currentNumberOfCloudPhotos integer (read-only) [GET_CURRENT_NUMBER_OF_CLOUD_PHOTOS]
---@field extraTimecycleModifierIndex integer (read-only) [GET_EXTRA_TIMECYCLE_MODIFIER_INDEX] See [`GET_TIMECYCLE_MODIFIER_INDEX`](#\_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
---@field isHidef boolean (read-only) [GET_IS_HIDEF] This native indicates whether the game is running in high-definition (HD) resolution. It returns `false` if the resolution is less than `1280x720` and `true` i…
---@field isScreenblurFadeRunning boolean (read-only) [IS_SCREENBLUR_FADE_RUNNING]
---@field isWidescreen boolean (read-only) [GET_IS_WIDESCREEN] This native retrieves whether the game is running in widescreen mode or not.
---@field maximumNumberOfCloudPhotos integer (read-only) [GET_MAXIMUM_NUMBER_OF_CLOUD_PHOTOS]
---@field maximumNumberOfPhotos integer (read-only) [GET_MAXIMUM_NUMBER_OF_PHOTOS]
---@field requestingnightvision boolean (read-only) [GET_REQUESTINGNIGHTVISION]
---@field safeZoneSize number (read-only) [GET_SAFE_ZONE_SIZE]
---@field screenblurFadeCurrentTime number (read-only) [GET_SCREENBLUR_FADE_CURRENT_TIME]
---@field statusOfSaveHighQualityPhoto integer (read-only) [GET_STATUS_OF_SAVE_HIGH_QUALITY_PHOTO]
---@field statusOfTakeHighQualityPhoto integer (read-only) [GET_STATUS_OF_TAKE_HIGH_QUALITY_PHOTO]
---@field statusOfTakeMissionCreatorPhoto integer (read-only) [GET_STATUS_OF_TAKE_MISSION_CREATOR_PHOTO]
---@field timecycleModifierIndex integer (read-only) [GET_TIMECYCLE_MODIFIER_INDEX]
---@field timecycleTransitionModifierIndex integer (read-only) [GET_TIMECYCLE_TRANSITION_MODIFIER_INDEX]
---@field togglePausedRenderphasesStatus boolean (read-only) [GET_TOGGLE_PAUSED_RENDERPHASES_STATUS]
---@field tvChannel integer [GET_TV_CHANNEL / SET_TV_CHANNEL]
---@field tvVolume number [GET_TV_VOLUME / SET_TV_VOLUME]
---@field usingnightvision boolean (read-only) [GET_USINGNIGHTVISION]
---@field usingseethrough boolean (read-only) [GET_USINGSEETHROUGH]
local GraphicsStatic = {}

---DRAW_MARKER with defaults (all 24 arguments). Call EVERY FRAME.
---@param options fx.MarkerOptions
function GraphicsStatic.marker(options) end

--- Places a decal into the world
---
--- ```cs
--- public enum DecalTypes
--- {
---     splatters_blood = 1010,
---     splatters_blood_dir = 1015,
---     splatters_blood_mist = 1017,
---     splatters_mud = 1020,
---     splatters_paint = 1030,
---     splatters_water = 1040,
---     splatters_water_hydrant = 1050,
---     splatters_blood2 = 1110,
---     weapImpact_metal = 4010,
---     weapImpact_concrete = 4020,
---     weapImpact_mattress = 4030,
---     weapImpact_mud = 4032,
---     weapImpact_wood = 4050,
---     weapImpact_sand = 4053,
---     weapImpact_cardboard = 4040,
---     weapImpact_melee_glass = 4100,
---     weapImpact_glass_blood = 4102,
---     weapImpact_glass_blood2 = 4104,
---     weapImpact_shotgun_paper = 4200,
---     weapImpact_shotgun_mattress,
---     weapImpact_shotgun_metal,
---     weapImpact_shotgun_wood,
---     weapImpact_shotgun_dirt,
---     weapImpact_shotgun_tvscreen,
---     weapImpact_shotgun_tvscreen2,
---     weapImpact_shotgun_tvscreen3,
---     weapImpact_melee_concrete = 4310,
---     weapImpact_melee_wood = 4312,
---     weapImpact_melee_metal = 4314,
---     burn1 = 4421,
---     burn2,
---     burn3,
---     burn4,
---     burn5,
---     bang_concrete_bang = 5000,
--- [...]
--- **Native**: `ADD_DECAL` (`0xB302244A1839BDAD`)
---@param decalType fx.Enum.DecalTypes|integer which type of decal to place, based on the ID, see `DecalTypes` enum.
---@param pos vector3 position coordinate.
---@param dir vector3 Orientation.
---@param side vector3 Usually set to 0. / Usually set to 1. / Usually set to 0.
---@param width number Width of the decal.
---@param height number Height of the decal.
---@param rCoef number Red Color.
---@param gCoef number Green Color.
---@param bCoef number Blue Color.
---@param opacity number Alpha Color.
---@param timeout number The lifetime of the decal.
---@param isLongRange boolean toggle further LOD draw distance.
---@param isDynamic boolean toggle dynamics.
---@param useComplexColn boolean use complex coloring.
---@return integer result An integer value representing the added decal index, will return `0` if the decal cannot be added.
function GraphicsStatic.addDecal(decalType, pos, dir, side, width, height, rCoef, gCoef, bCoef, opacity, timeout, isLongRange, isDynamic, useComplexColn) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `ADD_OIL_DECAL` (`0x126D7F89FE859A5E`)
---@param coords vector3
---@param groundLvl number
---@param width number
---@param transparency number
---@return integer result
function GraphicsStatic.addOilDecal(coords, groundLvl, width, transparency) end

--- **Native**: `ADD_PETROL_DECAL` (`0x4F5212C7AD880DF8`)
---@param coords vector3
---@param groundLvl number
---@param width number
---@param transparency number
---@return integer result
function GraphicsStatic.addPetrolDecal(coords, groundLvl, width, transparency) end

--- **Native**: `ADD_PETROL_TRAIL_DECAL_INFO` (`0x967278682CB6967A`)
---@param coords vector3
---@param p3 number
function GraphicsStatic.addPetrolTrailDecalInfo(coords, p3) end

--- **Native**: `ADD_TCMODIFIER_OVERRIDE` (`0x1A8E2C8B9CF4549C`)
---@param modifierName1 string
---@param modifierName2 string
function GraphicsStatic.addTcmodifierOverride(modifierName1, modifierName2) end

--- See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724)
--- **Native**: `ANIMPOSTFX_GET_UNK` (`0xE35B38A27E8E7179`)
---@param effectName string
---@return number result
function GraphicsStatic.animpostfxGetUnk(effectName) end

--- See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
--- **Native**: `ANIMPOSTFX_IS_RUNNING` (`0x36AD3E690DA5ACEB`)
---@param effectName string
---@return boolean result Whether the specified effect is active
function GraphicsStatic.animpostfxIsRunning(effectName) end

--- ```
--- duration - is how long to play the effect for in milliseconds. If 0, it plays the default length
--- if loop is true, the effect won't stop until you call ANIMPOSTFX_STOP on it. (only loopable effects)
--- ```
--- **Native**: `ANIMPOSTFX_PLAY` (`0x2206BF9A37B7F724`)
---@param effectName string
---@param duration integer
---@param looped boolean
function GraphicsStatic.animpostfxPlay(effectName, duration, looped) end

--- See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
--- **Native**: `ANIMPOSTFX_STOP` (`0x068E835A1D0DC0E3`)
---@param effectName string
function GraphicsStatic.animpostfxStop(effectName) end

--- **Native**: `ANIMPOSTFX_STOP_ALL` (`0xB4EDDC19532BFB85`)
function GraphicsStatic.animpostfxStopAll() end

--- Stops the effect and sets a value (bool) in its data (+0x199) to false; See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
--- **Native**: `ANIMPOSTFX_STOP_AND_DO_UNK` (`0xD2209BE128B5418C`)
---@param effectName string
function GraphicsStatic.animpostfxStopAndDoUnk(effectName) end

--- Starts frontend (pause menu) scaleform movie methods.
--- This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
---
--- Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
--- **Native**: `BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND` (`0xAB58C27C2E6123C6`)
---@param functionName string The function name of the scaleform to call.
---@return boolean result
function GraphicsStatic.beginScaleformMovieMethodOnFrontend(functionName) end

--- Starts frontend (pause menu) scaleform movie methods for header options.
---
--- Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#\_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
--- **Native**: `BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER` (`0xB9449845F73F5E9C`)
---@param functionName string Scaleform function name.
---@return boolean result
function GraphicsStatic.beginScaleformMovieMethodOnFrontendHeader(functionName) end

--- ```
--- Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
--- Known components:
--- 19 - MP_RANK_BAR
--- 20 - HUD_DIRECTOR_MODE
--- This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
--- ```
--- **Native**: `BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD` (`0x98C494FD5BDFBFD5`)
---@param hudComponent integer
---@param methodName string
---@return boolean result
function GraphicsStatic.beginScaleformScriptHudMovieMethod(hudComponent, methodName) end

--- **Native**: `BEGIN_TAKE_HIGH_QUALITY_PHOTO` (`0xA67C35C56EB1BD9D`)
---@return boolean result
function GraphicsStatic.beginTakeHighQualityPhoto() end

--- **Native**: `BEGIN_TAKE_MISSION_CREATOR_PHOTO` (`0x1DD2139A9A20DCE8`)
---@return boolean result
function GraphicsStatic.beginTakeMissionCreatorPhoto() end

--- ```
--- Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.
--- Examples:
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
--- HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
--- HUD::_ADD_TEXT_COMPONENT_STRING(a_2);
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
--- HUD::_0x17299B63C7683A2B(v_3);
--- HUD::_0x17299B63C7683A2B(v_4);
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
--- HUD::_0x17299B63C7683A2B(v_3);
--- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--- ```
--- **Native**: `BEGIN_TEXT_COMMAND_SCALEFORM_STRING` (`0x80338406F3475E55`)
---@param textLabel string a GXT text label
function GraphicsStatic.beginTextCommandScaleformString(textLabel) end

--- **Native**: `CASCADE_SHADOWS_CLEAR_SHADOW_SAMPLE_TYPE` (`0x27CB772218215325`)
function GraphicsStatic.cascadeShadowsClearShadowSampleType() end

--- ```
--- When this is set to ON, shadows only draw as you get nearer.
--- When OFF, they draw from a further distance.
--- ```
--- **Native**: `CASCADE_SHADOWS_ENABLE_ENTITY_TRACKER` (`0x80ECBC0C856D3B0B`)
---@param toggle boolean
function GraphicsStatic.cascadeShadowsEnableEntityTracker(toggle) end

--- **Native**: `CASCADE_SHADOWS_INIT_SESSION` (`0x03FC694AE06C5A20`)
function GraphicsStatic.cascadeShadowsInitSession() end

--- **Native**: `CASCADE_SHADOWS_SET_AIRCRAFT_MODE` (`0x6DDBF9DFFC4AC080`)
---@param p0 boolean
function GraphicsStatic.cascadeShadowsSetAircraftMode(p0) end

--- **Native**: `CASCADE_SHADOWS_SET_CASCADE_BOUNDS` (`0xD2936CAB8B58FCBD`)
---@param p0 any
---@param p1 boolean
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 boolean
---@param p7 number
function GraphicsStatic.cascadeShadowsSetCascadeBounds(p0, p1, p2, p3, p4, p5, p6, p7) end

--- **Native**: `CASCADE_SHADOWS_SET_CASCADE_BOUNDS_SCALE` (`0x5F0F3F56635809EF`)
---@param p0 number
function GraphicsStatic.cascadeShadowsSetCascadeBoundsScale(p0) end

--- **Native**: `CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_MODE` (`0xD39D13C9FEBF0511`)
---@param p0 boolean
function GraphicsStatic.cascadeShadowsSetDynamicDepthMode(p0) end

--- **Native**: `CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_VALUE` (`0x02AC28F3A01FA04A`)
---@param p0 number
function GraphicsStatic.cascadeShadowsSetDynamicDepthValue(p0) end

--- **Native**: `CASCADE_SHADOWS_SET_ENTITY_TRACKER_SCALE` (`0x5E9DAF5A20F15908`)
---@param p0 number
function GraphicsStatic.cascadeShadowsSetEntityTrackerScale(p0) end

--- ```
--- Possible values:
--- "CSM_ST_POINT"
--- "CSM_ST_LINEAR"
--- "CSM_ST_TWOTAP"
--- "CSM_ST_BOX3x3"
--- "CSM_ST_BOX4x4"
--- "CSM_ST_DITHER2_LINEAR"
--- "CSM_ST_CUBIC"
--- "CSM_ST_DITHER4"
--- "CSM_ST_DITHER16"
--- "CSM_ST_SOFT16"
--- "CSM_ST_DITHER16_RPDB"
--- "CSM_ST_POISSON16_RPDB_GNORM"
--- "CSM_ST_HIGHRES_BOX4x4"
--- "CSM_ST_CLOUDS_SIMPLE"
--- "CSM_ST_CLOUDS_LINEAR"
--- "CSM_ST_CLOUDS_TWOTAP"
--- "CSM_ST_CLOUDS_BOX3x3"
--- "CSM_ST_CLOUDS_BOX4x4"
--- "CSM_ST_CLOUDS_DITHER2_LINEAR"
--- "CSM_ST_CLOUDS_SOFT16"
--- "CSM_ST_CLOUDS_DITHER16_RPDB"
--- "CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
--- ```
--- **Native**: `CASCADE_SHADOWS_SET_SHADOW_SAMPLE_TYPE` (`0xB11D94BC55F41932`)
---@param type_ string
function GraphicsStatic.cascadeShadowsSetShadowSampleType(type_) end

--- Resets the screen's draw-origin which was changed by the function [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) back to `x=0, y=0`. See [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) for further information.
--- **Native**: `CLEAR_DRAW_ORIGIN` (`0xFF0B610F6BE0D7AF`)
function GraphicsStatic.clearDrawOrigin() end

--- Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#\_0x5096FD9CCB49056D)
--- **Native**: `CLEAR_EXTRA_TIMECYCLE_MODIFIER` (`0x92CCC17A7A2285DA`)
function GraphicsStatic.clearExtraTimecycleModifier() end

--- **Native**: `CLEAR_TIMECYCLE_MODIFIER` (`0x0F07E7745A236711`)
function GraphicsStatic.clearTimecycleModifier() end

--- **Native**: `CLEAR_TV_CHANNEL_PLAYLIST` (`0xBEB3D46BB7F043C0`)
---@param tvChannel integer
function GraphicsStatic.clearTvChannelPlaylist(tvChannel) end

--- Creates a tracked point: useful for checking the visibility of a 3D point on screen.
---
--- Tracked points must be manually managed and will not be destroyed on resource stop (they are not an instance of CScriptResource). See [`DESTROY_TRACKED_POINT`](#\_0xB25DC90BAD56CA42) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/).
---
--- Only 64 points may be tracked at a given time.
--- **Native**: `CREATE_TRACKED_POINT` (`0xE2C9439ED45DEA60`)
---@return integer result
function GraphicsStatic.createTrackedPoint() end

--- **Native**: `DESTROY_TRACKED_POINT` (`0xB25DC90BAD56CA42`)
---@param point integer
function GraphicsStatic.destroyTrackedPoint(point) end

--- Removes any custom moon cycle overrides that have been configured with [ENABLE_MOON_CYCLE_OVERRIDE](#\_0x2C328AF17210F009)
--- **Native**: `DISABLE_MOON_CYCLE_OVERRIDE` (`0x2BF72AD5B41AA739`)
function GraphicsStatic.disableMoonCycleOverride() end

--- **Native**: `DISABLE_OCCLUSION_THIS_FRAME` (`0x3669F1B198DCAA4F`)
function GraphicsStatic.disableOcclusionThisFrame() end

--- **Native**: `DISABLE_SCREENBLUR_FADE` (`0xDE81239437E8C5A8`)
function GraphicsStatic.disableScreenblurFade() end

--- **Native**: `DISABLE_SCRIPT_AMBIENT_EFFECTS` (`0xEFD97FF47B745B8D`)
---@param p0 any
function GraphicsStatic.disableScriptAmbientEffects(p0) end

--- **Native**: `DISABLE_VEHICLE_DISTANTLIGHTS` (`0xC9F98AC1884E73A2`)
---@param toggle boolean
function GraphicsStatic.disableVehicleDistantlights(toggle) end

--- Used in pi_menu.c. Checks if there is a brief entry for specified value.
--- Values:
--- 0 - Dialogue brief
--- 1 - Help text brief
--- 2 - Mission Objective brief
--- **Native**: `DOES_LATEST_BRIEF_STRING_EXIST` (`0x5E657EF1099EDD65`)
---@param briefValue integer A value indicating brief text.
---@return boolean result
function GraphicsStatic.doesLatestBriefStringExist(briefValue) end

--- **Native**: `DONT_RENDER_IN_GAME_UI` (`0x22A249A53034450A`)
---@param p0 boolean
function GraphicsStatic.dontRenderInGameUi(p0) end

--- Must be called each frame, will play at specified position on screen when called with [`_PLAY_BINK_MOVIE`](#\_0x70D2CC8A542A973C)
--- **Native**: `DRAW_BINK_MOVIE` (`0x7118E83EEB9F7238`)
---@param binkMovie integer The movie to be drawn (from [`_SET_BINK_MOVIE`](#\_0x338D9F609FD632DB)).
---@param posX number The centered x position of the movie (0.0 - 1.0).
---@param posY number The centered y position of the movie (0.0 - 1.0).
---@param scaleX number The x scale of the movie (0.0 - 1.0).
---@param scaleY number The y scale of the movie (0.0 - 1.0).
---@param rotation number The rotation of the movie (0.0 - 360.0).
---@param r integer The red value of the movie (0 - 255).
---@param g integer The green value of the movie (0 - 255).
---@param b integer The blue value of the movie (0 - 255).
---@param a integer The alpha value of the movie (0 - 255).
function GraphicsStatic.drawBinkMovie(binkMovie, posX, posY, scaleX, scaleY, rotation, r, g, b, a) end

--- This native draws a box between two vectors in the game world. It is typically used for visualizing boundaries or areas of interest. The color of the box is specified by the red, green, and blue parameters, with alpha determining its opacity. This native should be called every frame for continuous rendering.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `DRAW_BOX` (`0xD3A9971CADAC7252`)
---@param coords1 vector3 The -coordinate of the first corner of the box.
---@param coords2 vector3 The -coordinate of the opposite corner of the box.
---@param red integer The red color component of the box (0 - 255).
---@param green integer The green color component of the box (0 - 255).
---@param blue integer The blue color component of the box (0 - 255).
---@param alpha integer The alpha value of the box (0 - 255).
function GraphicsStatic.drawBox(coords1, coords2, red, green, blue, alpha) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_BOX` (`0x083A2CA4F2E573BD`)
---@param coords1 vector3
---@param coords2 vector3
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function GraphicsStatic.drawDebugBox(coords1, coords2, r, g, b, a) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_CROSS` (`0x73B1189623049839`)
---@param coords vector3
---@param size number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawDebugCross(coords, size, red, green, blue, alpha) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_LINE` (`0x7FDFADE676AA3CB0`)
---@param coords1 vector3
---@param coords2 vector3
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function GraphicsStatic.drawDebugLine(coords1, coords2, r, g, b, a) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_LINE_WITH_TWO_COLOURS` (`0xD8B9A8AC5608FF94`)
---@param coords1 vector3
---@param coords2 vector3
---@param r1 integer
---@param g1 integer
---@param b1 integer
---@param r2 integer
---@param g2 integer
---@param b2 integer
---@param alpha1 integer
---@param alpha2 integer
function GraphicsStatic.drawDebugLineWithTwoColours(coords1, coords2, r1, g1, b1, r2, g2, b2, alpha1, alpha2) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_SPHERE` (`0xAAD68E1AB39DA632`)
---@param coords vector3
---@param radius number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawDebugSphere(coords, radius, red, green, blue, alpha) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_TEXT` (`0x3903E216620488E8`)
---@param text string
---@param coords vector3
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawDebugText(text, coords, red, green, blue, alpha) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `DRAW_DEBUG_TEXT_2D` (`0xA3BB2E9555C05A8F`)
---@param text string
---@param coords vector3
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawDebugText2d(text, coords, red, green, blue, alpha) end

--- Similar to [\_DRAW_SPRITE](#\_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
--- These seem to be the only dicts ever requested by this native:
---
--- ```
--- prop_screen_biker_laptop
--- Prop_Screen_GR_Disruption
--- Prop_Screen_TaleOfUs
--- prop_screen_nightclub
--- Prop_Screen_IE_Adhawk
--- prop_screen_sm_free_trade_shipping
--- prop_screen_hacker_truck
--- MPDesktop
--- Prop_Screen_Nightclub
--- And a few others
--- ```
--- **Native**: `DRAW_INTERACTIVE_SPRITE` (`0x2BC54A8188768488`)
---@param textureDict string Name of texture dictionary to load texture from
---@param textureName string Name of texture to load from texture dictionary
---@param screenX number Screen X
---@param screenY number Screen Y
---@param width number Scale X
---@param height number Scale Y
---@param heading number Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees
---@param red integer Color
---@param green integer Color
---@param blue integer Color
---@param alpha integer Opacity level
function GraphicsStatic.drawInteractiveSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

--- **Native**: `DRAW_LIGHT_WITH_RANGE` (`0xF2A1B2771A01DBD4`)
---@param pos vector3
---@param colorR integer
---@param colorG integer
---@param colorB integer
---@param range number
---@param intensity number
function GraphicsStatic.drawLightWithRange(pos, colorR, colorG, colorB, range, intensity) end

--- **Native**: `DRAW_LIGHT_WITH_RANGE_AND_SHADOW` (`0xF49E9A9716A04595`)
---@param coords vector3
---@param r integer
---@param g integer
---@param b integer
---@param range number
---@param intensity number
---@param shadow number
function GraphicsStatic.drawLightWithRangeAndShadow(coords, r, g, b, range, intensity, shadow) end

--- This native draws a line between two vectors in the game world. It is typically used for visualizing paths or connections between points. The color of the line is specified by the red, green, and blue parameters, with alpha determining its opacity. This native should be called every frame for continuous rendering.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `DRAW_LINE` (`0x6B7256074AE34680`)
---@param coords1 vector3 The -coordinate of the starting point of the line.
---@param coords2 vector3 The -coordinate of the ending point of the line.
---@param red integer The red color component of the line (0 - 255).
---@param green integer The green color component of the line (0 - 255).
---@param blue integer The blue color component of the line (0 - 255).
---@param alpha integer The alpha value of the line (0 - 255).
function GraphicsStatic.drawLine(coords1, coords2, red, green, blue, alpha) end

--- **Native**: `DRAW_LOW_QUALITY_PHOTO_TO_PHONE` (`0x1072F115DAB0717E`)
---@param p0 boolean
---@param p1 boolean
function GraphicsStatic.drawLowQualityPhotoToPhone(p0, p1) end

--- Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.
---
--- There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
--- **Native**: `DRAW_MARKER` (`0x28477EC23D892089`)
---@param type_ integer The marker type to draw.
---@param pos vector3 The coordinate to draw the marker at.
---@param dir vector3 The component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
---@param rot vector3 The rotation for the marker. Only used if the direction vector is 0.0.
---@param scale vector3 The scale for the marker on the axis.
---@param red integer The red component of the marker color, on a scale from 0-255.
---@param green integer The green component of the marker color, on a scale from 0-255.
---@param blue integer The blue component of the marker color, on a scale from 0-255.
---@param alpha integer The alpha component of the marker color, on a scale from 0-255.
---@param bobUpAndDown boolean Whether or not the marker should slowly animate up/down.
---@param faceCamera boolean Whether the marker should be a 'billboard', as in, should constantly face the camera.
---@param p19 integer Typically set to `2`. Does not seem to matter directly.
---@param rotate boolean Rotations only apply to the heading.
---@param textureDict string A texture dictionary to draw the marker with, or NULL. Example: 'GolfPutting'
---@param textureName string A texture name in `textureDict` to draw the marker with, or NULL. Example: 'PuttingMarker'
---@param drawOnEnts boolean Whether or not the marker should draw on intersecting entities.
function GraphicsStatic.drawMarker(type_, pos, dir, rot, scale, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts) end

--- ```
--- NativeDB Added Parameter 26: BOOL p25
--- ```
--- **Native**: `DRAW_MARKER_2` (`0xE82728F0DE75D13A`)
---@param type_ integer
---@param pos vector3
---@param dir vector3
---@param rot vector3
---@param scale vector3
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param bobUpAndDown boolean
---@param faceCamera boolean
---@param p19 integer
---@param rotate boolean
---@param textureDict string
---@param textureName string
---@param drawOnEnts boolean
---@param p24 boolean
function GraphicsStatic.drawMarker2(type_, pos, dir, rot, scale, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts, p24) end

--- ```
--- x/y/z - Location of a vertex (in world coords), presumably.
--- ----------------
--- x1, y1, z1     : Coordinates for the first point
--- x2, y2, z2     : Coordinates for the second point
--- x3, y3, z3     : Coordinates for the third point
--- r, g, b, alpha : Color with RGBA-Values
--- Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).
--- But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.
--- I recommend using a predefined function to call this.
--- [VB.NET]
--- Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)
---     [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)
--- End Sub
--- [C#]
--- public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)
--- {
---     Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);
--- }
--- BTW: Intersecting triangles are not supported: They overlap in the order they were called.
--- ```
--- **Native**: `DRAW_POLY` (`0xAC26716048436851`)
---@param coords1 vector3
---@param coords2 vector3
---@param coords3 vector3
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawPoly(coords1, coords2, coords3, red, green, blue, alpha) end

--- ```
--- Draws a rectangle on the screen.
--- -x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)
--- -y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)
--- -width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)
--- -height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)
--- -R: Red part of the color. (0-255)
--- -G: Green part of the color. (0-255)
--- -B: Blue part of the color. (0-255)
--- -A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)
--- The total number of rectangles to be drawn in one frame is apparently limited to 399.
--- ```
---
--- ```
--- NativeDB Added Parameter 9: BOOL p8
--- ```
--- **Native**: `DRAW_RECT` (`0x3A618A217E5154F0`)
---@param x number
---@param y number
---@param width number
---@param height number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function GraphicsStatic.drawRect(x, y, width, height, r, g, b, a) end

--- **Native**: `DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED` (`0xCF537FDE4FBD4CE5`)
---@param scaleform1 integer
---@param scaleform2 integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawScaleformMovieFullscreenMasked(scaleform1, scaleform2, red, green, blue, alpha) end

--- ```
--- It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A
--- p0 was always "CELEBRATION_WINNER"
--- ```
--- **Native**: `DRAW_SHOWROOM` (`0x98C4FE6EC34154CA`)
---@param p0 string
---@param ped fx.Ped|integer
---@param p2 integer
---@param pos vector3
---@return boolean result
function GraphicsStatic.drawShowroom(p0, ped, p2, pos) end

--- Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".
---
--- Example [image](https://imgur.com/nCbtS4H):
---
--- ```lua
--- DrawSphere(35.45, 172.66, 126.22, 1.0, 0, 0, 255, 0.2)
--- ```
--- **Native**: `DRAW_SPHERE` (`0x799017F9E3B10112`)
---@param coords vector3 coordinate of the sphere
---@param radius number Size of the sphere, `1.0` = 1 meter
---@param r integer Color red `0`-`255`
---@param g integer Color green `0`-`255`
---@param b integer Color blue `0`-`255`
---@param opacity number Opacity from `0.0`-`1.0`
function GraphicsStatic.drawSphere(coords, radius, r, g, b, opacity) end

--- ```
--- Parameters:
--- * pos - coordinate where the spotlight is located
--- * dir - the direction vector the spotlight should aim at from its current position
--- * r,g,b - color of the spotlight
--- * distance - the maximum distance the light can reach
--- * brightness - the brightness of the light
--- * roundness - "smoothness" of the circle edge
--- * radius - the radius size of the spotlight
--- * falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)
--- Example in C# (spotlight aims at the closest vehicle):
--- Vector3 myPos = Game.Player.Character.Position;
--- Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);
--- Vector3 destinationCoords = nearest.Position;
--- Vector3 dirVector = destinationCoords - myPos;
--- dirVector.Normalize();
--- Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);
--- ```
--- **Native**: `DRAW_SPOT_LIGHT` (`0xD0F64B265C8C8B33`)
---@param pos vector3
---@param dir vector3
---@param colorR integer
---@param colorG integer
---@param colorB integer
---@param distance number
---@param brightness number
---@param hardness number
---@param radius number
---@param falloff number
function GraphicsStatic.drawSpotLight(pos, dir, colorR, colorG, colorB, distance, brightness, hardness, radius, falloff) end

--- **Native**: `DRAW_SPOT_LIGHT_WITH_SHADOW` (`0x5BCA583A583194DB`)
---@param pos vector3
---@param dir vector3
---@param colorR integer
---@param colorG integer
---@param colorB integer
---@param distance number
---@param brightness number
---@param roundness number
---@param radius number
---@param falloff number
---@param shadowId integer
function GraphicsStatic.drawSpotLightWithShadow(pos, dir, colorR, colorG, colorB, distance, brightness, roundness, radius, falloff, shadowId) end

--- ```
--- Draws a 2D sprite on the screen.
--- Parameters:
--- textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)
--- textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)
--- screenX/Y - Screen offset (0.5 = center)
--- scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)
--- heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees
--- red,green,blue - Sprite color (default = 255/255/255)
--- alpha - opacity level
--- ```
---
--- ```
--- NativeDB Added Parameter 12: BOOL p11
--- ```
--- **Native**: `DRAW_SPRITE` (`0xE7FFAE5EBF23D890`)
---@param textureDict string
---@param textureName string
---@param screenX number
---@param screenY number
---@param width number
---@param height number
---@param heading number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha) end

--- Used for drawling Deadline trailing lights, see deadline.ytd
---
--- Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.
---
--- For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
--- **Native**: `DRAW_SPRITE_POLY_2` (`0x736D7AA1B750856B`)
---@param coords1 vector3
---@param coords2 vector3
---@param coords3 vector3
---@param red1 number
---@param green1 number
---@param blue1 number
---@param alpha1 integer
---@param red2 number
---@param green2 number
---@param blue2 number
---@param alpha2 integer
---@param red3 number
---@param green3 number
---@param blue3 number
---@param alpha3 integer
---@param textureDict string
---@param textureName string
---@param u1 number
---@param v1 number
---@param w1 number
---@param u2 number
---@param v2 number
---@param w2 number
---@param u3 number
---@param v3 number
---@param w3 number
function GraphicsStatic.drawSpritePoly2(coords1, coords2, coords3, red1, green1, blue1, alpha1, red2, green2, blue2, alpha2, red3, green3, blue3, alpha3, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

--- Similar to DRAW_SPRITE, but allows to specify the texture coordinates used to draw the sprite.
--- u1, v1 - texture coordinates for the top-left corner
--- u2, v2 - texture coordinates for the bottom-right corner
---
--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `DRAW_SPRITE_UV` (`0x95812F9B26074726`)
---@param textureDict string
---@param textureName string
---@param x number
---@param y number
---@param width number
---@param height number
---@param u1 number
---@param v1 number
---@param u2 number
---@param v2 number
---@param heading number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawSpriteUv(textureDict, textureName, x, y, width, height, u1, v1, u2, v2, heading, red, green, blue, alpha) end

--- This native draws a textured polygon between three vectors in the game world. It's commonly utilized for rendering deadline trailing lights, with additional details available in the `deadline.ytd` file. UVW mapping details (u,v,w parameters) can be found on various internet resources. This native is specifically used for drawing textured polygons on the screen, where UV coordinates define the texture mapping and color/alpha parameters define the appearance of the polygon. This native should be called every frame for continuous rendering.
---
--- ```
--- NativeDB Introduced: v877
--- ```
--- **Native**: `DRAW_TEXTURED_POLY` (`0x29280002282F1928`)
---@param coords1 vector3 The -coordinate of the first vector.
---@param coords2 vector3 The -coordinate of the second vector.
---@param coords3 vector3 The -coordinate of the third vector.
---@param red integer The red color component of the polygon (0 - 255).
---@param green integer The green color component of the polygon (0 - 255).
---@param blue integer The blue color component of the polygon (0 - 255).
---@param alpha integer The alpha value of the polygon (0 - 255).
---@param textureDict string The name of the texture dictionary.
---@param textureName string The name of the texture.
---@param u1 number The u-coordinate of the first UV mapping.
---@param v1 number The v-coordinate of the first UV mapping.
---@param w1 number The w-coordinate of the first UV mapping.
---@param u2 number The u-coordinate of the second UV mapping.
---@param v2 number The v-coordinate of the second UV mapping.
---@param w2 number The w-coordinate of the second UV mapping.
---@param u3 number The u-coordinate of the third UV mapping.
---@param v3 number The v-coordinate of the third UV mapping.
---@param w3 number The w-coordinate of the third UV mapping.
function GraphicsStatic.drawTexturedPoly(coords1, coords2, coords3, red, green, blue, alpha, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3) end

--- ```
--- All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.
--- "act_cinema.ysc", line 1483:
--- HUD::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);
--- HUD::SET_TEXT_RENDER_ID(l_AE);
--- GRAPHICS::_0x61BB1D9B3A95D802(4);
--- GRAPHICS::_0xC6372ECD45D73BCD(1);
--- if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {
---     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);
--- } else {
---     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
--- }
--- "am_mp_property_int.ysc", line 102545:
--- if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {
---     if (HUD::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {
---         HUD::SET_TEXT_RENDER_ID(a_2._f1);
---         GRAPHICS::_0x61BB1D9B3A95D802(4);
---         GRAPHICS::_0xC6372ECD45D73BCD(1);
---         GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
---         if (GRAPHICS::GET_TV_CHANNEL() == -1) {
---             sub_a8fa5(a_2, 1);
---         } else {
---             sub_a8fa5(a_2, 1);
---             GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);
---         }
---         HUD::SET_TEXT_RENDER_ID(HUD::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());
---     }
--- }
--- ```
--- **Native**: `DRAW_TV_CHANNEL` (`0xFDDC2B4ED3C69DF0`)
---@param xPos number
---@param yPos number
---@param xScale number
---@param yScale number
---@param rotation number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.drawTvChannel(xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha) end

--- Creates a motion-blur sort of effect, this native does not seem to work, however by using the [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724) native with `"DrugsMichaelAliensFight"` as the effect parameter, you should be able to get the effect.
---
--- This native does not seem to work, however by using the [ANIMPOSTFX_PLAY](#\_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
--- **Native**: `ENABLE_ALIEN_BLOOD_VFX` (`0x9DCE1F0F78260875`)
---@param toggle boolean
function GraphicsStatic.enableAlienBloodVfx(toggle) end

--- If true, this native will create purple explosions upon projectile impact, add comic-like PTFX when firing a weapon, create a sound on bullet impact and have its own "blood effect".
---
--- If the PTFX asset "scr_rcbarry2" is not requested using ([`RequestNamedPtfxAsset`](#\_0xD821490579791273)) then this native **will not work as intended**.
---
--- Excerpt from fm_content_drug_lab_work.c:
---
--- ```
--- STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_rcbarry2");
--- if (STREAMING::HAS_NAMED_PTFX_ASSET_LOADED("scr_rcbarry2"))
--- {
---   GRAPHICS::ENABLE_CLOWN_BLOOD_VFX(true);
---   AUDIO::START_AUDIO_SCENE("DLC_CM2022_DRUG_TRIP_SPRINKLERS_SCENE");
---   func_720(26);
--- }
--- ```
--- **Native**: `ENABLE_CLOWN_BLOOD_VFX` (`0xD821490579791273`)
---@param toggle boolean Whether to toggle the clown VFX on or off.
function GraphicsStatic.enableClownBloodVfx(toggle) end

--- Enable a custom moon cycle, allowing control of which lunar phase the moon is in.
---
--- Valid values are from `0.0` to `1.0`, with `0.5` representing a full moon.
---
--- | Value |   Lunar Phase   |
--- | :---: | :-------------: |
--- | `0.1` | Waxing Crescent |
--- | `0.2` |  First Quarter  |
--- | `0.3` | Waxing Gibbous  |
--- | `0.5` |    Full Moon    |
--- | `0.7` | Waning Gibbous  |
--- | `0.8` |  Third Quarter  |
--- | `0.9` | Waning Crescent |
---
--- The moon phase can be disabled with [DISABLE_MOON_CYCLE_OVERRIDE](#\_0x2BF72AD5B41AA739)
--- **Native**: `ENABLE_MOON_CYCLE_OVERRIDE` (`0x2C328AF17210F009`)
---@param phase number A value indicating the moon cycle.
function GraphicsStatic.enableMoonCycleOverride(phase) end

--- **Native**: `ENABLE_MOVIE_KEYFRAME_WAIT` (`0x74C180030FDE4B69`)
---@param toggle boolean
function GraphicsStatic.enableMovieKeyframeWait(toggle) end

--- **Native**: `ENABLE_MOVIE_SUBTITLES` (`0x873FA65C778AD970`)
---@param toggle boolean
function GraphicsStatic.enableMovieSubtitles(toggle) end

--- **Native**: `END_PETROL_TRAIL_DECALS` (`0x0A123435A26C36CD`)
function GraphicsStatic.endPetrolTrailDecals() end

--- ```
--- Pops and calls the Scaleform function on the stack
--- ```
--- **Native**: `END_SCALEFORM_MOVIE_METHOD` (`0xC6796A8FFA375E53`)
function GraphicsStatic.endScaleformMovieMethod() end

--- **Native**: `END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE` (`0xC50AA39A577AF886`)
---@return integer result
function GraphicsStatic.endScaleformMovieMethodReturnValue() end

--- **Native**: `END_TEXT_COMMAND_SCALEFORM_STRING` (`0x362E2D3FE93A9959`)
function GraphicsStatic.endTextCommandScaleformString() end

--- Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
--- Also useful for when you are trying to add blips and inputs in your scaleform (If the scaleform supports it).
--- **Native**: `END_TEXT_COMMAND_UNPARSED_SCALEFORM_STRING` (`0xAE4E8157D9ECF087`)
function GraphicsStatic.endTextCommandUnparsedScaleformString() end

--- **Native**: `FADE_DECALS_IN_RANGE` (`0xD77EDADB0420E6E0`)
---@param coords vector3
---@param radius number
---@param duration number A duration in seconds.
function GraphicsStatic.fadeDecalsInRange(coords, radius, duration) end

--- **Native**: `FADE_UP_PED_LIGHT` (`0xC9B18B4619F48F7B`)
---@param p0 number
function GraphicsStatic.fadeUpPedLight(p0) end

--- **Native**: `FORCE_RENDER_IN_GAME_UI` (`0xDC459CFA0CCE245B`)
---@param toggle boolean
function GraphicsStatic.forceRenderInGameUi(toggle) end

--- **Native**: `FREE_MEMORY_FOR_HIGH_QUALITY_PHOTO` (`0xD801CC02177FA3F1`)
function GraphicsStatic.freeMemoryForHighQualityPhoto() end

--- **Native**: `FREE_MEMORY_FOR_LOW_QUALITY_PHOTO` (`0x6A12D88881435DCA`)
function GraphicsStatic.freeMemoryForLowQualityPhoto() end

--- **Native**: `FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO` (`0x0A46AF8A78DC5E0A`)
function GraphicsStatic.freeMemoryForMissionCreatorPhoto() end

--- Returns current screen resolution.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `GET_ACTUAL_SCREEN_RESOLUTION` (`0x873C9F3104101DD3`)
---@return integer x
---@return integer y
function GraphicsStatic.getActualScreenResolution() end

--- This native retrieves the aspect ratio of the game window. If `physicalAspect` is `true`, it returns the physical aspect ratio of the game window, which is useful for 3x1 modes. Otherwise, it returns the aspect ratio of the main game window, considering any custom overrides from the settings menu.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `GET_ASPECT_RATIO` (`0xF1307EF624A80D87`)
---@param physicalAspect boolean A boolean value. Passing in `true` returns the physical aspect ratio of the game window. Passing in `false` returns the aspect ratio of the main game window.
---@return number result The aspect ratio of the game window as a floating-point number.
function GraphicsStatic.getAspectRatio(physicalAspect) end

--- In percentage: 0.0 - 100.0
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `GET_BINK_MOVIE_TIME` (`0x8E17DDD6B9D5BF29`)
---@param binkMovie integer
---@return number result
function GraphicsStatic.getBinkMovieTime(binkMovie) end

--- **Native**: `GET_DECAL_WASH_LEVEL` (`0x323F647679A09103`)
---@param decal integer
---@return number result
function GraphicsStatic.getDecalWashLevel(decal) end

--- **Native**: `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_BOOL` (`0xD80A80346A45D761`)
---@param methodReturn integer Operation handle returned by [`END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE`](#\_0xC50AA39A577AF886)
---@return boolean result The return value passed from actionscript to game code.
function GraphicsStatic.getScaleformMovieMethodReturnValueBool(methodReturn) end

--- Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
--- **Native**: `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` (`0x2DE7EFA66B906036`)
---@param method_return integer The return value of this native: `EndScaleformMovieMethodReturn`
---@return integer result Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.
function GraphicsStatic.getScaleformMovieMethodReturnValueInt(method_return) end

--- Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
--- **Native**: `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` (`0xE1E258829A885245`)
---@param method_return integer The return value of this native: `EndScaleformMovieMethodReturn`
---@return string result Returns a string in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` returns an int.
function GraphicsStatic.getScaleformMovieMethodReturnValueString(method_return) end

--- ```
--- Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)
--- Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.
--- For .NET users...
--- VB:
--- Public Shared Function World3DToScreen2d(pos as vector3) As Vector2
---         Dim x2dp, y2dp As New Native.OutputArgument
---         Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
---         Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))
---
---     End Function
--- C#:
--- Vector2 World3DToScreen2d(Vector3 pos)
---     {
---         var x2dp = new OutputArgument();
---         var y2dp = new OutputArgument();
---         Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
---         return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
---     }
--- //USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.
--- Used to be called _WORLD3D_TO_SCREEN2D
--- I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
--- ```
--- **Native**: `GET_SCREEN_COORD_FROM_WORLD_COORD` (`0x34E82F05DF2974F5`)
---@param world vector3
---@return boolean result
---@return number screenX
---@return number screenY
function GraphicsStatic.getScreenCoordFromWorldCoord(world) end

--- Hardcoded to always return 1280x720. Use [`_GET_ACTIVE_SCREEN_RESOLUTION`](?\_0x873C9F3104101DD3) to retrieve the correct screen resolution.
--- **Native**: `GET_SCREEN_RESOLUTION` (`0x888D57E407E63624`)
---@return integer x
---@return integer y
function GraphicsStatic.getScreenResolution() end

--- Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
--- `SET_SCRIPT_GFX_ALIGN_PARAMS`.
--- **Native**: `GET_SCRIPT_GFX_POSITION` (`0x6DD8F5AA635EB4B2`)
---@param x number The input X coordinate.
---@param y number The input Y coordinate.
---@return number calculatedX A pointer to the calculated X value.
---@return number calculatedY A pointer to the calculated Y value.
function GraphicsStatic.getScriptGfxPosition(x, y) end

--- **Native**: `GET_STATUS_OF_LOAD_MISSION_CREATOR_PHOTO` (`0x1670F8D05056F257`)
---@param p0 string
---@return integer result
function GraphicsStatic.getStatusOfLoadMissionCreatorPhoto(p0) end

--- Returns status of gallery photo fetch, which was requested by [`QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS`](#\_0x2A893980E96B659A).
--- **Native**: `GET_STATUS_OF_SORTED_LIST_OPERATION` (`0xF5BED327CEA362B1`)
---@param scanForSaving boolean
---@return integer result 0 - Succeeded, 1 - In progress, 2 - Failed
function GraphicsStatic.getStatusOfSortedListOperation(scanForSaving) end

--- ```
--- Returns the texture resolution of the passed texture dict+name.
--- Note: Most texture resolutions are doubled compared to the console version of the game.
--- ```
--- **Native**: `GET_TEXTURE_RESOLUTION` (`0x35736EE65BD00C11`)
---@param textureDict string
---@param textureName string
---@return vector3 result
function GraphicsStatic.getTextureResolution(textureDict, textureName) end

--- **Native**: `GOLF_TRAIL_GET_MAX_HEIGHT` (`0xA4819F5E23E2FFAD`)
---@return number result
function GraphicsStatic.golfTrailGetMaxHeight() end

--- **Native**: `GOLF_TRAIL_GET_VISUAL_CONTROL_POINT` (`0xA4664972A9B8F8BA`)
---@param p0 integer
---@return vector3 result
function GraphicsStatic.golfTrailGetVisualControlPoint(p0) end

--- **Native**: `GOLF_TRAIL_SET_COLOUR` (`0x12995F2E53FFA601`)
---@param p0 integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
---@param p4 integer
---@param p5 integer
---@param p6 integer
---@param p7 integer
---@param p8 integer
---@param p9 integer
---@param p10 integer
---@param p11 integer
function GraphicsStatic.golfTrailSetColour(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

--- **Native**: `GOLF_TRAIL_SET_ENABLED` (`0xA51C4B86B71652AE`)
---@param toggle boolean
function GraphicsStatic.golfTrailSetEnabled(toggle) end

--- **Native**: `GOLF_TRAIL_SET_FACING` (`0x06F761EA47C1D3ED`)
---@param p0 boolean
function GraphicsStatic.golfTrailSetFacing(p0) end

--- ```
--- 12 matches across 4 scripts. All 4 scripts were job creators.
--- type ranged from 0 - 2.
--- p4 was always 0.2f. Likely scale.
--- assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).
--- Tested but noticed nothing.
--- ```
--- **Native**: `GOLF_TRAIL_SET_FIXED_CONTROL_POINT` (`0xB1BB03742917A5D6`)
---@param type_ integer
---@param pos vector3
---@param p4 number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function GraphicsStatic.golfTrailSetFixedControlPoint(type_, pos, p4, red, green, blue, alpha) end

--- ```
--- p8 seems to always be false.
--- ```
--- **Native**: `GOLF_TRAIL_SET_PATH` (`0x312342E1A4874F3F`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param p5 number
---@param p6 number
---@param p7 number
---@param p8 boolean
function GraphicsStatic.golfTrailSetPath(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- **Native**: `GOLF_TRAIL_SET_RADIUS` (`0x2485D34E50A22E84`)
---@param p0 number
---@param p1 number
---@param p2 number
function GraphicsStatic.golfTrailSetRadius(p0, p1, p2) end

--- ```
--- Only appeared in Golf & Golf_mp. Parameters were all ptrs
--- ```
--- **Native**: `GOLF_TRAIL_SET_SHADER_PARAMS` (`0x9CFDD90B2B844BF7`)
---@param p0 number
---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
function GraphicsStatic.golfTrailSetShaderParams(p0, p1, p2, p3, p4) end

--- **Native**: `GOLF_TRAIL_SET_TESSELLATION` (`0xDBAA5EC848BA2D46`)
---@param p0 integer
---@param p1 integer
function GraphicsStatic.golfTrailSetTessellation(p0, p1) end

--- **Native**: `GRASS_LOD_RESET_SCRIPT_AREAS` (`0x302C91AB2D477F7E`)
function GraphicsStatic.grassLodResetScriptAreas() end

--- ```
--- Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7, Jenkins: 0x73E96210?
--- ```
--- **Native**: `GRASS_LOD_SHRINK_SCRIPT_AREAS` (`0x6D955F6A9E0295B1`)
---@param coords vector3
---@param radius number
---@param p4 number
---@param p5 number
---@param p6 number
function GraphicsStatic.grassLodShrinkScriptAreas(coords, radius, p4, p5, p6) end

--- ```
--- Only values used in the scripts are:
--- "heist_mp"
--- "heistmap_mp"
--- "instructional_buttons"
--- "heist_pre"
--- ```
--- **Native**: `HAS_SCALEFORM_MOVIE_FILENAME_LOADED` (`0x0C1C5D756FB5F337`)
---@param scaleformName string
---@return boolean result
function GraphicsStatic.hasScaleformMovieFilenameLoaded(scaleformName) end

--- **Native**: `HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED` (`0xDF6E5987D2B4D140`)
---@param hudComponent integer
---@return boolean result
function GraphicsStatic.hasScaleformScriptHudMovieLoaded(hudComponent) end

--- **Native**: `HAS_STREAMED_TEXTURE_DICT_LOADED` (`0x0145F696AAAAD2E4`)
---@param textureDict string
---@return boolean result
function GraphicsStatic.hasStreamedTextureDictLoaded(textureDict) end

--- **Native**: `IS_DECAL_ALIVE` (`0xC694D74949CAFD0C`)
---@param decal integer
---@return boolean result
function GraphicsStatic.isDecalAlive(decal) end

--- **Native**: `GET_IS_PETROL_DECAL_IN_RANGE` (`0x2F09F7976C512404`)
---@param coord vector3
---@param radius number
---@return boolean result
function GraphicsStatic.isPetrolDecalInRange(coord, radius) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `IS_PLAYLIST_UNK` (`0x1F710BFF7DAE6261`)
---@param tvChannel integer
---@param p1 any
---@return boolean result
function GraphicsStatic.isPlaylistUnk(tvChannel, p1) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `IS_SCALEFORM_MOVIE_DELETING` (`0x86255B1FC929E33E`)
---@param scaleformIndex integer Scaleform index returned by [`REQUEST_SCALEFORM_MOVIE`](#\_0x11FE353CF9733E6F) (or similar natives).
---@return boolean result Returns true if a scaleform movie is being deleted from streaming memory (After it has been marked as no longer needed with [`SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED`](#\_0x1D132D614DD86811).
function GraphicsStatic.isScaleformMovieDeleting(scaleformIndex) end

--- methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
--- Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
--- **Native**: `IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY` (`0x768FF8961BA904D6`)
---@param method_return integer The return value of this native: `EndScaleformMovieMethodReturn`
---@return boolean result Returns true if the return value of a scaleform function is ready to be collected
function GraphicsStatic.isScaleformMovieMethodReturnValueReady(method_return) end

--- **Native**: `IS_TRACKED_POINT_VISIBLE` (`0xC45CCDAAC9221CA8`)
---@param point integer
---@return boolean result
function GraphicsStatic.isTrackedPointVisible(point) end

--- ```
--- IS_*
--- ```
--- **Native**: `IS_TV_PLAYLIST_ITEM_PLAYING` (`0x0AD973CA1E077B60`)
---@param videoCliphash integer|string
---@return boolean result
function GraphicsStatic.isTvPlaylistItemPlaying(videoCliphash) end

--- **Native**: `LOAD_MISSION_CREATOR_PHOTO` (`0x4862437A486F91B0`)
---@param p0 string
---@param p3 boolean
---@return boolean result
---@return any p1
---@return any p2
function GraphicsStatic.loadMissionCreatorPhoto(p0, p3) end

--- **Native**: `LOAD_MOVIE_MESH_SET` (`0xB66064452270E8F1`)
---@param movieMeshSetName string
---@return integer result
function GraphicsStatic.loadMovieMeshSet(movieMeshSetName) end

--- **Native**: `MOVE_VEHICLE_DECALS` (`0x84C8D7C2D30D3280`)
---@param p0 any
---@param p1 any
function GraphicsStatic.moveVehicleDecals(p0, p1) end

--- **Native**: `OVERRIDE_INTERIOR_SMOKE_END` (`0xEFB55E7C25D3B3BE`)
function GraphicsStatic.overrideInteriorSmokeEnd() end

--- **Native**: `OVERRIDE_INTERIOR_SMOKE_LEVEL` (`0x1600FD8CF72EBC12`)
---@param level number
function GraphicsStatic.overrideInteriorSmokeLevel(level) end

--- **Native**: `OVERRIDE_INTERIOR_SMOKE_NAME` (`0x2A2A52824DB96700`)
---@param name string
function GraphicsStatic.overrideInteriorSmokeName(name) end

--- ```
--- REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);
--- *uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);
--- PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");
--- ```
--- **Native**: `PATCH_DECAL_DIFFUSE_MAP` (`0x8A35C742130C6080`)
---@param decalType integer
---@param textureDict string
---@param textureName string
function GraphicsStatic.patchDecalDiffuseMap(decalType, textureDict, textureName) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `PLAY_BINK_MOVIE` (`0x70D2CC8A542A973C`)
---@param binkMovie integer
function GraphicsStatic.playBinkMovie(binkMovie) end

--- **Native**: `POP_TIMECYCLE_MODIFIER` (`0x3C8938D7D872211E`)
function GraphicsStatic.popTimecycleModifier() end

--- ```
--- Only one match in the scripts:
--- GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
--- ```
--- **Native**: `PRESET_INTERIOR_AMBIENT_CACHE` (`0xD7021272EB0A451E`)
---@param timecycleModifierName string
function GraphicsStatic.presetInteriorAmbientCache(timecycleModifierName) end

--- **Native**: `PUSH_TIMECYCLE_MODIFIER` (`0x58F735290861E6B4`)
function GraphicsStatic.pushTimecycleModifier() end

--- **Native**: `QUERY_MOVIE_MESH_SET_STATE` (`0x9B6E70C5CEEF4EEB`)
---@param p0 any
---@return any result
function GraphicsStatic.queryMovieMeshSetState(p0) end

--- Queues a scan of all gallery photos.
--- Also see [`GET_STATUS_OF_SORTED_LIST_OPERATION`](#\_0xF5BED327CEA362B1)
--- **Native**: `QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS` (`0x2A893980E96B659A`)
---@param scanForSaving boolean
---@return boolean result Returns true if the operation began.
function GraphicsStatic.queueOperationToCreateSortedListOfPhotos(scanForSaving) end

--- Used with 'NG_filmnoir_BW{01,02}' timecycles and the "NOIR_FILTER_SOUNDS" audioref.
--- **Native**: `REGISTER_NOIR_SCREEN_EFFECT_THIS_FRAME` (`0xA44FF770DFBC5DAE`)
function GraphicsStatic.registerNoirScreenEffectThisFrame() end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `RELEASE_BINK_MOVIE` (`0x04D950EEFA4EED8C`)
---@param binkMovie integer
function GraphicsStatic.releaseBinkMovie(binkMovie) end

--- **Native**: `RELEASE_MOVIE_MESH_SET` (`0xEB119AA014E89183`)
---@param movieMeshSet integer
function GraphicsStatic.releaseMovieMeshSet(movieMeshSet) end

--- **Native**: `REMOVE_DECAL` (`0xED3F346429CCD659`)
---@param decal integer
function GraphicsStatic.removeDecal(decal) end

--- ```
--- Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...
--- ```
--- **Native**: `REMOVE_DECALS_IN_RANGE` (`0x5D6B2D4830A67C62`)
---@param coords vector3
---@param range number
function GraphicsStatic.removeDecalsInRange(coords, range) end

--- **Native**: `REMOVE_PARTICLE_FX_IN_RANGE` (`0xDD19FA1C6D657305`)
---@param coords vector3
---@param radius number
function GraphicsStatic.removeParticleFxInRange(coords, radius) end

--- **Native**: `REMOVE_SCALEFORM_SCRIPT_HUD_MOVIE` (`0xF44A5456AC3F4F97`)
---@param hudComponent integer
function GraphicsStatic.removeScaleformScriptHudMovie(hudComponent) end

--- **Native**: `REMOVE_TCMODIFIER_OVERRIDE` (`0x15E33297C3E8DC60`)
---@param p0 string
function GraphicsStatic.removeTcmodifierOverride(p0) end

--- **Native**: `REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE` (`0x9304881D6F6537EA`)
---@param hudComponent integer
function GraphicsStatic.requestScaleformScriptHudMovie(hudComponent) end

--- ```
--- This function can requests texture dictonaries from following RPFs:
--- scaleform_generic.rpf
--- scaleform_minigames.rpf
--- scaleform_minimap.rpf
--- scaleform_web.rpf
--- last param isnt a toggle
--- ```
--- **Native**: `REQUEST_STREAMED_TEXTURE_DICT` (`0xDFA2EF8E04127DD5`)
---@param textureDict string
---@param p1 boolean
function GraphicsStatic.requestStreamedTextureDict(textureDict, p1) end

--- ```
--- Resets the effect of SET_PARTICLE_FX_OVERRIDE
--- ```
--- **Native**: `RESET_PARTICLE_FX_OVERRIDE` (`0x89C8553DD3274AAE`)
---@param name string
function GraphicsStatic.resetParticleFxOverride(name) end

--- **Native**: `RESET_PAUSED_RENDERPHASES` (`0xE1C8709406F2C41C`)
function GraphicsStatic.resetPausedRenderphases() end

--- This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
--- values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
--- any other scripts attempting to draw.
--- **Native**: `RESET_SCRIPT_GFX_ALIGN` (`0xE3A3DB414A373DAB`)
function GraphicsStatic.resetScriptGfxAlign() end

--- **Native**: `RETURN_TWO` (`0x40AFB081F8ADD4EE`)
---@param p0 integer
---@return integer result
function GraphicsStatic.returnTwo(p0) end

--- **Native**: `SAVE_HIGH_QUALITY_PHOTO` (`0x3DEC726C25A11BAC`)
---@param unused integer
---@return boolean result
function GraphicsStatic.saveHighQualityPhoto(unused) end

--- ```
--- Pushes a boolean for the Scaleform function onto the stack.
--- ```
--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL` (`0xC58424BA936EB458`)
---@param value boolean
function GraphicsStatic.scaleformMovieMethodAddParamBool(value) end

--- ```
--- Pushes a float for the Scaleform function onto the stack.
--- ```
--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT` (`0xD69736AAE04DB51A`)
---@param value number
function GraphicsStatic.scaleformMovieMethodAddParamFloat(value) end

--- ```
--- Pushes an integer for the Scaleform function onto the stack.
--- ```
--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT` (`0xC3D0841A0CC546A6`)
---@param value integer
function GraphicsStatic.scaleformMovieMethodAddParamInt(value) end

--- Values:
--- 0 - Dialogue Brief
--- 1 - Help Text Brief
--- 2 - Mission Objective Brief
--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_LATEST_BRIEF_STRING` (`0xEC52C631A1831C03`)
---@param value integer
function GraphicsStatic.scaleformMovieMethodAddParamLatestBriefString(value) end

--- Adds a literal string to a scaleform movie method.
--- There doesn't seem to be any difference between this and other `SCALEFORM_MOVIE_METHOD_ADD_PARAM_*_STRING` natives in game code.
--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_LITERAL_STRING` (`0x77FE3402004CD1B0`)
---@param string_ string
function GraphicsStatic.scaleformMovieMethodAddParamLiteralString(string_) end

--- ```
--- This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").
--- When switching with a controller, the icons update and become the controller's icons.
--- ```
--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING` (`0xE83A3E3557A56640`)
---@param string_ string
function GraphicsStatic.scaleformMovieMethodAddParamPlayerNameString(string_) end

--- **Native**: `SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING` (`0xBA7148484BD90365`)
---@param string_ string
function GraphicsStatic.scaleformMovieMethodAddParamTextureNameString(string_) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SEETHROUGH_GET_MAX_THICKNESS` (`0x43DBAE39626CE83F`)
---@return number result
function GraphicsStatic.seethroughGetMaxThickness() end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `SEETHROUGH_RESET` (`0x70A64C0234EF522C`)
function GraphicsStatic.seethroughReset() end

--- **Native**: `SEETHROUGH_SET_COLOR_NEAR` (`0x1086127B3A63505E`)
---@param red integer
---@param green integer
---@param blue integer
function GraphicsStatic.seethroughSetColorNear(red, green, blue) end

--- **Native**: `SEETHROUGH_SET_FADE_END_DISTANCE` (`0x9D75795B9DC6EBBF`)
---@param distance number
function GraphicsStatic.seethroughSetFadeEndDistance(distance) end

--- **Native**: `SEETHROUGH_SET_FADE_START_DISTANCE` (`0xA78DE25577300BA1`)
---@param distance number
function GraphicsStatic.seethroughSetFadeStartDistance(distance) end

--- **Native**: `SEETHROUGH_SET_HEATSCALE` (`0xD7D0B00177485411`)
---@param index integer
---@param heatScale number min: 0.0 max: 0.75
function GraphicsStatic.seethroughSetHeatscale(index, heatScale) end

--- **Native**: `SEETHROUGH_SET_HI_LIGHT_INTENSITY` (`0x19E50EB6E33E1D28`)
---@param intensity number
function GraphicsStatic.seethroughSetHiLightIntensity(intensity) end

--- **Native**: `SEETHROUGH_SET_HI_LIGHT_NOISE` (`0x1636D7FC127B10D2`)
---@param noise number
function GraphicsStatic.seethroughSetHiLightNoise(noise) end

--- **Native**: `SEETHROUGH_SET_MAX_THICKNESS` (`0x0C8FAC83902A62DF`)
---@param thickness number min: 1.0 max: 10000.0
function GraphicsStatic.seethroughSetMaxThickness(thickness) end

--- **Native**: `SEETHROUGH_SET_NOISE_AMOUNT_MAX` (`0xFEBFBFDFB66039DE`)
---@param amount number
function GraphicsStatic.seethroughSetNoiseAmountMax(amount) end

--- **Native**: `SEETHROUGH_SET_NOISE_AMOUNT_MIN` (`0xFF5992E1C9E65D05`)
---@param amount number
function GraphicsStatic.seethroughSetNoiseAmountMin(amount) end

--- Does not affect weapons, particles, fire/explosions, flashlights or the sun.
---
--- When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.
---
--- Used in Humane Labs Heist for EMP.
--- **Native**: `SET_ARTIFICIAL_LIGHTS_STATE` (`0x1268615ACE24D504`)
---@param state boolean True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.
function GraphicsStatic.setArtificialLightsState(state) end

--- If "blackout" is enabled, this native allows you to ignore "blackout" for vehicles.
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `SET_ARTIFICIAL_LIGHTS_STATE_AFFECTS_VEHICLES` (`0xE2B187C0939B3D32`)
---@param toggle boolean
function GraphicsStatic.setArtificialLightsStateAffectsVehicles(toggle) end

--- **Native**: `SET_BACKFACECULLING` (`0x23BA6B0C2AD7B0D3`)
---@param toggle boolean
function GraphicsStatic.setBackfaceculling(toggle) end

--- Creates an integer (usually 1) for a BINK movie to be called with other natives.
--- [List of all BINK movies (alphabetically ordered) as of b2802](https://gist.github.com/ItsJunction/8046f28c29ea8ff2821e9e4f933f595f)
--- **Native**: `SET_BINK_MOVIE` (`0x338D9F609FD632DB`)
---@param name string The BINK movie to play (with or without file extension).
---@return integer result
function GraphicsStatic.setBinkMovie(name) end

--- Seeks a BINK movie to a specified position.
--- **Native**: `SET_BINK_MOVIE_TIME` (`0x0CB6B3446855B57A`)
---@param binkMovie integer The movie that is being played.
---@param progress number As a percentage (0.0 - 100.0).
function GraphicsStatic.setBinkMovieTime(binkMovie, progress) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `SET_BINK_MOVIE_UNK_2` (`0xF816F2933752322D`)
---@param binkMovie integer
---@param p1 boolean
function GraphicsStatic.setBinkMovieUnk2(binkMovie, p1) end

--- ```
--- binkMovie: Is return value from _SET_BINK_MOVIE. Has something to do with bink volume? (audRequestedSettings::SetVolumeCurveScale)
--- ```
---
--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_BINK_MOVIE_VOLUME` (`0xAFF33B1178172223`)
---@param binkMovie integer
---@param value number
function GraphicsStatic.setBinkMovieVolume(binkMovie, value) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `SET_BINK_SHOULD_SKIP` (`0x6805D58CAA427B72`)
---@param binkMovie integer
---@param shouldSkip boolean
function GraphicsStatic.setBinkShouldSkip(binkMovie, shouldSkip) end

--- **Native**: `SET_CURRENT_PLAYER_TCMODIFIER` (`0xBBF327DED94E4DEB`)
---@param modifierName string
function GraphicsStatic.setCurrentPlayerTcmodifier(modifierName) end

--- ```
--- NOTE: Debugging functions are not present in the retail version of the game.
--- ```
--- **Native**: `SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE` (`0x175B6BFC15CDD0C5`)
---@param enabled boolean
function GraphicsStatic.setDebugLinesAndSpheresDrawingActive(enabled) end

--- **Native**: `SET_DISABLE_DECAL_RENDERING_THIS_FRAME` (`0x4B5CFC83122DF602`)
function GraphicsStatic.setDisableDecalRenderingThisFrame() end

--- Prevents gas / petrol decals (aka gas / petrol trails and puddles) to be ignited on fire during the frame in which the native is called.
---
--- **Note**: This native needs to be called every frame to prevent ignition.
--- **Native**: `SET_DISABLE_PETROL_DECALS_IGNITING_THIS_FRAME` (`0xD9454B5752C857DC`)
function GraphicsStatic.setDisablePetrolDecalsIgnitingThisFrame() end

--- Sets the on-screen drawing origin for draw-functions in world coordinates.
---
--- The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#\_0xFF0B610F6BE0D7AF) and is limited to 32 different origins each frame.
--- **Native**: `SET_DRAW_ORIGIN` (`0xAA0008F3BBB8F416`)
---@param coords vector3
---@param p3 any
function GraphicsStatic.setDrawOrigin(coords, p3) end

--- **Native**: `SET_EXTRA_TIMECYCLE_MODIFIER` (`0x5096FD9CCB49056D`)
---@param modifierName string
function GraphicsStatic.setExtraTimecycleModifier(modifierName) end

--- ```
--- Purpose of p0 and p1 unknown.
--- ```
--- **Native**: `SET_FLASH` (`0x0AB84296FED9CFC6`)
---@param p0 number
---@param p1 number
---@param fadeIn number
---@param duration number
---@param fadeOut number
function GraphicsStatic.setFlash(p0, p1, fadeIn, duration, fadeOut) end

--- ```
--- Forces footstep tracks on all surfaces.
--- USE_/USING_*
--- ```
--- **Native**: `SET_FORCE_PED_FOOTSTEPS_TRACKS` (`0xAEEDAD1420C65CC0`)
---@param toggle boolean
function GraphicsStatic.setForcePedFootstepsTracks(toggle) end

--- ```
--- Forces vehicle trails on all surfaces.
--- USE_/USING_*
--- ```
--- **Native**: `SET_FORCE_VEHICLE_TRAILS` (`0x4CC7F0FEA5283FE0`)
---@param toggle boolean
function GraphicsStatic.setForceVehicleTrails(toggle) end

--- **Native**: `SET_HIDOF_OVERRIDE` (`0xBA3D65906822BED5`)
---@param p0 boolean
---@param p1 boolean
---@param nearplaneOut number
---@param nearplaneIn number
---@param farplaneOut number
---@param farplaneIn number
function GraphicsStatic.setHidofOverride(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn) end

--- **Native**: `SET_NEXT_PLAYER_TCMODIFIER` (`0xBF59707B3E5ED531`)
---@param modifierName string
function GraphicsStatic.setNextPlayerTcmodifier(modifierName) end

--- ```
--- Enables Night Vision.
--- Example:
--- C#: Function.Call(Hash.SET_NIGHTVISION, true);
--- C++: GRAPHICS::SET_NIGHTVISION(true);
--- BOOL toggle:
--- true = turns night vision on for your player.
--- false = turns night vision off for your player.
--- ```
--- **Native**: `SET_NIGHTVISION` (`0x18F621F7A5B1F85D`)
---@param toggle boolean
function GraphicsStatic.setNightvision(toggle) end

--- **Native**: `SET_NOISEOVERIDE` (`0xE787BF1C5CF823C9`)
---@param toggle boolean
function GraphicsStatic.setNoiseoveride(toggle) end

--- **Native**: `SET_NOISINESSOVERIDE` (`0xCB6A7C3BB17A0C67`)
---@param value number
function GraphicsStatic.setNoisinessoveride(value) end

--- **Native**: `SET_PARTICLE_FX_BULLET_IMPACT_SCALE` (`0x27E32866E9A5C416`)
---@param scale number
function GraphicsStatic.setParticleFxBulletImpactScale(scale) end

--- **Native**: `SET_PARTICLE_FX_CAM_INSIDE_VEHICLE` (`0xEEC4047028426510`)
---@param p0 boolean
function GraphicsStatic.setParticleFxCamInsideVehicle(p0) end

--- ```
--- Usage example for C#:
--- Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });
--- 		Note: the argument alpha ranges from 0.0f-1.0f !
--- ```
--- **Native**: `SET_PARTICLE_FX_NON_LOOPED_ALPHA` (`0x77168D722C58B2FC`)
---@param alpha number
function GraphicsStatic.setParticleFxNonLoopedAlpha(alpha) end

--- Only works on some fx's, while on others it might SEEM to work "properly", but the colors can be "strange" or even completly different from what you've expected. Reason for this is that those fx's might already have colors "baked into them" which then start to act as a "mixing palette", resulting in a different color than expected. A hypothetical example of this would be if the fx itself is already full (bright) red (RGB: 1.0, 0.0, 0.0) and you then set the color to (bright) green (RGB: 0.0, 1.0, 0.0), that it MIGHT result in Yellow (RGB: 1.0, 1.0, 0.0).
---
--- This doc previously stated that the set color is **NOT** networked, however it does actually turns out to be networked. Tested with all fireworks effects and several other FX effects resulted in colored fx effects on all clients when used in combination with [START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD](#\_0xF56B8137DF10135D).
--- This might however not be the case for all types of particle fx's, so it's recommended to test this thoroughly with multiple clients before releasing your script for example.
--- **Native**: `SET_PARTICLE_FX_NON_LOOPED_COLOUR` (`0x26143A59EF48B262`)
---@param r number Red (0.0 - 1.0)
---@param g number Green (0.0 - 1.0)
---@param b number Blue (0.0 - 1.0)
function GraphicsStatic.setParticleFxNonLoopedColour(r, g, b) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `SET_PARTICLE_FX_NON_LOOPED_EMITTER_SCALE` (`0x1E2E01C00837D26E`)
---@param p0 number
---@param p1 number
---@param scale number
function GraphicsStatic.setParticleFxNonLoopedEmitterScale(p0, p1, scale) end

--- **Native**: `SET_PARTICLE_FX_OVERRIDE` (`0xEA1E2D93F6F75ED9`)
---@param oldAsset string
---@param newAsset string
function GraphicsStatic.setParticleFxOverride(oldAsset, newAsset) end

--- **Native**: `SET_PARTICLE_FX_SHOOTOUT_BOAT` (`0x96EF97DAEB89BEF5`)
---@param p0 any
function GraphicsStatic.setParticleFxShootoutBoat(p0) end

--- **Native**: `SET_PLAYER_TCMODIFIER_TRANSITION` (`0xBDEB86F4D5809204`)
---@param value number
function GraphicsStatic.setPlayerTcmodifierTransition(value) end

--- ```
--- NativeDB Introduced: v573
--- ```
---
--- Configures a Scaleform movie to render to a large render target (1280x720), which is useful for ensuring higher quality and clarity in certain display scenarios. Such as displaying the name of an organization (CEO Office) in a visually impactful way for example.
--- **Native**: `SET_SCALEFORM_MOVIE_TO_USE_LARGE_RT` (`0x32F34FF7F617643B`)
---@param scaleformMovieId integer The handle of the Scaleform to be used.
---@param useLargeRT boolean A boolean switch to enable/disable the use of the large rendertarget.
function GraphicsStatic.setScaleformMovieToUseLargeRt(scaleformMovieId, useLargeRT) end

--- This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
--- independent of the player's safe zone configuration.
---
--- These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
--- for default alignment.
---
--- Valid values for `horizontalAlign`, from original documentation:
---
--- *   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
---     the right side of the screen.
--- *   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
---     centered.
--- *   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
---     from the right side of the screen, both move with the right side of the screen.
---
--- Valid values for `verticalAlign`, from original documentation:
---
--- *   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
---     rather centered.
--- *   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
---     different from 66.
--- *   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
---
--- Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
--- canonical value for this is 'I' (73).
---
--- For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
--- axis.
---
--- To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
--- **Native**: `SET_SCRIPT_GFX_ALIGN` (`0xB8A850F20A067EB6`)
---@param horizontalAlign integer The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
---@param verticalAlign integer The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').
function GraphicsStatic.setScriptGfxAlign(horizontalAlign, verticalAlign) end

--- Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
--- expects the width/height to be configured using this native in order to get a proper starting position for the draw
--- command.
--- **Native**: `SET_SCRIPT_GFX_ALIGN_PARAMS` (`0xF5A2C681787E579D`)
---@param x number The X offset for the item to be drawn.
---@param y number The Y offset for the item to be drawn.
---@param w number The width of the item to be drawn.
---@param h number The height of the item to be drawn.
function GraphicsStatic.setScriptGfxAlignParams(x, y, w, h) end

--- Sets a flag defining whether or not script draw commands should continue being drawn behind the pause menu. This is usually used for TV channels and other draw commands that are used with a world render target.
--- **Native**: `SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU` (`0xC6372ECD45D73BCD`)
---@param flag boolean A boolean value.
function GraphicsStatic.setScriptGfxDrawBehindPausemenu(flag) end

--- Sets the draw order for script draw commands.
--- Examples from decompiled scripts:
--- GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
--- GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
--- GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
--- GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
---
--- ```cpp
--- enum eGfxDrawOrder
--- {
---     GFX_ORDER_BEFORE_HUD_PRIORITY_LOW = 0,
---     GFX_ORDER_BEFORE_HUD = 1,
---     GFX_ORDER_BEFORE_HUD_PRIORITY_HIGH = 2,
---     GFX_ORDER_AFTER_HUD_PRIORITY_LOW = 3,
---     GFX_ORDER_AFTER_HUD = 4,
---     GFX_ORDER_AFTER_HUD_PRIORITY_HIGH = 5,
---     GFX_ORDER_AFTER_FADE_PRIORITY_LOW = 6,
---     GFX_ORDER_AFTER_FADE = 7,
---     GFX_ORDER_AFTER_FADE_PRIORITY_HIGH = 8,
--- }
--- ```
--- **Native**: `SET_SCRIPT_GFX_DRAW_ORDER` (`0x61BB1D9B3A95D802`)
---@param order fx.Enum.GfxDrawOrder|integer The intended draw order/layer.
function GraphicsStatic.setScriptGfxDrawOrder(order) end

--- ```
--- Toggles Heatvision on/off.
--- ```
--- **Native**: `SET_SEETHROUGH` (`0x7E08924259E08CE0`)
---@param toggle boolean
function GraphicsStatic.setSeethrough(toggle) end

--- **Native**: `SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED` (`0xBE2CACCF5A8AA805`)
---@param textureDict string
function GraphicsStatic.setStreamedTextureDictAsNoLongerNeeded(textureDict) end

--- ```
--- Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")
--- Parameters:
--- modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)
--- ```
--- **Native**: `SET_TIMECYCLE_MODIFIER` (`0x2C933ABF17A1DF41`)
---@param modifierName string
function GraphicsStatic.setTimecycleModifier(modifierName) end

--- **Native**: `SET_TIMECYCLE_MODIFIER_STRENGTH` (`0x82E7FFCD5B2326B3`)
---@param strength number
function GraphicsStatic.setTimecycleModifierStrength(strength) end

--- **Native**: `SET_TRACKED_POINT_INFO` (`0x164ECBB3CF750CB0`)
---@param point integer
---@param coords vector3
---@param radius number
function GraphicsStatic.setTrackedPointInfo(point, coords, radius) end

--- This native doesn't work like [`SetWeatherTypeTransition`](#\_0x578C752848ECFA0C).
--- **Native**: `SET_TRANSITION_TIMECYCLE_MODIFIER` (`0x3BCF567485E1971C`)
---@param modifierName string The name of a timecycle
---@param transition number The speed to transition to `modifierName`. Appears to be half-seconds (?)
function GraphicsStatic.setTransitionTimecycleModifier(modifierName, transition) end

--- ```
--- Probably changes tvs from being a 3d audio to being "global" audio
--- ```
--- **Native**: `SET_TV_AUDIO_FRONTEND` (`0x113D2C5DC57E1774`)
---@param toggle boolean
function GraphicsStatic.setTvAudioFrontend(toggle) end

--- Loads specified video sequence into the TV Channel
--- TV_Channel ranges from 0-2
--- VideoSequence can be any of the following:
--- "PL_STD_CNT" CNT Standard Channel
--- "PL_STD_WZL" Weazel Standard Channel
--- "PL_LO_CNT"
--- "PL_LO_WZL"
--- "PL_SP_WORKOUT"
--- "PL_SP_INV" - Jay Norris Assassination Mission Fail
--- "PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
--- "PL_LO_RS" - Righteous Slaughter Ad
--- "PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
--- "PL_SP_PLSH1\_INTRO"
--- "PL_LES1\_FAME_OR_SHAME"
--- "PL_STD_WZL_FOS_EP2"
--- "PL_MP_WEAZEL" - Weazel Logo on loop
--- "PL_MP_CCTV" - Generic CCTV loop
--- Restart:
--- 0=video sequence continues as normal
--- 1=sequence restarts from beginning every time that channel is selected
--- The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
--- https://pastebin.com/zUzGB6h7
--- **Native**: `SET_TV_CHANNEL_PLAYLIST` (`0xF7B38B8305F1FE8B`)
---@param tvChannel integer
---@param playlistName string
---@param restart boolean
function GraphicsStatic.setTvChannelPlaylist(tvChannel, playlistName, restart) end

--- **Native**: `SET_TV_CHANNEL_PLAYLIST_AT_HOUR` (`0x2201C576FACAEBE8`)
---@param tvChannel integer
---@param playlistName string
---@param hour integer
function GraphicsStatic.setTvChannelPlaylistAtHour(tvChannel, playlistName, hour) end

--- NOTE: the [USE_PARTICLE_FX_ASSET](#\_0x6C38AF3693A69A91) needs to be called before EVERY StartNetworkedParticleFxNonLoopedAtCoord(....) call!
---
--- List with lots of particle effects: https://vespura.com/fivem/particle-list/
---
--- Note: Not all particles on this list are for non looped and vice versa, neither are all of them suited/meant to have SetParticleFxNonLoopedColour(....) called on them.
---
--- ```
--- NativeDB Added Parameter 12: BOOL p11
--- ```
--- **Native**: `START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD` (`0xF56B8137DF10135D`)
---@param effectName string
---@param pos vector3
---@param rot vector3
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return boolean result
function GraphicsStatic.startNetworkedParticleFxNonLoopedAtCoord(effectName, pos, rot, scale, xAxis, yAxis, zAxis) end

--- **Native**: `START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY` (`0xC95EB1DB6E92113D`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param scale number
---@param axisX boolean
---@param axisY boolean
---@param axisZ boolean
---@return boolean result
function GraphicsStatic.startNetworkedParticleFxNonLoopedOnEntity(effectName, entity, offset, rot, scale, axisX, axisY, axisZ) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE` (`0x02B1F2A72E0F5325`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param boneIndex integer
---@param scale number
---@param axisX boolean
---@param axisY boolean
---@param axisZ boolean
---@return boolean result
function GraphicsStatic.startNetworkedParticleFxNonLoopedOnEntityBone(effectName, entity, offset, rot, boneIndex, scale, axisX, axisY, axisZ) end

--- **Native**: `START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE` (`0xA41B6A43642AC2CF`)
---@param effectName string
---@param ped fx.Ped|integer
---@param offset vector3
---@param rot vector3
---@param boneIndex integer
---@param scale number
---@param axisX boolean
---@param axisY boolean
---@param axisZ boolean
---@return boolean result
function GraphicsStatic.startNetworkedParticleFxNonLoopedOnPedBone(effectName, ped, offset, rot, boneIndex, scale, axisX, axisY, axisZ) end

--- ```
--- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);
--- Axis - Invert Axis Flags
--- list: pastebin.com/N9unUFWY
--- -------------------------------------------------------------------
--- C#
--- Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.
--- char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc
--- float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates
--- float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.
--- float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f
--- bool xaxis, yaxis, zaxis = To bool the axis values.
--- example:
--- Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);
--- ```
--- **Native**: `START_PARTICLE_FX_NON_LOOPED_AT_COORD` (`0x25129531F77B9ED3`)
---@param effectName string
---@param pos vector3
---@param rot vector3
---@param scale number
---@param xAxis boolean
---@param yAxis boolean
---@param zAxis boolean
---@return integer result
function GraphicsStatic.startParticleFxNonLoopedAtCoord(effectName, pos, rot, scale, xAxis, yAxis, zAxis) end

--- ```
--- Starts a particle effect on an entity for example your player.
--- List: pastebin.com/N9unUFWY
--- Example:
--- C#:
--- Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);
--- Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE
--- however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native
--- ```
--- **Native**: `START_PARTICLE_FX_NON_LOOPED_ON_ENTITY` (`0x0D53A3B8DA0809D2`)
---@param effectName string
---@param entity fx.Entity|integer
---@param offset vector3
---@param rot vector3
---@param scale number
---@param axisX boolean
---@param axisY boolean
---@param axisZ boolean
---@return boolean result
function GraphicsStatic.startParticleFxNonLoopedOnEntity(effectName, entity, offset, rot, scale, axisX, axisY, axisZ) end

--- ```
--- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);
--- Axis - Invert Axis Flags
--- list: pastebin.com/N9unUFWY
--- ```
--- **Native**: `START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE` (`0x0E7E72961BA18619`)
---@param effectName string
---@param ped fx.Ped|integer
---@param offset vector3
---@param rot vector3
---@param boneIndex integer
---@param scale number
---@param axisX boolean
---@param axisY boolean
---@param axisZ boolean
---@return boolean result
function GraphicsStatic.startParticleFxNonLoopedOnPedBone(effectName, ped, offset, rot, boneIndex, scale, axisX, axisY, axisZ) end

--- **Native**: `START_PETROL_TRAIL_DECALS` (`0x99AC7F0D8B9C893D`)
---@param p0 number
function GraphicsStatic.startPetrolTrailDecals(p0) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `STOP_BINK_MOVIE` (`0x63606A61DE68898A`)
---@param binkMovie integer
function GraphicsStatic.stopBinkMovie(binkMovie) end

--- This native enables/disables the gold putting grid display (https://i.imgur.com/TC6cku6.png).
--- This requires these two natives to be called as well to configure the grid: [`TERRAINGRID_SET_PARAMS`](#\_0x1C4FC5752BCD8E48) and [`TERRAINGRID_SET_COLOURS`](#\_0x5CE62918F8D703C7).
--- **Native**: `TERRAINGRID_ACTIVATE` (`0xA356990E161C9E65`)
---@param toggle boolean Enables or disables the golf putting grid display.
function GraphicsStatic.terraingridActivate(toggle) end

--- This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#\_0xA356990E161C9E65) and [`TERRAINGRID_SET_PARAMS`](#\_0x1C4FC5752BCD8E48).
--- This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
--- All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
---
--- Old description:
--- Only called in golf and golf_mp\
--- parameters used are\
--- GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
--- **Native**: `TERRAINGRID_SET_COLOURS` (`0x5CE62918F8D703C7`)
---@param lowR integer red value for the lower level
---@param lowG integer green value for the lower level
---@param lowB integer blue value for the lower level
---@param lowAlpha integer alpha value for the lower level
---@param R integer red value for the normal level
---@param G integer green value for the normal level
---@param B integer blue value for the normal level
---@param Alpha integer alpha value for the normal level
---@param highR integer red value for the upper level
---@param highG integer green value for the upper level
---@param highB integer blue value for the upper level
---@param highAlpha integer alpha value for the upper level
function GraphicsStatic.terraingridSetColours(lowR, lowG, lowB, lowAlpha, R, G, B, Alpha, highR, highG, highB, highAlpha) end

--- This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#\_0xA356990E161C9E65) and [`TERRAINGRID_SET_COLOURS`](#\_0x5CE62918F8D703C7).
---
--- This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
---
--- All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
--- **Native**: `TERRAINGRID_SET_PARAMS` (`0x1C4FC5752BCD8E48`)
---@param coords vector3 Grid center coord.
---@param p3 number Not sure, but seems to be the amount of lines top/bottom there are in the grid. -1.0 works best.
---@param rotation number Grid rotation (keep between 0.0 and 1.0).
---@param p5 number Offset top/bottom (? not sure about this one, seems weird).
---@param width number Grid width (usually 15.0).
---@param height number Grid height (usually 15.0).
---@param p8 number Not sure, but seems to be the amount of lines left/right there are in the grid. -1.0 works best.
---@param scale number Zoom / scale (higher values = smaller (more) squares) (lower values = bigger (less) squares).
---@param glowIntensity number glow intensity / opacity (40.0 is fine for daylight, 15.0 is fine for night time).
---@param normalHeight number The z coord for 'normal' height (white grid lines level).
---@param heightDiff number This is the height difference/margin used for line color changes. 0.2 works fine (normalHeight + 0.2 = yellow, normalHeight - 0.2 = red).
function GraphicsStatic.terraingridSetParams(coords, p3, rotation, p5, width, height, p8, scale, glowIntensity, normalHeight, heightDiff) end

--- Switches the rendering display to exclude everything except PostFX, resulting in a frozen screen before the UI pass.
--- **Native**: `TOGGLE_PAUSED_RENDERPHASES` (`0xDFC252D8A3E15AB7`)
---@param toggle boolean Setting it to `false` will exclude render updates as mentioned in the description, until it's set back to `true`.
function GraphicsStatic.togglePausedRenderphases(toggle) end

--- **Native**: `TRIGGER_SCREENBLUR_FADE_IN` (`0xA328A24AAA6B7FDC`)
---@param transitionTime number Time in milliseconds to transition into a fully blurred screen
---@return boolean result
function GraphicsStatic.triggerScreenblurFadeIn(transitionTime) end

--- **Native**: `TRIGGER_SCREENBLUR_FADE_OUT` (`0xEFACC8AEF94430D5`)
---@param transitionTime number
---@return boolean result
function GraphicsStatic.triggerScreenblurFadeOut(transitionTime) end

--- **Native**: `UI3DSCENE_IS_AVAILABLE` (`0xD3A10FC7FD8D98CD`)
---@return boolean result
function GraphicsStatic.ui3dsceneIsAvailable() end

--- ```
--- All presets can be found in common\data\ui\uiscenes.meta
--- ```
--- **Native**: `UI3DSCENE_PUSH_PRESET` (`0xF1CEA8A4198D8E9A`)
---@param presetName string
---@return boolean result
function GraphicsStatic.ui3dscenePushPreset(presetName) end

--- ```
--- GRAPHICS::UNPATCH_DECAL_DIFFUSE_MAP(9123);
--- GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");
--- ```
--- **Native**: `UNPATCH_DECAL_DIFFUSE_MAP` (`0xB7ED70C49521A61D`)
---@param decalType integer
function GraphicsStatic.unpatchDecalDiffuseMap(decalType) end

--- ```
--- From the b678d decompiled scripts:
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");
---  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");
--- ```
--- **Native**: `USE_PARTICLE_FX_ASSET` (`0x6C38AF3693A69A91`)
---@param name string
function GraphicsStatic.useParticleFxAsset(name) end

--- **Native**: `WASH_DECALS_IN_RANGE` (`0x9C30613D50A6ADEF`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function GraphicsStatic.washDecalsInRange(p0, p1, p2, p3, p4) end

--- Loads the resource and returns a Promise (never yields). Resolves with `hudComponent`.
--- Rejects with a TimeoutError after `timeoutMs` (default 10000).
--- Raw version: `REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE` / `HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED`.
---@param hudComponent integer
---@param timeoutMs? integer
---@return fx.Promise<integer>
function GraphicsStatic.loadScaleformScriptHudMovieAsync(hudComponent, timeoutMs) end

