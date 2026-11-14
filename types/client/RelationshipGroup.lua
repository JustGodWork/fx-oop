---@meta
---@diagnostic disable
-- fx.RelationshipGroup (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---How the peds of a group treat those of another.
---@alias fx.Relationship "companion"|"respect"|"like"|"neutral"|"dislike"|"hate"

---A relationship group: peds attack, ignore or help each other according to how their groups relate. The game has
---its own ("PLAYER", "COP", "CIVMALE", "AMBIENT_GANG_BALLAS", ...).
---```lua
---local guards <const> = fx.RelationshipGroup.create("GUARDS")
---guards:set("PLAYER", "hate")
---guards:add(ped1, ped2)
---```
---@class fx.RelationshipGroupRef
---@field hash integer
---@field name string? nil for a group of unknown name (`fx.RelationshipGroup.of` on a group made elsewhere)
---@field exists boolean (read-only)
local RelationshipGroupRef = {}

---Sets how this group treats `other`, and how `other` treats it unless `oneWay`.
---@param other fx.RelationshipGroupRef|string
---@param relationship fx.Relationship
---@param oneWay? boolean
function RelationshipGroupRef:set(other, relationship, oneWay) end

---How this group treats `other`.
---@param other fx.RelationshipGroupRef|string
---@return fx.Relationship|integer relationship An integer for a value outside the known ones (255 for pedestrians)
function RelationshipGroupRef:get(other) end

---Puts peds in the group.
---@param ... fx.Ped
function RelationshipGroupRef:add(...) end

---Removes a group made with `create`.
function RelationshipGroupRef:remove() end
---@class fx.RelationshipGroup
---@overload fun(name: string): fx.RelationshipGroupRef
local RelationshipGroupStatic = {}

---The group of that name, added to the game when it does not exist.
---@param name string
---@return fx.RelationshipGroupRef
function RelationshipGroupStatic.create(name) end

---The group of a ped.
---@param ped fx.Ped
---@return fx.RelationshipGroupRef
function RelationshipGroupStatic.of(ped) end
