---@meta
---@diagnostic disable
-- fx.RoutingBucket (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---Which entities clients may create in a bucket: `"strict"` none, `"relaxed"` all but those of their scripts (the
---ambient population stays), `"inactive"` all of them.
---@alias fx.EntityLockdown "strict"|"relaxed"|"inactive"

---A routing bucket: players and entities only see the others of their bucket. Bucket 0 is the default one.
---```lua
---local arena <const> = fx.RoutingBucket.create()
---arena.lockdown = "strict"
---arena.population = false
---arena:add(player)
---```
---@class fx.RoutingBucketRef
---@field id integer
---@field lockdown fx.EntityLockdown? The mode set through this API, nil before (the server's `sv_entityLockdown` applies)
---@field population boolean Ambient peds and vehicles, true until set
local RoutingBucketRef = {}

---Moves players or entities into the bucket.
---@param ... fx.Player|fx.Entity
function RoutingBucketRef:add(...) end

---The connected players in the bucket.
---@return fx.Player[]
function RoutingBucketRef:players() end

---The peds, vehicles and objects in the bucket.
---@return fx.Entity[]
function RoutingBucketRef:entities() end
---@class fx.RoutingBucket
---@overload fun(id: integer): fx.RoutingBucketRef
local RoutingBucketStatic = {}

---A bucket no player or entity is in, and that `create` has not handed out before.
---@return fx.RoutingBucketRef
function RoutingBucketStatic.create() end

---The bucket of a player or an entity.
---@param target fx.Player|fx.Entity
---@return fx.RoutingBucketRef
function RoutingBucketStatic.of(target) end
