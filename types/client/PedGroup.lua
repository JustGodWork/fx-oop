---@meta
---@diagnostic disable
-- fx.PedGroup (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.PedGroup
---@field handle integer Raw handle.
---@field exists boolean (read-only) [DOES_GROUP_EXIST]
local PedGroup = {}

--- **Native**: `REMOVE_GROUP` (`0x8EB2F69076AF7053`)
---@return nil
function PedGroup:remove() end

--- **Native**: `NETWORK_SESSION_ADD_ACTIVE_MATCHMAKING_GROUP` (`0xCAE55F48D3D7875C`)
---@return fx.PedGroup self
function PedGroup:sessionAddActiveMatchmaking() end

--- ```
--- 0: Freedom to move
--- 1: Circle Around Leader
--- 2: Alternative Circle Around Leader
--- 3: Line, with Leader at center
--- 4: Arrow Formation
--- 5: "V" Formation
--- 6: Line Follow Formation
--- 7: Single Formation
--- 8: Pairwise
--- ```
--- **Native**: `SET_GROUP_FORMATION` (`0xCE2F5FC3AF7E8C1E`)
---@param formationType integer
---@return fx.PedGroup self
function PedGroup:setFormation(formationType) end

--- **Native**: `SET_GROUP_FORMATION_SPACING` (`0x1D9D45004C28C916`)
---@param p1 number
---@param p2 number
---@param p3 number
---@return fx.PedGroup self
function PedGroup:setFormationSpacing(p1, p2, p3) end

---@class fx.PedGroupStatic
---@overload fun(handle: integer): fx.PedGroup?
local PedGroupStatic = {}

--- True when value is an fx.PedGroup, or a subtype of it (a Ped is an Entity).
---@param value any
---@return boolean
function PedGroupStatic.is(value) end

--- ```
--- Creates a new ped group.
--- Groups can contain up to 8 peds.
--- The parameter is unused.
--- Returns a handle to the created group, or 0 if a group couldn't be created.
--- ```
--- **Native**: `CREATE_GROUP` (`0x90370EBE0FEE1A3D`)
---@param unused integer
---@return fx.PedGroup? result
function PedGroupStatic.create(unused) end

