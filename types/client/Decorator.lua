---@meta
---@diagnostic disable
-- fx.Decorator (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Decorator
local DecoratorStatic = {}

--- **Native**: `DECOR_IS_REGISTERED_AS_TYPE` (`0x4F14F9F870D6FBC8`)
---@param propertyName string
---@param type_ integer See [`DECOR_REGISTER`](#\_0x9FD90732F56403CE).
---@return boolean result
function DecoratorStatic.isRegisteredAsType(propertyName, type_) end

--- ```cpp
--- enum eDecorType
--- {
---     DECOR_TYPE_FLOAT = 1,
---     DECOR_TYPE_BOOL = 2,
---     DECOR_TYPE_INT = 3,
---     DECOR_TYPE_STRING = 4,
---     DECOR_TYPE_TIME = 5
--- };
--- ```
--- **Native**: `DECOR_REGISTER` (`0x9FD90732F56403CE`)
---@param propertyName string
---@param type_ fx.Enum.DecorType|integer
function DecoratorStatic.register(propertyName, type_) end

--- ```
--- Called after all decorator type initializations.
--- ```
--- **Native**: `DECOR_REGISTER_LOCK` (`0xA9D14EEA259F9248`)
function DecoratorStatic.registerLock() end

