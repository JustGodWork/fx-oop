---@meta
---@diagnostic disable
-- fx.System (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.System
local SystemStatic = {}

--- ```
--- I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
--- ```
--- **Native**: `CEIL` (`0x11E019C8F43ACC8A`)
---@param value number
---@return integer result
function SystemStatic.ceil(value) end

--- Returns the cosine of the given number.
--- **Native**: `COS` (`0xD0FFB162F40A139C`)
---@param value number The number of degrees (in degrees, not radians)
---@return number result The cosine of the given number
function SystemStatic.cos(value) end

--- **Native**: `FLOOR` (`0xF34EE736CF047844`)
---@param value number
---@return integer result
function SystemStatic.floor(value) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `LOG10` (`0xE816E655DE37FE20`)
---@param value number
---@return number result
function SystemStatic.log10(value) end

--- **Native**: `POW` (`0xE3621CC40F31FE2E`)
---@param base number
---@param exponent number
---@return number result
function SystemStatic.pow(base, exponent) end

--- **Native**: `ROUND` (`0xF2DB717A73826179`)
---@param value number
---@return integer result
function SystemStatic.round(value) end

--- ```
--- 0 = high
--- 1 = normal
--- 2 = low
--- ```
--- **Native**: `SET_THREAD_PRIORITY` (`0x42B65DEEF2EDF2A1`)
---@param priority integer
function SystemStatic.setThreadPriority(priority) end

--- Sets the value for the timer A in milliseconds
--- **Native**: `SETTIMERA` (`0xC1B1E9A034A63A62`)
---@param value integer In milliseconds.
function SystemStatic.settimera(value) end

--- Sets the value for the timer B in milliseconds
--- **Native**: `SETTIMERB` (`0x5AE11BC36633DE4E`)
---@param value integer In milliseconds.
function SystemStatic.settimerb(value) end

--- Left bit shifts a value.
--- It is advised you use the `<<` operator instead of this native. It does the same and is faster.
--- **Native**: `SHIFT_LEFT` (`0xEDD95A39E5544DE8`)
---@param value integer
---@param bitShift integer
---@return integer result
function SystemStatic.shiftLeft(value, bitShift) end

--- Right bit shifts a value.
--- It is advised you use the `>>` operator instead of this native. It does the same and is faster.
--- **Native**: `SHIFT_RIGHT` (`0x97EF1E5BCE9DC075`)
---@param value integer
---@param bitShift integer
---@return integer result
function SystemStatic.shiftRight(value, bitShift) end

--- Returns the sine of the given number.
--- **Native**: `SIN` (`0x0BADBFA3B172435F`)
---@param value number The number of degrees (in degrees, not radians)
---@return number result The sine of the given number
function SystemStatic.sin(value) end

--- **Native**: `SQRT` (`0x71D93B57D07F9804`)
---@param value number
---@return number result
function SystemStatic.sqrt(value) end

--- ```
--- Examples:
---  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
---  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
---  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
---  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
---  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
---  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
---  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
---  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
---  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
--- Decompiled examples of usage when starting a script:
---
---     SCRIPT::REQUEST_SCRIPT(a_0);
---     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
---         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
---         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
---         return 1;
---     }
---
--- or:
---     v_2 = "MrsPhilips2";
---     SCRIPT::REQUEST_SCRIPT(v_2);
---     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
---     SCRIPT::REQUEST_SCRIPT(v_2);
---     SYSTEM::WAIT(0);
---     }
---     sub_8792(36);
---     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
---     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
--- All native script names: pastebin.com/K9adDsu4 and pastebin.com/yLNWicUi
--- ```
--- **Native**: `START_NEW_SCRIPT` (`0xE81651AD79516E48`)
---@param scriptName string
---@param stackSize integer
---@return integer result
function SystemStatic.startNewScript(scriptName, stackSize) end

--- ```
--- return : script thread id, 0 if failed
--- Pass pointer to struct of args in p1, size of struct goes into p2
--- ```
--- **Native**: `START_NEW_SCRIPT_WITH_ARGS` (`0xB8BA7F44DF1575E1`)
---@param scriptName string
---@param argCount integer
---@param stackSize integer
---@return integer result
---@return any args
function SystemStatic.startNewScriptWithArgs(scriptName, argCount, stackSize) end

--- **Native**: `START_NEW_SCRIPT_WITH_NAME_HASH` (`0xEB1C67C3A5333A92`)
---@param scriptHash integer|string
---@param stackSize integer
---@return integer result
function SystemStatic.startNewScriptWithNameHash(scriptHash, stackSize) end

--- **Native**: `START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS` (`0xC4BB298BD441BE78`)
---@param scriptHash integer|string
---@param argCount integer
---@param stackSize integer
---@return integer result
---@return any args
function SystemStatic.startNewScriptWithNameHashAndArgs(scriptHash, argCount, stackSize) end

--- ```
--- Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
--- ```
--- **Native**: `TIMERA` (`0x83666F9FB8FEBD4B`)
---@return integer result
function SystemStatic.timera() end

--- **Native**: `TIMERB` (`0xC9D9444186B5A374`)
---@return integer result
function SystemStatic.timerb() end

--- ```
--- Gets the current frame time.
--- ```
--- **Native**: `TIMESTEP` (`0x0000000050597EE2`)
---@return number result
function SystemStatic.timestep() end

--- **Native**: `TO_FLOAT` (`0xBBDA792448DB5A89`)
---@param value integer
---@return number result
function SystemStatic.toFloat(value) end

--- Calculates the distance between two points in 3D space. For performance reasons, consider using direct mathematical calculations for distance, as they can be more efficient than calling this native function.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `VDIST` (`0x2A488C176D52CCA5`)
---@param coords1 vector3 X coordinate of the first point. / Y coordinate of the first point. / Z coordinate of the first point. Represents the height or elevation at the first point.
---@param coords2 vector3 X coordinate of the second point. / Y coordinate of the second point. / Z coordinate of the second point. Represents the height or elevation at the second point.
---@return number result Returns the distance as a float between the two points (`x1`, `y1`, `z1`) and (`x2`, `y2`, `z2`) in the game world.
function SystemStatic.vdist(coords1, coords2) end

--- Calculates distance between vectors but does not perform Sqrt operations. Its way faster than [`VDIST`](#\_0x2A488C176D52CCA5), but it's not faster than direct mathematical calculations.
---
--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `VDIST2` (`0xB7A628320EFF8E47`)
---@param coords1 vector3 X coordinate of the first point. / Y coordinate of the first point. / Z coordinate of the first point. Represents the height or elevation at the first point.
---@param coords2 vector3 X coordinate of the second point. / Y coordinate of the second point. / Z coordinate of the second point. Represents the height or elevation at the second point.
---@return number result Returns the distance as a float between the two points (`x1`, `y1`, `z1`) and (`x2`, `y2`, `z2`) in the game world.
function SystemStatic.vdist2(coords1, coords2) end

--- ```
--- Calculates the magnitude of a vector.
--- ```
--- **Native**: `VMAG` (`0x652D2EEEF1D3E62C`)
---@param coords vector3
---@return number result
function SystemStatic.vmag(coords) end

--- ```
--- Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
--- ```
--- **Native**: `VMAG2` (`0xA8CEACB4F35AE058`)
---@param coords vector3
---@return number result
function SystemStatic.vmag2(coords) end

--- ```
--- Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
--- ```
--- **Native**: `WAIT` (`0x4EDE34FBADD967A6`)
---@param ms integer
function SystemStatic.wait(ms) end

