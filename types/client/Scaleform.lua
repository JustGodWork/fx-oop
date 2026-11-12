---@meta
---@diagnostic disable
-- fx.Scaleform (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Scaleform
---@field handle integer Raw handle.
---@field hasContainerMovieLoadedIntoParent boolean (read-only) [HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT]
---@field hasLoaded boolean (read-only) [HAS_SCALEFORM_MOVIE_LOADED]
local Scaleform = {}

---Calls a movie method. Parameters by Lua type: string -> PLAYER_NAME_STRING, integer -> INT, float -> FLOAT, boolean -> BOOL.
---@param method string
---@param ... string|number|boolean
---@return fx.Scaleform self
function Scaleform:call(method, ...) end

---Calls a movie method and waits for its return value (needs at least one frame, 1 s timeout).
---@param method string
---@param resultType? "int"|"bool"|"string" default "int"
---@param ... string|number|boolean
---@return fx.Promise<integer|boolean|string> result Typed by `resultType`
function Scaleform:callWithResultAsync(method, resultType, ...) end

--- ```
--- Push a function from the Scaleform onto the stack
--- ```
--- **Native**: `BEGIN_SCALEFORM_MOVIE_METHOD` (`0xF6E48914C7A8694E`)
---@param methodName string
---@return boolean result
function Scaleform:beginMethod(methodName) end

--- ```
--- Calls the Scaleform function.
--- ```
--- **Native**: `CALL_SCALEFORM_MOVIE_METHOD` (`0xFBD96D87AC96D533`)
---@param method string
---@return fx.Scaleform self
function Scaleform:callMethod(method) end

--- ```
--- Calls the Scaleform function and passes the parameters as floats.
--- The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.
--- ```
--- **Native**: `CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER` (`0xD0837058AE2E4BEE`)
---@param methodName string
---@param param1 number
---@param param2 number
---@param param3 number
---@param param4 number
---@param param5 number
---@return fx.Scaleform self
function Scaleform:callMethodWithNumber(methodName, param1, param2, param3, param4, param5) end

--- ```
--- Calls the Scaleform function and passes both float and string parameters (in their respective order).
--- The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).
--- NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.
--- Examples:
--- // function MY_FUNCTION(floatParam1, floatParam2, stringParam)
--- GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);
--- // function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)
--- GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);
--- ```
--- **Native**: `CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING` (`0xEF662D8D57E290B1`)
---@param methodName string
---@param floatParam1 number
---@param floatParam2 number
---@param floatParam3 number
---@param floatParam4 number
---@param floatParam5 number
---@param stringParam1 string
---@param stringParam2 string
---@param stringParam3 string
---@param stringParam4 string
---@param stringParam5 string
---@return fx.Scaleform self
function Scaleform:callMethodWithNumberAndString(methodName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5) end

--- ```
--- Calls the Scaleform function and passes the parameters as strings.
--- The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).
--- ```
--- **Native**: `CALL_SCALEFORM_MOVIE_METHOD_WITH_STRING` (`0x51BC1ED3CC44E8F7`)
---@param methodName string
---@param param1 string
---@param param2 string
---@param param3 string
---@param param4 string
---@param param5 string
---@return fx.Scaleform self
function Scaleform:callMethodWithString(methodName, param1, param2, param3, param4, param5) end

--- **Native**: `DRAW_SCALEFORM_MOVIE` (`0x54972ADAF0294A93`)
---@param x number
---@param y number
---@param width number
---@param height number
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param unk integer
---@return fx.Scaleform self
function Scaleform:draw(x, y, width, height, red, green, blue, alpha, unk) end

--- **Native**: `DRAW_SCALEFORM_MOVIE_3D` (`0x87D51D72255D4E78`)
---@param pos vector3
---@param rot vector3
---@param p7 number
---@param sharpness number
---@param p9 number
---@param scale vector3
---@param p13 any
---@return fx.Scaleform self
function Scaleform:draw3d(pos, rot, p7, sharpness, p9, scale, p13) end

--- **Native**: `DRAW_SCALEFORM_MOVIE_3D_SOLID` (`0x1CE592FDC749D6F5`)
---@param pos vector3
---@param rot vector3
---@param p7 number
---@param p8 number
---@param p9 number
---@param scale vector3
---@param p13 any
---@return fx.Scaleform self
function Scaleform:draw3dSolid(pos, rot, p7, p8, p9, scale, p13) end

--- ```
--- unk is not used so no need
--- ```
--- **Native**: `DRAW_SCALEFORM_MOVIE_FULLSCREEN` (`0x0DF606929C105BE1`)
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param unk integer
---@return fx.Scaleform self
function Scaleform:drawFullscreen(red, green, blue, alpha, unk) end

--- Gets mouse selection data from scaleforms with mouse support. Must be checked every frame.
--- Returns item index if using the COLOUR_SWITCHER\_02 scaleform.
--- Selection types, found in MOUSE_EVENTS.as:
--- MOUSE_DRAG_OUT = 0;
--- MOUSE_DRAG_OVER = 1;
--- MOUSE_DOWN = 2;
--- MOUSE_MOVE = 3;
--- MOUSE_UP = 4;
--- MOUSE_PRESS = 5;
--- MOUSE_RELEASE = 6;
--- MOUSE_RELEASE_OUTSIDE = 7;
--- MOUSE_ROLL_OUT = 8;
--- MOUSE_ROLL_OVER = 9;
--- MOUSE_WHEEL_UP = 10;
--- MOUSE_WHEEL_DOWN = 11;
---
--- Scaleforms that this works with:
---
--- *   COLOUR_SWITCHER\_02
--- *   MP_RESULTS_PANEL
--- *   MP_NEXT_JOB_SELECTION
--- *   SC_LEADERBOARD
---     Probably works with other scaleforms, needs more research.
---     In order to use this Native you MUST have controls 239, 240, 237, 238 enabled!
---     This native, due to its erroneous redundancy of the returned boolean value, works differently in C#: shifting the parameters (where `received` becomes `selectionType` and so on making the fourth parameter unused and always 0).
--- **Native**: `GET_SCALEFORM_MOVIE_CURSOR_SELECTION` (`0x632B2940C67F4EA9`)
---@return boolean result * **retVal** Returns true if MOUSE_EVENT callback from Scaleforms has been called.
---@return boolean received Returns a boolean indicating if the data was received successfully (in Lua).
---@return integer selectionType The type of MouseEvent specified above.
---@return integer context Context of the slot the mouse is hovering on.
---@return integer slotIndex Index of the slot the mouse is hovering on.
function Scaleform:getCursorSelection() end

--- Passes keyboard input to scaleform. You must call this native every frame. Once an input occurs, this native will return true and call `SET_PC_KEY` scaleform movie method with the key that has been inputted.
---
--- The key parameter which is passed to the scaleform can also be: "BACKSPACE", "ENTER" or "\x1b" (Which is ESC).
--- This native is only used in `web_browser.c` as of game build 2944.
--- **Native**: `PASS_KEYBOARD_INPUT_TO_SCALEFORM` (`0xD1C7CB175E012964`)
---@return boolean result Bool indicating if an input occurred this frame and was passed to the scaleform.
function Scaleform:passKeyboardInput() end

--- **Native**: `SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED` (`0x1D132D614DD86811`)
---@return nil
function Scaleform:release() end

--- Adjusts a scaleform movie's dimensions to fit a large rendertarget. Mostly used in casino scripts.
--- **Native**: `SET_SCALEFORM_MOVIE_TO_USE_SUPER_LARGE_RT` (`0xE6A9F00D4240B519`)
---@param toggle boolean
---@return fx.Scaleform self
function Scaleform:setToUseSuperLargeRt(toggle) end

--- **Native**: `SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME` (`0x6D8EB211944DCE08`)
---@param toggle boolean
---@return fx.Scaleform self
function Scaleform:setToUseSystemTime(toggle) end

---@class fx.ScaleformStatic
---@overload fun(handle: integer): fx.Scaleform?
local ScaleformStatic = {}

---Requests the movie and waits until it is loaded. Draw it every frame with `sf:drawFullscreen(255, 255, 255, 255, 0)`,
---release it with `sf:release()`.
---@param name string
---@param options? { instance?: boolean, timeout?: integer } instance: REQUEST_SCALEFORM_MOVIE_INSTANCE (ultrawide)
---@return fx.Promise<fx.Scaleform>
function ScaleformStatic.loadAsync(name, options) end

--- True when value is an fx.Scaleform, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function ScaleformStatic.is(value) end

--- **Native**: `REQUEST_SCALEFORM_MOVIE` (`0x11FE353CF9733E6F`)
---@param scaleformName string
---@return fx.Scaleform? result
function ScaleformStatic.request(scaleformName) end

--- Same as [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F), except it seems to fix stretched scaleforms on ultrawide.
--- **Native**: `REQUEST_SCALEFORM_MOVIE_INSTANCE` (`0xC514489CFB8AF806`)
---@param scaleformName string
---@return fx.Scaleform? result
function ScaleformStatic.requestInstance(scaleformName) end

--- Requests a scaleform movie that doesn't render when the game is paused (With [`SET_GAME_PAUSED`](#\_0x577D1284D6873711)).
--- **Native**: `REQUEST_SCALEFORM_MOVIE_SKIP_RENDER_WHILE_PAUSED` (`0xBD06C611BB9048C2`)
---@param scaleformName string
---@return fx.Scaleform? result
function ScaleformStatic.requestSkipRenderWhilePaused(scaleformName) end

--- Requests a scaleform movie, which has no widescreen adjustments while rendering (Useful for when your scaleform doesn't fully draw on the screen and borders are visible).
--- **Native**: `REQUEST_SCALEFORM_MOVIE_WITH_IGNORE_SUPER_WIDESCREEN` (`0x65E7E78842E74CDB`)
---@param scaleformName string
---@return fx.Scaleform? result
function ScaleformStatic.requestWithIgnoreSuperWidescreen(scaleformName) end

