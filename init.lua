---@diagnostic disable
-- AUTO-GENERATED FROM runtime/init.lua, DO NOT EDIT.
if fx ~= nil and type(fx) == "table" and rawget(fx, "__fx") then return end

-- fx leaves the native globals Entity, Player, GlobalState, LocalPlayer, promise and Citizen untouched
local NativeEntity, NativePlayer, NativeGlobalState = Entity, Player, GlobalState
local LoadResourceFile, IsDuplicityVersion, GetConvarInt = LoadResourceFile, IsDuplicityVersion, GetConvarInt
local load, error, rawget, rawset, setmetatable, type, tostring = load, error, rawget, rawset, setmetatable, type, tostring

local LIB = (debug.getinfo(1, "S").source or ""):match("^@@([^/]+)/") or "fx"
local isServer = IsDuplicityVersion()
local SIDE = isServer and "server" or "client"

local MODULES = isServer and { Blip = "Blip.lua", Cfx = "Cfx.lua", Entity = "Entity.lua", Events = "Events.lua", Global = "Global.lua", Model = "Model.lua", Mumble = "Mumble.lua", Object = "Object.lua", Ped = "Ped.lua", Player = "Player.lua", Resource = "Resource.lua", Vehicle = "Vehicle.lua" }
  or { App = "App.lua", Audio = "Audio.lua", Blip = "Blip.lua", Brain = "Brain.lua", Cam = "Cam.lua", Cfx = "Cfx.lua", Checkpoint = "Checkpoint.lua", Clock = "Clock.lua", Cutscene = "Cutscene.lua", Datafile = "Datafile.lua", Decorator = "Decorator.lua", Dlc = "Dlc.lua", Dui = "Dui.lua", Entity = "Entity.lua", Event = "Event.lua", Events = "Events.lua", Files = "Files.lua", Fire = "Fire.lua", Game = "Game.lua", Global = "Global.lua", Graphics = "Graphics.lua", Hud = "Hud.lua", Interior = "Interior.lua", Itemset = "Itemset.lua", Keybind = "Keybind.lua", Loadingscreen = "Loadingscreen.lua", Localization = "Localization.lua", Mobile = "Mobile.lua", Model = "Model.lua", Money = "Money.lua", Mumble = "Mumble.lua", Netshopping = "Netshopping.lua", Network = "Network.lua", Nui = "Nui.lua", Object = "Object.lua", Pad = "Pad.lua", ParticleFx = "ParticleFx.lua", Pathfind = "Pathfind.lua", Ped = "Ped.lua", PedGroup = "PedGroup.lua", Physics = "Physics.lua", Pickup = "Pickup.lua", Player = "Player.lua", Recording = "Recording.lua", Replay = "Replay.lua", Resource = "Resource.lua", Rope = "Rope.lua", Scaleform = "Scaleform.lua", Script = "Script.lua", Shapetest = "Shapetest.lua", Socialclub = "Socialclub.lua", Sound = "Sound.lua", Stats = "Stats.lua", Streaming = "Streaming.lua", System = "System.lua", Task = "Task.lua", Vehicle = "Vehicle.lua", Water = "Water.lua", Weapon = "Weapon.lua", Zone = "Zone.lua" }
local ENUMS = { AimFlag = true, AnchorPoints = true, ApplyForceTypes = true, AudAnimalMood = true, AudAnimalType = true, AudContextBlockTarget = true, AudDamageReason = true, Audibility = true, AudSpecialEffectMode = true, AudVehiclePriority = true, BlipColor = true, BlipSprite = true, BlockingObjectFlags = true, BoatMissionFlags = true, BusySpinnerType = true, CamSplineSmoothingFlags = true, CamViewMode = true, CargobobHook = true, CellInput = true, CombatAttribute = true, CombatRange = true, Context = true, DecalTypes = true, DecorType = true, DispatchType = true, DoorId = true, DriveBehaviorFlags = true, DrivingMode = true, EntityOrphanMode = true, EventType = true, ExplosionTag = true, FiringPatternHashes = true, FollowPointRouteMode = true, FontBitField = true, ForceType = true, GfxDrawOrder = true, GpsSlotType = true, GravityLevel = true, HeadlightColors = true, HeliMissionFlags = true, HornTypes = true, HudColours = true, HudIndexes = true, IkPart = true, IkTargetFlags = true, InstructionalButtonTypes = true, KeyboardType = true, LogLevel = true, MousePointerStyle = true, MpGamerTagComponent = true, MpSettingSpawn = true, NavScriptFlags = true, neonIndex = true, NetObjEntityType = true, NMFallType = true, NodeFlags = true, ObjectPaintVariants = true, OSKStatus = true, PadType = true, PauseMenuState = true, PedBoneId = true, PedClothes = true, PedCompFlags = true, PedConfigFlags = true, PedDecorationZone = true, PedFaceFeatures = true, PedMotionState = true, PedOverlays = true, PedProps = true, PedType = true, PedVarComp = true, PeerStatistics = true, PhysicsRopeType = true, PlaneDamageSection = true, PlayerSpawnLocation = true, PlayerSwitchType = true, Reactions = true, RenderingOptionFlags = true, RoofState = true, RopeFlags = true, RotationOrder = true, ScriptedAnimFlags = true, SeatPosition = true, SpawnReason = true, SwitchFlags = true, TattooFaction = true, TempAction = true, TextFonts = true, TraceFlags = true, TrackedStuntType = true, TrafficlightOverrideMode = true, VehicleDrivetrainType = true, VehicleDrivingFlags = true, VehicleHeadlightShadowFlags = true, VehicleLightSetting = true, VehicleLockState = true, VehicleMissionType = true, VehicleMods = true, VehicleModType = true, VehicleNodeProperties = true, VehiclePlateIndicies = true, VehiclePlateType = true, VehicleType = true, VehicleWheels = true, VehicleWheelType = true, ViolationType = true, WeaponAnimationOverrides = true, WindowId = true, WindowTints = true, ZoneScumminess = true }

---Runs a file of the library resource with `...` as its arguments.
---@param path string Relative to the library resource
---@param ... any
---@return any
local function loadLibFile(path, ...)
  local code = LoadResourceFile(LIB, path)
  if not code then error(("fx: cannot load '%s' from resource '%s' (is the resource started and listed in files{}?)"):format(path, LIB), 3) end
  local chunk, err = load(code, ("@@%s/%s"):format(LIB, path), "t")
  if not chunk then error(err, 3) end
  return chunk(...)
end

---@type fx.Config
local config = { debug = GetConvarInt("fx_debug", 0) == 1 }

---@type fx.PromiseModule
local lib = loadLibFile("shared/promise.lua", {
  SetTimeout = Citizen.SetTimeout, ClearTimeout = Citizen.ClearTimeout, Await = Citizen.Await,
  CreateThreadNow = Citizen.CreateThreadNow, trace = Citizen.Trace, config = config,
})

local fxt = { __fx = true, version = "0.2.0", Promise = lib.Promise, async = lib.async, await = lib.await }
---@type fx.Rt
local rt = loadLibFile("shared/core.lua", { fx = fxt, config = config, Promise = lib.Promise, isServer = isServer })
rt.msgpack = loadLibFile("shared/msgpack.lua", { rt = rt })
rawset(fxt, "msgpack", rt.msgpack)
rt.events = loadLibFile("shared/events.lua", { rt = rt })
rt.states = loadLibFile("shared/states.lua", {
  rt = rt, config = config,
  NativeEntity = NativeEntity, NativePlayer = NativePlayer, NativeGlobalState = NativeGlobalState,
})

-- fx.Enum.X: one file per enum, loaded on first access; members are raw integers
rawset(fxt, "Enum", setmetatable({}, {
  ---@param t table<string, table<string, integer|string>>
  ---@param k string
  ---@return table<string, integer|string>
  __index = function(t, k)
    if not ENUMS[k] then error("fx.Enum has no enum '" .. tostring(k) .. "'", 2) end
    local v = loadLibFile("shared/enums/" .. k .. ".lua")
    rawset(t, k, v)
    return v
  end,
  __newindex = function() error("fx.Enum is read-only", 2) end,
}))

-- handwritten modules shared by both sides, loaded on first access
local SHARED = { Logger = "shared/logger.lua", Schema = "shared/schema.lua", Channel = "shared/channel.lua", Rpc = "shared/rpc.lua" }

---@type table<string, true>
local loading = {}
setmetatable(fxt, {
  ---@param t fx
  ---@param k string
  ---@return any
  __index = function(t, k)
    if k == "debug" then return config.debug end
    local shared = SHARED[k]
    if shared then
      local v = loadLibFile(shared, { config = config, isServer = isServer, rt = rt, fx = t })
      rawset(t, k, v)
      return v
    end
    local file = MODULES[k]
    if not file then return nil end
    if loading[k] then error("fx: circular load of '" .. k .. "'", 2) end
    loading[k] = true
    local v = loadLibFile(SIDE .. "/" .. file, t, rt)
    loading[k] = nil
    rawset(t, k, v)
    return v
  end,
  ---@param k string
  ---@param v any
  __newindex = function(_, k, v)
    if k == "debug" then rt.setDebug(v); return end
    error("fx: cannot assign fx." .. tostring(k), 2)
  end,
})

-- the only global defined. Consumers load it with shared_script '@fx/init.lua', never through exports:
-- metatables do not cross resources.
fx = fxt
