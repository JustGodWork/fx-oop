---@meta
---@diagnostic disable
-- fx.Clock (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Clock
---@field clockDayOfMonth integer (read-only) [GET_CLOCK_DAY_OF_MONTH]
---@field clockDayOfWeek integer (read-only) [GET_CLOCK_DAY_OF_WEEK]
---@field clockHours integer (read-only) [GET_CLOCK_HOURS]
---@field clockMinutes integer (read-only) [GET_CLOCK_MINUTES]
---@field clockMonth integer (read-only) [GET_CLOCK_MONTH]
---@field clockSeconds integer (read-only) [GET_CLOCK_SECONDS]
---@field clockYear integer (read-only) [GET_CLOCK_YEAR]
---@field millisecondsPerGameMinute integer (read-only) [GET_MILLISECONDS_PER_GAME_MINUTE] Returns how many real ms are equal to one game minute. A getter for [`SetMillisecondsPerGameMinute`](#\_0x36CA2554).
local ClockStatic = {}

--- **Native**: `ADD_TO_CLOCK_TIME` (`0xD716F30D8C8980E2`)
---@param hours integer
---@param minutes integer
---@param seconds integer
function ClockStatic.addToClockTime(hours, minutes, seconds) end

--- **Native**: `ADVANCE_CLOCK_TIME_TO` (`0xC8CA9670B9D83B3B`)
---@param hour integer
---@param minute integer
---@param second integer
function ClockStatic.advanceClockTimeTo(hour, minute, second) end

--- ```
--- Gets local system time as year, month, day, hour, minute and second.
--- Example usage:
--- int year;
--- int month;
--- int day;
--- int hour;
--- int minute;
--- int second;
--- or use std::tm struct
--- TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);
--- ```
--- **Native**: `GET_LOCAL_TIME` (`0x50C7A99057A69748`)
---@return integer year
---@return integer month
---@return integer day
---@return integer hour
---@return integer minute
---@return integer second
function ClockStatic.getLocalTime() end

--- ```
--- Gets system time as year, month, day, hour, minute and second.
--- Example usage:
--- 	int year;
--- 	int month;
--- 	int day;
--- 	int hour;
--- 	int minute;
--- 	int second;
--- 	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);
--- ```
--- **Native**: `GET_POSIX_TIME` (`0xDA488F299A5B164E`)
---@return integer year
---@return integer month
---@return integer day
---@return integer hour
---@return integer minute
---@return integer second
function ClockStatic.getPosixTime() end

--- ```
--- Gets current UTC time
--- ```
--- **Native**: `GET_UTC_TIME` (`0x8117E09A19EEF4D3`)
---@return integer year
---@return integer month
---@return integer day
---@return integer hour
---@return integer minute
---@return integer second
function ClockStatic.getUtcTime() end

--- **Native**: `PAUSE_CLOCK` (`0x4055E40BD2DBEC1D`)
---@param toggle boolean
function ClockStatic.pauseClock(toggle) end

--- **Native**: `SET_CLOCK_DATE` (`0xB096419DF0D06CE7`)
---@param day integer
---@param month integer
---@param year integer
function ClockStatic.setClockDate(day, month, year) end

--- ```
--- SET_CLOCK_TIME(12, 34, 56);
--- ```
--- **Native**: `SET_CLOCK_TIME` (`0x47C3B5848C3E45D8`)
---@param hour integer
---@param minute integer
---@param second integer
function ClockStatic.setClockTime(hour, minute, second) end

