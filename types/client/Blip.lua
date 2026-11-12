---@meta
---@diagnostic disable
-- fx.Blip (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.BlipCreateOptions
---@field coords? vector3 Point blip (ADD_BLIP_FOR_COORD)
---@field entity? fx.Entity|integer Entity blip (ADD_BLIP_FOR_ENTITY), red by default (see `friendly`)
---@field radius? { coords: vector3, radius: number } Radius blip: it has no sprite, add a coord blip alongside
---@field area? { coords: vector3, width: number, height: number, rotation?: integer } Rectangle blip
---@field sprite? fx.Enum.BlipSprite|integer
---@field color? fx.Enum.BlipColor|integer Also accepts an RGBA integer such as 0x3A7F3AFF
---@field scale? number
---@field display? integer 2 = map + minimap, 3/4 = map only, 5 = minimap only, 8 = both but not selectable
---@field shortRange? boolean Only shown on the minimap when nearby
---@field category? integer 1 = no distance in the legend, 2 = distance, 7 = other players, 10 = property, 11 = owned property
---@field friendly? boolean SET_BLIP_AS_FRIENDLY (blue entity blip)
---@field route? boolean GPS route to the blip
---@field name? string Map / legend name
---@class fx.Blip
---@field name string (write-only) Map / legend name (BEGIN_TEXT_COMMAND_SET_BLIP_NAME sequence).
---@field handle integer Raw handle.
---@field alpha integer [GET_BLIP_ALPHA / SET_BLIP_ALPHA]
---@field colour fx.Enum.BlipColor|integer [GET_BLIP_COLOUR / SET_BLIP_COLOUR]
---@field coords vector3 [GET_BLIP_COORDS / SET_BLIP_COORDS]
---@field doesHaveGpsRoute boolean (read-only) [DOES_BLIP_HAVE_GPS_ROUTE]
---@field entity? fx.Entity (read-only) [GET_BLIP_INFO_ID_ENTITY_INDEX]
---@field exists boolean (read-only) [DOES_BLIP_EXIST]
---@field hudColour integer (read-only) [GET_BLIP_HUD_COLOUR]
---@field infoIdCoord vector3 (read-only) [GET_BLIP_INFO_ID_COORD]
---@field infoIdDisplay integer (read-only) [GET_BLIP_INFO_ID_DISPLAY]
---@field infoIdPickupIndex? fx.Pickup (read-only) [GET_BLIP_INFO_ID_PICKUP_INDEX]
---@field infoIdType integer (read-only) [GET_BLIP_INFO_ID_TYPE]
---@field isFlashing boolean (read-only) [IS_BLIP_FLASHING]
---@field isMissionCreator boolean (read-only) [IS_MISSION_CREATOR_BLIP]
---@field isOnMinimap boolean (read-only) [IS_BLIP_ON_MINIMAP]
---@field isShortRange boolean (read-only) [IS_BLIP_SHORT_RANGE]
---@field rotation integer [GET_BLIP_ROTATION / SET_BLIP_ROTATION]
---@field sprite fx.Enum.BlipSprite|integer [GET_BLIP_SPRITE / SET_BLIP_SPRITE] Gets the sprite id of the specified blip. Blip sprite ids and images can be found [here](https://docs.fivem.net/docs/game-references/blips/).
local Blip = {}

--- **Native**: `ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME` (`0x80EAD8E2E1D5D52E`)
---@return fx.Blip self
function Blip:addTextComponentSubstringName() end

--- Finalizes a text command started with [`BEGIN_TEXT_COMMAND_SET_BLIP_NAME`](#\_0xF9113A30DE5C6670), setting the name
--- of the specified blip.
--- **Native**: `END_TEXT_COMMAND_SET_BLIP_NAME` (`0xBC38B49BCB83BC9B`)
---@return fx.Blip self
function Blip:endTextCommandSetName() end

--- **Native**: `HIDE_NUMBER_ON_BLIP` (`0x532CFF637EF80148`)
---@return fx.Blip self
function Blip:hideNumber() end

--- **Native**: `PULSE_BLIP` (`0x742D6FD43115AF73`)
---@return fx.Blip self
function Blip:pulse() end

--- Removes the blip from your map.
---
--- **Note:** This function only works on the script that created the blip, if you wish to remove blips created by other scripts, see [`SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT`](#\_0x86A652570E5F25DD).
--- **Native**: `REMOVE_BLIP` (`0x86A652570E5F25DD`)
---@return nil
function Blip:remove() end

--- Allows the user to set a blip as friendly or enemy based on the toggle.
--- **Native**: `SET_BLIP_AS_FRIENDLY` (`0x6F6F290102C02AB4`)
---@param toggle boolean True for friendly, false for enemy
---@return fx.Blip self
function Blip:setAsFriendly(toggle) end

--- **Native**: `SET_BLIP_AS_MISSION_CREATOR_BLIP` (`0x24AC0137444F9FD5`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setAsMissionCreatorBlip(toggle) end

--- Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
--- **Native**: `SET_BLIP_AS_SHORT_RANGE` (`0xBE8BE4FE60E27B72`)
---@param toggle boolean True to only display the blip as 'short range', false to display the blip from a longer distance.
---@return fx.Blip self
function Blip:setAsShortRange(toggle) end

--- **Native**: `SET_BLIP_BRIGHT` (`0xB203913733F27884`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setBright(toggle) end

--- Examples result:
---
--- ![](https://i.imgur.com/skY6vAJ.png)
---
--- **index:**
---
--- ```
--- 1 = No distance shown in legend
--- 2 = Distance shown in legend
--- 7 = "Other Players" category, also shows distance in legend
--- 10 = "Property" category
--- 11 = "Owned Property" category
--- ```
---
--- Any other value behaves like `index = 1`, `index` wraps around after 255
---
--- Blips with categories `7`, `10` or `11` will all show under the specific categories listing in the map legend, regardless of sprite or name.
---
--- **Legend entries**
---
--- | index | Legend entry | Label |
--- | --- | --- | --- |
--- | 7 | Other Players | `BLIP_OTHPLYR` |
--- | 10 | Property | `BLIP_PROPCAT` |
--- | 11 | Owned Property | `BLIP_APARTCAT` |
--- **Native**: `SET_BLIP_CATEGORY` (`0x234CDD44D996FD9A`)
---@param index integer The category index to change to
---@return fx.Blip self
function Blip:setCategory(index) end

--- **displayId Behaviour**
---
--- | display ID 	| Behaviour                                                   	|
--- |------------	|-------------------------------------------------------------	|
--- | 0          	| Doesn't show up, ever, anywhere.                            	|
--- | 1          	| Doesn't show up, ever, anywhere.                            	|
--- | 2          	| Shows on both main map and minimap. (Selectable on map)     	|
--- | 3          	| Shows on main map only. (Selectable on map)                 	|
--- | 4          	| Shows on main map only. (Selectable on map)                 	|
--- | 5          	| Shows on minimap only.                                      	|
--- | 6          	| Shows on both main map and minimap. (Selectable on map)     	|
--- | 7          	| Doesn't show up, ever, anywhere.                            	|
--- | 8          	| Shows on both main map and minimap. (Not selectable on map) 	|
--- | 9          	| Shows on minimap only.                                      	|
--- | 10         	| Shows on both main map and minimap. (Not selectable on map) 	|
---
--- Anything higher than 10 seems to be exactly the same as 10.
---
--- Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.
--- **Native**: `SET_BLIP_DISPLAY` (`0x9029B2F3DA924928`)
---@param displayId integer
---@return fx.Blip self
function Blip:setDisplay(displayId) end

--- ```
--- Must be toggled before being queued for animation
--- ```
--- **Native**: `SET_BLIP_DISPLAY_INDICATOR_ON_BLIP` (`0xC4278F70131BAA6D`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setDisplayIndicatorOnBlip(toggle) end

--- **Native**: `SET_BLIP_FADE` (`0x2AEE8F8390D2298C`)
---@param opacity integer
---@param duration integer
---@return fx.Blip self
function Blip:setFade(opacity, duration) end

--- **Native**: `SET_BLIP_FLASHES` (`0xB14552383D39CE3E`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setFlashes(toggle) end

--- **Native**: `SET_BLIP_FLASHES_ALTERNATE` (`0x2E8D9498C56DD0D1`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setFlashesAlternate(toggle) end

--- Sets the interval in milliseconds before flashing the blip.
--- **Native**: `SET_BLIP_FLASH_INTERVAL` (`0xAA51DB313C010A7E`)
---@param interval integer Interval in milliseconds before flashing the blip
---@return fx.Blip self
function Blip:setFlashInterval(interval) end

--- Flashes blip for time in milliseconds before stopping.
--- **Native**: `SET_BLIP_FLASH_TIMER` (`0xD3CD6FD297AE87CC`)
---@param duration integer Time in milliseconds to flash the blip before stopping
---@return fx.Blip self
function Blip:setFlashTimer(duration) end

--- **Native**: `SET_BLIP_HIDDEN_ON_LEGEND` (`0x54318C915D27E4CE`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setHiddenOnLegend(toggle) end

--- **Native**: `SET_BLIP_HIGH_DETAIL` (`0xE2590BC29220CEBB`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setHighDetail(toggle) end

--- ```
--- Doesn't work if the label text of gxtEntry is >= 80.
--- ```
--- **Native**: `SET_BLIP_NAME_FROM_TEXT_FILE` (`0xEAA0FFE120D92784`)
---@param gxtEntry string
---@return fx.Blip self
function Blip:setNameFromTextFile(gxtEntry) end

--- **Native**: `SET_BLIP_NAME_TO_PLAYER_NAME` (`0x127DE7B20C60A6A3`)
---@param player fx.Player|integer
---@return fx.Blip self
function Blip:setNameToPlayerName(player) end

--- ```
--- See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935
--- ```
--- **Native**: `SET_BLIP_PRIORITY` (`0xAE9FC9EF6A9FAC79`)
---@param priority integer
---@return fx.Blip self
function Blip:setPriority(priority) end

--- **Native**: `SET_RADAR_ZOOM_TO_BLIP` (`0xF98E4B3E56AFC7B1`)
---@param zoom number
---@return fx.Blip self
function Blip:setRadarZoom(zoom) end

--- Enabling this on a radius blip will make it outline only.\
--- Please note that this only works on a **radius** blip (i.e. one generated using [`ADD_BLIP_FOR_RADIUS`](#\_0x46818D79B1F7499A)), not a normal blip.
---
--- **Example result:**\
--- ![example-image](https://i.imgur.com/hS6ki7p.png)
--- **Native**: `SET_RADIUS_BLIP_EDGE` (`0x25615540D894B814`)
---@param toggle boolean Whether to turn off or on the effect
---@return fx.Blip self
function Blip:setRadiusEdge(toggle) end

--- ```
--- Enable / disable showing route for the Blip-object.
--- ```
--- **Native**: `SET_BLIP_ROUTE` (`0x4F7D8A9BFB0B43E9`)
---@param enabled boolean
---@return fx.Blip self
function Blip:setRoute(enabled) end

--- **Native**: `SET_BLIP_ROUTE_COLOUR` (`0x837155CD2F63DA09`)
---@param colour fx.Enum.BlipColor|integer
---@return fx.Blip self
function Blip:setRouteColour(colour) end

--- **Native**: `SET_BLIP_SCALE` (`0xD38744167B2FA257`)
---@param scale number
---@return fx.Blip self
function Blip:setScale(scale) end

--- See https://imgur.com/a/lLkEsMN
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `SET_BLIP_SCALE_TRANSFORMATION` (`0xCD6524439909C979`)
---@param xScale number
---@param yScale number
---@return fx.Blip self
function Blip:setScaleTransformation(xScale, yScale) end

--- **Native**: `SET_BLIP_SECONDARY_COLOUR` (`0x14892474891E09EB`)
---@param r integer
---@param g integer
---@param b integer
---@return fx.Blip self
function Blip:setSecondaryColour(r, g, b) end

--- ```
--- NativeDB Added Parameter 3: Any p2
--- ```
--- **Native**: `SET_BLIP_SHOW_CONE` (`0x13127EC3665E8EE1`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setShowCone(toggle) end

--- ```
--- Makes a blip go small when off the minimap.
--- SET_BLIP_AS_*
--- ```
--- **Native**: `SET_BLIP_SHRINK` (`0x2B6D467DAB714E8D`)
---@param toggle boolean
---@return fx.Blip self
function Blip:setShrink(toggle) end

--- ```
--- Does not require whole number/integer rotations.
--- ```
--- **Native**: `SET_BLIP_SQUARED_ROTATION` (`0xA8B6AFDAC320AC87`)
---@param heading number
---@return fx.Blip self
function Blip:setSquaredRotation(heading) end

--- Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [`SET_BLIP_SECONDARY_COLOUR`](#\_0x14892474891E09EB).
---
--- To toggle the right side of the circle use: [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#\_0x23C3EB807312F01A).
---
--- Example code result:
--- ![](https://i.imgur.com/iZ9tNWl.png)
--- **Native**: `SHOW_CREW_INDICATOR_ON_BLIP` (`0xDCFB5D4DB8BF367E`)
---@param toggle boolean Enables or disables the half blue circle around the blip (on the left side).
---@return fx.Blip self
function Blip:showCrewIndicator(toggle) end

--- Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.
---
--- To toggle the left side (crew member indicator) of the half circle around the blip, use: [`SHOW_CREW_INDICATOR_ON_BLIP`](#\_0xDCFB5D4DB8BF367E).
--- **Native**: `SHOW_FRIEND_INDICATOR_ON_BLIP` (`0x23C3EB807312F01A`)
---@param toggle boolean Enables or disables the half circle around the blip (on the right side of the blip).
---@return fx.Blip self
function Blip:showFriendIndicator(toggle) end

--- ```
--- Adds a orange checkmark on top of a given blip handle: https://imgur.com/a/aw5OTMF
--- _SHOW_FRIEND_INDICATOR_ON_BLIP* - _SHOW_HEADING_INDICATOR_ON_BLIP*
--- ```
---
--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `SHOW_HAS_COMPLETED_INDICATOR_ON_BLIP` (`0xCAC2031EBF79B1A8`)
---@param toggle boolean
---@return fx.Blip self
function Blip:showHasCompletedIndicator(toggle) end

--- ```
--- Adds the GTA: Online player heading indicator to a blip.
--- ```
--- **Native**: `SHOW_HEADING_INDICATOR_ON_BLIP` (`0x5FBCA48327B914DF`)
---@param toggle boolean
---@return fx.Blip self
function Blip:showHeadingIndicator(toggle) end

--- **Native**: `SHOW_HEIGHT_ON_BLIP` (`0x75A16C3DA34F1245`)
---@param toggle boolean
---@return fx.Blip self
function Blip:showHeight(toggle) end

--- **Native**: `SHOW_NUMBER_ON_BLIP` (`0xA3C0B359DCB848B6`)
---@param number integer
---@return fx.Blip self
function Blip:showNumber(number) end

--- Toggles a cyan outline around the blip.
---
--- Color can be changed with [`SET_BLIP_SECONDARY_COLOUR`](#\_0x14892474891E09EB). Enabling this circle will override the "crew" and "friend" half-circles (see [`SHOW_CREW_INDICATOR_ON_BLIP`](#\_0xDCFB5D4DB8BF367E) and [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#\_0x23C3EB807312F01A)).
--- **Native**: `SHOW_OUTLINE_INDICATOR_ON_BLIP` (`0xB81656BC81FE24D1`)
---@param toggle boolean Enables or disables the outline.
---@return fx.Blip self
function Blip:showOutlineIndicator(toggle) end

--- ```
--- Adds a green checkmark on top of a blip.
--- ```
--- **Native**: `SHOW_TICK_ON_BLIP` (`0x74513EA3E505181E`)
---@param toggle boolean
---@return fx.Blip self
function Blip:showTick(toggle) end

---@class fx.BlipStatic
---@overload fun(handle: integer): fx.Blip?
---@field mainPlayerId? fx.Blip (read-only) [GET_MAIN_PLAYER_BLIP_ID]
---@field newSelectedMissionCreator? fx.Blip (read-only) [GET_NEW_SELECTED_MISSION_CREATOR_BLIP]
---@field northRadar? fx.Blip (read-only) [GET_NORTH_RADAR_BLIP]
local BlipStatic = {}

---Creates a blip and applies the usual settings in the right order. Exactly one anchor: coords, entity, radius or area.
---@param options fx.BlipCreateOptions
---@return fx.Blip?
function BlipStatic.create(options) end

--- True when value is an fx.Blip, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function BlipStatic.is(value) end

--- Adds a rectangular blip for the specified coordinates/area.
---
--- It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
---
--- By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
---
--- Example image:
--- ![minimap](https://i.imgur.com/qLbXWcQ.png)
--- ![big map](https://i.imgur.com/0j7O7Rh.png)
---
--- (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
--- **Native**: `ADD_BLIP_FOR_AREA` (`0xCE5D0E5E315DB238`)
---@param coords vector3 The coordinate of the center of the blip.
---@param width number The width of the blip.
---@param height number The height of the blip.
---@return fx.Blip? result The blip.
function BlipStatic.addForArea(coords, width, height) end

--- Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
--- **Native**: `ADD_BLIP_FOR_COORD` (`0x5A039BB0BCA604B6`)
---@param coords vector3 The X coordinate to create the blip on. / The Y coordinate. / The Z coordinate.
---@return fx.Blip? result A blip.
function BlipStatic.addForCoord(coords) end

--- Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
---
--- Example image:
--- ![example](https://i.imgur.com/9hQl3DB.png)
--- **Native**: `ADD_BLIP_FOR_RADIUS` (`0x46818D79B1F7499A`)
---@param pos vector3 The position of the blip (you can also send a vector3 instead of the bulk coordinates)
---@param radius number The number that defines the radius of the blip circle
---@return fx.Blip? result The blip that can be manipulated with every `SetBlip` natives
function BlipStatic.addForRadius(pos, radius) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `GET_CLOSEST_BLIP_OF_TYPE` (`0xD484BF71050CA1EE`)
---@param blipSprite integer
---@return fx.Blip? result
function BlipStatic.getClosestOfType(blipSprite) end

--- Also see [`GET_NEXT_BLIP_INFO_ID`](#\_0x14F96AA50D6FBEA7) for an example.
--- **Native**: `GET_FIRST_BLIP_INFO_ID` (`0x1BEDE233E6CD2A1F`)
---@param blipSprite integer Sprite ID, see the [Blips Game Reference](https://docs.fivem.net/docs/game-references/blips/) for the full list.
---@return fx.Blip? result Returns the first blip ID in an interator that has the specified blip sprite.
function BlipStatic.getFirstInfoId(blipSprite) end

--- **Native**: `GET_NEXT_BLIP_INFO_ID` (`0x14F96AA50D6FBEA7`)
---@param blipSprite integer Sprite ID, see the [Game Reference](https://docs.fivem.net/docs/game-references/blips/) for the full list.
---@return fx.Blip? result Returns the next blip ID in an interator that has the specified blip sprite.
function BlipStatic.getNextInfoId(blipSprite) end

