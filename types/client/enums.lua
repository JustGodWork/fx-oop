---@meta
---@diagnostic disable
-- fx.Enum: LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---Enums documented in the native definitions (plus overrides). Members are plain integers (strings for a few fx enums):
---localize them in hot paths (`local DRIVER = fx.Enum.SeatPosition.SF_FrontDriverSide`).
---@class fx.EnumLib
local EnumLib = {}

---`AimFlag` (natives.json: TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD)
---@enum fx.Enum.AimFlag
EnumLib.AimFlag = {
  AimAtFocusLocation = 0,
  AimAtGoToLocation = 1,
}

---`eAnchorPoints` (natives.json: SET_PED_PROP_INDEX, SET_PED_PROP_INDEX)
---@enum fx.Enum.AnchorPoints
EnumLib.AnchorPoints = {
  ---"p_head"
  ANCHOR_HEAD = 0,
  ---"p_eyes"
  ANCHOR_EYES = 1,
  ---"p_ears"
  ANCHOR_EARS = 2,
  ---"p_mouth"
  ANCHOR_MOUTH = 3,
  ---"p_lhand"
  ANCHOR_LEFT_HAND = 4,
  ---"p_rhand"
  ANCHOR_RIGHT_HAND = 5,
  ---"p_lwrist"
  ANCHOR_LEFT_WRIST = 6,
  ---"p_rwrist"
  ANCHOR_RIGHT_WRIST = 7,
  ---"p_lhip"
  ANCHOR_HIP = 8,
  ---"p_lfoot"
  ANCHOR_LEFT_FOOT = 9,
  ---"p_rfoot"
  ANCHOR_RIGHT_FOOT = 10,
  ---"ph_lhand"
  ANCHOR_PH_L_HAND = 11,
  ---"ph_rhand"
  ANCHOR_PH_R_HAND = 12,
  NUM_ANCHORS = 13,
}

---`eApplyForceTypes` (natives.json: APPLY_FORCE_TO_ENTITY)
---@enum fx.Enum.ApplyForceTypes
EnumLib.ApplyForceTypes = {
  APPLY_TYPE_FORCE = 0,
  APPLY_TYPE_IMPULSE = 1,
  APPLY_TYPE_EXTERNAL_FORCE = 2,
  APPLY_TYPE_EXTERNAL_IMPULSE = 3,
  APPLY_TYPE_TORQUE = 4,
  APPLY_TYPE_ANGULAR_IMPULSE = 5,
}

---`eAudAnimalMood` (natives.json: SET_ANIMAL_MOOD)
---@enum fx.Enum.AudAnimalMood
EnumLib.AudAnimalMood = {
  AUD_ANIMAL_MOOD_ANGRY = 0,
  AUD_ANIMAL_MOOD_PLAYFUL = 1,
  AUD_ANIMAL_MOOD_NUM_MOODS = 2,
}

---`eAudAnimalType` (natives.json: PLAY_ANIMAL_VOCALIZATION)
---@enum fx.Enum.AudAnimalType
EnumLib.AudAnimalType = {
  AUD_ANIMAL_NONE = -1,
  AUD_ANIMAL_BOAR = 0,
  AUD_ANIMAL_CHICKEN = 1,
  AUD_ANIMAL_DOG = 2,
  AUD_ANIMAL_DOG_ROTTWEILER = 3,
  AUD_ANIMAL_HORSE = 4,
  AUD_NUM_ANIMALS = 5,
}

---`eAudContextBlockTarget` (natives.json: BLOCK_SPEECH_CONTEXT_GROUP)
---@enum fx.Enum.AudContextBlockTarget
EnumLib.AudContextBlockTarget = {
  AUD_CONTEXT_BLOCK_PLAYER = 0,
  AUD_CONTEXT_BLOCK_NPCS = 1,
  AUD_CONTEXT_BLOCK_BUDDYS = 2,
  AUD_CONTEXT_BLOCK_EVERYONE = 3,
  AUD_CONTEXT_BLOCK_TARGETS_TOTAL = 4,
}

---`eAudDamageReason` (natives.json: PLAY_PAIN)
---@enum fx.Enum.AudDamageReason
EnumLib.AudDamageReason = {
  AUD_DAMAGE_REASON_DEFAULT = 0,
  AUD_DAMAGE_REASON_FALLING = 1,
  AUD_DAMAGE_REASON_SUPER_FALLING = 2,
  AUD_DAMAGE_REASON_SCREAM_PANIC = 3,
  AUD_DAMAGE_REASON_SCREAM_PANIC_SHORT = 4,
  AUD_DAMAGE_REASON_SCREAM_SCARED = 5,
  AUD_DAMAGE_REASON_SCREAM_SHOCKED = 6,
  AUD_DAMAGE_REASON_SCREAM_TERROR = 7,
  AUD_DAMAGE_REASON_ON_FIRE = 8,
  AUD_DAMAGE_REASON_DROWNING = 9,
  ---drowning on the surface of water, after we time out
  AUD_DAMAGE_REASON_SURFACE_DROWNING = 10,
  AUD_DAMAGE_REASON_INHALE = 11,
  AUD_DAMAGE_REASON_EXHALE = 12,
  AUD_DAMAGE_REASON_POST_FALL_GRUNT = 13,
  AUD_DAMAGE_REASON_ENTERING_RAGDOLL_DEATH = 14,
  AUD_DAMAGE_REASON_EXPLOSION = 15,
  AUD_DAMAGE_REASON_MELEE = 16,
  AUD_DAMAGE_REASON_SHOVE = 17,
  AUD_DAMAGE_REASON_WHEEZE = 18,
  AUD_DAMAGE_REASON_COUGH = 19,
  AUD_DAMAGE_REASON_TAZER = 20,
  AUD_DAMAGE_REASON_EXHAUSTION = 21,
  AUD_DAMAGE_REASON_CLIMB_LARGE = 22,
  AUD_DAMAGE_REASON_CLIMB_SMALL = 23,
  AUD_DAMAGE_REASON_JUMP = 24,
  AUD_DAMAGE_REASON_COWER = 25,
  AUD_DAMAGE_REASON_WHIMPER = 26,
  AUD_DAMAGE_REASON_DYING_MOAN = 27,
  AUD_DAMAGE_REASON_CYCLING_EXHALE = 28,
  AUD_DAMAGE_REASON_PAIN_RAPIDS = 29,
  AUD_DAMAGE_REASON_SNEEZE = 30,
  AUD_DAMAGE_REASON_MELEE_SMALL_GRUNT = 31,
  AUD_DAMAGE_REASON_MELEE_LARGE_GRUNT = 32,
  AUD_DAMAGE_REASON_POST_FALL_GRUNT_LOW = 33,
}

---`eAudibility` (natives.json: ADD_LINE_TO_CONVERSATION)
---@enum fx.Enum.Audibility
EnumLib.Audibility = {
  AUD_AUDIBILITY_NORMAL = 0,
  AUD_AUDIBILITY_CLEAR = 1,
  AUD_AUDIBILITY_CRITICAL = 2,
  AUD_AUDIBILITY_LEAD_IN = 3,
}

---`eAudSpecialEffectMode` (natives.json: SET_AUDIO_SPECIAL_EFFECT_MODE)
---@enum fx.Enum.AudSpecialEffectMode
EnumLib.AudSpecialEffectMode = {
  kSpecialEffectModeNormal = 0,
  kSpecialEffectModeUnderwater = 1,
  kSpecialEffectModeStoned = 2,
  kSpecialEffectModePauseMenu = 3,
  kSpecialEffectModeSlowMotion = 4,
  kSpecialEffectModeDrunkStage01 = 5,
  kSpecialEffectModeDrunkStage02 = 6,
  kSpecialEffectModeDrunkStage03 = 7,
  NUM_AUDSPECIALEFFECTMODE = 8,
}

---`eAudVehiclePriority` (natives.json: SET_AUDIO_VEHICLE_PRIORITY)
---@enum fx.Enum.AudVehiclePriority
EnumLib.AudVehiclePriority = {
  AUDIO_VEHICLE_PRIORITY_NORMAL = 0,
  AUDIO_VEHICLE_PRIORITY_MEDIUM = 1,
  AUDIO_VEHICLE_PRIORITY_MAX = 2,
  AUDIO_VEHICLE_PRIORITY_HIGH = 3,
}

---`BlipColor` (data/blips.md (citizenfx/fivem-docs content/docs/game-references/blips.md))
---@enum fx.Enum.BlipColor
EnumLib.BlipColor = {
  ---White
  White = 0,
  ---Red
  Red = 1,
  ---Green
  Green = 2,
  ---Blue
  Blue = 3,
  ---White
  White_4 = 4,
  ---Yellow
  Yellow = 5,
  ---Light Red
  LightRed = 6,
  ---Violet
  Violet = 7,
  ---Pink
  Pink = 8,
  ---Light Orange
  LightOrange = 9,
  ---Light Brown
  LightBrown = 10,
  ---Light Green
  LightGreen = 11,
  ---Light Blue
  LightBlue = 12,
  ---Light Purple
  LightPurple = 13,
  ---Dark Purple
  DarkPurple = 14,
  ---Cyan
  Cyan = 15,
  ---Light Yellow
  LightYellow = 16,
  ---Orange
  Orange = 17,
  ---Light Blue
  LightBlue_18 = 18,
  ---Dark Pink
  DarkPink = 19,
  ---Dark Yellow
  DarkYellow = 20,
  ---Dark Orange
  DarkOrange = 21,
  ---Light Gray
  LightGray = 22,
  ---Light Pink
  LightPink = 23,
  ---Lemon Green
  LemonGreen = 24,
  ---Forest Green
  ForestGreen = 25,
  ---Electric Blue
  ElectricBlue = 26,
  ---Bright Purple
  BrightPurple = 27,
  ---Dark Yellow
  DarkYellow_28 = 28,
  ---Dark Blue
  DarkBlue = 29,
  ---Dark Cyan
  DarkCyan = 30,
  ---Light Brown
  LightBrown_31 = 31,
  ---Light Blue
  LightBlue_32 = 32,
  ---Light Yellow
  LightYellow_33 = 33,
  ---Light Pink
  LightPink_34 = 34,
  ---Light Red
  LightRed_35 = 35,
  ---Beige
  Beige = 36,
  ---White
  White_37 = 37,
  ---Blue
  Blue_38 = 38,
  ---Light Gray
  LightGray_39 = 39,
  ---Dark Gray
  DarkGray = 40,
  ---Pink Red
  PinkRed = 41,
  ---Blue
  Blue_42 = 42,
  ---Light Green
  LightGreen_43 = 43,
  ---Light Orange
  LightOrange_44 = 44,
  ---White
  White_45 = 45,
  ---Gold
  Gold = 46,
  ---Orange
  Orange_47 = 47,
  ---Brilliant Rose
  BrilliantRose = 48,
  ---Red
  Red_49 = 49,
  ---Medium Purple
  MediumPurple = 50,
  ---Salmon
  Salmon = 51,
  ---Dark Green
  DarkGreen = 52,
  ---Blizzard Blue
  BlizzardBlue = 53,
  ---Oracle Blue
  OracleBlue = 54,
  ---Silver
  Silver = 55,
  ---Brown
  Brown = 56,
  ---Blue
  Blue_57 = 57,
  ---East Bay
  EastBay = 58,
  ---Red
  Red_59 = 59,
  ---Yellow Orange
  YellowOrange = 60,
  ---Mulberry Pink
  MulberryPink = 61,
  ---Alto Gray
  AltoGray = 62,
  ---Jelly Bean Blue
  JellyBeanBlue = 63,
  ---Dark Orange
  DarkOrange_64 = 64,
  ---Mamba
  Mamba = 65,
  ---Yellow Orange
  YellowOrange_66 = 66,
  ---Blue
  Blue_67 = 67,
  ---Blue
  Blue_68 = 68,
  ---Green
  Green_69 = 69,
  ---Yellow Orange
  YellowOrange_70 = 70,
  ---Yellow Orange
  YellowOrange_71 = 71,
  ---Transparent Black
  TransparentBlack = 72,
  ---Yellow Orange
  YellowOrange_73 = 73,
  ---Blue
  Blue_74 = 74,
  ---Red
  Red_75 = 75,
  ---Deep red
  DeepRed = 76,
  ---Blue
  Blue_77 = 77,
  ---Oracle Blue
  OracleBlue_78 = 78,
  ---Transparent Red
  TransparentRed = 79,
  ---Transparent Blue
  TransparentBlue = 80,
  ---Orange
  Orange_81 = 81,
  ---Light Green
  LightGreen_82 = 82,
  ---Purple
  Purple = 83,
  ---Blue
  Blue_84 = 84,
  ---Transparent Black
  TransparentBlack_85 = 85,
}

---`BlipSprite` (data/blips.md (citizenfx/fivem-docs content/docs/game-references/blips.md))
---@enum fx.Enum.BlipSprite
EnumLib.BlipSprite = {
  radar_higher = 0,
  radar_level = 1,
  radar_lower = 2,
  radar_police_ped = 3,
  radar_wanted_radius = 4,
  radar_area_blip = 5,
  radar_centre = 6,
  radar_north = 7,
  radar_waypoint = 8,
  radar_radius_blip = 9,
  radar_radius_outline_blip = 10,
  radar_weapon_higher = 11,
  radar_weapon_lower = 12,
  radar_higher_ai = 13,
  radar_lower_ai = 14,
  radar_police_heli_spin = 15,
  radar_police_plane_move = 16,
  radar_numbered_1 = 17,
  radar_numbered_2 = 18,
  radar_numbered_3 = 19,
  radar_numbered_4 = 20,
  radar_numbered_5 = 21,
  radar_numbered_6 = 22,
  radar_numbered_7 = 23,
  radar_numbered_8 = 24,
  radar_numbered_9 = 25,
  radar_numbered_10 = 26,
  radar_mp_crew = 27,
  radar_mp_friendlies = 28,
  radar_empty = 29,
  radar_empty_30 = 30,
  radar_empty_31 = 31,
  radar_script_objective = 32,
  radar_empty_33 = 33,
  radar_empty_34 = 34,
  radar_station = 35,
  radar_cable_car = 36,
  radar_activities = 37,
  radar_raceflag = 38,
  radar_fire = 39,
  radar_safehouse = 40,
  radar_police = 41,
  radar_police_chase = 42,
  radar_police_heli = 43,
  radar_bomb_a = 44,
  radar_bomb_b = 45,
  radar_bomb_c = 46,
  radar_snitch = 47,
  radar_planning_locations = 48,
  radar_crim_arrest = 49,
  radar_crim_carsteal = 50,
  radar_crim_drugs = 51,
  radar_crim_holdups = 52,
  radar_crim_pimping = 53,
  radar_crim_player = 54,
  radar_fence = 55,
  radar_cop_patrol = 56,
  radar_cop_player = 57,
  radar_crim_wanted = 58,
  radar_heist = 59,
  radar_police_station = 60,
  radar_hospital = 61,
  radar_assassins_mark = 62,
  radar_elevator = 63,
  radar_helicopter = 64,
  radar_joyriders = 65,
  radar_random_character = 66,
  radar_security_van = 67,
  radar_tow_truck = 68,
  radar_drive_thru = 69,
  radar_illegal_parking = 70,
  radar_barber = 71,
  radar_car_mod_shop = 72,
  radar_clothes_store = 73,
  radar_gym = 74,
  radar_tattoo = 75,
  radar_armenian_family = 76,
  radar_lester_family = 77,
  radar_michael_family = 78,
  radar_trevor_family = 79,
  radar_jewelry_heist = 80,
  radar_drag_race = 81,
  radar_drag_race_finish = 82,
  radar_car_carrier = 83,
  radar_rampage = 84,
  radar_vinewood_tours = 85,
  radar_lamar_family = 86,
  radar_taco_van = 87,
  radar_franklin_family = 88,
  radar_chinese_strand = 89,
  radar_flight_school = 90,
  radar_eye_sky = 91,
  radar_air_hockey = 92,
  radar_bar = 93,
  radar_base_jump = 94,
  radar_basketball = 95,
  radar_biolab_heist = 96,
  radar_bowling = 97,
  radar_burger_shot = 98,
  radar_cabaret_club = 99,
  radar_car_wash = 100,
  radar_cluckin_bell = 101,
  radar_comedy_club = 102,
  radar_darts = 103,
  radar_docks_heist = 104,
  radar_fbi_heist = 105,
  radar_fbi_officers_strand = 106,
  radar_finale_bank_heist = 107,
  radar_financier_strand = 108,
  radar_golf = 109,
  radar_gun_shop = 110,
  radar_internet_cafe = 111,
  radar_michael_family_exile = 112,
  radar_nice_house_heist = 113,
  radar_random_female = 114,
  radar_random_male = 115,
  radar_repo = 116,
  radar_restaurant = 117,
  radar_rural_bank_heist = 118,
  radar_shooting_range = 119,
  radar_solomon_strand = 120,
  radar_strip_club = 121,
  radar_tennis = 122,
  radar_trevor_family_exile = 123,
  radar_michael_trevor_family = 124,
  radar_vehicle_spawn = 125,
  radar_triathlon = 126,
  radar_off_road_racing = 127,
  radar_gang_cops = 128,
  radar_gang_mexicans = 129,
  radar_gang_bikers = 130,
  radar_gang_families = 131,
  radar_gang_professionals = 132,
  radar_snitch_red = 133,
  radar_crim_cuff_keys = 134,
  radar_cinema = 135,
  radar_music_venue = 136,
  radar_police_station_blue = 137,
  radar_airport = 138,
  radar_crim_saved_vehicle = 139,
  radar_weed_stash = 140,
  radar_hunting = 141,
  radar_pool = 142,
  radar_objective_blue = 143,
  radar_objective_green = 144,
  radar_objective_red = 145,
  radar_objective_yellow = 146,
  radar_arms_dealing = 147,
  radar_mp_friend = 148,
  radar_celebrity_theft = 149,
  radar_weapon_assault_rifle = 150,
  radar_weapon_bat = 151,
  radar_weapon_grenade = 152,
  radar_weapon_health = 153,
  radar_weapon_knife = 154,
  radar_weapon_molotov = 155,
  radar_weapon_pistol = 156,
  radar_weapon_rocket = 157,
  radar_weapon_shotgun = 158,
  radar_weapon_smg = 159,
  radar_weapon_sniper = 160,
  radar_mp_noise = 161,
  radar_poi = 162,
  radar_passive = 163,
  radar_usingmenu = 164,
  radar_friend_franklin_p = 165,
  radar_friend_franklin_x = 166,
  radar_friend_michael_p = 167,
  radar_friend_michael_x = 168,
  radar_friend_trevor_p = 169,
  radar_friend_trevor_x = 170,
  radar_gang_cops_partner = 171,
  radar_friend_lamar = 172,
  radar_weapon_minigun = 173,
  radar_weapon_grenadeLauncher = 174,
  radar_weapon_armour = 175,
  radar_property_takeover = 176,
  radar_gang_mexicans_highlight = 177,
  radar_gang_bikers_highlight = 178,
  radar_triathlon_cycling = 179,
  radar_triathlon_swimming = 180,
  radar_property_takeover_bikers = 181,
  radar_property_takeover_cops = 182,
  radar_property_takeover_vagos = 183,
  radar_camera = 184,
  radar_centre_red = 185,
  radar_handcuff_keys_bikers = 186,
  radar_handcuff_keys_vagos = 187,
  radar_handcuffs_closed_bikers = 188,
  radar_handcuffs_closed_vagos = 189,
  radar_handcuffs_open_bikers = 190,
  radar_handcuffs_open_vagos = 191,
  radar_camera_badger = 192,
  radar_camera_facade = 193,
  radar_camera_ifruit = 194,
  radar_crim_arrest_bikers = 195,
  radar_crim_arrest_vagos = 196,
  radar_yoga = 197,
  radar_taxi = 198,
  radar_numbered_11 = 199,
  radar_numbered_12 = 200,
  radar_numbered_13 = 201,
  radar_numbered_14 = 202,
  radar_numbered_15 = 203,
  radar_numbered_16 = 204,
  radar_shrink = 205,
  radar_epsilon = 206,
  radar_financier_strand_grey = 207,
  radar_trevor_family_grey = 208,
  radar_trevor_family_red = 209,
  radar_franklin_family_grey = 210,
  radar_franklin_family_blue = 211,
  radar_franklin_a = 212,
  radar_franklin_b = 213,
  radar_franklin_c = 214,
  radar_numbered_red_1 = 215,
  radar_numbered_red_2 = 216,
  radar_numbered_red_3 = 217,
  radar_numbered_red_4 = 218,
  radar_numbered_red_5 = 219,
  radar_numbered_red_6 = 220,
  radar_numbered_red_7 = 221,
  radar_numbered_red_8 = 222,
  radar_numbered_red_9 = 223,
  radar_numbered_red_10 = 224,
  radar_gang_vehicle = 225,
  radar_gang_vehicle_bikers = 226,
  radar_gang_vehicle_cops = 227,
  radar_gang_vehicle_vagos = 228,
  radar_guncar = 229,
  radar_driving_bikers = 230,
  radar_driving_cops = 231,
  radar_driving_vagos = 232,
  radar_gang_cops_highlight = 233,
  radar_shield_bikers = 234,
  radar_shield_cops = 235,
  radar_shield_vagos = 236,
  radar_custody_bikers = 237,
  radar_custody_vagos = 238,
  radar_gang_wanted_bikers = 239,
  radar_gang_wanted_bikers_1 = 240,
  radar_gang_wanted_bikers_2 = 241,
  radar_gang_wanted_bikers_3 = 242,
  radar_gang_wanted_bikers_4 = 243,
  radar_gang_wanted_bikers_5 = 244,
  radar_gang_wanted_vagos = 245,
  radar_gang_wanted_vagos_1 = 246,
  radar_gang_wanted_vagos_2 = 247,
  radar_gang_wanted_vagos_3 = 248,
  radar_gang_wanted_vagos_4 = 249,
  radar_gang_wanted_vagos_5 = 250,
  radar_arms_dealing_air = 251,
  radar_playerstate_arrested = 252,
  radar_playerstate_custody = 253,
  radar_playerstate_driving = 254,
  radar_playerstate_keyholder = 255,
  radar_playerstate_partner = 256,
  radar_gang_wanted_1 = 257,
  radar_gang_wanted_2 = 258,
  radar_gang_wanted_3 = 259,
  radar_gang_wanted_4 = 260,
  radar_gang_wanted_5 = 261,
  radar_ztype = 262,
  radar_stinger = 263,
  radar_packer = 264,
  radar_monroe = 265,
  radar_fairground = 266,
  radar_property = 267,
  radar_gang_highlight = 268,
  radar_altruist = 269,
  radar_ai = 270,
  radar_on_mission = 271,
  radar_cash_pickup = 272,
  radar_chop = 273,
  radar_dead = 274,
  radar_territory_locked = 275,
  radar_cash_lost = 276,
  radar_cash_vagos = 277,
  radar_cash_cops = 278,
  radar_hooker = 279,
  radar_friend = 280,
  radar_mission_2to4 = 281,
  radar_mission_2to8 = 282,
  radar_mission_2to12 = 283,
  radar_mission_2to16 = 284,
  radar_custody_dropoff = 285,
  radar_onmission_cops = 286,
  radar_onmission_lost = 287,
  radar_onmission_vagos = 288,
  radar_crim_carsteal_cops = 289,
  radar_crim_carsteal_bikers = 290,
  radar_crim_carsteal_vagos = 291,
  radar_band_strand = 292,
  radar_simeon_family = 293,
  radar_mission_1 = 294,
  radar_mission_2 = 295,
  radar_friend_darts = 296,
  radar_friend_comedyclub = 297,
  radar_friend_cinema = 298,
  radar_friend_tennis = 299,
  radar_friend_stripclub = 300,
  radar_friend_livemusic = 301,
  radar_friend_golf = 302,
  radar_bounty_hit = 303,
  radar_ugc_mission = 304,
  radar_horde = 305,
  radar_cratedrop = 306,
  radar_plane_drop = 307,
  radar_sub = 308,
  radar_race = 309,
  radar_deathmatch = 310,
  radar_arm_wrestling = 311,
  radar_mission_1to2 = 312,
  radar_shootingrange_gunshop = 313,
  radar_race_air = 314,
  radar_race_land = 315,
  radar_race_sea = 316,
  radar_tow = 317,
  radar_garbage = 318,
  radar_drill = 319,
  radar_spikes = 320,
  radar_firetruck = 321,
  radar_minigun2 = 322,
  radar_bugstar = 323,
  radar_submarine = 324,
  radar_chinook = 325,
  radar_getaway_car = 326,
  radar_mission_bikers_1 = 327,
  radar_mission_bikers_1to2 = 328,
  radar_mission_bikers_2 = 329,
  radar_mission_bikers_2to4 = 330,
  radar_mission_bikers_2to8 = 331,
  radar_mission_bikers_2to12 = 332,
  radar_mission_bikers_2to16 = 333,
  radar_mission_cops_1 = 334,
  radar_mission_cops_1to2 = 335,
  radar_mission_cops_2 = 336,
  radar_mission_cops_2to4 = 337,
  radar_mission_cops_2to8 = 338,
  radar_mission_cops_2to12 = 339,
  radar_mission_cops_2to16 = 340,
  radar_mission_vagos_1 = 341,
  radar_mission_vagos_1to2 = 342,
  radar_mission_vagos_2 = 343,
  radar_mission_vagos_2to4 = 344,
  radar_mission_vagos_2to8 = 345,
  radar_mission_vagos_2to12 = 346,
  radar_mission_vagos_2to16 = 347,
  radar_gang_bike = 348,
  radar_gas_grenade = 349,
  radar_property_for_sale = 350,
  radar_gang_attack_package = 351,
  radar_martin_madrazzo = 352,
  radar_enemy_heli_spin = 353,
  radar_boost = 354,
  radar_devin = 355,
  radar_dock = 356,
  radar_garage = 357,
  radar_golf_flag = 358,
  radar_hangar = 359,
  radar_helipad = 360,
  radar_jerry_can = 361,
  radar_mask = 362,
  radar_heist_prep = 363,
  radar_incapacitated = 364,
  radar_spawn_point_pickup = 365,
  radar_boilersuit = 366,
  radar_completed = 367,
  radar_rockets = 368,
  radar_garage_for_sale = 369,
  radar_helipad_for_sale = 370,
  radar_dock_for_sale = 371,
  radar_hangar_for_sale = 372,
  radar_placeholder_6 = 373,
  radar_business = 374,
  radar_business_for_sale = 375,
  radar_race_bike = 376,
  radar_parachute = 377,
  radar_team_deathmatch = 378,
  radar_race_foot = 379,
  radar_vehicle_deathmatch = 380,
  radar_barry = 381,
  radar_dom = 382,
  radar_maryann = 383,
  radar_cletus = 384,
  radar_josh = 385,
  radar_minute = 386,
  radar_omega = 387,
  radar_tonya = 388,
  radar_paparazzo = 389,
  radar_aim = 390,
  radar_cratedrop_background = 391,
  radar_green_and_net_player1 = 392,
  radar_green_and_net_player2 = 393,
  radar_green_and_net_player3 = 394,
  radar_green_and_friendly = 395,
  radar_net_player1_and_net_player2 = 396,
  radar_net_player1_and_net_player3 = 397,
  radar_creator = 398,
  radar_creator_direction = 399,
  radar_abigail = 400,
  radar_blimp = 401,
  radar_repair = 402,
  radar_testosterone = 403,
  radar_dinghy = 404,
  radar_fanatic = 405,
  radar_invisible = 406,
  radar_info_icon = 407,
  radar_capture_the_flag = 408,
  radar_last_team_standing = 409,
  radar_boat = 410,
  radar_capture_the_flag_base = 411,
  radar_mp_crew_412 = 412,
  radar_capture_the_flag_outline = 413,
  radar_capture_the_flag_base_nobag = 414,
  radar_weapon_jerrycan = 415,
  radar_rp = 416,
  radar_level_inside = 417,
  radar_bounty_hit_inside = 418,
  radar_capture_the_usaflag = 419,
  radar_capture_the_usaflag_outline = 420,
  radar_tank = 421,
  radar_player_heli = 422,
  radar_player_plane = 423,
  radar_player_jet = 424,
  radar_centre_stroke = 425,
  radar_player_guncar = 426,
  radar_player_boat = 427,
  radar_mp_heist = 428,
  radar_temp_1 = 429,
  radar_temp_2 = 430,
  radar_temp_3 = 431,
  radar_temp_4 = 432,
  radar_temp_5 = 433,
  radar_temp_6 = 434,
  radar_race_stunt = 435,
  radar_hot_property = 436,
  radar_urbanwarfare_versus = 437,
  radar_king_of_the_castle = 438,
  radar_player_king = 439,
  radar_dead_drop = 440,
  radar_penned_in = 441,
  radar_beast = 442,
  radar_edge_pointer = 443,
  radar_edge_crosstheline = 444,
  radar_mp_lamar = 445,
  radar_bennys = 446,
  radar_corner_number_1 = 447,
  radar_corner_number_2 = 448,
  radar_corner_number_3 = 449,
  radar_corner_number_4 = 450,
  radar_corner_number_5 = 451,
  radar_corner_number_6 = 452,
  radar_corner_number_7 = 453,
  radar_corner_number_8 = 454,
  radar_yacht = 455,
  radar_finders_keepers = 456,
  radar_assault_package = 457,
  radar_hunt_the_boss = 458,
  radar_sightseer = 459,
  radar_turreted_limo = 460,
  radar_belly_of_the_beast = 461,
  radar_yacht_location = 462,
  radar_pickup_beast = 463,
  radar_pickup_zoned = 464,
  radar_pickup_random = 465,
  radar_pickup_slow_time = 466,
  radar_pickup_swap = 467,
  radar_pickup_thermal = 468,
  radar_pickup_weed = 469,
  radar_weapon_railgun = 470,
  radar_seashark = 471,
  radar_pickup_hidden = 472,
  radar_warehouse = 473,
  radar_warehouse_for_sale = 474,
  radar_office = 475,
  radar_office_for_sale = 476,
  radar_truck = 477,
  radar_contraband = 478,
  radar_trailer = 479,
  radar_vip = 480,
  radar_cargobob = 481,
  radar_area_outline_blip = 482,
  radar_pickup_accelerator = 483,
  radar_pickup_ghost = 484,
  radar_pickup_detonator = 485,
  radar_pickup_bomb = 486,
  radar_pickup_armoured = 487,
  radar_stunt = 488,
  radar_weapon_lives = 489,
  radar_stunt_premium = 490,
  radar_adversary = 491,
  radar_biker_clubhouse = 492,
  radar_biker_caged_in = 493,
  radar_biker_turf_war = 494,
  radar_biker_joust = 495,
  radar_production_weed = 496,
  radar_production_crack = 497,
  radar_production_fake_id = 498,
  radar_production_meth = 499,
  radar_production_money = 500,
  radar_package = 501,
  radar_capture_1 = 502,
  radar_capture_2 = 503,
  radar_capture_3 = 504,
  radar_capture_4 = 505,
  radar_capture_5 = 506,
  radar_capture_6 = 507,
  radar_capture_7 = 508,
  radar_capture_8 = 509,
  radar_capture_9 = 510,
  radar_capture_10 = 511,
  radar_quad = 512,
  radar_bus = 513,
  radar_drugs_package = 514,
  radar_pickup_jump = 515,
  radar_adversary_4 = 516,
  radar_adversary_8 = 517,
  radar_adversary_10 = 518,
  radar_adversary_12 = 519,
  radar_adversary_16 = 520,
  radar_laptop = 521,
  radar_pickup_deadline = 522,
  radar_sports_car = 523,
  radar_warehouse_vehicle = 524,
  radar_reg_papers = 525,
  radar_police_station_dropoff = 526,
  radar_junkyard = 527,
  radar_ex_vech_1 = 528,
  radar_ex_vech_2 = 529,
  radar_ex_vech_3 = 530,
  radar_ex_vech_4 = 531,
  radar_ex_vech_5 = 532,
  radar_ex_vech_6 = 533,
  radar_ex_vech_7 = 534,
  radar_target_a = 535,
  radar_target_b = 536,
  radar_target_c = 537,
  radar_target_d = 538,
  radar_target_e = 539,
  radar_target_f = 540,
  radar_target_g = 541,
  radar_target_h = 542,
  radar_jugg = 543,
  radar_pickup_repair = 544,
  radar_steeringwheel = 545,
  radar_trophy = 546,
  radar_pickup_rocket_boost = 547,
  radar_pickup_homing_rocket = 548,
  radar_pickup_machinegun = 549,
  radar_pickup_parachute = 550,
  radar_pickup_time_5 = 551,
  radar_pickup_time_10 = 552,
  radar_pickup_time_15 = 553,
  radar_pickup_time_20 = 554,
  radar_pickup_time_30 = 555,
  radar_supplies = 556,
  radar_property_bunker = 557,
  radar_gr_wvm_1 = 558,
  radar_gr_wvm_2 = 559,
  radar_gr_wvm_3 = 560,
  radar_gr_wvm_4 = 561,
  radar_gr_wvm_5 = 562,
  radar_gr_wvm_6 = 563,
  radar_gr_covert_ops = 564,
  radar_adversary_bunker = 565,
  radar_gr_moc_upgrade = 566,
  radar_gr_w_upgrade = 567,
  radar_sm_cargo = 568,
  radar_sm_hangar = 569,
  radar_tf_checkpoint = 570,
  radar_race_tf = 571,
  radar_sm_wp1 = 572,
  radar_sm_wp2 = 573,
  radar_sm_wp3 = 574,
  radar_sm_wp4 = 575,
  radar_sm_wp5 = 576,
  radar_sm_wp6 = 577,
  radar_sm_wp7 = 578,
  radar_sm_wp8 = 579,
  radar_sm_wp9 = 580,
  radar_sm_wp10 = 581,
  radar_sm_wp11 = 582,
  radar_sm_wp12 = 583,
  radar_sm_wp13 = 584,
  radar_sm_wp14 = 585,
  radar_nhp_bag = 586,
  radar_nhp_chest = 587,
  radar_nhp_orbit = 588,
  radar_nhp_veh1 = 589,
  radar_nhp_base = 590,
  radar_nhp_overlay = 591,
  radar_nhp_turret = 592,
  radar_nhp_mg_firewall = 593,
  radar_nhp_mg_node = 594,
  radar_nhp_wp1 = 595,
  radar_nhp_wp2 = 596,
  radar_nhp_wp3 = 597,
  radar_nhp_wp4 = 598,
  radar_nhp_wp5 = 599,
  radar_nhp_wp6 = 600,
  radar_nhp_wp7 = 601,
  radar_nhp_wp8 = 602,
  radar_nhp_wp9 = 603,
  radar_nhp_cctv = 604,
  radar_nhp_starterpack = 605,
  radar_nhp_turret_console = 606,
  radar_nhp_mg_mir_rotate = 607,
  radar_nhp_mg_mir_static = 608,
  radar_nhp_mg_proxy = 609,
  radar_acsr_race_target = 610,
  radar_acsr_race_hotring = 611,
  radar_acsr_wp1 = 612,
  radar_acsr_wp2 = 613,
  radar_bat_club_property = 614,
  radar_bat_cargo = 615,
  radar_bat_truck = 616,
  radar_bat_hack_jewel = 617,
  radar_bat_hack_gold = 618,
  radar_bat_keypad = 619,
  radar_bat_hack_target = 620,
  radar_pickup_dtb_health = 621,
  radar_pickup_dtb_blast_increase = 622,
  radar_pickup_dtb_blast_decrease = 623,
  radar_pickup_dtb_bomb_increase = 624,
  radar_pickup_dtb_bomb_decrease = 625,
  radar_bat_rival_club = 626,
  radar_bat_drone = 627,
  radar_bat_cash_reg = 628,
  radar_cctv = 629,
  radar_bat_assassinate = 630,
  radar_bat_pbus = 631,
  radar_bat_wp1 = 632,
  radar_bat_wp2 = 633,
  radar_bat_wp3 = 634,
  radar_bat_wp4 = 635,
  radar_bat_wp5 = 636,
  radar_bat_wp6 = 637,
  radar_blimp_2 = 638,
  radar_oppressor_2 = 639,
  radar_bat_wp7 = 640,
  radar_arena_series = 641,
  radar_arena_premium = 642,
  radar_arena_workshop = 643,
  radar_race_wars = 644,
  radar_arena_turret = 645,
  radar_arena_rc_car = 646,
  radar_arena_rc_workshop = 647,
  radar_arena_trap_fire = 648,
  radar_arena_trap_flip = 649,
  radar_arena_trap_sea = 650,
  radar_arena_trap_turn = 651,
  radar_arena_trap_pit = 652,
  radar_arena_trap_mine = 653,
  radar_arena_trap_bomb = 654,
  radar_arena_trap_wall = 655,
  radar_arena_trap_brd = 656,
  radar_arena_trap_sbrd = 657,
  radar_arena_bruiser = 658,
  radar_arena_brutus = 659,
  radar_arena_cerberus = 660,
  radar_arena_deathbike = 661,
  radar_arena_dominator = 662,
  radar_arena_impaler = 663,
  radar_arena_imperator = 664,
  radar_arena_issi = 665,
  radar_arena_sasquatch = 666,
  radar_arena_scarab = 667,
  radar_arena_slamvan = 668,
  radar_arena_zr380 = 669,
  radar_ap = 670,
  radar_comic_store = 671,
  radar_cop_car = 672,
  radar_rc_time_trials = 673,
  radar_king_of_the_hill = 674,
  radar_king_of_the_hill_teams = 675,
  radar_rucksack = 676,
  radar_shipping_container = 677,
  radar_agatha = 678,
  radar_casino = 679,
  radar_casino_table_games = 680,
  radar_casino_wheel = 681,
  radar_casino_concierge = 682,
  radar_casino_chips = 683,
  radar_casino_horse_racing = 684,
  radar_adversary_featured = 685,
  radar_roulette_1 = 686,
  radar_roulette_2 = 687,
  radar_roulette_3 = 688,
  radar_roulette_4 = 689,
  radar_roulette_5 = 690,
  radar_roulette_6 = 691,
  radar_roulette_7 = 692,
  radar_roulette_8 = 693,
  radar_roulette_9 = 694,
  radar_roulette_10 = 695,
  radar_roulette_11 = 696,
  radar_roulette_12 = 697,
  radar_roulette_13 = 698,
  radar_roulette_14 = 699,
  radar_roulette_15 = 700,
  radar_roulette_16 = 701,
  radar_roulette_17 = 702,
  radar_roulette_18 = 703,
  radar_roulette_19 = 704,
  radar_roulette_20 = 705,
  radar_roulette_21 = 706,
  radar_roulette_22 = 707,
  radar_roulette_23 = 708,
  radar_roulette_24 = 709,
  radar_roulette_25 = 710,
  radar_roulette_26 = 711,
  radar_roulette_27 = 712,
  radar_roulette_28 = 713,
  radar_roulette_29 = 714,
  radar_roulette_30 = 715,
  radar_roulette_31 = 716,
  radar_roulette_32 = 717,
  radar_roulette_33 = 718,
  radar_roulette_34 = 719,
  radar_roulette_35 = 720,
  radar_roulette_36 = 721,
  radar_roulette_0 = 722,
  radar_roulette_00 = 723,
  radar_limo = 724,
  radar_weapon_alien = 725,
  radar_race_open_wheel = 726,
  radar_rappel = 727,
  radar_swap_car = 728,
  radar_scuba_gear = 729,
  radar_cpanel_1 = 730,
  radar_cpanel_2 = 731,
  radar_cpanel_3 = 732,
  radar_cpanel_4 = 733,
  radar_snow_truck = 734,
  radar_buggy_1 = 735,
  radar_buggy_2 = 736,
  radar_zhaba = 737,
  radar_gerald = 738,
  radar_ron = 739,
  radar_arcade = 740,
  radar_drone_controls = 741,
  radar_rc_tank = 742,
  radar_stairs = 743,
  radar_camera_2 = 744,
  radar_winky = 745,
  radar_mini_sub = 746,
  radar_kart_retro = 747,
  radar_kart_modern = 748,
  radar_military_quad = 749,
  radar_military_truck = 750,
  radar_ship_wheel = 751,
  radar_ufo = 752,
  radar_seasparrow2 = 753,
  radar_dinghy2 = 754,
  radar_patrol_boat = 755,
  radar_retro_sports_car = 756,
  radar_squadee = 757,
  radar_folding_wing_jet = 758,
  radar_valkyrie2 = 759,
  radar_sub2 = 760,
  radar_bolt_cutters = 761,
  radar_rappel_gear = 762,
  radar_keycard = 763,
  radar_password = 764,
  radar_island_heist_prep = 765,
  radar_island_party = 766,
  radar_control_tower = 767,
  radar_underwater_gate = 768,
  radar_power_switch = 769,
  radar_compound_gate = 770,
  radar_rappel_point = 771,
  radar_keypad = 772,
  radar_sub_controls = 773,
  radar_sub_periscope = 774,
  radar_sub_missile = 775,
  radar_painting = 776,
  radar_car_meet = 777,
  radar_car_test_area = 778,
  radar_auto_shop_property = 779,
  radar_docks_export = 780,
  radar_prize_car = 781,
  radar_test_car = 782,
  radar_car_robbery_board = 783,
  radar_car_robbery_prep = 784,
  radar_street_race_series = 785,
  radar_pursuit_series = 786,
  radar_car_meet_organiser = 787,
  radar_securoserv = 788,
  radar_bounty_collectibles = 789,
  radar_movie_collectibles = 790,
  radar_trailer_ramp = 791,
  radar_race_organiser = 792,
  radar_chalkboard_list = 793,
  radar_export_vehicle = 794,
  radar_train = 795,
  radar_heist_diamond = 796,
  radar_heist_doomsday = 797,
  radar_heist_island = 798,
  radar_slamvan2 = 799,
  radar_crusader = 800,
  radar_construction_outfit = 801,
  radar_overlay_jammed = 802,
  radar_heist_island_unavailable = 803,
  radar_heist_diamond_unavailable = 804,
  radar_heist_doomsday_unavailable = 805,
  radar_placeholder_7 = 806,
  radar_placeholder_8 = 807,
  radar_placeholder_9 = 808,
  radar_featured_series = 809,
  radar_vehicle_for_sale = 810,
  radar_van_keys = 811,
  radar_suv_service = 812,
  radar_security_contract = 813,
  radar_safe = 814,
  radar_ped_r = 815,
  radar_ped_e = 816,
  radar_payphone = 817,
  radar_patriot3 = 818,
  radar_music_studio = 819,
  radar_jubilee = 820,
  radar_granger2 = 821,
  radar_explosive_charge = 822,
  radar_deity = 823,
  radar_d_champion = 824,
  radar_buffalo4 = 825,
  radar_agency = 826,
  radar_biker_bar = 827,
  radar_simeon_overlay = 828,
  radar_junk_skydive = 829,
  radar_luxury_car_showroom = 830,
  radar_car_showroom = 831,
  radar_car_showroom_simeon = 832,
  radar_flaming_skull = 833,
  radar_weapon_ammo = 834,
  radar_community_series = 835,
  radar_cayo_series = 836,
  radar_clubhouse_contract = 837,
  radar_agent_ulp = 838,
  radar_acid = 839,
  radar_acid_lab = 840,
  radar_dax_overlay = 841,
  radar_dead_drop_package = 842,
  radar_downtown_cab = 843,
  radar_gun_van = 844,
  radar_stash_house = 845,
  radar_tractor = 846,
  radar_warehouse_juggalo = 847,
  radar_warehouse_juggalo_dax = 848,
  radar_weapon_crowbar = 849,
  radar_duffel_bag = 850,
  radar_oil_tanker = 851,
  radar_acid_lab_tent = 852,
  radar_van_burrito = 853,
  radar_acid_boost = 854,
  radar_ped_gang_leader = 855,
  radar_multistorey_garage = 856,
  radar_seized_asset_sales = 857,
  radar_cayo_attrition = 858,
  radar_bicycle = 859,
  radar_bicycle_trial = 860,
  radar_raiju = 861,
  radar_conada2 = 862,
  radar_overlay_ready_for_sell = 863,
  radar_overlay_missing_supplies = 864,
  radar_streamer216 = 865,
  radar_signal_jammer = 866,
  radar_salvage_yard = 867,
  radar_robbery_prep_equipment = 868,
  radar_robbery_prep_overlay = 869,
  radar_yusuf = 870,
  radar_vincent = 871,
  radar_vinewood_garage = 872,
  radar_lstb = 873,
  radar_cctv_workstation = 874,
  radar_hacking_device = 875,
  radar_race_drag = 876,
  radar_race_drift = 877,
  radar_casino_prep = 878,
  radar_planning_wall = 879,
  radar_weapon_crate = 880,
  radar_weapon_snowball = 881,
  radar_train_signals_green = 882,
  radar_train_signals_red = 883,
  radar_office_transporter = 884,
  radar_yankton_survival = 885,
  radar_daily_bounty = 886,
  radar_bounty_target = 887,
  radar_filming_schedule = 888,
  radar_pizza_this = 889,
  radar_aircraft_carrier = 890,
  radar_weapon_emp = 891,
  radar_maude_eccles = 892,
  radar_bail_bonds_office = 893,
  radar_weapon_emp_mine = 894,
  radar_zombie_disease = 895,
  radar_zombie_proximity = 896,
  radar_zombie_fire = 897,
  radar_animal_possessed = 898,
  radar_mobile_phone = 899,
  radar_garment_factory = 900,
  radar_garment_factory_for_sale = 901,
  radar_garment_factory_equipment = 902,
  radar_field_hangar = 903,
  radar_field_hangar_for_sale = 904,
  radar_cargobob_ch53 = 905,
  radar_chopper_lift_ammo = 906,
  radar_chopper_lift_armor = 907,
  radar_chopper_lift_explosives = 908,
  radar_chopper_lift_upgrade = 909,
  radar_chopper_lift_weapon = 910,
  radar_cargo_ship = 911,
  radar_submarine_missile = 912,
  radar_propeller_engine = 913,
  radar_shark = 914,
  radar_fast_travel = 915,
  radar_plane_duster2 = 916,
  radar_plane_titan2 = 917,
  radar_collectible = 918,
  radar_field_hangar_discount = 919,
  radar_garment_factory_discount = 920,
  radar_weapon_gusenberg_sweeper = 921,
  radar_weapon_tear_gas = 922,
  radar_dog = 923,
  radar_bobcat_security = 924,
  radar_smoke_shop = 925,
  radar_smoke_shop_for_sale = 926,
  radar_smoke_shop_attention = 927,
  radar_helitours = 928,
  radar_helitours_for_sale = 929,
  radar_helitours_attention = 930,
  radar_car_wash_business = 931,
  radar_car_wash_business_for_sale = 932,
  radar_car_wash_business_attention = 933,
  radar_attention = 934,
  radar_alarm = 935,
  radar_helitours_discount = 936,
  radar_smoke_shop_discount = 937,
  radar_car_wash_business_discount = 938,
  radar_real_estate = 939,
  radar_medical_courier = 940,
  radar_gruppe_sechs = 941,
  radar_fire_station = 942,
  radar_fire_truck = 943,
  radar_alpha_mail = 944,
  radar_ls_meteor = 945,
  radar_four20_survival = 946,
  radar_community_mission_series = 947,
  radar_property_mansion = 948,
  radar_ai_keypad = 949,
  radar_taxi_self_drive = 950,
  radar_train_subway = 951,
  radar_trashbag = 952,
  radar_mission_creator = 953,
  radar_cat = 954,
  radar_mansion_ai_m = 955,
  radar_mansion_ai_f = 956,
  radar_mansion_ai_gang = 957,
  radar_heist_art_unavailable = 958,
  radar_heist_art = 959,
  radar_property_mansion_art_heist = 960,
  radar_art_heist_prep = 961,
  radar_manhole_key = 962,
  radar_buyers_request = 963,
  radar_armored_caracara = 964,
  radar_witness = 965,
}

---`eBlockingObjectFlags` (natives.json: ADD_NAVMESH_BLOCKING_OBJECT)
---@enum fx.Enum.BlockingObjectFlags
EnumLib.BlockingObjectFlags = {
  ---Default Flag
  BLOCKING_OBJECT_DEFAULT = 0,
  ---Blocking object will block wander paths
  BLOCKING_OBJECT_WANDERPATH = 1,
  ---Blocking object will block (regular) shortest-paths
  BLOCKING_OBJECT_SHORTESTPATH = 2,
  ---Blocking object will block flee paths
  BLOCKING_OBJECT_FLEEPATH = 4,
  ---Blocking object will block all paths
  BLOCKING_OBJECT_ALLPATHS = 7,
}

---`eBoatMissionFlags` (natives.json: TASK_BOAT_MISSION)
---@enum fx.Enum.BoatMissionFlags
EnumLib.BoatMissionFlags = {
  None = 0,
  StopAtEnd = 1,
  StopAtShore = 2,
  AvoidShore = 4,
  PreferForward = 8,
  NeverStop = 16,
  NeverNavMesh = 32,
  NeverRoute = 64,
  ForceBeached = 128,
  UseWanderRoute = 256,
  UseFleeRoute = 512,
  NeverPause = 1024,
  ---StopAtEnd | StopAtShore | AvoidShore
  DefaultSettings = 7,
  ---StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverRoute
  OpenOceanSettings = 111,
  ---StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverPause
  BoatTaxiSettings = 1071,
}

---`eBusySpinnerType` (natives.json: END_TEXT_COMMAND_BUSYSPINNER_ON)
---@enum fx.Enum.BusySpinnerType
EnumLib.BusySpinnerType = {
  BUSY_SPINNER_LEFT = 0,
  BUSY_SPINNER_LEFT_2 = 1,
  BUSY_SPINNER_LEFT_3 = 2,
  BUSY_SPINNER_SAVE = 3,
  BUSY_SPINNER_RIGHT = 4,
}

---`eCamSplineSmoothingFlags` (natives.json: STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP)
---@enum fx.Enum.CamSplineSmoothingFlags
EnumLib.CamSplineSmoothingFlags = {
  ---No smoothing just moves at a constant rate
  CAM_SPLINE_NO_SMOOTH = 0,
  ---Decelerates when approaching a node
  CAM_SPLINE_SLOW_IN_SMOOTH = 1,
  ---Accelerates slowly when leaving a node
  CAM_SPLINE_SLOW_OUT_SMOOTH = 2,
  ---Decelerates when approaching a node and accelerates slowly when leaving a node
  CAM_SPLINE_SLOW_IN_OUT_SMOOTH = 3,
  CAM_SPLINE_VERY_SLOW_IN = 4,
  CAM_SPLINE_VERY_SLOW_OUT = 5,
  CAM_SPLINE_VERY_SLOW_IN_SLOW_OUT = 6,
  CAM_SPLINE_SLOW_IN_VERY_SLOW_OUT = 7,
  CAM_SPLINE_VERY_SLOW_IN_VERY_SLOW_OUT = 8,
  CAM_SPLINE_EASE_IN = 9,
  CAM_SPLINE_EASE_OUT = 10,
  CAM_SPLINE_QUADRATIC_EASE_IN = 11,
  CAM_SPLINE_QUADRATIC_EASE_OUT = 12,
  CAM_SPLINE_QUADRATIC_EASE_IN_OUT = 13,
  CAM_SPLINE_CUBIC_EASE_IN = 14,
  CAM_SPLINE_CUBIC_EASE_OUT = 15,
  CAM_SPLINE_CUBIC_EASE_IN_OUT = 16,
  CAM_SPLINE_QUARTIC_EASE_IN = 17,
  CAM_SPLINE_QUARTIC_EASE_OUT = 18,
  CAM_SPLINE_QUARTIC_EASE_IN_OUT = 19,
  CAM_SPLINE_QUINTIC_EASE_IN = 20,
  CAM_SPLINE_QUINTIC_EASE_OUT = 21,
  CAM_SPLINE_QUINTIC_EASE_IN_OUT = 22,
  CAM_SPLINE_CIRCULAR_EASE_IN = 23,
  CAM_SPLINE_CIRCULAR_EASE_OUT = 24,
  CAM_SPLINE_CIRCULAR_EASE_IN_OUT = 25,
}

---`eCamViewMode` (natives.json: GET_FOLLOW_PED_CAM_VIEW_MODE)
---@enum fx.Enum.CamViewMode
EnumLib.CamViewMode = {
  THIRD_PERSON_NEAR = 0,
  THIRD_PERSON_MEDIUM = 1,
  THIRD_PERSON_FAR = 2,
  CINEMATIC = 3,
  FIRST_PERSON = 4,
}

---`eCargobobHook` (natives.json: CREATE_PICK_UP_ROPE_FOR_CARGOBOB)
---@enum fx.Enum.CargobobHook
EnumLib.CargobobHook = {
  CARGOBOB_HOOK = 0,
  CARGOBOB_MAGNET = 1,
}

---`eCellInput` (natives.json: CELL_CAM_MOVE_FINGER)
---@enum fx.Enum.CellInput
EnumLib.CellInput = {
  CELL_INPUT_NONE = 0,
  CELL_INPUT_UP = 1,
  CELL_INPUT_DOWN = 2,
  CELL_INPUT_LEFT = 3,
  CELL_INPUT_RIGHT = 4,
  CELL_INPUT_SELECT = 5,
}

---`eCombatAttribute` (natives.json: SET_PED_COMBAT_ATTRIBUTES)
---@enum fx.Enum.CombatAttribute
EnumLib.CombatAttribute = {
  CA_INVALID = -1,
  ---AI will only use cover if this is set
  CA_USE_COVER = 0,
  ---AI will only use vehicles if this is set
  CA_USE_VEHICLE = 1,
  ---AI will only driveby from a vehicle if this is set
  CA_DO_DRIVEBYS = 2,
  ---Will be forced to stay in a ny vehicel if this isn't set
  CA_LEAVE_VEHICLES = 3,
  ---This ped can make decisions on whether to strafe or not based on distance to destination, recent bullet events, etc.
  CA_CAN_USE_DYNAMIC_STRAFE_DECISIONS = 4,
  ---Ped will always fight upon getting threat response task
  CA_ALWAYS_FIGHT = 5,
  ---If in combat and in a vehicle, the ped will flee rather than attacking
  CA_FLEE_WHILST_IN_VEHICLE = 6,
  ---If in combat and chasing in a vehicle, the ped will keep a distance behind rather than ramming
  CA_JUST_FOLLOW_VEHICLE = 7,
  ---Deprecated
  CA_PLAY_REACTION_ANIMS = 8,
  ---Peds will scan for and react to dead peds found
  CA_WILL_SCAN_FOR_DEAD_PEDS = 9,
  ---Deprecated
  CA_IS_A_GUARD = 10,
  ---The ped will seek cover only
  CA_JUST_SEEK_COVER = 11,
  ---Ped will only blind fire when in cover
  CA_BLIND_FIRE_IN_COVER = 12,
  ---Ped may advance
  CA_AGGRESSIVE = 13,
  ---Ped can investigate events such as distant gunfire, footsteps, explosions etc
  CA_CAN_INVESTIGATE = 14,
  ---Ped can use a radio to call for backup (happens after a reaction)
  CA_CAN_USE_RADIO = 15,
  ---Deprecated
  CA_CAN_CAPTURE_ENEMY_PEDS = 16,
  ---Ped will always flee upon getting threat response task
  CA_ALWAYS_FLEE = 17,
  ---Ped can do unarmed taunts in vehicle
  CA_CAN_TAUNT_IN_VEHICLE = 20,
  ---Ped will be able to chase their targets if both are on foot and the target is running away
  CA_CAN_CHASE_TARGET_ON_FOOT = 21,
  ---Ped can drag injured peds to safety
  CA_WILL_DRAG_INJURED_PEDS_TO_SAFETY = 22,
  ---Ped will require LOS to the target it is aiming at before shooting
  CA_REQUIRES_LOS_TO_SHOOT = 23,
  ---Ped is allowed to use proximity based fire rate (increasing fire rate at closer distances)
  CA_USE_PROXIMITY_FIRING_RATE = 24,
  ---Normally peds can switch briefly to a secondary target in combat, setting this will prevent that
  CA_DISABLE_SECONDARY_TARGET = 25,
  ---This will disable the flinching combat entry reactions for peds, instead only playing the turn and aim anims
  CA_DISABLE_ENTRY_REACTIONS = 26,
  ---Force ped to be 100% accurate in all situations (added by Jay Reinebold)
  CA_PERFECT_ACCURACY = 27,
  ---If we don't have cover and can't see our target it's possible we will advance, even if the target is in cover
  CA_CAN_USE_FRUSTRATED_ADVANCE = 28,
  ---This will have the ped move to defensive areas and within attack windows before performing the cover search
  CA_MOVE_TO_LOCATION_BEFORE_COVER_SEARCH = 29,
  ---Allow shooting of our weapon even if we don't have LOS (this isn't X-ray vision as it only affects weapon firing)
  CA_CAN_SHOOT_WITHOUT_LOS = 30,
  ---Ped will try to maintain a min distance to the target, even if using defensive areas (currently only for cover finding + usage)
  CA_MAINTAIN_MIN_DISTANCE_TO_TARGET = 31,
  ---Allows ped to use steamed variations of peeking anims
  CA_CAN_USE_PEEKING_VARIATIONS = 34,
  ---Disables pinned down behaviors
  CA_DISABLE_PINNED_DOWN = 35,
  ---Disables pinning down others
  CA_DISABLE_PIN_DOWN_OTHERS = 36,
  ---When defensive area is reached the area is cleared and the ped is set to use defensive combat movement
  CA_OPEN_COMBAT_WHEN_DEFENSIVE_AREA_IS_REACHED = 37,
  ---Disables bullet reactions
  CA_DISABLE_BULLET_REACTIONS = 38,
  ---Allows ped to bust the player
  CA_CAN_BUST = 39,
  ---This ped is ignored by other peds when wanted
  CA_IGNORED_BY_OTHER_PEDS_WHEN_WANTED = 40,
  ---Ped is allowed to "jack" vehicles when needing to chase a target in combat
  CA_CAN_COMMANDEER_VEHICLES = 41,
  ---Ped is allowed to flank
  CA_CAN_FLANK = 42,
  ---Ped will switch to advance if they can't find cover
  CA_SWITCH_TO_ADVANCE_IF_CANT_FIND_COVER = 43,
  ---Ped will switch to defensive if they are in cover
  CA_SWITCH_TO_DEFENSIVE_IF_IN_COVER = 44,
  ---Ped will clear their primary defensive area when it is reached
  CA_CLEAR_PRIMARY_DEFENSIVE_AREA_WHEN_REACHED = 45,
  ---Ped is allowed to fight armed peds when not armed
  CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED = 46,
  ---Ped is not allowed to use tactical points if set to use defensive movement (will only use cover)
  CA_ENABLE_TACTICAL_POINTS_WHEN_DEFENSIVE = 47,
  ---Ped cannot adjust cover arcs when testing cover safety (atm done on corner cover points when ped usingdefensive area + no LOS)
  CA_DISABLE_COVER_ARC_ADJUSTMENTS = 48,
  ---Ped may use reduced accuracy with large number of enemies attacking the same local player target
  CA_USE_ENEMY_ACCURACY_SCALING = 49,
  ---Ped is allowed to charge the enemy position
  CA_CAN_CHARGE = 50,
  ---When defensive area is reached the area is cleared and the ped is set to use will advance movement
  CA_REMOVE_AREA_SET_WILL_ADVANCE_WHEN_DEFENSIVE_AREA_REACHED = 51,
  ---Use the vehicle attack mission during combat (only works on driver)
  CA_USE_VEHICLE_ATTACK = 52,
  ---Use the vehicle attack mission during combat if the vehicle has mounted guns (only works on driver)
  CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS = 53,
  ---Always equip best weapon in combat
  CA_ALWAYS_EQUIP_BEST_WEAPON = 54,
  ---Ignores in water at depth visibility check
  CA_CAN_SEE_UNDERWATER_PEDS = 55,
  ---Will prevent this ped from aiming at any AI targets that are in helicopters
  CA_DISABLE_AIM_AT_AI_TARGETS_IN_HELIS = 56,
  ---Disables peds seeking due to no clear line of sight
  CA_DISABLE_SEEK_DUE_TO_LINE_OF_SIGHT = 57,
  ---To be used when releasing missions peds if we don't want them fleeing from combat (mission peds already prevent flee)
  CA_DISABLE_FLEE_FROM_COMBAT = 58,
  ---Disables target changes during vehicle pursuit
  CA_DISABLE_TARGET_CHANGES_DURING_VEHICLE_PURSUIT = 59,
  ---Ped may throw a smoke grenade at player loitering in combat
  CA_CAN_THROW_SMOKE_GRENADE = 60,
  ---Will clear a set defensive area if that area cannot be reached
  CA_CLEAR_AREA_SET_DEFENSIVE_IF_DEFENSIVE_CANNOT_BE_REACHED = 62,
  ---Disable block from pursue during vehicle chases
  CA_DISABLE_BLOCK_FROM_PURSUE_DURING_VEHICLE_CHASE = 64,
  ---Disable spin out during vehicle chases
  CA_DISABLE_SPIN_OUT_DURING_VEHICLE_CHASE = 65,
  ---Disable cruise in front during block during vehicle chases
  CA_DISABLE_CRUISE_IN_FRONT_DURING_BLOCK_DURING_VEHICLE_CHASE = 66,
  ---Makes it more likely that the ped will continue targeting a target with blocked los for a few seconds
  CA_CAN_IGNORE_BLOCKED_LOS_WEIGHTING = 67,
  ---Disables the react to buddy shot behaviour.
  CA_DISABLE_REACT_TO_BUDDY_SHOT = 68,
  ---Prefer pathing using navmesh over road nodes
  CA_PREFER_NAVMESH_DURING_VEHICLE_CHASE = 69,
  ---Ignore road edges when avoiding
  CA_ALLOWED_TO_AVOID_OFFROAD_DURING_VEHICLE_CHASE = 70,
  ---Permits ped to charge a target outside the assigned defensive area.
  CA_PERMIT_CHARGE_BEYOND_DEFENSIVE_AREA = 71,
  ---This ped will switch to an RPG if target is in a vehicle, otherwise will use alternate weapon.
  CA_USE_ROCKETS_AGAINST_VEHICLES_ONLY = 72,
  ---Disables peds moving to a tactical point without clear los
  CA_DISABLE_TACTICAL_POINTS_WITHOUT_CLEAR_LOS = 73,
  ---Disables pull alongside during vehicle chase
  CA_DISABLE_PULL_ALONGSIDE_DURING_VEHICLE_CHASE = 74,
  ---If set on a ped, they will not flee when all random peds flee is set to TRUE (they are still able to flee due to other reasons)
  CA_DISABLE_ALL_RANDOMS_FLEE = 78,
  ---This ped will send out a script DeadPedSeenEvent when they see a dead ped
  CA_WILL_GENERATE_DEAD_PED_SEEN_SCRIPT_EVENTS = 79,
  ---This will use the receiving peds sense range rather than the range supplied to the communicate event
  CA_USE_MAX_SENSE_RANGE_WHEN_RECEIVING_EVENTS = 80,
  ---When aiming from a vehicle the ped will only aim at targets on his side of the vehicle
  CA_RESTRICT_IN_VEHICLE_AIMING_TO_CURRENT_SIDE = 81,
  ---LOS to the target is blocked we return to our default position and direction until we have LOS (no aiming)
  CA_USE_DEFAULT_BLOCKED_LOS_POSITION_AND_DIRECTION = 82,
  ---LOS to the target is blocked we return to our default position and direction until we have LOS (no aiming)
  CA_REQUIRES_LOS_TO_AIM = 83,
  ---Allow vehicles spawned infront of target facing away to enter cruise and wait to block approaching target
  CA_CAN_CRUISE_AND_BLOCK_IN_VEHICLE = 84,
  ---Peds flying aircraft will prefer to target other aircraft over entities on the ground
  CA_PREFER_AIR_COMBAT_WHEN_IN_AIRCRAFT = 85,
  ---Allow peds flying aircraft to use dog fighting behaviours
  CA_ALLOW_DOG_FIGHTING = 86,
  ---This will make the weight of targets who aircraft vehicles be reduced greatly compared to targets on foot or in ground based vehicles
  CA_PREFER_NON_AIRCRAFT_TARGETS = 87,
  ---When peds are tasked to go to combat, they keep searching for a known target for a while before forcing an unknown one
  CA_PREFER_KNOWN_TARGETS_WHEN_COMBAT_CLOSEST_TARGET = 88,
  ---Only allow mounted weapons to fire if within the correct attack angle (default 25-degree cone). On a flag in order to keep exiting behaviour and only fix in specific cases.
  CA_FORCE_CHECK_ATTACK_ANGLE_FOR_MOUNTED_GUNS = 89,
  ---Blocks the firing state for passenger-controlled mounted weapons. Existing flags CA_USE_VEHICLE_ATTACK and CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS only work for drivers.
  CA_BLOCK_FIRE_FOR_VEHICLE_PASSENGER_MOUNTED_GUNS = 90,
}

---`eCombatRange` (natives.json: SET_PED_COMBAT_RANGE)
---@enum fx.Enum.CombatRange
EnumLib.CombatRange = {
  ---keeps within 5-15m
  CR_NEAR = 0,
  ---keeps within 7-30m
  CR_MEDIUM = 1,
  ---keeps within 15-40m
  CR_FAR = 2,
  ---keeps within 22-45m
  CR_VERY_FAR = 3,
}

---`eContext` (natives.json: GET_CAM_ACTIVE_VIEW_MODE_CONTEXT)
---@enum fx.Enum.Context
EnumLib.Context = {
  ---[G|S]ET_FOLLOW_PED_CAM_*
  ON_FOOT = 0,
  ---[G|S]ET_FOLLOW_VEHICLE_CAM_*
  IN_VEHICLE = 1,
  ON_BIKE = 2,
  IN_BOAT = 3,
  IN_AIRCRAFT = 4,
  IN_SUBMARINE = 5,
  IN_HELI = 6,
  IN_TURRET = 7,
}

---`Control` (data/controls.md (citizenfx/fivem-docs content/docs/game-references/controls.md))
---@enum fx.Enum.Control
EnumLib.Control = {
  ---keyboard: V, pad: BACK
  INPUT_NEXT_CAMERA = 0,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_LOOK_LR = 1,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_LOOK_UD = 2,
  ---keyboard: none, pad: RIGHT STICK
  INPUT_LOOK_UP_ONLY = 3,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_LOOK_DOWN_ONLY = 4,
  ---keyboard: none, pad: RIGHT STICK
  INPUT_LOOK_LEFT_ONLY = 5,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_LOOK_RIGHT_ONLY = 6,
  ---keyboard: none, pad: R3
  INPUT_CINEMATIC_SLOWMO = 7,
  ---keyboard: S, pad: LEFT STICK
  INPUT_SCRIPTED_FLY_UD = 8,
  ---keyboard: D, pad: LEFT STICK
  INPUT_SCRIPTED_FLY_LR = 9,
  ---keyboard: PAGEUP, pad: LT
  INPUT_SCRIPTED_FLY_ZUP = 10,
  ---keyboard: PAGEDOWN, pad: RT
  INPUT_SCRIPTED_FLY_ZDOWN = 11,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_WEAPON_WHEEL_UD = 12,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_WEAPON_WHEEL_LR = 13,
  ---keyboard: SCROLLWHEEL DOWN, pad: DPAD RIGHT
  INPUT_WEAPON_WHEEL_NEXT = 14,
  ---keyboard: SCROLLWHEEL UP, pad: DPAD LEFT
  INPUT_WEAPON_WHEEL_PREV = 15,
  ---keyboard: SCROLLWHEEL DOWN, pad: none
  INPUT_SELECT_NEXT_WEAPON = 16,
  ---keyboard: SCROLLWHEEL UP, pad: none
  INPUT_SELECT_PREV_WEAPON = 17,
  ---keyboard: ENTER / LEFT MOUSE BUTTON / SPACEBAR, pad: A
  INPUT_SKIP_CUTSCENE = 18,
  ---keyboard: LEFT ALT, pad: DPAD DOWN
  INPUT_CHARACTER_WHEEL = 19,
  ---keyboard: Z, pad: DPAD DOWN
  INPUT_MULTIPLAYER_INFO = 20,
  ---keyboard: LEFT SHIFT, pad: A
  INPUT_SPRINT = 21,
  ---keyboard: SPACEBAR, pad: X
  INPUT_JUMP = 22,
  ---keyboard: F, pad: Y
  INPUT_ENTER = 23,
  ---keyboard: LEFT MOUSE BUTTON, pad: RT
  INPUT_ATTACK = 24,
  ---keyboard: RIGHT MOUSE BUTTON, pad: LT
  INPUT_AIM = 25,
  ---keyboard: C, pad: R3
  INPUT_LOOK_BEHIND = 26,
  ---keyboard: ARROW UP / SCROLLWHEEL BUTTON (PRESS), pad: DPAD UP
  INPUT_PHONE = 27,
  ---keyboard: none, pad: L3
  INPUT_SPECIAL_ABILITY = 28,
  ---keyboard: B, pad: R3
  INPUT_SPECIAL_ABILITY_SECONDARY = 29,
  ---keyboard: D, pad: LEFT STICK
  INPUT_MOVE_LR = 30,
  ---keyboard: S, pad: LEFT STICK
  INPUT_MOVE_UD = 31,
  ---keyboard: W, pad: LEFT STICK
  INPUT_MOVE_UP_ONLY = 32,
  ---keyboard: S, pad: LEFT STICK
  INPUT_MOVE_DOWN_ONLY = 33,
  ---keyboard: A, pad: LEFT STICK
  INPUT_MOVE_LEFT_ONLY = 34,
  ---keyboard: D, pad: LEFT STICK
  INPUT_MOVE_RIGHT_ONLY = 35,
  ---keyboard: LEFT CTRL, pad: L3
  INPUT_DUCK = 36,
  ---keyboard: TAB, pad: LB
  INPUT_SELECT_WEAPON = 37,
  ---keyboard: E, pad: LB
  INPUT_PICKUP = 38,
  ---keyboard: \[, pad: LEFT STICK
  INPUT_SNIPER_ZOOM = 39,
  ---keyboard: \], pad: LEFT STICK
  INPUT_SNIPER_ZOOM_IN_ONLY = 40,
  ---keyboard: \[, pad: LEFT STICK
  INPUT_SNIPER_ZOOM_OUT_ONLY = 41,
  ---keyboard: \], pad: DPAD UP
  INPUT_SNIPER_ZOOM_IN_SECONDARY = 42,
  ---keyboard: \[, pad: DPAD DOWN
  INPUT_SNIPER_ZOOM_OUT_SECONDARY = 43,
  ---keyboard: Q, pad: RB
  INPUT_COVER = 44,
  ---keyboard: R, pad: B
  INPUT_RELOAD = 45,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_TALK = 46,
  ---keyboard: G, pad: DPAD LEFT
  INPUT_DETONATE = 47,
  ---keyboard: Z, pad: DPAD DOWN
  INPUT_HUD_SPECIAL = 48,
  ---keyboard: F, pad: Y
  INPUT_ARREST = 49,
  ---keyboard: SCROLLWHEEL DOWN, pad: R3
  INPUT_ACCURATE_AIM = 50,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_CONTEXT = 51,
  ---keyboard: Q, pad: DPAD LEFT
  INPUT_CONTEXT_SECONDARY = 52,
  ---keyboard: none, pad: Y
  INPUT_WEAPON_SPECIAL = 53,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_WEAPON_SPECIAL_TWO = 54,
  ---keyboard: SPACEBAR, pad: RB
  INPUT_DIVE = 55,
  ---keyboard: F9, pad: Y
  INPUT_DROP_WEAPON = 56,
  ---keyboard: F10, pad: B
  INPUT_DROP_AMMO = 57,
  ---keyboard: G, pad: DPAD LEFT
  INPUT_THROW_GRENADE = 58,
  ---keyboard: D, pad: LEFT STICK
  INPUT_VEH_MOVE_LR = 59,
  ---keyboard: LEFT CTRL, pad: LEFT STICK
  INPUT_VEH_MOVE_UD = 60,
  ---keyboard: LEFT SHIFT, pad: LEFT STICK
  INPUT_VEH_MOVE_UP_ONLY = 61,
  ---keyboard: LEFT CTRL, pad: LEFT STICK
  INPUT_VEH_MOVE_DOWN_ONLY = 62,
  ---keyboard: A, pad: LEFT STICK
  INPUT_VEH_MOVE_LEFT_ONLY = 63,
  ---keyboard: D, pad: LEFT STICK
  INPUT_VEH_MOVE_RIGHT_ONLY = 64,
  ---keyboard: none, pad: none
  INPUT_VEH_SPECIAL = 65,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_GUN_LR = 66,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_VEH_GUN_UD = 67,
  ---keyboard: RIGHT MOUSE BUTTON, pad: LB
  INPUT_VEH_AIM = 68,
  ---keyboard: LEFT MOUSE BUTTON, pad: RB
  INPUT_VEH_ATTACK = 69,
  ---keyboard: RIGHT MOUSE BUTTON, pad: A
  INPUT_VEH_ATTACK2 = 70,
  ---keyboard: W, pad: RT
  INPUT_VEH_ACCELERATE = 71,
  ---keyboard: S, pad: LT
  INPUT_VEH_BRAKE = 72,
  ---keyboard: X, pad: A
  INPUT_VEH_DUCK = 73,
  ---keyboard: H, pad: DPAD RIGHT
  INPUT_VEH_HEADLIGHT = 74,
  ---keyboard: F, pad: Y
  INPUT_VEH_EXIT = 75,
  ---keyboard: SPACEBAR, pad: RB
  INPUT_VEH_HANDBRAKE = 76,
  ---keyboard: W, pad: LT
  INPUT_VEH_HOTWIRE_LEFT = 77,
  ---keyboard: S, pad: RT
  INPUT_VEH_HOTWIRE_RIGHT = 78,
  ---keyboard: C, pad: R3
  INPUT_VEH_LOOK_BEHIND = 79,
  ---keyboard: R, pad: B
  INPUT_VEH_CIN_CAM = 80,
  ---keyboard: ., pad: none
  INPUT_VEH_NEXT_RADIO = 81,
  ---keyboard: ,, pad: none
  INPUT_VEH_PREV_RADIO = 82,
  ---keyboard: =, pad: none
  INPUT_VEH_NEXT_RADIO_TRACK = 83,
  ---keyboard: -, pad: none
  INPUT_VEH_PREV_RADIO_TRACK = 84,
  ---keyboard: Q, pad: DPAD LEFT
  INPUT_VEH_RADIO_WHEEL = 85,
  ---keyboard: E, pad: L3
  INPUT_VEH_HORN = 86,
  ---keyboard: W, pad: RT
  INPUT_VEH_FLY_THROTTLE_UP = 87,
  ---keyboard: S, pad: LT
  INPUT_VEH_FLY_THROTTLE_DOWN = 88,
  ---keyboard: A, pad: LB
  INPUT_VEH_FLY_YAW_LEFT = 89,
  ---keyboard: D, pad: RB
  INPUT_VEH_FLY_YAW_RIGHT = 90,
  ---keyboard: RIGHT MOUSE BUTTON, pad: LT
  INPUT_VEH_PASSENGER_AIM = 91,
  ---keyboard: LEFT MOUSE BUTTON, pad: RT
  INPUT_VEH_PASSENGER_ATTACK = 92,
  ---keyboard: none, pad: R3
  INPUT_VEH_SPECIAL_ABILITY_FRANKLIN = 93,
  ---keyboard: none, pad: none
  INPUT_VEH_STUNT_UD = 94,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_VEH_CINEMATIC_UD = 95,
  ---keyboard: NUMPAD- / SCROLLWHEEL UP, pad: none
  INPUT_VEH_CINEMATIC_UP_ONLY = 96,
  ---keyboard: NUMPAD+ / SCROLLWHEEL DOWN, pad: none
  INPUT_VEH_CINEMATIC_DOWN_ONLY = 97,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_CINEMATIC_LR = 98,
  ---keyboard: SCROLLWHEEL UP, pad: X
  INPUT_VEH_SELECT_NEXT_WEAPON = 99,
  ---keyboard: \[, pad: none
  INPUT_VEH_SELECT_PREV_WEAPON = 100,
  ---keyboard: H, pad: DPAD RIGHT
  INPUT_VEH_ROOF = 101,
  ---keyboard: SPACEBAR, pad: RB
  INPUT_VEH_JUMP = 102,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_VEH_GRAPPLING_HOOK = 103,
  ---keyboard: H, pad: DPAD RIGHT
  INPUT_VEH_SHUFFLE = 104,
  ---keyboard: X, pad: A
  INPUT_VEH_DROP_PROJECTILE = 105,
  ---keyboard: LEFT MOUSE BUTTON, pad: none
  INPUT_VEH_MOUSE_CONTROL_OVERRIDE = 106,
  ---keyboard: NUMPAD 6, pad: LEFT STICK
  INPUT_VEH_FLY_ROLL_LR = 107,
  ---keyboard: NUMPAD 4, pad: LEFT STICK
  INPUT_VEH_FLY_ROLL_LEFT_ONLY = 108,
  ---keyboard: NUMPAD 6, pad: LEFT STICK
  INPUT_VEH_FLY_ROLL_RIGHT_ONLY = 109,
  ---keyboard: NUMPAD 5, pad: LEFT STICK
  INPUT_VEH_FLY_PITCH_UD = 110,
  ---keyboard: NUMPAD 8, pad: LEFT STICK
  INPUT_VEH_FLY_PITCH_UP_ONLY = 111,
  ---keyboard: NUMPAD 5, pad: LEFT STICK
  INPUT_VEH_FLY_PITCH_DOWN_ONLY = 112,
  ---keyboard: G, pad: L3
  INPUT_VEH_FLY_UNDERCARRIAGE = 113,
  ---keyboard: RIGHT MOUSE BUTTON, pad: A
  INPUT_VEH_FLY_ATTACK = 114,
  ---keyboard: SCROLLWHEEL UP, pad: DPAD LEFT
  INPUT_VEH_FLY_SELECT_NEXT_WEAPON = 115,
  ---keyboard: \[, pad: none
  INPUT_VEH_FLY_SELECT_PREV_WEAPON = 116,
  ---keyboard: NUMPAD 7, pad: LB
  INPUT_VEH_FLY_SELECT_TARGET_LEFT = 117,
  ---keyboard: NUMPAD 9, pad: RB
  INPUT_VEH_FLY_SELECT_TARGET_RIGHT = 118,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE = 119,
  ---keyboard: X, pad: A
  INPUT_VEH_FLY_DUCK = 120,
  ---keyboard: INSERT, pad: R3
  INPUT_VEH_FLY_ATTACK_CAMERA = 121,
  ---keyboard: LEFT MOUSE BUTTON, pad: none
  INPUT_VEH_FLY_MOUSE_CONTROL_OVERRIDE = 122,
  ---keyboard: NUMPAD 6, pad: LEFT STICK
  INPUT_VEH_SUB_TURN_LR = 123,
  ---keyboard: NUMPAD 4, pad: LEFT STICK
  INPUT_VEH_SUB_TURN_LEFT_ONLY = 124,
  ---keyboard: NUMPAD 6, pad: LEFT STICK
  INPUT_VEH_SUB_TURN_RIGHT_ONLY = 125,
  ---keyboard: NUMPAD 5, pad: LEFT STICK
  INPUT_VEH_SUB_PITCH_UD = 126,
  ---keyboard: NUMPAD 8, pad: LEFT STICK
  INPUT_VEH_SUB_PITCH_UP_ONLY = 127,
  ---keyboard: NUMPAD 5, pad: LEFT STICK
  INPUT_VEH_SUB_PITCH_DOWN_ONLY = 128,
  ---keyboard: W, pad: RT
  INPUT_VEH_SUB_THROTTLE_UP = 129,
  ---keyboard: S, pad: LT
  INPUT_VEH_SUB_THROTTLE_DOWN = 130,
  ---keyboard: LEFT SHIFT, pad: X
  INPUT_VEH_SUB_ASCEND = 131,
  ---keyboard: LEFT CTRL, pad: A
  INPUT_VEH_SUB_DESCEND = 132,
  ---keyboard: A, pad: LB
  INPUT_VEH_SUB_TURN_HARD_LEFT = 133,
  ---keyboard: D, pad: RB
  INPUT_VEH_SUB_TURN_HARD_RIGHT = 134,
  ---keyboard: LEFT MOUSE BUTTON, pad: none
  INPUT_VEH_SUB_MOUSE_CONTROL_OVERRIDE = 135,
  ---keyboard: W, pad: A
  INPUT_VEH_PUSHBIKE_PEDAL = 136,
  ---keyboard: CAPSLOCK, pad: A
  INPUT_VEH_PUSHBIKE_SPRINT = 137,
  ---keyboard: Q, pad: LT
  INPUT_VEH_PUSHBIKE_FRONT_BRAKE = 138,
  ---keyboard: S, pad: RT
  INPUT_VEH_PUSHBIKE_REAR_BRAKE = 139,
  ---keyboard: R, pad: B
  INPUT_MELEE_ATTACK_LIGHT = 140,
  ---keyboard: Q, pad: A
  INPUT_MELEE_ATTACK_HEAVY = 141,
  ---keyboard: LEFT MOUSE BUTTON, pad: RT
  INPUT_MELEE_ATTACK_ALTERNATE = 142,
  ---keyboard: SPACEBAR, pad: X
  INPUT_MELEE_BLOCK = 143,
  ---keyboard: F / LEFT MOUSE BUTTON, pad: Y
  INPUT_PARACHUTE_DEPLOY = 144,
  ---keyboard: F, pad: Y
  INPUT_PARACHUTE_DETACH = 145,
  ---keyboard: D, pad: LEFT STICK
  INPUT_PARACHUTE_TURN_LR = 146,
  ---keyboard: A, pad: LEFT STICK
  INPUT_PARACHUTE_TURN_LEFT_ONLY = 147,
  ---keyboard: D, pad: LEFT STICK
  INPUT_PARACHUTE_TURN_RIGHT_ONLY = 148,
  ---keyboard: S, pad: LEFT STICK
  INPUT_PARACHUTE_PITCH_UD = 149,
  ---keyboard: W, pad: LEFT STICK
  INPUT_PARACHUTE_PITCH_UP_ONLY = 150,
  ---keyboard: S, pad: LEFT STICK
  INPUT_PARACHUTE_PITCH_DOWN_ONLY = 151,
  ---keyboard: Q, pad: LB
  INPUT_PARACHUTE_BRAKE_LEFT = 152,
  ---keyboard: E, pad: RB
  INPUT_PARACHUTE_BRAKE_RIGHT = 153,
  ---keyboard: X, pad: A
  INPUT_PARACHUTE_SMOKE = 154,
  ---keyboard: LEFT SHIFT, pad: none
  INPUT_PARACHUTE_PRECISION_LANDING = 155,
  ---keyboard: none, pad: none
  INPUT_MAP = 156,
  ---keyboard: 1, pad: none
  INPUT_SELECT_WEAPON_UNARMED = 157,
  ---keyboard: 2, pad: none
  INPUT_SELECT_WEAPON_MELEE = 158,
  ---keyboard: 6, pad: none
  INPUT_SELECT_WEAPON_HANDGUN = 159,
  ---keyboard: 3, pad: none
  INPUT_SELECT_WEAPON_SHOTGUN = 160,
  ---keyboard: 7, pad: none
  INPUT_SELECT_WEAPON_SMG = 161,
  ---keyboard: 8, pad: none
  INPUT_SELECT_WEAPON_AUTO_RIFLE = 162,
  ---keyboard: 9, pad: none
  INPUT_SELECT_WEAPON_SNIPER = 163,
  ---keyboard: 4, pad: none
  INPUT_SELECT_WEAPON_HEAVY = 164,
  ---keyboard: 5, pad: none
  INPUT_SELECT_WEAPON_SPECIAL = 165,
  ---keyboard: F5, pad: none
  INPUT_SELECT_CHARACTER_MICHAEL = 166,
  ---keyboard: F6, pad: none
  INPUT_SELECT_CHARACTER_FRANKLIN = 167,
  ---keyboard: F7, pad: none
  INPUT_SELECT_CHARACTER_TREVOR = 168,
  ---keyboard: F8 (CONSOLE), pad: none
  INPUT_SELECT_CHARACTER_MULTIPLAYER = 169,
  ---keyboard: F3, pad: B
  INPUT_SAVE_REPLAY_CLIP = 170,
  ---keyboard: CAPSLOCK, pad: none
  INPUT_SPECIAL_ABILITY_PC = 171,
  ---keyboard: ARROW UP, pad: DPAD UP
  INPUT_CELLPHONE_UP = 172,
  ---keyboard: ARROW DOWN, pad: DPAD DOWN
  INPUT_CELLPHONE_DOWN = 173,
  ---keyboard: ARROW LEFT, pad: DPAD LEFT
  INPUT_CELLPHONE_LEFT = 174,
  ---keyboard: ARROW RIGHT, pad: DPAD RIGHT
  INPUT_CELLPHONE_RIGHT = 175,
  ---keyboard: ENTER / LEFT MOUSE BUTTON, pad: A
  INPUT_CELLPHONE_SELECT = 176,
  ---keyboard: BACKSPACE / ESC / RIGHT MOUSE BUTTON, pad: B
  INPUT_CELLPHONE_CANCEL = 177,
  ---keyboard: DELETE, pad: Y
  INPUT_CELLPHONE_OPTION = 178,
  ---keyboard: SPACEBAR, pad: X
  INPUT_CELLPHONE_EXTRA_OPTION = 179,
  ---keyboard: SCROLLWHEEL DOWN, pad: none
  INPUT_CELLPHONE_SCROLL_FORWARD = 180,
  ---keyboard: SCROLLWHEEL UP, pad: none
  INPUT_CELLPHONE_SCROLL_BACKWARD = 181,
  ---keyboard: L, pad: RT
  INPUT_CELLPHONE_CAMERA_FOCUS_LOCK = 182,
  ---keyboard: G, pad: RB
  INPUT_CELLPHONE_CAMERA_GRID = 183,
  ---keyboard: E, pad: R3
  INPUT_CELLPHONE_CAMERA_SELFIE = 184,
  ---keyboard: F, pad: LB
  INPUT_CELLPHONE_CAMERA_DOF = 185,
  ---keyboard: X, pad: L3
  INPUT_CELLPHONE_CAMERA_EXPRESSION = 186,
  ---keyboard: ARROW DOWN, pad: DPAD DOWN
  INPUT_FRONTEND_DOWN = 187,
  ---keyboard: ARROW UP, pad: DPAD UP
  INPUT_FRONTEND_UP = 188,
  ---keyboard: ARROW LEFT, pad: DPAD LEFT
  INPUT_FRONTEND_LEFT = 189,
  ---keyboard: ARROW RIGHT, pad: DPAD RIGHT
  INPUT_FRONTEND_RIGHT = 190,
  ---keyboard: ENTER, pad: A
  INPUT_FRONTEND_RDOWN = 191,
  ---keyboard: TAB, pad: Y
  INPUT_FRONTEND_RUP = 192,
  ---keyboard: none, pad: X
  INPUT_FRONTEND_RLEFT = 193,
  ---keyboard: BACKSPACE, pad: B
  INPUT_FRONTEND_RRIGHT = 194,
  ---keyboard: D, pad: LEFT STICK
  INPUT_FRONTEND_AXIS_X = 195,
  ---keyboard: S, pad: LEFT STICK
  INPUT_FRONTEND_AXIS_Y = 196,
  ---keyboard: \], pad: RIGHT STICK
  INPUT_FRONTEND_RIGHT_AXIS_X = 197,
  ---keyboard: SCROLLWHEEL DOWN, pad: RIGHT STICK
  INPUT_FRONTEND_RIGHT_AXIS_Y = 198,
  ---keyboard: P, pad: START
  INPUT_FRONTEND_PAUSE = 199,
  ---keyboard: ESC, pad: none
  INPUT_FRONTEND_PAUSE_ALTERNATE = 200,
  ---keyboard: ENTER / NUMPAD ENTER, pad: A
  INPUT_FRONTEND_ACCEPT = 201,
  ---keyboard: BACKSPACE / ESC, pad: B
  INPUT_FRONTEND_CANCEL = 202,
  ---keyboard: SPACEBAR, pad: X
  INPUT_FRONTEND_X = 203,
  ---keyboard: TAB, pad: Y
  INPUT_FRONTEND_Y = 204,
  ---keyboard: Q, pad: LB
  INPUT_FRONTEND_LB = 205,
  ---keyboard: E, pad: RB
  INPUT_FRONTEND_RB = 206,
  ---keyboard: PAGE DOWN, pad: LT
  INPUT_FRONTEND_LT = 207,
  ---keyboard: PAGE UP, pad: RT
  INPUT_FRONTEND_RT = 208,
  ---keyboard: LEFT SHIFT, pad: L3
  INPUT_FRONTEND_LS = 209,
  ---keyboard: LEFT CONTROL, pad: R3
  INPUT_FRONTEND_RS = 210,
  ---keyboard: TAB, pad: RB
  INPUT_FRONTEND_LEADERBOARD = 211,
  ---keyboard: HOME, pad: BACK
  INPUT_FRONTEND_SOCIAL_CLUB = 212,
  ---keyboard: HOME, pad: RB
  INPUT_FRONTEND_SOCIAL_CLUB_SECONDARY = 213,
  ---keyboard: DELETE, pad: X
  INPUT_FRONTEND_DELETE = 214,
  ---keyboard: ENTER, pad: A
  INPUT_FRONTEND_ENDSCREEN_ACCEPT = 215,
  ---keyboard: SPACEBAR, pad: X
  INPUT_FRONTEND_ENDSCREEN_EXPAND = 216,
  ---keyboard: CAPSLOCK, pad: BACK
  INPUT_FRONTEND_SELECT = 217,
  ---keyboard: D, pad: LEFT STICK
  INPUT_SCRIPT_LEFT_AXIS_X = 218,
  ---keyboard: S, pad: LEFT STICK
  INPUT_SCRIPT_LEFT_AXIS_Y = 219,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_SCRIPT_RIGHT_AXIS_X = 220,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_SCRIPT_RIGHT_AXIS_Y = 221,
  ---keyboard: RIGHT MOUSE BUTTON, pad: Y
  INPUT_SCRIPT_RUP = 222,
  ---keyboard: LEFT MOUSE BUTTON, pad: A
  INPUT_SCRIPT_RDOWN = 223,
  ---keyboard: LEFT CTRL, pad: X
  INPUT_SCRIPT_RLEFT = 224,
  ---keyboard: RIGHT MOUSE BUTTON, pad: B
  INPUT_SCRIPT_RRIGHT = 225,
  ---keyboard: none, pad: LB
  INPUT_SCRIPT_LB = 226,
  ---keyboard: none, pad: RB
  INPUT_SCRIPT_RB = 227,
  ---keyboard: none, pad: LT
  INPUT_SCRIPT_LT = 228,
  ---keyboard: LEFT MOUSE BUTTON, pad: RT
  INPUT_SCRIPT_RT = 229,
  ---keyboard: none, pad: L3
  INPUT_SCRIPT_LS = 230,
  ---keyboard: none, pad: R3
  INPUT_SCRIPT_RS = 231,
  ---keyboard: W, pad: DPAD UP
  INPUT_SCRIPT_PAD_UP = 232,
  ---keyboard: S, pad: DPAD DOWN
  INPUT_SCRIPT_PAD_DOWN = 233,
  ---keyboard: A, pad: DPAD LEFT
  INPUT_SCRIPT_PAD_LEFT = 234,
  ---keyboard: D, pad: DPAD RIGHT
  INPUT_SCRIPT_PAD_RIGHT = 235,
  ---keyboard: V, pad: BACK
  INPUT_SCRIPT_SELECT = 236,
  ---keyboard: LEFT MOUSE BUTTON, pad: none
  INPUT_CURSOR_ACCEPT = 237,
  ---keyboard: RIGHT MOUSE BUTTON, pad: none
  INPUT_CURSOR_CANCEL = 238,
  ---keyboard: none, pad: none
  INPUT_CURSOR_X = 239,
  ---keyboard: none, pad: none
  INPUT_CURSOR_Y = 240,
  ---keyboard: SCROLLWHEEL UP, pad: none
  INPUT_CURSOR_SCROLL_UP = 241,
  ---keyboard: SCROLLWHEEL DOWN, pad: none
  INPUT_CURSOR_SCROLL_DOWN = 242,
  ---keyboard: ~ / \`, pad: none
  INPUT_ENTER_CHEAT_CODE = 243,
  ---keyboard: M, pad: BACK
  INPUT_INTERACTION_MENU = 244,
  ---keyboard: T, pad: none
  INPUT_MP_TEXT_CHAT_ALL = 245,
  ---keyboard: Y, pad: none
  INPUT_MP_TEXT_CHAT_TEAM = 246,
  ---keyboard: none, pad: none
  INPUT_MP_TEXT_CHAT_FRIENDS = 247,
  ---keyboard: none, pad: none
  INPUT_MP_TEXT_CHAT_CREW = 248,
  ---keyboard: N, pad: none
  INPUT_PUSH_TO_TALK = 249,
  ---keyboard: R, pad: L3
  INPUT_CREATOR_LS = 250,
  ---keyboard: F, pad: R3
  INPUT_CREATOR_RS = 251,
  ---keyboard: X, pad: LT
  INPUT_CREATOR_LT = 252,
  ---keyboard: C, pad: RT
  INPUT_CREATOR_RT = 253,
  ---keyboard: LEFT SHIFT, pad: none
  INPUT_CREATOR_MENU_TOGGLE = 254,
  ---keyboard: SPACEBAR, pad: A
  INPUT_CREATOR_ACCEPT = 255,
  ---keyboard: DELETE, pad: X
  INPUT_CREATOR_DELETE = 256,
  ---keyboard: LEFT MOUSE BUTTON, pad: RT
  INPUT_ATTACK2 = 257,
  ---keyboard: none, pad: A
  INPUT_RAPPEL_JUMP = 258,
  ---keyboard: none, pad: X
  INPUT_RAPPEL_LONG_JUMP = 259,
  ---keyboard: none, pad: RT
  INPUT_RAPPEL_SMASH_WINDOW = 260,
  ---keyboard: SCROLLWHEEL UP, pad: DPAD LEFT
  INPUT_PREV_WEAPON = 261,
  ---keyboard: SCROLLWHEEL DOWN, pad: DPAD RIGHT
  INPUT_NEXT_WEAPON = 262,
  ---keyboard: R, pad: B
  INPUT_MELEE_ATTACK1 = 263,
  ---keyboard: Q, pad: A
  INPUT_MELEE_ATTACK2 = 264,
  ---keyboard: none, pad: none
  INPUT_WHISTLE = 265,
  ---keyboard: D, pad: LEFT STICK
  INPUT_MOVE_LEFT = 266,
  ---keyboard: D, pad: LEFT STICK
  INPUT_MOVE_RIGHT = 267,
  ---keyboard: S, pad: LEFT STICK
  INPUT_MOVE_UP = 268,
  ---keyboard: S, pad: LEFT STICK
  INPUT_MOVE_DOWN = 269,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_LOOK_LEFT = 270,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_LOOK_RIGHT = 271,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_LOOK_UP = 272,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_LOOK_DOWN = 273,
  ---keyboard: \[, pad: RIGHT STICK
  INPUT_SNIPER_ZOOM_IN = 274,
  ---keyboard: \[, pad: RIGHT STICK
  INPUT_SNIPER_ZOOM_OUT = 275,
  ---keyboard: \[, pad: LEFT STICK
  INPUT_SNIPER_ZOOM_IN_ALTERNATE = 276,
  ---keyboard: \[, pad: LEFT STICK
  INPUT_SNIPER_ZOOM_OUT_ALTERNATE = 277,
  ---keyboard: D, pad: LEFT STICK
  INPUT_VEH_MOVE_LEFT = 278,
  ---keyboard: D, pad: LEFT STICK
  INPUT_VEH_MOVE_RIGHT = 279,
  ---keyboard: LEFT CTRL, pad: LEFT STICK
  INPUT_VEH_MOVE_UP = 280,
  ---keyboard: LEFT CTRL, pad: LEFT STICK
  INPUT_VEH_MOVE_DOWN = 281,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_GUN_LEFT = 282,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_GUN_RIGHT = 283,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_GUN_UP = 284,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_GUN_DOWN = 285,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_LOOK_LEFT = 286,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_VEH_LOOK_RIGHT = 287,
  ---keyboard: F1, pad: A
  INPUT_REPLAY_START_STOP_RECORDING = 288,
  ---keyboard: F2, pad: X
  INPUT_REPLAY_START_STOP_RECORDING_SECONDARY = 289,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_SCALED_LOOK_LR = 290,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_SCALED_LOOK_UD = 291,
  ---keyboard: none, pad: RIGHT STICK
  INPUT_SCALED_LOOK_UP_ONLY = 292,
  ---keyboard: none, pad: RIGHT STICK
  INPUT_SCALED_LOOK_DOWN_ONLY = 293,
  ---keyboard: none, pad: RIGHT STICK
  INPUT_SCALED_LOOK_LEFT_ONLY = 294,
  ---keyboard: none, pad: RIGHT STICK
  INPUT_SCALED_LOOK_RIGHT_ONLY = 295,
  ---keyboard: DELETE, pad: X
  INPUT_REPLAY_MARKER_DELETE = 296,
  ---keyboard: DELETE, pad: Y
  INPUT_REPLAY_CLIP_DELETE = 297,
  ---keyboard: SPACEBAR, pad: A
  INPUT_REPLAY_PAUSE = 298,
  ---keyboard: ARROW DOWN, pad: LB
  INPUT_REPLAY_REWIND = 299,
  ---keyboard: ARROW UP, pad: RB
  INPUT_REPLAY_FFWD = 300,
  ---keyboard: M, pad: A
  INPUT_REPLAY_NEWMARKER = 301,
  ---keyboard: S, pad: none
  INPUT_REPLAY_RECORD = 302,
  ---keyboard: U, pad: DPAD UP
  INPUT_REPLAY_SCREENSHOT = 303,
  ---keyboard: H, pad: R3
  INPUT_REPLAY_HIDEHUD = 304,
  ---keyboard: B, pad: none
  INPUT_REPLAY_STARTPOINT = 305,
  ---keyboard: N, pad: none
  INPUT_REPLAY_ENDPOINT = 306,
  ---keyboard: ARROW RIGHT, pad: DPAD RIGHT
  INPUT_REPLAY_ADVANCE = 307,
  ---keyboard: ARROW LEFT, pad: DPAD LEFT
  INPUT_REPLAY_BACK = 308,
  ---keyboard: T, pad: DPAD DOWN
  INPUT_REPLAY_TOOLS = 309,
  ---keyboard: R, pad: BACK
  INPUT_REPLAY_RESTART = 310,
  ---keyboard: K, pad: DPAD DOWN
  INPUT_REPLAY_SHOWHOTKEY = 311,
  ---keyboard: \[, pad: DPAD LEFT
  INPUT_REPLAY_CYCLEMARKERLEFT = 312,
  ---keyboard: \], pad: DPAD RIGHT
  INPUT_REPLAY_CYCLEMARKERRIGHT = 313,
  ---keyboard: NUMPAD +, pad: RB
  INPUT_REPLAY_FOVINCREASE = 314,
  ---keyboard: NUMPAD -, pad: LB
  INPUT_REPLAY_FOVDECREASE = 315,
  ---keyboard: PAGE UP, pad: none
  INPUT_REPLAY_CAMERAUP = 316,
  ---keyboard: PAGE DOWN, pad: none
  INPUT_REPLAY_CAMERADOWN = 317,
  ---keyboard: F5, pad: START
  INPUT_REPLAY_SAVE = 318,
  ---keyboard: C, pad: none
  INPUT_REPLAY_TOGGLETIME = 319,
  ---keyboard: V, pad: none
  INPUT_REPLAY_TOGGLETIPS = 320,
  ---keyboard: SPACEBAR, pad: none
  INPUT_REPLAY_PREVIEW = 321,
  ---keyboard: ESC, pad: none
  INPUT_REPLAY_TOGGLE_TIMELINE = 322,
  ---keyboard: X, pad: none
  INPUT_REPLAY_TIMELINE_PICKUP_CLIP = 323,
  ---keyboard: C, pad: none
  INPUT_REPLAY_TIMELINE_DUPLICATE_CLIP = 324,
  ---keyboard: V, pad: none
  INPUT_REPLAY_TIMELINE_PLACE_CLIP = 325,
  ---keyboard: LEFT CTRL, pad: none
  INPUT_REPLAY_CTRL = 326,
  ---keyboard: F5, pad: none
  INPUT_REPLAY_TIMELINE_SAVE = 327,
  ---keyboard: SPACEBAR, pad: RT
  INPUT_REPLAY_PREVIEW_AUDIO = 328,
  ---keyboard: LEFT MOUSE BUTTON, pad: none
  INPUT_VEH_DRIVE_LOOK = 329,
  ---keyboard: RIGHT MOUSE BUTTON, pad: none
  INPUT_VEH_DRIVE_LOOK2 = 330,
  ---keyboard: RIGHT MOUSE BUTTON, pad: none
  INPUT_VEH_FLY_ATTACK2 = 331,
  ---keyboard: MOUSE DOWN, pad: RIGHT STICK
  INPUT_RADIO_WHEEL_UD = 332,
  ---keyboard: MOUSE RIGHT, pad: RIGHT STICK
  INPUT_RADIO_WHEEL_LR = 333,
  ---keyboard: SCROLLWHEEL DOWN, pad: LEFT STICK
  INPUT_VEH_SLOWMO_UD = 334,
  ---keyboard: SCROLLWHEEL UP, pad: LEFT STICK
  INPUT_VEH_SLOWMO_UP_ONLY = 335,
  ---keyboard: SCROLLWHEEL DOWN, pad: LEFT STICK
  INPUT_VEH_SLOWMO_DOWN_ONLY = 336,
  ---keyboard: X, pad: A
  INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE = 337,
  ---keyboard: A, pad: LEFT STICK
  INPUT_VEH_HYDRAULICS_CONTROL_LEFT = 338,
  ---keyboard: D, pad: LEFT STICK
  INPUT_VEH_HYDRAULICS_CONTROL_RIGHT = 339,
  ---keyboard: LEFT SHIFT, pad: LEFT STICK
  INPUT_VEH_HYDRAULICS_CONTROL_UP = 340,
  ---keyboard: LEFT CTRL, pad: LEFT STICK
  INPUT_VEH_HYDRAULICS_CONTROL_DOWN = 341,
  ---keyboard: D, pad: LEFT STICK
  INPUT_VEH_HYDRAULICS_CONTROL_UD = 342,
  ---keyboard: LEFT CTRL, pad: LEFT STICK
  INPUT_VEH_HYDRAULICS_CONTROL_LR = 343,
  ---keyboard: F11, pad: DPAD RIGHT
  INPUT_SWITCH_VISOR = 344,
  ---keyboard: X, pad: A
  INPUT_VEH_MELEE_HOLD = 345,
  ---keyboard: LEFT MOUSE BUTTON, pad: LB
  INPUT_VEH_MELEE_LEFT = 346,
  ---keyboard: RIGHT MOUSE BUTTON, pad: RB
  INPUT_VEH_MELEE_RIGHT = 347,
  ---keyboard: SCROLLWHEEL BUTTON (PRESS), pad: Y
  INPUT_MAP_POI = 348,
  ---keyboard: TAB, pad: X
  INPUT_REPLAY_SNAPMATIC_PHOTO = 349,
  ---keyboard: E, pad: L3
  INPUT_VEH_CAR_JUMP = 350,
  ---keyboard: E, pad: L3
  INPUT_VEH_ROCKET_BOOST = 351,
  ---keyboard: LEFT SHIFT, pad: L3
  INPUT_VEH_FLY_BOOST = 352,
  ---keyboard: SPACEBAR, pad: A
  INPUT_VEH_PARACHUTE = 353,
  ---keyboard: X, pad: A
  INPUT_VEH_BIKE_WINGS = 354,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_VEH_FLY_BOMB_BAY = 355,
  ---keyboard: E, pad: DPAD RIGHT
  INPUT_VEH_FLY_COUNTER = 356,
  ---keyboard: X, pad: A
  INPUT_VEH_TRANSFORM = 357,
  ---keyboard: none, pad: RB
  INPUT_QUAD_LOCO_REVERSE = 358,
  ---keyboard: none, pad: none
  INPUT_RESPAWN_FASTER = 359,
  ---keyboard: none, pad: none
  INPUT_HUDMARKER_SELECT = 360,
}

---`DecalTypes` (natives.json: ADD_DECAL)
---@enum fx.Enum.DecalTypes
EnumLib.DecalTypes = {
  splatters_blood = 1010,
  splatters_blood_dir = 1015,
  splatters_blood_mist = 1017,
  splatters_mud = 1020,
  splatters_paint = 1030,
  splatters_water = 1040,
  splatters_water_hydrant = 1050,
  splatters_blood2 = 1110,
  weapImpact_metal = 4010,
  weapImpact_concrete = 4020,
  weapImpact_mattress = 4030,
  weapImpact_mud = 4032,
  weapImpact_wood = 4050,
  weapImpact_sand = 4053,
  weapImpact_cardboard = 4040,
  weapImpact_melee_glass = 4100,
  weapImpact_glass_blood = 4102,
  weapImpact_glass_blood2 = 4104,
  weapImpact_shotgun_paper = 4200,
  weapImpact_shotgun_mattress = 4201,
  weapImpact_shotgun_metal = 4202,
  weapImpact_shotgun_wood = 4203,
  weapImpact_shotgun_dirt = 4204,
  weapImpact_shotgun_tvscreen = 4205,
  weapImpact_shotgun_tvscreen2 = 4206,
  weapImpact_shotgun_tvscreen3 = 4207,
  weapImpact_melee_concrete = 4310,
  weapImpact_melee_wood = 4312,
  weapImpact_melee_metal = 4314,
  burn1 = 4421,
  burn2 = 4422,
  burn3 = 4423,
  burn4 = 4424,
  burn5 = 4425,
  bang_concrete_bang = 5000,
  bang_concrete_bang2 = 5001,
  bang_bullet_bang = 5002,
  bang_bullet_bang2 = 5004,
  bang_glass = 5031,
  bang_glass2 = 5032,
  solidPool_water = 9000,
  solidPool_blood = 9001,
  solidPool_oil = 9002,
  solidPool_petrol = 9003,
  solidPool_mud = 9004,
  porousPool_water = 9005,
  porousPool_blood = 9006,
  porousPool_oil = 9007,
  porousPool_petrol = 9008,
  porousPool_mud = 9009,
  porousPool_water_ped_drip = 9010,
  liquidTrail_water = 9050,
}

---`eDecorType` (natives.json: DECOR_REGISTER)
---@enum fx.Enum.DecorType
EnumLib.DecorType = {
  DECOR_TYPE_FLOAT = 1,
  DECOR_TYPE_BOOL = 2,
  DECOR_TYPE_INT = 3,
  DECOR_TYPE_STRING = 4,
  DECOR_TYPE_TIME = 5,
}

---`eDispatchType` (natives.json: ENABLE_DISPATCH_SERVICE)
---@enum fx.Enum.DispatchType
EnumLib.DispatchType = {
  DT_Invalid = 0,
  DT_PoliceAutomobile = 1,
  DT_PoliceHelicopter = 2,
  DT_FireDepartment = 3,
  DT_SwatAutomobile = 4,
  DT_AmbulanceDepartment = 5,
  DT_PoliceRiders = 6,
  DT_PoliceVehicleRequest = 7,
  DT_PoliceRoadBlock = 8,
  DT_PoliceAutomobileWaitPulledOver = 9,
  DT_PoliceAutomobileWaitCruising = 10,
  DT_Gangs = 11,
  DT_SwatHelicopter = 13,
  DT_PoliceBoat = 14,
  DT_ArmyVehicle = 15,
  DT_BikerBackup = 15,
}

---`eDoorId` (natives.json: SET_VEHICLE_DOOR_SHUT)
---@enum fx.Enum.DoorId
EnumLib.DoorId = {
  VEH_EXT_DOOR_DSIDE_F = 0,
  VEH_EXT_DOOR_DSIDE_R = 1,
  VEH_EXT_DOOR_PSIDE_F = 2,
  VEH_EXT_DOOR_PSIDE_R = 3,
  VEH_EXT_BONNET = 4,
  VEH_EXT_BOOT = 5,
}

---`eDriveBehaviorFlags` (natives.json: TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE)
---@enum fx.Enum.DriveBehaviorFlags
EnumLib.DriveBehaviorFlags = {
  DF_StopForCars = 1,
  DF_StopForPeds = 2,
  DF_SwerveAroundAllCars = 4,
  DF_SteerAroundStationaryCars = 8,
  DF_SteerAroundPeds = 16,
  DF_SteerAroundObjects = 32,
  DF_DontSteerAroundPlayerPed = 64,
  DF_StopAtLights = 128,
  DF_GoOffRoadWhenAvoiding = 256,
  DF_DriveIntoOncomingTraffic = 512,
  DF_DriveInReverse = 1024,
  DF_UseWanderFallbackInsteadOfStraightLine = 2048,
  DF_AvoidRestrictedAreas = 4096,
  ---**These only work on MISSION_CRUISE**
  DF_PreventBackgroundPathfinding = 8192,
  DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
  DF_UseShortCutLinks = 262144,
  DF_ChangeLanesAroundObstructions = 524288,
  ---cruise tasks ignore this anyway--only used for goto's
  DF_UseSwitchedOffNodes = 2097152,
  ---if you're going to be primarily driving off road
  DF_PreferNavmeshRoute = 4194304,
  ---Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
  DF_PlaneTaxiMode = 8388608,
  DF_ForceStraightLine = 16777216,
  DF_UseStringPullingAtJunctions = 33554432,
  DF_AvoidHighways = 536870912,
  DF_ForceJoinInRoadDirection = 1073741824,
}

---`eDrivingMode` (natives.json: TASK_GO_TO_COORD_ANY_MEANS, TASK_GO_TO_COORD_ANY_MEANS)
---@enum fx.Enum.DrivingMode
EnumLib.DrivingMode = {
  DF_StopForCars = 1,
  DF_StopForPeds = 2,
  DF_SwerveAroundAllCars = 4,
  DF_SteerAroundStationaryCars = 8,
  DF_SteerAroundPeds = 16,
  DF_SteerAroundObjects = 32,
  DF_DontSteerAroundPlayerPed = 64,
  DF_StopAtLights = 128,
  DF_GoOffRoadWhenAvoiding = 256,
  DF_DriveIntoOncomingTraffic = 512,
  DF_DriveInReverse = 1024,
  ---If pathfinding fails, cruise randomly instead of going on a straight line
  DF_UseWanderFallbackInsteadOfStraightLine = 2048,
  DF_AvoidRestrictedAreas = 4096,
  ---These only work on MISSION_CRUISE
  DF_PreventBackgroundPathfinding = 8192,
  DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
  DF_UseShortCutLinks = 262144,
  DF_ChangeLanesAroundObstructions = 524288,
  ---cruise tasks ignore this anyway--only used for goto's
  DF_UseSwitchedOffNodes = 2097152,
  ---if you're going to be primarily driving off road
  DF_PreferNavmeshRoute = 4194304,
  ---Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
  DF_PlaneTaxiMode = 8388608,
  DF_ForceStraightLine = 16777216,
  DF_UseStringPullingAtJunctions = 33554432,
  DF_AvoidHighways = 536870912,
  DF_ForceJoinInRoadDirection = 1073741824,
  ---DF_StopForCars|DF_StopForPeds|DF_SteerAroundObjects|DF_SteerAroundStationaryCars|DF_StopAtLights|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions, // Obey lights too
  DRIVINGMODE_STOPFORCARS = 786603,
  ---DF_StopForCars|DF_StopForPeds|DF_StopAtLights|DF_UseShortCutLinks, // Doesn't deviate an inch.
  DRIVINGMODE_STOPFORCARS_STRICT = 262275,
  ---DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars,
  DRIVINGMODE_AVOIDCARS = 786469,
  ---DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions,
  DRIVINGMODE_AVOIDCARS_RECKLESS = 786468,
  ---DF_UseShortCutLinks
  DRIVINGMODE_PLOUGHTHROUGH = 262144,
  ---DF_StopForCars|DF_SteerAroundStationaryCars|DF_StopForPeds|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions
  DRIVINGMODE_STOPFORCARS_IGNORELIGHTS = 786475,
  ---DF_SwerveAroundAllCars|DF_StopAtLights|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars
  DRIVINGMODE_AVOIDCARS_OBEYLIGHTS = 786597,
  ---DF_SwerveAroundAllCars|DF_StopAtLights|DF_StopForPeds|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars
  DRIVINGMODE_AVOIDCARS_STOPFORPEDS_OBEYLIGHTS = 786599,
}

---`EntityOrphanMode` (natives.json: SET_ENTITY_ORPHAN_MODE)
---@enum fx.Enum.EntityOrphanMode
EnumLib.EntityOrphanMode = {
  ---Default, this will delete the entity when it isn't relevant to any players NOTE: this *doesn't* mean when they're no longer in scope
  DeleteWhenNotRelevant = 0,
  ---The entity will be deleted whenever its original owner disconnects NOTE: if this is set when the entities original owner has already left it will be marked for deletion (similar to just calling DELETE_ENTITY)
  DeleteOnOwnerDisconnect = 1,
  ---The entity will never be deleted by the server when it does relevancy checks you should only use this on entities that need to be relatively persistent
  KeepEntity = 2,
}

---`eEventType` (natives.json: SUPRESS_RANDOM_EVENT_THIS_FRAME)
---@enum fx.Enum.EventType
EnumLib.EventType = {
  RC_PED_STEAL_VEHICLE = 0,
  RC_PED_JAY_WALK_LIGHT = 1,
  RC_COP_PURSUE = 2,
  RC_COP_PURSUE_VEHICLE_FLEE_SPAWNED = 3,
  RC_COP_VEHICLE_DRIVING_FAST = 4,
  RC_COP_VEHICLE_DRIVING_SLOW = 5,
  RC_DRIVER_RECKLESS = 6,
  RC_DRIVER_PRO = 7,
  RC_PED_PURSUE_WHEN_HIT_BY_CAR = 8,
}

---`eExplosionTag` (natives.json: ADD_EXPLOSION)
---@enum fx.Enum.ExplosionTag
EnumLib.ExplosionTag = {
  DONTCARE = -1,
  GRENADE = 0,
  GRENADELAUNCHER = 1,
  STICKYBOMB = 2,
  MOLOTOV = 3,
  ROCKET = 4,
  TANKSHELL = 5,
  HI_OCTANE = 6,
  CAR = 7,
  PLANE = 8,
  PETROL_PUMP = 9,
  BIKE = 10,
  DIR_STEAM = 11,
  DIR_FLAME = 12,
  DIR_WATER_HYDRANT = 13,
  DIR_GAS_CANISTER = 14,
  BOAT = 15,
  SHIP_DESTROY = 16,
  TRUCK = 17,
  BULLET = 18,
  SMOKE_GRENADE_LAUNCHER = 19,
  SMOKE_GRENADE = 20,
  BZGAS = 21,
  FLARE = 22,
  GAS_CANISTER = 23,
  EXTINGUISHER = 24,
  PROGRAMMABLEAR = 25,
  TRAIN = 26,
  BARREL = 27,
  PROPANE = 28,
  BLIMP = 29,
  DIR_FLAME_EXPLODE = 30,
  TANKER = 31,
  PLANE_ROCKET = 32,
  VEHICLE_BULLET = 33,
  GAS_TANK = 34,
  BIRD_CRAP = 35,
  RAILGUN = 36,
  BLIMP2 = 37,
  FIREWORK = 38,
  SNOWBALL = 39,
  PROXMINE = 40,
  VALKYRIE_CANNON = 41,
  AIR_DEFENCE = 42,
  PIPEBOMB = 43,
  VEHICLEMINE = 44,
  EXPLOSIVEAMMO = 45,
  APCSHELL = 46,
  BOMB_CLUSTER = 47,
  BOMB_GAS = 48,
  BOMB_INCENDIARY = 49,
  BOMB_STANDARD = 50,
  TORPEDO = 51,
  TORPEDO_UNDERWATER = 52,
  BOMBUSHKA_CANNON = 53,
  BOMB_CLUSTER_SECONDARY = 54,
  HUNTER_BARRAGE = 55,
  HUNTER_CANNON = 56,
  ROGUE_CANNON = 57,
  MINE_UNDERWATER = 58,
  ORBITAL_CANNON = 59,
  BOMB_STANDARD_WIDE = 60,
  EXPLOSIVEAMMO_SHOTGUN = 61,
  OPPRESSOR2_CANNON = 62,
  MORTAR_KINETIC = 63,
  VEHICLEMINE_KINETIC = 64,
  VEHICLEMINE_EMP = 65,
  VEHICLEMINE_SPIKE = 66,
  VEHICLEMINE_SLICK = 67,
  VEHICLEMINE_TAR = 68,
  SCRIPT_DRONE = 69,
  RAYGUN = 70,
  BURIEDMINE = 71,
  SCRIPT_MISSILE = 72,
  RCTANK_ROCKET = 73,
  BOMB_WATER = 74,
  BOMB_WATER_SECONDARY = 75,
  MINE_CNCSPIKE = 76,
  BZGAS_MK2 = 77,
  FLASHGRENADE = 78,
  STUNGRENADE = 79,
  CNC_KINETICRAM = 80,
  SCRIPT_MISSILE_LARGE = 81,
  SUBMARINE_BIG = 82,
  EMPLAUNCHER_EMP = 83,
}

---`eFiringPatternHashes` (natives.json: TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY)
---@enum fx.Enum.FiringPatternHashes
EnumLib.FiringPatternHashes = {
  FIRING_PATTERN_DEFAULT = 0,
  FIRING_PATTERN_BURST_FIRE = -687903391,
  FIRING_PATTERN_BURST_FIRE_DRIVEBY = -753768974,
  FIRING_PATTERN_FULL_AUTO = -957453492,
  FIRING_PATTERN_SINGLE_SHOT = 1566631136,
  FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 2055493265,
  FIRING_PATTERN_BURST_FIRE_HELI = -1857128337,
  FIRING_PATTERN_SHORT_BURSTS = 445831135,
  FIRING_PATTERN_BURST_FIRE_MICRO = 1122960381,
  FIRING_PATTERN_SLOW_FIRE_TANK = -490063247,
  FIRING_PATTERN_TAMPA_MORTAR = -1842093953,
}

---`eFollowPointRouteMode` (natives.json: TASK_FOLLOW_POINT_ROUTE)
---@enum fx.Enum.FollowPointRouteMode
EnumLib.FollowPointRouteMode = {
  TICKET_SINGLE = 0,
  TICKET_RETURN = 1,
  TICKET_SEASON = 2,
  TICKET_LOOP = 3,
}

---`eFontBitField` (natives.json: NEXT_ONSCREEN_KEYBOARD_RESULT_WILL_DISPLAY_USING_THESE_FONTS)
---@enum fx.Enum.FontBitField
EnumLib.FontBitField = {
  FONT_BIT_STANDARD = 1,
  FONT_BIT_CURSIVE = 2,
  FONT_BIT_ROCKSTAR_TAG = 4,
  FONT_BIT_LEADERBOARD = 8,
  FONT_BIT_CONDENSED = 16,
  FONT_BIT_FIXED_WIDTH_NUMBERS = 32,
  FONT_BIT_CONDENSED_NOT_GAMERNAME = 64,
  FONT_BIT_PRICEDOWN = 128,
}

---`eForceType` (natives.json: APPLY_FORCE_TO_ENTITY)
---@enum fx.Enum.ForceType
EnumLib.ForceType = {
  MinForce = 0,
  MaxForceRot = 1,
  MinForce2 = 2,
  MaxForceRot2 = 3,
  ForceNoRot = 4,
  ForceRotPlusForce = 5,
}

---`eGfxDrawOrder` (natives.json: SET_SCRIPT_GFX_DRAW_ORDER)
---@enum fx.Enum.GfxDrawOrder
EnumLib.GfxDrawOrder = {
  GFX_ORDER_BEFORE_HUD_PRIORITY_LOW = 0,
  GFX_ORDER_BEFORE_HUD = 1,
  GFX_ORDER_BEFORE_HUD_PRIORITY_HIGH = 2,
  GFX_ORDER_AFTER_HUD_PRIORITY_LOW = 3,
  GFX_ORDER_AFTER_HUD = 4,
  GFX_ORDER_AFTER_HUD_PRIORITY_HIGH = 5,
  GFX_ORDER_AFTER_FADE_PRIORITY_LOW = 6,
  GFX_ORDER_AFTER_FADE = 7,
  GFX_ORDER_AFTER_FADE_PRIORITY_HIGH = 8,
}

---`eGpsSlotType` (natives.json: GET_POS_ALONG_GPS_TYPE_ROUTE)
---@enum fx.Enum.GpsSlotType
EnumLib.GpsSlotType = {
  GPS_SLOT_WAYPOINT = 0,
  GPS_SLOT_RADAR_BLIP = 1,
  GPS_SLOT_DISCRETE = 2,
}

---`eGravityLevel` (natives.json: SET_GRAVITY_LEVEL)
---@enum fx.Enum.GravityLevel
EnumLib.GravityLevel = {
  ---earth gravity 9.8m/s2
  GRAV_EARTH = 0,
  ---moon gravity 2.4m/s2
  GRAV_MOON = 1,
  ---very low gravity
  GRAV_LOW = 2,
  ---zero gravity
  GRAV_ZERO = 3,
}

---`eHeadlightColors` (natives.json: GET_VEHICLE_XENON_LIGHTS_COLOR)
---@enum fx.Enum.HeadlightColors
EnumLib.HeadlightColors = {
  Default = 255,
  White = 0,
  Blue = 1,
  ElectricBlue = 2,
  MintGreen = 3,
  LimeGreen = 4,
  Yellow = 5,
  GoldenShower = 6,
  Orange = 7,
  Red = 8,
  PonyPink = 9,
  HotPink = 10,
  Purple = 11,
  Blacklight = 12,
}

---`eHeliMissionFlags` (natives.json: TASK_HELI_MISSION)
---@enum fx.Enum.HeliMissionFlags
EnumLib.HeliMissionFlags = {
  None = 0,
  AttainRequestedOrientation = 1,
  DontModifyOrientation = 2,
  DontModifyPitch = 4,
  DontModifyThrottle = 8,
  DontModifyRoll = 16,
  LandOnArrival = 32,
  DontDoAvoidance = 64,
  StartEngineImmediately = 128,
  ForceHeightMapAvoidance = 256,
  DontClampProbesToDestination = 512,
  EnableTimeslicingWhenPossible = 1024,
  CircleOppositeDirection = 2048,
  MaintainHeightAboveTerrain = 4096,
  IgnoreHiddenEntitiesDuringLand = 8192,
  DisableAllHeightMapAvoidance = 16384,
  ---ForceHeightMapAvoidance | DontDoAvoidance
  HeightMapOnlyAvoidance = 320,
}

---`eHornTypes` (natives.json: GET_VEHICLE_HORN_TYPE)
---@enum fx.Enum.HornTypes
EnumLib.HornTypes = {
  NORMAL = 1330140148,
  HELDDOWN = -2087385909,
  AGGRESSIVE = -92810745,
}

---`eHudColours` (natives.json: SET_CUSTOM_MP_HUD_COLOR)
---@enum fx.Enum.HudColours
EnumLib.HudColours = {
  HUD_COLOUR_PURE_WHITE = 0,
  HUD_COLOUR_WHITE = 1,
  HUD_COLOUR_BLACK = 2,
  HUD_COLOUR_GREY = 3,
  HUD_COLOUR_GREYLIGHT = 4,
  HUD_COLOUR_GREYDARK = 5,
  HUD_COLOUR_RED = 6,
  HUD_COLOUR_REDLIGHT = 7,
  HUD_COLOUR_REDDARK = 8,
  HUD_COLOUR_BLUE = 9,
  HUD_COLOUR_BLUELIGHT = 10,
  HUD_COLOUR_BLUEDARK = 11,
  HUD_COLOUR_YELLOW = 12,
  HUD_COLOUR_YELLOWLIGHT = 13,
  HUD_COLOUR_YELLOWDARK = 14,
  HUD_COLOUR_ORANGE = 15,
  HUD_COLOUR_ORANGELIGHT = 16,
  HUD_COLOUR_ORANGEDARK = 17,
  HUD_COLOUR_GREEN = 18,
  HUD_COLOUR_GREENLIGHT = 19,
  HUD_COLOUR_GREENDARK = 20,
  HUD_COLOUR_PURPLE = 21,
  HUD_COLOUR_PURPLELIGHT = 22,
  HUD_COLOUR_PURPLEDARK = 23,
  HUD_COLOUR_PINK = 24,
  HUD_COLOUR_STAR = 25,
  HUD_COLOUR_STARLIGHT = 26,
  HUD_COLOUR_STARDARK = 27,
  HUD_COLOUR_NET_PLAYER1 = 28,
  HUD_COLOUR_NET_PLAYER2 = 29,
  HUD_COLOUR_NET_PLAYER3 = 30,
  HUD_COLOUR_NET_PLAYER4 = 31,
  HUD_COLOUR_NET_PLAYER5 = 32,
  HUD_COLOUR_NET_PLAYER6 = 33,
  HUD_COLOUR_NET_PLAYER7 = 34,
  HUD_COLOUR_NET_PLAYER8 = 35,
  HUD_COLOUR_NET_PLAYER9 = 36,
  HUD_COLOUR_NET_PLAYER10 = 37,
  HUD_COLOUR_NET_PLAYER11 = 38,
  HUD_COLOUR_NET_PLAYER12 = 39,
  HUD_COLOUR_NET_PLAYER13 = 40,
  HUD_COLOUR_NET_PLAYER14 = 41,
  HUD_COLOUR_NET_PLAYER15 = 42,
  HUD_COLOUR_NET_PLAYER16 = 43,
  HUD_COLOUR_NET_PLAYER17 = 44,
  HUD_COLOUR_NET_PLAYER18 = 45,
  HUD_COLOUR_NET_PLAYER19 = 46,
  HUD_COLOUR_NET_PLAYER20 = 47,
  HUD_COLOUR_NET_PLAYER21 = 48,
  HUD_COLOUR_NET_PLAYER22 = 49,
  HUD_COLOUR_NET_PLAYER23 = 50,
  HUD_COLOUR_NET_PLAYER24 = 51,
  HUD_COLOUR_NET_PLAYER25 = 52,
  HUD_COLOUR_NET_PLAYER26 = 53,
  HUD_COLOUR_NET_PLAYER27 = 54,
  HUD_COLOUR_NET_PLAYER28 = 55,
  HUD_COLOUR_NET_PLAYER29 = 56,
  HUD_COLOUR_NET_PLAYER30 = 57,
  HUD_COLOUR_NET_PLAYER31 = 58,
  HUD_COLOUR_NET_PLAYER32 = 59,
  HUD_COLOUR_SIMPLEBLIP_DEFAULT = 60,
  HUD_COLOUR_MENU_BLUE = 61,
  HUD_COLOUR_MENU_GREY_LIGHT = 62,
  HUD_COLOUR_MENU_BLUE_EXTRA_DARK = 63,
  HUD_COLOUR_MENU_YELLOW = 64,
  HUD_COLOUR_MENU_YELLOW_DARK = 65,
  HUD_COLOUR_MENU_GREEN = 66,
  HUD_COLOUR_MENU_GREY = 67,
  HUD_COLOUR_MENU_GREY_DARK = 68,
  HUD_COLOUR_MENU_HIGHLIGHT = 69,
  HUD_COLOUR_MENU_STANDARD = 70,
  HUD_COLOUR_MENU_DIMMED = 71,
  HUD_COLOUR_MENU_EXTRA_DIMMED = 72,
  HUD_COLOUR_BRIEF_TITLE = 73,
  HUD_COLOUR_MID_GREY_MP = 74,
  HUD_COLOUR_NET_PLAYER1_DARK = 75,
  HUD_COLOUR_NET_PLAYER2_DARK = 76,
  HUD_COLOUR_NET_PLAYER3_DARK = 77,
  HUD_COLOUR_NET_PLAYER4_DARK = 78,
  HUD_COLOUR_NET_PLAYER5_DARK = 79,
  HUD_COLOUR_NET_PLAYER6_DARK = 80,
  HUD_COLOUR_NET_PLAYER7_DARK = 81,
  HUD_COLOUR_NET_PLAYER8_DARK = 82,
  HUD_COLOUR_NET_PLAYER9_DARK = 83,
  HUD_COLOUR_NET_PLAYER10_DARK = 84,
  HUD_COLOUR_NET_PLAYER11_DARK = 85,
  HUD_COLOUR_NET_PLAYER12_DARK = 86,
  HUD_COLOUR_NET_PLAYER13_DARK = 87,
  HUD_COLOUR_NET_PLAYER14_DARK = 88,
  HUD_COLOUR_NET_PLAYER15_DARK = 89,
  HUD_COLOUR_NET_PLAYER16_DARK = 90,
  HUD_COLOUR_NET_PLAYER17_DARK = 91,
  HUD_COLOUR_NET_PLAYER18_DARK = 92,
  HUD_COLOUR_NET_PLAYER19_DARK = 93,
  HUD_COLOUR_NET_PLAYER20_DARK = 94,
  HUD_COLOUR_NET_PLAYER21_DARK = 95,
  HUD_COLOUR_NET_PLAYER22_DARK = 96,
  HUD_COLOUR_NET_PLAYER23_DARK = 97,
  HUD_COLOUR_NET_PLAYER24_DARK = 98,
  HUD_COLOUR_NET_PLAYER25_DARK = 99,
  HUD_COLOUR_NET_PLAYER26_DARK = 100,
  HUD_COLOUR_NET_PLAYER27_DARK = 101,
  HUD_COLOUR_NET_PLAYER28_DARK = 102,
  HUD_COLOUR_NET_PLAYER29_DARK = 103,
  HUD_COLOUR_NET_PLAYER30_DARK = 104,
  HUD_COLOUR_NET_PLAYER31_DARK = 105,
  HUD_COLOUR_NET_PLAYER32_DARK = 106,
  HUD_COLOUR_BRONZE = 107,
  HUD_COLOUR_SILVER = 108,
  HUD_COLOUR_GOLD = 109,
  HUD_COLOUR_PLATINUM = 110,
  HUD_COLOUR_GANG1 = 111,
  HUD_COLOUR_GANG2 = 112,
  HUD_COLOUR_GANG3 = 113,
  HUD_COLOUR_GANG4 = 114,
  HUD_COLOUR_SAME_CREW = 115,
  HUD_COLOUR_FREEMODE = 116,
  HUD_COLOUR_PAUSE_BG = 117,
  HUD_COLOUR_FRIENDLY = 118,
  HUD_COLOUR_ENEMY = 119,
  HUD_COLOUR_LOCATION = 120,
  HUD_COLOUR_PICKUP = 121,
  HUD_COLOUR_PAUSE_SINGLEPLAYER = 122,
  HUD_COLOUR_FREEMODE_DARK = 123,
  HUD_COLOUR_INACTIVE_MISSION = 124,
  HUD_COLOUR_DAMAGE = 125,
  HUD_COLOUR_PINKLIGHT = 126,
  HUD_COLOUR_PM_MITEM_HIGHLIGHT = 127,
  HUD_COLOUR_SCRIPT_VARIABLE = 128,
  HUD_COLOUR_YOGA = 129,
  HUD_COLOUR_TENNIS = 130,
  HUD_COLOUR_GOLF = 131,
  HUD_COLOUR_SHOOTING_RANGE = 132,
  HUD_COLOUR_FLIGHT_SCHOOL = 133,
  HUD_COLOUR_NORTH_BLUE = 134,
  HUD_COLOUR_SOCIAL_CLUB = 135,
  HUD_COLOUR_PLATFORM_BLUE = 136,
  HUD_COLOUR_PLATFORM_GREEN = 137,
  HUD_COLOUR_PLATFORM_GREY = 138,
  HUD_COLOUR_FACEBOOK_BLUE = 139,
  HUD_COLOUR_INGAME_BG = 140,
  HUD_COLOUR_DARTS = 141,
  HUD_COLOUR_WAYPOINT = 142,
  HUD_COLOUR_MICHAEL = 143,
  HUD_COLOUR_FRANKLIN = 144,
  HUD_COLOUR_TREVOR = 145,
  HUD_COLOUR_GOLF_P1 = 146,
  HUD_COLOUR_GOLF_P2 = 147,
  HUD_COLOUR_GOLF_P3 = 148,
  HUD_COLOUR_GOLF_P4 = 149,
  HUD_COLOUR_WAYPOINTLIGHT = 150,
  HUD_COLOUR_WAYPOINTDARK = 151,
  HUD_COLOUR_PANEL_LIGHT = 152,
  HUD_COLOUR_MICHAEL_DARK = 153,
  HUD_COLOUR_FRANKLIN_DARK = 154,
  HUD_COLOUR_TREVOR_DARK = 155,
  HUD_COLOUR_OBJECTIVE_ROUTE = 156,
  HUD_COLOUR_PAUSEMAP_TINT = 157,
  HUD_COLOUR_PAUSE_DESELECT = 158,
  HUD_COLOUR_PM_WEAPONS_PURCHASABLE = 159,
  HUD_COLOUR_PM_WEAPONS_LOCKED = 160,
  HUD_COLOUR_END_SCREEN_BG = 161,
  HUD_COLOUR_CHOP = 162,
  HUD_COLOUR_PAUSEMAP_TINT_HALF = 163,
  HUD_COLOUR_NORTH_BLUE_OFFICIAL = 164,
  HUD_COLOUR_SCRIPT_VARIABLE_2 = 165,
  HUD_COLOUR_H = 166,
  HUD_COLOUR_HDARK = 167,
  HUD_COLOUR_T = 168,
  HUD_COLOUR_TDARK = 169,
  HUD_COLOUR_HSHARD = 170,
  HUD_COLOUR_CONTROLLER_MICHAEL = 171,
  HUD_COLOUR_CONTROLLER_FRANKLIN = 172,
  HUD_COLOUR_CONTROLLER_TREVOR = 173,
  HUD_COLOUR_CONTROLLER_CHOP = 174,
  HUD_COLOUR_VIDEO_EDITOR_VIDEO = 175,
  HUD_COLOUR_VIDEO_EDITOR_AUDIO = 176,
  HUD_COLOUR_VIDEO_EDITOR_TEXT = 177,
  HUD_COLOUR_HB_BLUE = 178,
  HUD_COLOUR_HB_YELLOW = 179,
  HUD_COLOUR_VIDEO_EDITOR_SCORE = 180,
  HUD_COLOUR_VIDEO_EDITOR_AUDIO_FADEOUT = 181,
  HUD_COLOUR_VIDEO_EDITOR_TEXT_FADEOUT = 182,
  HUD_COLOUR_VIDEO_EDITOR_SCORE_FADEOUT = 183,
  HUD_COLOUR_HEIST_BACKGROUND = 184,
  HUD_COLOUR_VIDEO_EDITOR_AMBIENT = 185,
  HUD_COLOUR_VIDEO_EDITOR_AMBIENT_FADEOUT = 186,
  HUD_COLOUR_GANG_BOSS = 187,
  HUD_COLOUR_GOON = 188,
  HUD_COLOUR_BOSS = 189,
  HUD_COLOUR_LOW_FLOW = 190,
  HUD_COLOUR_LOW_FLOW_DARK = 191,
  HUD_COLOUR_G1 = 192,
  HUD_COLOUR_G2 = 193,
  HUD_COLOUR_G3 = 194,
  HUD_COLOUR_G4 = 195,
  HUD_COLOUR_G5 = 196,
  HUD_COLOUR_G6 = 197,
  HUD_COLOUR_G7 = 198,
  HUD_COLOUR_G8 = 199,
  HUD_COLOUR_G9 = 200,
  HUD_COLOUR_G10 = 201,
  HUD_COLOUR_G11 = 202,
  HUD_COLOUR_G12 = 203,
  HUD_COLOUR_G13 = 204,
  HUD_COLOUR_G14 = 205,
  HUD_COLOUR_G15 = 206,
  HUD_COLOUR_ADVERSARY = 207,
  HUD_COLOUR_DEGEN_RED = 208,
  HUD_COLOUR_DEGEN_YELLOW = 209,
  HUD_COLOUR_DEGEN_GREEN = 210,
  HUD_COLOUR_DEGEN_CYAN = 211,
  HUD_COLOUR_DEGEN_BLUE = 212,
  HUD_COLOUR_DEGEN_MAGENTA = 213,
  HUD_COLOUR_STUNT_1 = 214,
  HUD_COLOUR_STUNT_2 = 215,
  HUD_COLOUR_SPECIAL_RACE_SERIES = 216,
  HUD_COLOUR_SPECIAL_RACE_SERIES_DARK = 217,
  HUD_COLOUR_CS = 218,
  HUD_COLOUR_CS_DARK = 219,
  HUD_COLOUR_TECH_GREEN = 220,
  HUD_COLOUR_TECH_GREEN_DARK = 221,
  HUD_COLOUR_TECH_RED = 222,
  HUD_COLOUR_TECH_GREEN_VERY_DARK = 223,
  HUD_COLOUR_PLACEHOLDER_01 = 224,
  HUD_COLOUR_PLACEHOLDER_02 = 225,
  HUD_COLOUR_PLACEHOLDER_03 = 226,
  HUD_COLOUR_PLACEHOLDER_04 = 227,
  HUD_COLOUR_PLACEHOLDER_05 = 228,
  HUD_COLOUR_PLACEHOLDER_06 = 229,
  HUD_COLOUR_PLACEHOLDER_07 = 230,
  HUD_COLOUR_PLACEHOLDER_08 = 231,
  HUD_COLOUR_PLACEHOLDER_09 = 232,
  HUD_COLOUR_PLACEHOLDER_10 = 233,
  HUD_COLOUR_JUNK_ENERGY = 234,
}

---`HudIndexes` (natives.json: END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED)
---@enum fx.Enum.HudIndexes
EnumLib.HudIndexes = {
  HELP_TEXT = 0,
  FLOATING_HELP_TEXT_1 = 1,
  FLOATING_HELP_TEXT_2 = 2,
}

---`eIkPart` (natives.json: SET_IK_TARGET)
---@enum fx.Enum.IkPart
EnumLib.IkPart = {
  IK_PART_INVALID = 0,
  ---head
  IK_PART_HEAD = 1,
  ---spine
  IK_PART_SPINE = 2,
  ---Left Arm
  IK_PART_ARM_LEFT = 3,
  ---Right Arm
  IK_PART_ARM_RIGHT = 4,
  ---Left Leg
  IK_PART_LEG_LEFT = 5,
  ---Right Leg
  IK_PART_LEG_RIGHT = 6,
}

---`eIkTargetFlags` (natives.json: SET_IK_TARGET)
---@enum fx.Enum.IkTargetFlags
EnumLib.IkTargetFlags = {
  ITF_DEFAULT = 0,
  ---arm target relative to the handbone
  ITF_ARM_TARGET_WRT_HANDBON = 1,
  ---arm target relative to the pointhelper
  ITF_ARM_TARGET_WRT_POINTHELPER = 2,
  ---arm target relative to the ikhelper
  ITF_ARM_TARGET_WRT_IKHELPE = 4,
  ---use animation tags directly
  ITF_IK_TAG_MODE_NORMAL = 8,
  ---use animation tags in ALLOW mode
  ITF_IK_TAG_MODE_ALLOW = 16,
  ---use animation tags in BLOCK mode
  ITF_IK_TAG_MODE_BLOCK = 32,
  ---solve for orientation in addition to position
  ITF_ARM_USE_ORIENTATION = 64,
}

---`eInstructionalButtonTypes` (natives.json: SET_WARNING_MESSAGE)
---@enum fx.Enum.InstructionalButtonTypes
EnumLib.InstructionalButtonTypes = {
  NONE = 0,
  SELECT = 1,
  OK = 2,
  YES = 4,
  BACK = 8,
  BACK_SELECT = 9,
  BACK_OK = 10,
  BACK_YES = 12,
  CANCEL = 16,
  CANCEL_SELECT = 17,
  CANCEL_OK = 18,
  CANCEL_YES = 20,
  NO = 32,
  NO_SELECT = 33,
  NO_OK = 34,
  YES_NO = 36,
  RETRY = 64,
  RETRY_SELECT = 65,
  RETRY_OK = 66,
  RETRY_YES = 68,
  RETRY_BACK = 72,
  RETRY_BACK_SELECT = 73,
  RETRY_BACK_OK = 74,
  RETRY_BACK_YES = 76,
  RETRY_CANCEL = 80,
  RETRY_CANCEL_SELECT = 81,
  RETRY_CANCEL_OK = 82,
  RETRY_CANCEL_YES = 84,
  SKIP = 256,
  SKIP_SELECT = 257,
  SKIP_OK = 258,
  SKIP_YES = 260,
  SKIP_BACK = 264,
  SKIP_BACK_SELECT = 265,
  SKIP_BACK_OK = 266,
  SKIP_BACK_YES = 268,
  SKIP_CANCEL = 272,
  SKIP_CANCEL_SELECT = 273,
  SKIP_CANCEL_OK = 274,
  SKIP_CANCEL_YES = 276,
  CONTINUE = 16384,
  BACK_CONTINUE = 16392,
  CANCEL_CONTINUE = 16400,
  LOADING_SPINNER = 134217728,
  SELECT_LOADING_SPINNER = 134217729,
  OK_LOADING_SPINNER = 134217730,
  YES_LOADING_SPINNER = 134217732,
  BACK_LOADING_SPINNER = 134217736,
  BACK_SELECT_LOADING_SPINNER = 134217737,
  BACK_OK_LOADING_SPINNER = 134217738,
  BACK_YES_LOADING_SPINNER = 134217740,
  CANCEL_LOADING_SPINNER = 134217744,
  CANCEL_SELECT_LOADING_SPINNER = 134217745,
  CANCEL_OK_LOADING_SPINNER = 134217746,
  CANCEL_YES_LOADING_SPINNER = 134217748,
}

---`eKeyboardType` (natives.json: DISPLAY_ONSCREEN_KEYBOARD)
---@enum fx.Enum.KeyboardType
EnumLib.KeyboardType = {
  ONSCREEN_KEYBOARD_ENGLISH = 0,
  ONSCREEN_KEYBOARD_LOCALISED = 1,
  ONSCREEN_KEYBOARD_PASSWORD = 2,
  ONSCREEN_KEYBOARD_GAMERTAG = 3,
  ONSCREEN_KEYBOARD_EMAIL = 4,
  ONSCREEN_KEYBOARD_BASIC_ENGLISH = 5,
  ONSCREEN_KEYBOARD_FILENAME = 6,
}

---`LogLevel` (fx: levels of fx.Logger, lowest first (logger.level))
---@enum fx.Enum.LogLevel
EnumLib.LogLevel = {
  ---debug() and timers, shown only in debug mode
  Debug = 0,
  ---log(), info(), dump()
  Info = 1,
  Success = 2,
  Warn = 3,
  ---error(), assert()
  Error = 4,
  Fatal = 5,
  ---nothing is printed
  None = 6,
}

---`eMousePointerStyle` (natives.json: SET_MOUSE_CURSOR_STYLE)
---@enum fx.Enum.MousePointerStyle
EnumLib.MousePointerStyle = {
  ARROW = 1,
  ARROW_DIMMED = 2,
  HAND_OPEN = 3,
  HAND_GRAB = 4,
  HAND_MIDDLE_FINGER = 5,
  ARROW_LEFT = 6,
  ARROW_RIGHT = 7,
  ARROW_UP = 8,
  ARROW_DOWN = 9,
  ARROW_TRIMMING = 10,
  ARROW_PLUS = 11,
  ARROW_MINUS = 12,
}

---`eMpGamerTagComponent` (natives.json: SET_MP_GAMER_TAG_VISIBILITY)
---@enum fx.Enum.MpGamerTagComponent
EnumLib.MpGamerTagComponent = {
  MP_TAG_GAMER_NAME = 0,
  MP_TAG_CREW_TAG = 1,
  MP_TAG_HEALTH_ARMOUR = 2,
  MP_TAG_BIG_TEXT = 3,
  MP_TAG_AUDIO_ICON = 4,
  MP_TAG_USING_MENU = 5,
  MP_TAG_PASSIVE_MODE = 6,
  MP_TAG_WANTED_STARS = 7,
  MP_TAG_DRIVER = 8,
  MP_TAG_CO_DRIVER = 9,
  MP_TAG_TAGGED = 10,
  MP_TAG_GAMER_NAME_NEARBY = 11,
  MP_TAG_ARROW = 12,
  MP_TAG_PACKAGES = 13,
  MP_TAG_INV_IF_PED_FOLLOWING = 14,
  MP_TAG_RANK_TEXT = 15,
  MP_TAG_TYPING = 16,
  MP_TAG_BAG_LARGE = 17,
  MP_TAG_ARROW_18 = 18,
  MP_TAG_GANG_CEO = 19,
  MP_TAG_GANG_BIKER = 20,
  MP_TAG_BIKER_ARROW = 21,
  MP_TAG_MC_ROLE_PRESIDENT = 22,
  MP_TAG_MC_ROLE_VICE_PRESIDENT = 23,
  MP_TAG_MC_ROLE_ROAD_CAPTAIN = 24,
  MP_TAG_MC_ROLE_SARGEANT = 25,
  MP_TAG_MC_ROLE_ENFORCER = 26,
  MP_TAG_MC_ROLE_PROSPECT = 27,
  MP_TAG_TRANSMITTER = 28,
  MP_TAG_BOMB = 29,
}

---`eMpSettingSpawn` (natives.json: NETWORK_SET_CURRENT_SPAWN_SETTING)
---@enum fx.Enum.MpSettingSpawn
EnumLib.MpSettingSpawn = {
  MP_SETTING_SPAWN_NULL = 0,
  MP_SETTING_SPAWN_PROPERTY = 1,
  MP_SETTING_SPAWN_LAST_POSITION = 2,
  MP_SETTING_SPAWN_GARAGE = 3,
  MP_SETTING_SPAWN_RANDOM = 4,
  MP_SETTING_SPAWN_PRIVATE_YACHT = 5,
  MP_SETTING_SPAWN_OFFICE = 6,
  MP_SETTING_SPAWN_CLUBHOUSE = 7,
  MP_SETTING_SPAWN_IE_WAREHOUSE = 8,
  MP_SETTING_SPAWN_BUNKER = 9,
  MP_SETTING_SPAWN_HANGAR = 10,
  MP_SETTING_SPAWN_DEFUNCT_BASE = 11,
  MP_SETTING_SPAWN_NIGHTCLUB = 12,
  MP_SETTING_SPAWN_ARENA_GARAGE = 13,
  MP_SETTING_SPAWN_CASINO_APARTMENT = 14,
  MP_SETTING_SPAWN_ARCADE = 15,
  MP_SETTING_SPAWN_SUBMARINE = 16,
  MP_SETTING_SPAWN_CAR_MEET = 17,
  MP_SETTING_SPAWN_AUTO_SHOP = 18,
  MP_SETTING_SPAWN_FIXER_HQ = 19,
  MP_SETTING_SPAWN_MAX = 20,
}

---`eNavScriptFlags` (natives.json: TASK_FOLLOW_NAV_MESH_TO_COORD)
---@enum fx.Enum.NavScriptFlags
EnumLib.NavScriptFlags = {
  ---Default flag
  ENAV_DEFAULT = 0,
  ---Will ensure the ped continues to move whilst waiting for the path to be found, and will not slow down at the end of their route.
  ENAV_NO_STOPPING = 1,
  ---Performs a slide-to-coord at the end of the task. This requires that the accompanying NAVDATA structure has the 'SlideToCoordHeading' member set correctly.
  ENAV_ADV_SLIDE_TO_COORD_AND_ACHIEVE_HEADING_AT_END = 2,
  ---If the navmesh is not loaded in under the target position, then this will cause the ped to get as close as is possible on whatever navmesh is loaded. The navmesh must still be loaded at the path start.
  ENAV_GO_FAR_AS_POSSIBLE_IF_TARGET_NAVMESH_NOT_LOADED = 4,
  ---Will allow navigation underwater - by default this is not allowed.
  ENAV_ALLOW_SWIMMING_UNDERWATER = 8,
  ---Will only allow navigation on pavements. If the path starts or ends off the pavement, the command will fail. Likewise if no pavement-only route can be found even although the start and end are on pavement.
  ENAV_KEEP_TO_PAVEMENTS = 16,
  ---Prevents the path from entering water at all.
  ENAV_NEVER_ENTER_WATER = 32,
  ---Disables object-avoidance for this path. The ped may still make minor steering adjustments to avoid objects, but will not pathfind around them.
  ENAV_DONT_AVOID_OBJECTS = 64,
  ---Specifies that the navmesh route will only be able to traverse up slopes which are under the angle specified, in the MaxSlopeNavigable member of the accompanying NAVDATA structure.
  ENAV_ADVANCED_USE_MAX_SLOPE_NAVIGABLE = 128,
  ---Unused.
  ENAV_STOP_EXACTLY = 512,
  ---The entity will look ahead in its path for a longer distance to make the walk/run start go more in the right direction.
  ENAV_ACCURATE_WALKRUN_START = 1024,
  ---Disables ped-avoidance for this path while we move.
  ENAV_DONT_AVOID_PEDS = 2048,
  ---If target pos is inside the boundingbox of an object it will otherwise be pushed out.
  ENAV_DONT_ADJUST_TARGET_POSITION = 4096,
  ---Turns off the default behaviour, which is to stop exactly at the target position. Occasionally this can cause footsliding/skating problems.
  ENAV_SUPPRESS_EXACT_STOP = 8192,
  ---Prevents the path-search from finding paths outside of this search distance. This can be used to prevent peds from finding long undesired routes.
  ENAV_ADVANCED_USE_CLAMP_MAX_SEARCH_DISTANCE = 16384,
  ---Pulls out the paths from edges at corners for a longer distance, to prevent peds walking into stuff.
  ENAV_PULL_FROM_EDGE_EXTRA = 32768,
}

---`neonIndex` (natives.json: GET_VEHICLE_NEON_ENABLED)
---@enum fx.Enum.neonIndex
EnumLib.neonIndex = {
  ---Back neon
  NEON_BACK = 0,
  ---Right neon
  NEON_RIGHT = 1,
  ---Left neon
  NEON_LEFT = 2,
  ---Front neon
  NEON_FRONT = 3,
}

---`eNetObjEntityType` (natives.json: GET_NET_TYPE_FROM_ENTITY, GET_NET_TYPE_FROM_ENTITY)
---@enum fx.Enum.NetObjEntityType
EnumLib.NetObjEntityType = {
  Animal = 0,
  Automobile = 1,
  Bike = 2,
  Boat = 3,
  Door = 4,
  Heli = 5,
  Object = 6,
  Ped = 7,
  Pickup = 8,
  PickupPlacement = 9,
  Plane = 10,
  Submarine = 11,
  Player = 12,
  Trailer = 13,
  Train = 14,
  DraftVeh = 15,
  StatsTracker = 16,
  PropSet = 17,
  AnimScene = 18,
  GroupScenario = 19,
  Herd = 20,
  Horse = 21,
  WorldState = 22,
  WorldProjectile = 23,
  Incident = 24,
  Guardzone = 25,
  PedGroup = 26,
  CombatDirector = 27,
  PedSharedTargeting = 28,
  Persistent = 29,
}

---`eNMFallType` (natives.json: SET_PED_TO_RAGDOLL_WITH_FALL)
---@enum fx.Enum.NMFallType
EnumLib.NMFallType = {
  TYPE_FROM_HIGH = 0,
  TYPE_OVER_WALL = 1,
  TYPE_DOWN_STAIRS = 2,
  TYPE_DIE_TYPES = 3,
  TYPE_DIE_FROM_HIGH = 4,
  TYPE_DIE_OVER_WALL = 5,
  TYPE_DIE_DOWN_STAIRS = 6,
}

---`eNodeFlags` (natives.json: GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING)
---@enum fx.Enum.NodeFlags
EnumLib.NodeFlags = {
  NONE = 0,
  INCLUDE_SWITCHED_OFF_NODES = 1,
  INCLUDE_BOAT_NODES = 2,
  IGNORE_SLIPLANES = 4,
  IGNORE_SWITCHED_OFF_DEAD_ENDS = 8,
}

---`eObjectPaintVariants` (natives.json: SET_OBJECT_TEXTURE_VARIATION)
---@enum fx.Enum.ObjectPaintVariants
EnumLib.ObjectPaintVariants = {
  Pacific = 0,
  Azure = 1,
  Nautical = 2,
  Continental = 3,
  Battleship = 4,
  Intrepid = 5,
  Uniform = 6,
  Classico = 7,
  Mediterranean = 8,
  Command = 9,
  Mariner = 10,
  Ruby = 11,
  Vintage = 12,
  Pristine = 13,
  Merchant = 14,
  Voyager = 15,
}

---`eOSKStatus` (natives.json: UPDATE_ONSCREEN_KEYBOARD)
---@enum fx.Enum.OSKStatus
EnumLib.OSKStatus = {
  OSK_INVALID = -1,
  OSK_PENDING = 0,
  OSK_SUCCESS = 1,
  OSK_CANCELLED = 2,
  OSK_FAILED = 3,
}

---`ePadType` (natives.json: ENABLE_ALL_CONTROL_ACTIONS)
---@enum fx.Enum.PadType
EnumLib.PadType = {
  PLAYER_CONTROL = 0,
  CAMERA_CONTROL = 1,
  FRONTEND_CONTRO = 2,
}

---`ePauseMenuState` (natives.json: GET_PAUSE_MENU_STATE)
---@enum fx.Enum.PauseMenuState
EnumLib.PauseMenuState = {
  PM_INACTIVE = 0,
  PM_STARTING_UP = 5,
  PM_RESTARTING = 10,
  PM_READY = 15,
  PM_IN_STORE = 20,
  PM_IN_SC_MENU = 25,
  PM_SHUTTING_DOWN = 30,
  PM_IN_VIDEOEDITOR = 35,
}

---`ePedBoneId` (natives.json: GET_PED_BONE_INDEX)
---@enum fx.Enum.PedBoneId
EnumLib.PedBoneId = {
  SKEL_ROOT = 0,
  SKEL_Pelvis = 11816,
  SKEL_L_Thigh = 58271,
  SKEL_L_Calf = 63931,
  SKEL_L_Foot = 14201,
  SKEL_L_Toe0 = 2108,
  EO_L_Foot = 33989,
  EO_L_Toe = 26813,
  IK_L_Foot = 65245,
  PH_L_Foot = 57717,
  MH_L_Knee = 46078,
  SKEL_R_Thigh = 51826,
  SKEL_R_Calf = 36864,
  SKEL_R_Foot = 52301,
  SKEL_R_Toe0 = 20781,
  EO_R_Foot = 4246,
  EO_R_Toe = 29027,
  IK_R_Foot = 35502,
  PH_R_Foot = 24806,
  MH_R_Knee = 16335,
  RB_L_ThighRoll = 23639,
  RB_R_ThighRoll = 6442,
  SKEL_Spine_Root = 57597,
  SKEL_Spine0 = 23553,
  SKEL_Spine1 = 24816,
  SKEL_Spine2 = 24817,
  SKEL_Spine3 = 24818,
  SKEL_L_Clavicle = 64729,
  SKEL_L_UpperArm = 45509,
  SKEL_L_Forearm = 61163,
  SKEL_L_Hand = 18905,
  SKEL_L_Finger00 = 26610,
  SKEL_L_Finger01 = 4089,
  SKEL_L_Finger02 = 4090,
  SKEL_L_Finger10 = 26611,
  SKEL_L_Finger11 = 4169,
  SKEL_L_Finger12 = 4170,
  SKEL_L_Finger20 = 26612,
  SKEL_L_Finger21 = 4185,
  SKEL_L_Finger22 = 4186,
  SKEL_L_Finger30 = 26613,
  SKEL_L_Finger31 = 4137,
  SKEL_L_Finger32 = 4138,
  SKEL_L_Finger40 = 26614,
  SKEL_L_Finger41 = 4153,
  SKEL_L_Finger42 = 4154,
  PH_L_Hand = 60309,
  IK_L_Hand = 36029,
  RB_L_ForeArmRoll = 61007,
  RB_L_ArmRoll = 5232,
  MH_L_Elbow = 22711,
  SKEL_R_Clavicle = 10706,
  SKEL_R_UpperArm = 40269,
  SKEL_R_Forearm = 28252,
  SKEL_R_Hand = 57005,
  SKEL_R_Finger00 = 58866,
  SKEL_R_Finger01 = 64016,
  SKEL_R_Finger02 = 64017,
  SKEL_R_Finger10 = 58867,
  SKEL_R_Finger11 = 64096,
  SKEL_R_Finger12 = 64097,
  SKEL_R_Finger20 = 58868,
  SKEL_R_Finger21 = 64112,
  SKEL_R_Finger22 = 64113,
  SKEL_R_Finger30 = 58869,
  SKEL_R_Finger31 = 64064,
  SKEL_R_Finger32 = 64065,
  SKEL_R_Finger40 = 58870,
  SKEL_R_Finger41 = 64080,
  SKEL_R_Finger42 = 64081,
  PH_R_Hand = 28422,
  IK_R_Hand = 6286,
  RB_R_ForeArmRoll = 43810,
  RB_R_ArmRoll = 37119,
  MH_R_Elbow = 2992,
  SKEL_Neck_1 = 39317,
  SKEL_Head = 31086,
  IK_Head = 12844,
  FACIAL_facialRoot = 65068,
  FB_L_Brow_Out_000 = 58331,
  FB_L_Lid_Upper_000 = 45750,
  FB_L_Eye_000 = 25260,
  FB_L_CheekBone_000 = 21550,
  FB_L_Lip_Corner_000 = 29868,
  FB_R_Lid_Upper_000 = 43536,
  FB_R_Eye_000 = 27474,
  FB_R_CheekBone_000 = 19336,
  FB_R_Brow_Out_000 = 1356,
  FB_R_Lip_Corner_000 = 11174,
  FB_Brow_Centre_000 = 37193,
  FB_UpperLipRoot_000 = 20178,
  FB_UpperLip_000 = 61839,
  FB_L_Lip_Top_000 = 20279,
  FB_R_Lip_Top_000 = 17719,
  FB_Jaw_000 = 46240,
  FB_LowerLipRoot_000 = 17188,
  FB_LowerLip_000 = 20623,
  FB_L_Lip_Bot_000 = 47419,
  FB_R_Lip_Bot_000 = 49979,
  FB_Tongue_000 = 47495,
  RB_Neck_1 = 35731,
  SPR_L_Breast = 64654,
  SPR_R_Breast = 34911,
  IK_Root = 56604,
  SKEL_Neck_2 = 24532,
  SKEL_Pelvis1 = 53251,
  SKEL_PelvisRoot = 17916,
  SKEL_SADDLE = 38180,
  MH_L_CalfBack = 4115,
  MH_L_ThighBack = 24589,
  SM_L_Skirt = 50201,
  MH_R_CalfBack = 45075,
  MH_R_ThighBack = 20899,
  SM_R_Skirt = 30482,
  SM_M_BackSkirtRoll = 3515,
  SM_L_BackSkirtRoll = 16562,
  SM_R_BackSkirtRoll = 49473,
  SM_M_FrontSkirtRoll = 52667,
  SM_L_FrontSkirtRoll = 39785,
  SM_R_FrontSkirtRoll = 34545,
  SM_CockNBalls_ROOT = 50813,
  SM_CockNBalls = 40244,
  MH_L_Finger00 = 35939,
  MH_L_FingerBulge00 = 24504,
  MH_L_Finger10 = 35923,
  MH_L_FingerTop00 = 41540,
  MH_L_HandSide = 51082,
  MH_Watch = 10040,
  MH_L_Sleeve = 37692,
  MH_R_Finger00 = 11363,
  MH_R_FingerBulge00 = 27064,
  MH_R_Finger10 = 11347,
  MH_R_FingerTop00 = 61259,
  MH_R_HandSide = 26875,
  MH_R_Sleeve = 37596,
  FACIAL_jaw = 2849,
  FACIAL_underChin = 35477,
  FACIAL_L_underChin = 9038,
  FACIAL_chin = 46456,
  FACIAL_chinSkinBottom = 39100,
  FACIAL_L_chinSkinBottom = 16015,
  FACIAL_R_chinSkinBottom = 40591,
  FACIAL_tongueA = 19068,
  FACIAL_tongueB = 19069,
  FACIAL_tongueC = 19070,
  FACIAL_tongueD = 19071,
  FACIAL_tongueE = 19072,
  FACIAL_L_tongueE = 13810,
  FACIAL_R_tongueE = 12274,
  FACIAL_L_tongueD = 13809,
  FACIAL_R_tongueD = 12273,
  FACIAL_L_tongueC = 13808,
  FACIAL_R_tongueC = 12272,
  FACIAL_L_tongueB = 13807,
  FACIAL_R_tongueB = 12271,
  FACIAL_L_tongueA = 13806,
  FACIAL_R_tongueA = 12270,
  FACIAL_chinSkinTop = 29222,
  FACIAL_L_chinSkinTop = 16051,
  FACIAL_chinSkinMid = 35226,
  FACIAL_L_chinSkinMid = 17447,
  FACIAL_L_chinSide = 19038,
  FACIAL_R_chinSkinMid = 62895,
  FACIAL_R_chinSkinTop = 61499,
  FACIAL_R_chinSide = 43614,
  FACIAL_R_underChin = 11252,
  FACIAL_L_lipLowerSDK = 47585,
  FACIAL_L_lipLowerAnalog = 9290,
  FACIAL_L_lipLowerThicknessV = 51017,
  FACIAL_L_lipLowerThicknessH = 50811,
  FACIAL_lipLowerSDK = 29317,
  FACIAL_lipLowerAnalog = 55675,
  FACIAL_lipLowerThicknessV = 50619,
  FACIAL_lipLowerThicknessH = 50669,
  FACIAL_R_lipLowerSDK = 41012,
  FACIAL_R_lipLowerAnalog = 49881,
  FACIAL_R_lipLowerThicknessV = 50921,
  FACIAL_R_lipLowerThicknessH = 50907,
  FACIAL_nose = 8433,
  FACIAL_L_nostril = 29474,
  FACIAL_L_nostrilThickness = 49503,
  FACIAL_noseLower = 57434,
  FACIAL_L_noseLowerThickness = 31189,
  FACIAL_R_noseLowerThickness = 31093,
  FACIAL_noseTip = 27232,
  FACIAL_R_nostril = 31010,
  FACIAL_R_nostrilThickness = 14079,
  FACIAL_noseUpper = 41039,
  FACIAL_L_noseUpper = 8120,
  FACIAL_noseBridge = 39843,
  FACIAL_L_nasolabialFurrow = 23242,
  FACIAL_L_nasolabialBulge = 52600,
  FACIAL_L_cheekLower = 26887,
  FACIAL_L_cheekLowerBulge1 = 58363,
  FACIAL_L_cheekLowerBulge2 = 58364,
  FACIAL_L_cheekInner = 59307,
  FACIAL_L_cheekOuter = 33121,
  FACIAL_L_eyesackLower = 30491,
  FACIAL_L_eyeball = 5956,
  FACIAL_L_eyelidLower = 39308,
  FACIAL_L_eyelidLowerOuterSDK = 65100,
  FACIAL_L_eyelidLowerOuterAnalog = 47530,
  FACIAL_L_eyelashLowerOuter = 55286,
  FACIAL_L_eyelidLowerInnerSDK = 61777,
  FACIAL_L_eyelidLowerInnerAnalog = 33346,
  FACIAL_L_eyelashLowerInner = 19663,
  FACIAL_L_eyelidUpper = 38849,
  FACIAL_L_eyelidUpperOuterSDK = 44821,
  FACIAL_L_eyelidUpperOuterAnalog = 26618,
  FACIAL_L_eyelashUpperOuter = 10167,
  FACIAL_L_eyelidUpperInnerSDK = 54081,
  FACIAL_L_eyelidUpperInnerAnalog = 61586,
  FACIAL_L_eyelashUpperInner = 39711,
  FACIAL_L_eyesackUpperOuterBulge = 42329,
  FACIAL_L_eyesackUpperInnerBulge = 12074,
  FACIAL_L_eyesackUpperOuterFurrow = 50583,
  FACIAL_L_eyesackUpperInnerFurrow = 21159,
  FACIAL_forehead = 37400,
  FACIAL_L_foreheadInner = 2115,
  FACIAL_L_foreheadInnerBulge = 30332,
  FACIAL_L_foreheadOuter = 36299,
  FACIAL_skull = 16929,
  FACIAL_foreheadUpper = 63446,
  FACIAL_L_foreheadUpperInner = 53011,
  FACIAL_L_foreheadUpperOuter = 20635,
  FACIAL_R_foreheadUpperInner = 52979,
  FACIAL_R_foreheadUpperOuter = 20603,
  FACIAL_L_temple = 44921,
  FACIAL_L_ear = 6621,
  FACIAL_L_earLower = 24625,
  FACIAL_L_masseter = 10256,
  FACIAL_L_jawRecess = 40058,
  FACIAL_L_cheekOuterSkin = 5285,
  FACIAL_R_cheekLower = 62311,
  FACIAL_R_cheekLowerBulge1 = 22939,
  FACIAL_R_cheekLowerBulge2 = 22940,
  FACIAL_R_masseter = 2064,
  FACIAL_R_jawRecess = 37844,
  FACIAL_R_ear = 4407,
  FACIAL_R_earLower = 32817,
  FACIAL_R_eyesackLower = 30587,
  FACIAL_R_nasolabialBulge = 54814,
  FACIAL_R_cheekOuter = 3378,
  FACIAL_R_cheekInner = 29564,
  FACIAL_R_noseUpper = 7382,
  FACIAL_R_foreheadInner = 3651,
  FACIAL_R_foreheadInnerBulge = 30364,
  FACIAL_R_foreheadOuter = 36811,
  FACIAL_R_cheekOuterSkin = 45876,
  FACIAL_R_eyesackUpperInnerFurrow = 40878,
  FACIAL_R_eyesackUpperOuterFurrow = 5135,
  FACIAL_R_eyesackUpperInnerBulge = 41817,
  FACIAL_R_eyesackUpperOuterBulge = 6905,
  FACIAL_R_nasolabialFurrow = 11434,
  FACIAL_R_temple = 44825,
  FACIAL_R_eyeball = 6468,
  FACIAL_R_eyelidUpper = 32276,
  FACIAL_R_eyelidUpperOuterSDK = 45333,
  FACIAL_R_eyelidUpperOuterAnalog = 62042,
  FACIAL_R_eyelashUpperOuter = 3594,
  FACIAL_R_eyelidUpperInnerSDK = 54593,
  FACIAL_R_eyelidUpperInnerAnalog = 31843,
  FACIAL_R_eyelashUpperInner = 33138,
  FACIAL_R_eyelidLower = 32735,
  FACIAL_R_eyelidLowerOuterSDK = 445,
  FACIAL_R_eyelidLowerOuterAnalog = 17787,
  FACIAL_R_eyelashLowerOuter = 48713,
  FACIAL_R_eyelidLowerInnerSDK = 62289,
  FACIAL_R_eyelidLowerInnerAnalog = 3603,
  FACIAL_R_eyelashLowerInner = 13090,
  FACIAL_L_lipUpperSDK = 36656,
  FACIAL_L_lipUpperAnalog = 45519,
  FACIAL_L_lipUpperThicknessH = 14286,
  FACIAL_L_lipUpperThicknessV = 14524,
  FACIAL_lipUpperSDK = 6004,
  FACIAL_lipUpperAnalog = 57444,
  FACIAL_lipUpperThicknessH = 31123,
  FACIAL_lipUpperThicknessV = 31105,
  FACIAL_L_lipCornerSDK = 2844,
  FACIAL_L_lipCornerAnalog = 58728,
  FACIAL_L_lipCornerThicknessUpper = 1980,
  FACIAL_L_lipCornerThicknessLower = 56642,
  FACIAL_R_lipUpperSDK = 30083,
  FACIAL_R_lipUpperAnalog = 20943,
  FACIAL_R_lipUpperThicknessH = 14382,
  FACIAL_R_lipUpperThicknessV = 14428,
  FACIAL_R_lipCornerSDK = 2876,
  FACIAL_R_lipCornerAnalog = 60942,
  FACIAL_R_lipCornerThicknessUpper = 21699,
  FACIAL_R_lipCornerThicknessLower = 11194,
  MH_MulletRoot = 15987,
  MH_MulletScaler = 41410,
  MH_Hair_Scale = 50788,
  MH_Hair_Crown = 5749,
  SM_Torch = 2262,
  FX_Light = 35161,
  FX_Light_Scale = 20536,
  FX_Light_Switch = 57742,
  BagRoot = 44297,
  BagPivotROOT = 47158,
  BagPivot = 19729,
  BagBody = 43885,
  BagBone_R = 2359,
  BagBone_L = 2449,
  SM_LifeSaver_Front = 37920,
  SM_R_Pouches_ROOT = 10594,
  SM_R_Pouches = 16705,
  SM_L_Pouches_ROOT = 10754,
  SM_L_Pouches = 19265,
  SM_Suit_Back_Flapper = 55853,
  SPR_CopRadio = 33349,
  SM_LifeSaver_Back = 8487,
  MH_BlushSlider = 41166,
  SKEL_Tail_01 = 839,
  SKEL_Tail_02 = 840,
  MH_L_Concertina_B = 51592,
  MH_L_Concertina_A = 51591,
  MH_R_Concertina_B = 51432,
  MH_R_Concertina_A = 51431,
  MH_L_ShoulderBladeRoot = 34577,
  MH_L_ShoulderBlade = 20143,
  MH_R_ShoulderBladeRoot = 14858,
  MH_R_ShoulderBlade = 21679,
  FB_R_Ear_000 = 27871,
  SPR_R_Ear = 25526,
  FB_L_Ear_000 = 25657,
  SPR_L_Ear = 23312,
  FB_TongueA_000 = 16902,
  FB_TongueB_000 = 16903,
  FB_TongueC_000 = 16904,
  SKEL_L_Toe1 = 7531,
  SKEL_R_Toe1 = 45631,
  SKEL_Tail_03 = 841,
  SKEL_Tail_04 = 842,
  SKEL_Tail_05 = 843,
  SPR_Gonads_ROOT = 49118,
  SPR_Gonads = 7168,
  FB_L_Brow_Out_001 = 58331,
  FB_L_Lid_Upper_001 = 45750,
  FB_L_Eye_001 = 25260,
  FB_L_CheekBone_001 = 21550,
  FB_L_Lip_Corner_001 = 29868,
  FB_R_Lid_Upper_001 = 43536,
  FB_R_Eye_001 = 27474,
  FB_R_CheekBone_001 = 19336,
  FB_R_Brow_Out_001 = 1356,
  FB_R_Lip_Corner_001 = 11174,
  FB_Brow_Centre_001 = 37193,
  FB_UpperLipRoot_001 = 20178,
  FB_UpperLip_001 = 61839,
  FB_L_Lip_Top_001 = 20279,
  FB_R_Lip_Top_001 = 17719,
  FB_Jaw_001 = 46240,
  FB_LowerLipRoot_001 = 17188,
  FB_LowerLip_001 = 20623,
  FB_L_Lip_Bot_001 = 47419,
  FB_R_Lip_Bot_001 = 49979,
  FB_Tongue_001 = 47495,
}

---`PedClothes` (fx: keys of ped.clothes and getOutfit().clothes (component id in the comment))
---@enum fx.Enum.PedClothes
EnumLib.PedClothes = {
  ---component 1
  Mask = "mask",
  ---component 3
  Arms = "arms",
  ---component 4
  Legs = "legs",
  ---component 5
  Bag = "bag",
  ---component 6
  Shoes = "shoes",
  ---component 7
  Neck = "neck",
  ---component 8
  Undershirt = "undershirt",
  ---component 9
  Armor = "armor",
  ---component 10
  Decals = "decals",
  ---component 11
  Top = "top",
}

---`ePedCompFlags` (natives.json: GIVE_PED_HELMET)
---@enum fx.Enum.PedCompFlags
EnumLib.PedCompFlags = {
  ---0
  PV_FLAG_NONE = 0,
  ---1<<0
  PV_FLAG_BULKY = 1,
  ---1<<1
  PV_FLAG_JOB = 2,
  ---1<<2
  PV_FLAG_SUNNY = 4,
  ---1<<3
  PV_FLAG_WET = 8,
  ---1<<4
  PV_FLAG_COLD = 16,
  ---1<<5
  PV_FLAG_NOT_IN_CAR = 32,
  ---1<<6
  PV_FLAG_BIKE_ONLY = 64,
  ---1<<7
  PV_FLAG_NOT_INDOORS = 128,
  ---1<<8
  PV_FLAG_FIRE_RETARDENT = 256,
  ---1<<9
  PV_FLAG_ARMOURED = 512,
  ---1<<10
  PV_FLAG_LIGHTLY_ARMOURED = 1024,
  ---1<<11
  PV_FLAG_HIGH_DETAIL = 2048,
  ---1<<12
  PV_FLAG_DEFAULT_HELMET = 4096,
  ---1<<13
  PV_FLAG_RANDOM_HELMET = 8192,
  ---1<<14
  PV_FLAG_SCRIPT_HELMET = 16384,
  ---1<<15
  PV_FLAG_FLIGHT_HELMET = 32768,
  ---1<<16
  PV_FLAG_HIDE_IN_FIRST_PERSON = 65536,
  ---1<<17
  PV_FLAG_USE_PHYSICS_HAT_2 = 131072,
  ---1<<18
  PV_FLAG_PILOT_HELMET = 262144,
}

---`ePedConfigFlags` (natives.json: SET_PED_CONFIG_FLAG, SET_PED_CONFIG_FLAG)
---@enum fx.Enum.PedConfigFlags
EnumLib.PedConfigFlags = {
  CPED_CONFIG_FLAG_CreatedByFactory = 0,
  CPED_CONFIG_FLAG_CanBeShotInVehicle = 1,
  CPED_CONFIG_FLAG_NoCriticalHits = 2,
  CPED_CONFIG_FLAG_DrownsInWater = 3,
  CPED_CONFIG_FLAG_DrownsInSinkingVehicle = 4,
  CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming = 5,
  CPED_CONFIG_FLAG_HasBulletProofVest = 6,
  CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
  CPED_CONFIG_FLAG_NeverFallOffSkis = 8,
  CPED_CONFIG_FLAG_NeverEverTargetThisPed = 9,
  CPED_CONFIG_FLAG_ThisPedIsATargetPriority = 10,
  CPED_CONFIG_FLAG_TargettableWithNoLos = 11,
  CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands = 12,
  CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
  CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead = 14,
  CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent = 15,
  CPED_CONFIG_FLAG_KeepTasksAfterCleanUp = 16,
  CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
  CPED_CONFIG_FLAG_HasAScriptBrain = 18,
  CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad = 19,
  CPED_CONFIG_FLAG_AllowMedicsToReviveMe = 20,
  CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript = 21,
  CPED_CONFIG_FLAG_NotAllowedToCrouch = 22,
  CPED_CONFIG_FLAG_DeathPickupsPersist = 23,
  CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
  CPED_CONFIG_FLAG_ForceDieIfInjured = 25,
  CPED_CONFIG_FLAG_DontDragMeOutCar = 26,
  CPED_CONFIG_FLAG_StayInCarOnJack = 27,
  CPED_CONFIG_FLAG_ForceDieInCar = 28,
  CPED_CONFIG_FLAG_GetOutUndriveableVehicle = 29,
  CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds = 30,
  CPED_CONFIG_FLAG_DontStoreAsPersistent = 31,
  CPED_CONFIG_FLAG_WillFlyThroughWindscreen = 32,
  CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
  CPED_CONFIG_FLAG_HasHelmet = 34,
  CPED_CONFIG_FLAG_UseHelmet = 35,
  CPED_CONFIG_FLAG_DontTakeOffHelmet = 36,
  CPED_CONFIG_FLAG_HideInCutscene = 37,
  CPED_CONFIG_FLAG_PedIsEnemyToPlayer = 38,
  CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
  CPED_CONFIG_FLAG_PedGeneratesDeadBodyEvents = 40,
  CPED_CONFIG_FLAG_DontAttackPlayerWithoutWantedLevel = 41,
  CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
  CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
  CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
  CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers = 45,
  _0xDB115BFA = 46,
  CPED_CONFIG_FLAG_PedBeingDeleted = 47,
  CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
  CPED_CONFIG_FLAG_BlockGroupPedAimedAtResponse = 49,
  CPED_CONFIG_FLAG_WillFollowLeaderAnyMeans = 50,
  CPED_CONFIG_FLAG_BlippedByScript = 51,
  CPED_CONFIG_FLAG_DrawRadarVisualField = 52,
  CPED_CONFIG_FLAG_StopWeaponFiringOnImpact = 53,
  CPED_CONFIG_FLAG_DissableAutoFallOffTests = 54,
  CPED_CONFIG_FLAG_SteerAroundDeadBodies = 55,
  CPED_CONFIG_FLAG_ConstrainToNavMesh = 56,
  CPED_CONFIG_FLAG_SyncingAnimatedProps = 57,
  CPED_CONFIG_FLAG_IsFiring = 58,
  CPED_CONFIG_FLAG_WasFiring = 59,
  CPED_CONFIG_FLAG_IsStanding = 60,
  CPED_CONFIG_FLAG_WasStanding = 61,
  CPED_CONFIG_FLAG_InVehicle = 62,
  CPED_CONFIG_FLAG_OnMount = 63,
  CPED_CONFIG_FLAG_AttachedToVehicle = 64,
  CPED_CONFIG_FLAG_IsSwimming = 65,
  CPED_CONFIG_FLAG_WasSwimming = 66,
  CPED_CONFIG_FLAG_IsSkiing = 67,
  CPED_CONFIG_FLAG_IsSitting = 68,
  CPED_CONFIG_FLAG_KilledByStealth = 69,
  CPED_CONFIG_FLAG_KilledByTakedown = 70,
  CPED_CONFIG_FLAG_Knockedout = 71,
  CPED_CONFIG_FLAG_ClearRadarBlipOnDeath = 72,
  CPED_CONFIG_FLAG_JustGotOffTrain = 73,
  CPED_CONFIG_FLAG_JustGotOnTrain = 74,
  CPED_CONFIG_FLAG_UsingCoverPoint = 75,
  CPED_CONFIG_FLAG_IsInTheAir = 76,
  CPED_CONFIG_FLAG_KnockedUpIntoAir = 77,
  CPED_CONFIG_FLAG_IsAimingGun = 78,
  CPED_CONFIG_FLAG_HasJustLeftCar = 79,
  CPED_CONFIG_FLAG_TargetWhenInjuredAllowed = 80,
  CPED_CONFIG_FLAG_CurrLeftFootCollNM = 81,
  CPED_CONFIG_FLAG_PrevLeftFootCollNM = 82,
  CPED_CONFIG_FLAG_CurrRightFootCollNM = 83,
  CPED_CONFIG_FLAG_PrevRightFootCollNM = 84,
  CPED_CONFIG_FLAG_HasBeenBumpedInCar = 85,
  CPED_CONFIG_FLAG_InWaterTaskQuitToClimbLadder = 86,
  CPED_CONFIG_FLAG_NMTwoHandedWeaponBothHandsConstrained = 87,
  CPED_CONFIG_FLAG_CreatedBloodPoolTimer = 88,
  CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact = 89,
  CPED_CONFIG_FLAG_GroupPedFailedToEnterCover = 90,
  CPED_CONFIG_FLAG_AlreadyChattedOnPhone = 91,
  CPED_CONFIG_FLAG_AlreadyReactedToPedOnRoof = 92,
  CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
  CPED_CONFIG_FLAG_BlockCoweringInCover = 94,
  CPED_CONFIG_FLAG_BlockPeekingInCover = 95,
  CPED_CONFIG_FLAG_JustLeftCarNotCheckedForDoors = 96,
  CPED_CONFIG_FLAG_VaultFromCover = 97,
  CPED_CONFIG_FLAG_AutoConversationLookAts = 98,
  CPED_CONFIG_FLAG_UsingCrouchedPedCapsule = 99,
  CPED_CONFIG_FLAG_HasDeadPedBeenReported = 100,
  CPED_CONFIG_FLAG_ForcedAim = 101,
  CPED_CONFIG_FLAG_SteersAroundPeds = 102,
  CPED_CONFIG_FLAG_SteersAroundObjects = 103,
  CPED_CONFIG_FLAG_OpenDoorArmIK = 104,
  CPED_CONFIG_FLAG_ForceReload = 105,
  CPED_CONFIG_FLAG_DontActivateRagdollFromVehicleImpact = 106,
  CPED_CONFIG_FLAG_DontActivateRagdollFromBulletImpact = 107,
  CPED_CONFIG_FLAG_DontActivateRagdollFromExplosions = 108,
  CPED_CONFIG_FLAG_DontActivateRagdollFromFire = 109,
  CPED_CONFIG_FLAG_DontActivateRagdollFromElectrocution = 110,
  CPED_CONFIG_FLAG_IsBeingDraggedToSafety = 111,
  CPED_CONFIG_FLAG_HasBeenDraggedToSafety = 112,
  CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired = 113,
  CPED_CONFIG_FLAG_ForceScriptControlledKnockout = 114,
  CPED_CONFIG_FLAG_FallOutOfVehicleWhenKilled = 115,
  CPED_CONFIG_FLAG_GetOutBurningVehicle = 116,
  CPED_CONFIG_FLAG_BumpedByPlayer = 117,
  CPED_CONFIG_FLAG_RunFromFiresAndExplosions = 118,
  CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting = 119,
  CPED_CONFIG_FLAG_IsHandCuffed = 120,
  CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
  CPED_CONFIG_FLAG_DisableMelee = 122,
  CPED_CONFIG_FLAG_DisableUnarmedDrivebys = 123,
  CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted = 124,
  CPED_CONFIG_FLAG_UNUSED_REPLACE_ME = 125,
  CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle = 126,
  CPED_CONFIG_FLAG_WillCommandeerRatherThanJack = 127,
  CPED_CONFIG_FLAG_CanBeAgitated = 128,
  CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover = 129,
  CPED_CONFIG_FLAG_ForcePedToFaceRightInCover = 130,
  CPED_CONFIG_FLAG_BlockPedFromTurningInCover = 131,
  CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp = 132,
  CPED_CONFIG_FLAG_ForcePedToBeDragged = 133,
  CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked = 134,
  CPED_CONFIG_FLAG_IsScuba = 135,
  CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
  CPED_CONFIG_FLAG_RemoveDeadExtraFarAway = 137,
  CPED_CONFIG_FLAG_RidingTrain = 138,
  CPED_CONFIG_FLAG_ArrestResult = 139,
  CPED_CONFIG_FLAG_CanAttackFriendly = 140,
  CPED_CONFIG_FLAG_WillJackAnyPlayer = 141,
  CPED_CONFIG_FLAG_BumpedByPlayerVehicle = 142,
  CPED_CONFIG_FLAG_DodgedPlayerVehicle = 143,
  CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar = 144,
  CPED_CONFIG_FLAG_NoCopWantedAggro = 145,
  CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
  CPED_CONFIG_FLAG_StairsDetected = 147,
  CPED_CONFIG_FLAG_SlopeDetected = 148,
  CPED_CONFIG_FLAG_HelmetHasBeenShot = 149,
  CPED_CONFIG_FLAG_CowerInsteadOfFlee = 150,
  CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown = 151,
  CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp = 152,
  CPED_CONFIG_FLAG_DisableBloodPoolCreation = 153,
  CPED_CONFIG_FLAG_ShouldFixIfNoCollision = 154,
  CPED_CONFIG_FLAG_CanPerformArrest = 155,
  CPED_CONFIG_FLAG_CanPerformUncuff = 156,
  CPED_CONFIG_FLAG_CanBeArrested = 157,
  CPED_CONFIG_FLAG_MoverConstrictedByOpposingCollisions = 158,
  CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP = 159,
  CPED_CONFIG_FLAG_DontActivateRagdollFromImpactObject = 160,
  CPED_CONFIG_FLAG_DontActivateRagdollFromMelee = 161,
  CPED_CONFIG_FLAG_DontActivateRagdollFromWaterJet = 162,
  CPED_CONFIG_FLAG_DontActivateRagdollFromDrowning = 163,
  CPED_CONFIG_FLAG_DontActivateRagdollFromFalling = 164,
  CPED_CONFIG_FLAG_DontActivateRagdollFromRubberBullet = 165,
  CPED_CONFIG_FLAG_IsInjured = 166,
  CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup = 167,
  CPED_CONFIG_FLAG_SwimmingTasksRunning = 168,
  CPED_CONFIG_FLAG_PreventAllMeleeTaunts = 169,
  CPED_CONFIG_FLAG_ForceDirectEntry = 170,
  CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles = 171,
  CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles = 172,
  CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit = 173,
  CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted = 174,
  CPED_CONFIG_FLAG_PlayerInContactWithKinematicPed = 175,
  CPED_CONFIG_FLAG_PlayerInContactWithSomethingOtherThanKinematicPed = 176,
  CPED_CONFIG_FLAG_PedsJackingMeDontGetIn = 177,
  CPED_CONFIG_FLAG_AdditionalRappellingPed = 178,
  CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents = 179,
  CPED_CONFIG_FLAG_IsInCustody = 180,
  CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds = 181,
  CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted = 182,
  CPED_CONFIG_FLAG_IsAgitated = 183,
  CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
  CPED_CONFIG_FLAG_UseKinematicModeWhenStationary = 185,
  CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
  CPED_CONFIG_FLAG_HasHurtStarted = 187,
  CPED_CONFIG_FLAG_DisableHurt = 188,
  CPED_CONFIG_FLAG_PlayerIsWeird = 189,
  CPED_CONFIG_FLAG_PedHadPhoneConversation = 190,
  CPED_CONFIG_FLAG_BeganCrossingRoad = 191,
  CPED_CONFIG_FLAG_WarpIntoLeadersVehicle = 192,
  CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault = 193,
  CPED_CONFIG_FLAG_UsingScenario = 194,
  CPED_CONFIG_FLAG_VisibleOnScreen = 195,
  CPED_CONFIG_FLAG_DontCollideWithKinematic = 196,
  CPED_CONFIG_FLAG_ActivateOnSwitchFromLowPhysicsLod = 197,
  CPED_CONFIG_FLAG_DontActivateRagdollOnPedCollisionWhenDead = 198,
  CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead = 199,
  CPED_CONFIG_FLAG_HasBeenInArmedCombat = 200,
  CPED_CONFIG_FLAG_UseDiminishingAmmoRate = 201,
  CPED_CONFIG_FLAG_Avoidance_Ignore_All = 202,
  CPED_CONFIG_FLAG_Avoidance_Ignored_by_All = 203,
  CPED_CONFIG_FLAG_Avoidance_Ignore_Group1 = 204,
  CPED_CONFIG_FLAG_Avoidance_Member_of_Group1 = 205,
  CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex = 206,
  CPED_CONFIG_FLAG_LowPhysicsLodMayPlaceOnNavMesh = 207,
  CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
  CPED_CONFIG_FLAG_DodgedPlayer = 209,
  CPED_CONFIG_FLAG_WaitingForPlayerControlInterrupt = 210,
  CPED_CONFIG_FLAG_ForcedToStayInCover = 211,
  CPED_CONFIG_FLAG_GeneratesSoundEvents = 212,
  CPED_CONFIG_FLAG_ListensToSoundEvents = 213,
  CPED_CONFIG_FLAG_AllowToBeTargetedInAVehicle = 214,
  CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting = 215,
  CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle = 216,
  CPED_CONFIG_FLAG_ForceExitToSkyDive = 217,
  CPED_CONFIG_FLAG_SteersAroundVehicles = 218,
  CPED_CONFIG_FLAG_AllowPedInVehiclesOverrideTaskFlags = 219,
  CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
  CPED_CONFIG_FLAG_DisableExitToSkyDive = 221,
  CPED_CONFIG_FLAG_ScriptHasDisabledCollision = 222,
  CPED_CONFIG_FLAG_UseAmbientModelScaling = 223,
  CPED_CONFIG_FLAG_DontWatchFirstOnNextHurryAway = 224,
  CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
  CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
  CPED_CONFIG_FLAG_ForceRagdollUponDeath = 227,
  CPED_CONFIG_FLAG_CanLosePropsOnDamage = 228,
  CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
  CPED_CONFIG_FLAG_AllowedToDetachTrailer = 230,
  CPED_CONFIG_FLAG_HasShotBeenReactedToFromFront = 231,
  CPED_CONFIG_FLAG_HasShotBeenReactedToFromBack = 232,
  CPED_CONFIG_FLAG_HasShotBeenReactedToFromLeft = 233,
  CPED_CONFIG_FLAG_HasShotBeenReactedToFromRight = 234,
  CPED_CONFIG_FLAG_AllowBlockDeadPedRagdollActivation = 235,
  CPED_CONFIG_FLAG_IsHoldingProp = 236,
  CPED_CONFIG_FLAG_BlocksPathingWhenDead = 237,
  CPED_CONFIG_FLAG_ForcePlayNormalScenarioExitOnNextScriptCommand = 238,
  CPED_CONFIG_FLAG_ForcePlayImmediateScenarioExitOnNextScriptCommand = 239,
  CPED_CONFIG_FLAG_ForceSkinCharacterCloth = 240,
  CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles = 241,
  CPED_CONFIG_FLAG_PhoneDisableTextingAnimations = 242,
  CPED_CONFIG_FLAG_PhoneDisableTalkingAnimations = 243,
  CPED_CONFIG_FLAG_PhoneDisableCameraAnimations = 244,
  CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions = 245,
  CPED_CONFIG_FLAG_AllowNearbyCoverUsage = 246,
  CPED_CONFIG_FLAG_InStrafeTransition = 247,
  CPED_CONFIG_FLAG_CanPlayInCarIdles = 248,
  CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw = 249,
  CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes = 250,
  CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger = 251,
  CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers = 252,
  CPED_CONFIG_FLAG_OnStairs = 253,
  CPED_CONFIG_FLAG_SimulatingAiming = 254,
  CPED_CONFIG_FLAG_AIDriverAllowFriendlyPassengerSeatEntry = 255,
  CPED_CONFIG_FLAG_ParentCarIsBeingRemoved = 256,
  CPED_CONFIG_FLAG_AllowMissionPedToUseInjuredMovement = 257,
  CPED_CONFIG_FLAG_CanLoseHelmetOnDamage = 258,
  CPED_CONFIG_FLAG_NeverDoScenarioExitProbeChecks = 259,
  CPED_CONFIG_FLAG_SuppressLowLODRagdollSwitchWhenCorpseSettles = 260,
  CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats = 261,
  CPED_CONFIG_FLAG_JustLeftVehicleNeedsReset = 262,
  CPED_CONFIG_FLAG_TeleportIfCantReachPlayer = 263,
  CPED_CONFIG_FLAG_PedsInVehiclePositionNeedsReset = 264,
  CPED_CONFIG_FLAG_PedsFullyInSeat = 265,
  CPED_CONFIG_FLAG_AllowPlayerLockOnIfFriendly = 266,
  CPED_CONFIG_FLAG_UseCameraHeadingForDesiredDirectionLockOnTest = 267,
  CPED_CONFIG_FLAG_TeleportToLeaderVehicle = 268,
  CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer = 269,
  CPED_CONFIG_FLAG_OnStairSlope = 270,
  CPED_CONFIG_FLAG_HasPlayedNMGetup = 271,
  CPED_CONFIG_FLAG_DontBlipCop = 272,
  CPED_CONFIG_FLAG_SpawnedAtExtendedRangeScenario = 273,
  CPED_CONFIG_FLAG_WalkAlongsideLeaderWhenClose = 274,
  CPED_CONFIG_FLAG_KillWhenTrapped = 275,
  CPED_CONFIG_FLAG_EdgeDetected = 276,
  CPED_CONFIG_FLAG_AlwaysWakeUpPhysicsOfIntersectedPeds = 277,
  CPED_CONFIG_FLAG_EquippedAmbientLoadOutWeapon = 278,
  CPED_CONFIG_FLAG_AvoidTearGas = 279,
  CPED_CONFIG_FLAG_StoppedSpeechUponFreezing = 280,
  CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured = 281,
  CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup = 282,
  CPED_CONFIG_FLAG_ThrownFromVehicleDueToExhaustion = 283,
  CPED_CONFIG_FLAG_UpdateEnclosedSearchRegion = 284,
  CPED_CONFIG_FLAG_DisableWeirdPedEvents = 285,
  CPED_CONFIG_FLAG_ShouldChargeNow = 286,
  CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
  CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
  CPED_CONFIG_FLAG_AllowMinorReactionsAsMissionPed = 289,
  CPED_CONFIG_FLAG_BlockDeadBodyShockingEventsWhenDead = 290,
  CPED_CONFIG_FLAG_PedHasBeenSeen = 291,
  CPED_CONFIG_FLAG_PedIsInReusePool = 292,
  CPED_CONFIG_FLAG_PedWasReused = 293,
  CPED_CONFIG_FLAG_DisableShockingEvents = 294,
  CPED_CONFIG_FLAG_MovedUsingLowLodPhysicsSinceLastActive = 295,
  CPED_CONFIG_FLAG_NeverReactToPedOnRoof = 296,
  CPED_CONFIG_FLAG_ForcePlayFleeScenarioExitOnNextScriptCommand = 297,
  CPED_CONFIG_FLAG_JustBumpedIntoVehicle = 298,
  CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents = 299,
  CPED_CONFIG_FLAG_ShouldThrowSmokeNow = 300,
  CPED_CONFIG_FLAG_DisablePedConstraints = 301,
  CPED_CONFIG_FLAG_ForceInitialPeekInCover = 302,
  CPED_CONFIG_FLAG_CreatedByDispatch = 303,
  CPED_CONFIG_FLAG_PointGunLeftHandSupporting = 304,
  CPED_CONFIG_FLAG_DisableJumpingFromVehiclesAfterLeader = 305,
  CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerPedImpact = 306,
  CPED_CONFIG_FLAG_DontActivateRagdollFromAiRagdollImpact = 307,
  CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerRagdollImpact = 308,
  CPED_CONFIG_FLAG_DisableQuadrupedSpring = 309,
  CPED_CONFIG_FLAG_IsInCluster = 310,
  CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee = 311,
  CPED_CONFIG_FLAG_IgnoredByAutoOpenDoors = 312,
  CPED_CONFIG_FLAG_PreferInjuredGetup = 313,
  CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant = 314,
  CPED_CONFIG_FLAG_CheckLoSForSoundEvents = 315,
  CPED_CONFIG_FLAG_JackedAbandonedCar = 316,
  CPED_CONFIG_FLAG_CanSayFollowedByPlayerAudio = 317,
  CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact = 318,
  CPED_CONFIG_FLAG_HasPortablePickupAttached = 319,
  CPED_CONFIG_FLAG_ForcePoseCharacterCloth = 320,
  CPED_CONFIG_FLAG_HasClothCollisionBounds = 321,
  CPED_CONFIG_FLAG_HasHighHeels = 322,
  CPED_CONFIG_FLAG_TreatAsAmbientPedForDriverLockOn = 323,
  CPED_CONFIG_FLAG_DontBehaveLikeLaw = 324,
  CPED_CONFIG_FLAG_SpawnedAtScenario = 325,
  CPED_CONFIG_FLAG_DisablePoliceInvestigatingBody = 326,
  CPED_CONFIG_FLAG_DisableWritheShootFromGround = 327,
  CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats = 328,
  CPED_CONFIG_FLAG_DisableTalkTo = 329,
  CPED_CONFIG_FLAG_DontBlip = 330,
  CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
  CPED_CONFIG_FLAG_IgnoreLegIkRestrictions = 332,
  CPED_CONFIG_FLAG_ScriptForceNoTimesliceIntelligenceUpdate = 333,
  CPED_CONFIG_FLAG_JackedOutOfMyVehicle = 334,
  CPED_CONFIG_FLAG_WentIntoCombatAfterBeingJacked = 335,
  CPED_CONFIG_FLAG_DontActivateRagdollForVehicleGrab = 336,
  CPED_CONFIG_FLAG_ForcePackageCharacterCloth = 337,
  CPED_CONFIG_FLAG_DontRemoveWithValidOrder = 338,
  CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing = 339,
  CPED_CONFIG_FLAG_ForcedToStayInCoverDueToPlayerSwitch = 340,
  CPED_CONFIG_FLAG_ForceProneCharacterCloth = 341,
  CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers = 342,
  CPED_CONFIG_FLAG_InToStrafeTransition = 343,
  CPED_CONFIG_FLAG_KilledByStandardMelee = 344,
  CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival = 345,
  CPED_CONFIG_FLAG_ForcePlayDirectedNormalScenarioExitOnNextScriptCommand = 346,
  CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage = 347,
  CPED_CONFIG_FLAG_UseSloMoBloodVfx = 348,
  CPED_CONFIG_FLAG_EquipJetpack = 349,
  CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse = 350,
  CPED_CONFIG_FLAG_ScriptHasCompletelyDisabledCollision = 351,
  CPED_CONFIG_FLAG_NeverDoScenarioNavChecks = 352,
  CPED_CONFIG_FLAG_ForceSynchronousScenarioExitChecking = 353,
  CPED_CONFIG_FLAG_ThrowingGrenadeWhileAiming = 354,
  CPED_CONFIG_FLAG_HeadbobToRadioEnabled = 355,
  CPED_CONFIG_FLAG_ForceDeepSurfaceCheck = 356,
  CPED_CONFIG_FLAG_DisableDeepSurfaceAnims = 357,
  CPED_CONFIG_FLAG_DontBlipNotSynced = 358,
  CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
  CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat = 360,
  CPED_CONFIG_FLAG_DisableEventInteriorStatusCheck = 361,
  CPED_CONFIG_FLAG_HasReserveParachute = 362,
  CPED_CONFIG_FLAG_UseReserveParachute = 363,
  CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat = 364,
  CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen = 365,
  CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat = 366,
  CPED_CONFIG_FLAG_DontActivateRagdollFromSmokeGrenade = 367,
  CPED_CONFIG_FLAG_LinkMBRToOwnerOnChain = 368,
  CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayer = 369,
  CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayerVehicle = 370,
  CPED_CONFIG_FLAG_InFPSUnholsterTransition = 371,
  CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets = 372,
  CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents = 373,
  CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
  CPED_CONFIG_FLAG_DontDropJetpackOnDeath = 375,
  CPED_CONFIG_FLAG_UseFPSUnholsterTransitionDuringCombatRoll = 376,
  CPED_CONFIG_FLAG_ExitingFPSCombatRoll = 377,
  CPED_CONFIG_FLAG_ScriptHasControlOfPlayer = 378,
  CPED_CONFIG_FLAG_PlayFPSIdleFidgetsForProjectile = 379,
  CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes = 380,
  CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft = 381,
  CPED_CONFIG_FLAG_WasPlayingFPSGetup = 382,
  CPED_CONFIG_FLAG_WasPlayingFPSMeleeActionResult = 383,
  CPED_CONFIG_FLAG_PreferNoPriorityRemoval = 384,
  CPED_CONFIG_FLAG_FPSFidgetsAbortedOnFire = 385,
  CPED_CONFIG_FLAG_ForceFPSIKWithUpperBodyAnim = 386,
  CPED_CONFIG_FLAG_SwitchingCharactersInFirstPerson = 387,
  CPED_CONFIG_FLAG_IsClimbingLadder = 388,
  CPED_CONFIG_FLAG_HasBareFeet = 389,
  CPED_CONFIG_FLAG_UNUSED_REPLACE_ME_2 = 390,
  CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad = 391,
  CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath = 392,
  CPED_CONFIG_FLAG_ResetLastVehicleOnVehicleExit = 393,
  CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions = 394,
  CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage = 395,
  CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates = 396,
  CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup = 397,
  CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar = 398,
  CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting = 399,
  CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith = 400,
  CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat = 401,
  CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle = 402,
  CPED_CONFIG_FLAG_ChangeFromPermanentToAmbientPopTypeOnMigration = 403,
  CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn = 404,
  CPED_CONFIG_FLAG_UsingLowriderLeans = 405,
  CPED_CONFIG_FLAG_UsingAlternateLowriderLeans = 406,
  CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle = 407,
  CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside = 408,
  CPED_CONFIG_FLAG_DisableTakeOffScubaGear = 409,
  CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult = 410,
  CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer = 411,
  CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted = 412,
  CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
  CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation = 414,
  CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel = 415,
  CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups = 416,
  CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI = 417,
  CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
  CPED_CONFIG_FLAG_ForceHelmetVisorSwitch = 419,
  CPED_CONFIG_FLAG_IsPerformingVehicleMelee = 420,
  CPED_CONFIG_FLAG_UseOverrideFootstepPtFx = 421,
  CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
  CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamage = 423,
  CPED_CONFIG_FLAG_AllowBikeAlternateAnimations = 424,
  CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamageNonSynced = 425,
  CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations = 426,
  CPED_CONFIG_FLAG_IgnoreInteriorCheckForSprinting = 427,
  CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation = 428,
  CPED_CONFIG_FLAG_DisableStartEngine = 429,
  CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
  CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference = 431,
  CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning = 432,
  CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents = 433,
  CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
  CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants = 435,
  CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle = 436,
  CPED_CONFIG_FLAG_DontShoutTargetPosition = 437,
  CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
  CPED_CONFIG_FLAG_CreatedByConcealedPlayer = 439,
  CPED_CONFIG_FLAG_PermanentlyDisablePotentialToBeWalkedIntoResponse = 440,
  CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon = 441,
  CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage = 442,
  CPED_CONFIG_FLAG_DontLeaveCombatIfTargetPlayerIsAttackedByPolice = 443,
  CPED_CONFIG_FLAG_CheckLockedBeforeWarp = 444,
  CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom = 445,
  CPED_CONFIG_FLAG_GiveWeaponOnGetup = 446,
  CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles = 447,
  CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor = 448,
  CPED_CONFIG_FLAG_FiresDummyRockets = 449,
  CPED_CONFIG_FLAG_PedIsArresting = 450,
  CPED_CONFIG_FLAG_IsDecoyPed = 451,
  CPED_CONFIG_FLAG_HasEstablishedDecoy = 452,
  CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding = 453,
  CPED_CONFIG_FLAG_DontCryForHelpOnStun = 454,
  CPED_CONFIG_FLAG_HitByTranqWeapon = 455,
  CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
  CPED_CONFIG_FLAG_ForcedAimFromArrest = 457,
  CPED_CONFIG_FLAG_DontChangeTargetFromMelee = 458,
  _0x4376ABF2 = 459,
  CPED_CONFIG_FLAG_RagdollFloatsIndefinitely = 460,
  CPED_CONFIG_FLAG_BlockElectricWeaponDamage = 461,
  _0x262A3B8E = 462,
  _0x1AA79A25 = 463,
}

---`ePedDecorationZone` (natives.json: GET_PED_DECORATION_ZONE_FROM_HASHES)
---@enum fx.Enum.PedDecorationZone
EnumLib.PedDecorationZone = {
  ZONE_TORSO = 0,
  ZONE_HEAD = 1,
  ZONE_LEFT_ARM = 2,
  ZONE_RIGHT_ARM = 3,
  ZONE_LEFT_LEG = 4,
  ZONE_RIGHT_LEG = 5,
  ZONE_UNKNOWN = 6,
  ZONE_NONE = 7,
}

---`PedFaceFeatures` (fx: keys of ped.face and getAppearance().face (feature index in the comment))
---@enum fx.Enum.PedFaceFeatures
EnumLib.PedFaceFeatures = {
  ---feature 0
  NoseWidth = "noseWidth",
  ---feature 1
  NosePeakHeight = "nosePeakHeight",
  ---feature 2
  NosePeakLength = "nosePeakLength",
  ---feature 3
  NoseBoneHeight = "noseBoneHeight",
  ---feature 4
  NosePeakLowering = "nosePeakLowering",
  ---feature 5
  NoseBoneTwist = "noseBoneTwist",
  ---feature 6
  EyebrowHeight = "eyebrowHeight",
  ---feature 7
  EyebrowDepth = "eyebrowDepth",
  ---feature 8
  CheekBoneHeight = "cheekBoneHeight",
  ---feature 9
  CheekBoneWidth = "cheekBoneWidth",
  ---feature 10
  CheekWidth = "cheekWidth",
  ---feature 11
  EyeOpening = "eyeOpening",
  ---feature 12
  LipThickness = "lipThickness",
  ---feature 13
  JawBoneWidth = "jawBoneWidth",
  ---feature 14
  JawBoneLength = "jawBoneLength",
  ---feature 15
  ChinBoneHeight = "chinBoneHeight",
  ---feature 16
  ChinBoneLength = "chinBoneLength",
  ---feature 17
  ChinBoneWidth = "chinBoneWidth",
  ---feature 18
  ChinDimple = "chinDimple",
  ---feature 19
  NeckThickness = "neckThickness",
}

---`ePedMotionState` (natives.json: FORCE_PED_MOTION_STATE)
---@enum fx.Enum.PedMotionState
EnumLib.PedMotionState = {
  ---MotionState_None
  MOTIONSTATE_NONE = -294553821,
  ---MotionState_Idle
  MOTIONSTATE_IDLE = -1871534317,
  ---MotionState_Walk
  MOTIONSTATE_WALK = -668482597,
  ---MotionState_Run
  MOTIONSTATE_RUN = -530524,
  ---MotionState_Sprint
  MOTIONSTATE_SPRINT = -1115154469,
  ---MotionState_Crouch_Idle
  MOTIONSTATE_CROUCH_IDLE = 1140525470,
  ---MotionState_Crouch_Walk
  MOTIONSTATE_CROUCH_WALK = 147004056,
  ---MotionState_Crouch_Run
  MOTIONSTATE_CROUCH_RUN = 898879241,
  ---MotionState_DoNothing
  MOTIONSTATE_DONOTHING = 247561816,
  ---MotionState_AnimatedVelocity
  MOTIONSTATE_ANIMATEDVELOCITY = 1427811395,
  ---MotionState_InVehicle
  MOTIONSTATE_INVEHICLE = -1797663347,
  ---MotionState_Aiming
  MOTIONSTATE_AIMING = 1063765679,
  ---MotionState_Diving_Idle
  MOTIONSTATE_DIVING_IDLE = 1212730861,
  ---MotionState_Diving_Swim
  MOTIONSTATE_DIVING_SWIM = -1855028596,
  ---MotionState_Swimming_TreadWater
  MOTIONSTATE_SWIMMING_TREADWATER = -776007225,
  ---MotionState_Dead
  MOTIONSTATE_DEAD = 230360860,
  ---MotionState_Stealth_Idle
  MOTIONSTATE_STEALTH_IDLE = 1110276645,
  ---MotionState_Stealth_Walk
  MOTIONSTATE_STEALTH_WALK = 69908130,
  ---MotionState_Stealth_Run
  MOTIONSTATE_STEALTH_RUN = -83133983,
  ---MotionState_Parachuting
  MOTIONSTATE_PARACHUTING = -1161760501,
  ---MotionState_ActionMode_Idle
  MOTIONSTATE_ACTIONMODE_IDLE = -633298724,
  ---MotionState_ActionMode_Walk
  MOTIONSTATE_ACTIONMODE_WALK = -762290521,
  ---MotionState_ActionMode_Run
  MOTIONSTATE_ACTIONMODE_RUN = 834330132,
  ---MotionState_Jetpack
  MOTIONSTATE_JETPACK = 1398696542,
}

---`PedOverlays` (fx: keys of ped.overlays and getAppearance().overlays (overlay id in the comment))
---@enum fx.Enum.PedOverlays
EnumLib.PedOverlays = {
  ---overlay 0
  Blemishes = "blemishes",
  ---overlay 1
  Beard = "beard",
  ---overlay 2
  Eyebrows = "eyebrows",
  ---overlay 3
  Ageing = "ageing",
  ---overlay 4
  Makeup = "makeup",
  ---overlay 5
  Blush = "blush",
  ---overlay 6
  Complexion = "complexion",
  ---overlay 7
  SunDamage = "sunDamage",
  ---overlay 8
  Lipstick = "lipstick",
  ---overlay 9
  Freckles = "freckles",
  ---overlay 10
  ChestHair = "chestHair",
  ---overlay 11
  BodyBlemishes = "bodyBlemishes",
  ---overlay 12
  MoreBodyBlemishes = "moreBodyBlemishes",
}

---`PedProps` (fx: keys of ped.props and getOutfit().props (anchor point in the comment))
---@enum fx.Enum.PedProps
EnumLib.PedProps = {
  ---anchor point 0
  Hat = "hat",
  ---anchor point 1
  Glasses = "glasses",
  ---anchor point 2
  Ears = "ears",
  ---anchor point 6
  Watch = "watch",
  ---anchor point 7
  Bracelet = "bracelet",
}

---`ePedType` (natives.json: GET_PED_TYPE)
---@enum fx.Enum.PedType
EnumLib.PedType = {
  PED_TYPE_PLAYER_0 = 0,
  PED_TYPE_PLAYER_1 = 1,
  PED_TYPE_NETWORK_PLAYER = 2,
  PED_TYPE_PLAYER_2 = 3,
  PED_TYPE_CIVMALE = 4,
  PED_TYPE_CIVFEMALE = 5,
  PED_TYPE_COP = 6,
  PED_TYPE_GANG_ALBANIAN = 7,
  PED_TYPE_GANG_BIKER_1 = 8,
  PED_TYPE_GANG_BIKER_2 = 9,
  PED_TYPE_GANG_ITALIAN = 10,
  PED_TYPE_GANG_RUSSIAN = 11,
  PED_TYPE_GANG_RUSSIAN_2 = 12,
  PED_TYPE_GANG_IRISH = 13,
  PED_TYPE_GANG_JAMAICAN = 14,
  PED_TYPE_GANG_AFRICAN_AMERICAN = 15,
  PED_TYPE_GANG_KOREAN = 16,
  PED_TYPE_GANG_CHINESE_JAPANESE = 17,
  PED_TYPE_GANG_PUERTO_RICAN = 18,
  PED_TYPE_DEALER = 19,
  PED_TYPE_MEDIC = 20,
  PED_TYPE_FIREMAN = 21,
  PED_TYPE_CRIMINAL = 22,
  PED_TYPE_BUM = 23,
  PED_TYPE_PROSTITUTE = 24,
  PED_TYPE_SPECIAL = 25,
  PED_TYPE_MISSION = 26,
  PED_TYPE_SWAT = 27,
  PED_TYPE_ANIMAL = 28,
  PED_TYPE_ARMY = 29,
}

---`ePedVarComp` (natives.json: SET_PED_COMPONENT_VARIATION, SET_PED_COMPONENT_VARIATION)
---@enum fx.Enum.PedVarComp
EnumLib.PedVarComp = {
  PV_COMP_INVALID = -1,
  ---"HEAD"
  PV_COMP_HEAD = 0,
  ---"BEARD"
  PV_COMP_BERD = 1,
  ---"HAIR"
  PV_COMP_HAIR = 2,
  ---"UPPER"
  PV_COMP_UPPR = 3,
  ---"LOWER"
  PV_COMP_LOWR = 4,
  ---"HAND"
  PV_COMP_HAND = 5,
  ---"FEET"
  PV_COMP_FEET = 6,
  ---"TEETH"
  PV_COMP_TEEF = 7,
  ---"ACCESSORIES"
  PV_COMP_ACCS = 8,
  ---"TASK"
  PV_COMP_TASK = 9,
  ---"DECL"
  PV_COMP_DECL = 10,
  ---"JBIB"
  PV_COMP_JBIB = 11,
  PV_COMP_MAX = 12,
}

---`PeerStatistics` (natives.json: GET_PLAYER_PEER_STATISTICS)
---@enum fx.Enum.PeerStatistics
EnumLib.PeerStatistics = {
  ---PacketLoss will only update once every 10 seconds, use PacketLossEpoch if you want the time since the last time the packet loss was updated. the amount of packet loss the player has, needs to be scaled with PACKET_LOSS_SCALE
  PacketLoss = 0,
  ---The variance in the packet loss
  PacketLossVariance = 1,
  ---The time since the last packet update in ms, relative to the peers connection time
  PacketLossEpoch = 2,
  ---The mean amount of time it takes for a packet to get to the client (ping)
  RoundTripTime = 3,
  ---The variance in the round trip time
  RoundTripTimeVariance = 4,
  ---Despite their name, these are only updated once every 5 seconds, you can get the last time this was updated with PacketThrottleEpoch The last recorded round trip time of a packet
  LastRoundTripTime = 5,
  ---The last round trip time variance
  LastRoundTripTimeVariance = 6,
  ---The time since the last packet throttle update, relative to the peers connection time
  PacketThrottleEpoch = 7,
}

---`ePhysicsRopeType` (natives.json: ADD_ROPE)
---@enum fx.Enum.PhysicsRopeType
EnumLib.PhysicsRopeType = {
  ---Verticies: 1, Radius: 0.03, Textures: rope & rope_n
  RopeThin = 0,
  ---Verticies: 4, Radius: 0.015, Textures: steel_cable & steel_cable_n
  RopeWire6 = 1,
  ---Verticies: 32, Radius: 0.025, Textures: steel_cable & steel_cable_n
  RopeWire32 = 2,
  ---Verticies: 6, Radius: 0.03, Textures: rope & rope_n
  RopeMesh = 3,
  ---Verticies: 32, Radius: 0.01, Textures: rope & rope_n
  RopeThinWire32 = 4,
  ---Verticies: 32, Radius: 0.005, Textures: rope & rope_n
  RopeReins = 5,
  ---Verticies: 4, Radius: 0.03, Textures: rope & rope_n
  RopeThin4 = 6,
  ---Verticies: 64, Radius: 0.025, Textures: steel_cable & steel_cable_n
  RopeWire64 = 7,
}

---`ePlaneDamageSection` (natives.json: SET_PLANE_SECTION_DAMAGE_SCALE)
---@enum fx.Enum.PlaneDamageSection
EnumLib.PlaneDamageSection = {
  WING_L = 0,
  WING_R = 1,
  TAIL = 2,
  ENGINE_L = 3,
  ENGINE_R = 4,
  ELEVATOR_L = 5,
  ELEVATOR_R = 6,
  AILERON_L = 7,
  AILERON_R = 8,
  RUDDER = 9,
  RUDDER_2 = 10,
  AIRBRAKE_L = 11,
  AIRBRAKE_R = 12,
}

---`ePlayerSpawnLocation` (natives.json: NETWORK_RESURRECT_LOCAL_PLAYER)
---@enum fx.Enum.PlayerSpawnLocation
EnumLib.PlayerSpawnLocation = {
  ---system will decide
  SPAWN_LOCATION_AUTOMATIC = 0,
  SPAWN_LOCATION_NEAR_DEATH = 1,
  SPAWN_LOCATION_NEAR_TEAM_MATES = 2,
  ---script defined area
  SPAWN_LOCATION_MISSION_AREA = 3,
  SPAWN_LOCATION_NEAR_OTHER_PLAYERS = 4,
  SPAWN_LOCATION_NEAR_CURRENT_POSITION = 5,
  SPAWN_LOCATION_AT_CURRENT_POSITION = 6,
  SPAWN_LOCATION_NET_TEST_BED = 7,
  SPAWN_LOCATION_CUSTOM_SPAWN_POINTS = 8,
  SPAWN_LOCATION_OUTSIDE_SIMEON_GARAGE = 9,
  SPAWN_LOCATION_NEAR_SPECIFIC_COORDS = 10,
  SPAWN_LOCATION_AT_SPECIFIC_COORDS = 11,
  SPAWN_LOCATION_AT_AIRPORT_ARRIVALS = 12,
  SPAWN_LOCATION_AT_SPECIFIC_COORDS_IF_POSSIBLE = 13,
  SPAWN_LOCATION_IN_SPECIFIC_ANGLED_AREA = 14,
  SPAWN_LOCATION_NEAREST_RESPAWN_POINT = 15,
  SPAWN_LOCATION_AT_SPECIFIC_COORDS_RACE_CORONA = 16,
  SPAWN_LOCATION_INSIDE_GARAGE = 17,
  SPAWN_LOCATION_INSIDE_PROPERTY = 18,
  SPAWN_LOCATION_INSIDE_PROPERTY_OR_GARAGE = 19,
  SPAWN_LOCATION_NEAR_DEATH_IMPROMPTU = 20,
  SPAWN_LOCATION_NEAR_CURRENT_POSITION_SPREAD_OUT = 21,
  SPAWN_LOCATION_NEAREST_RESPAWN_POINT_TO_SPECIFIC_COORDS = 22,
  SPAWN_LOCATION_NEAREST_HOSPITAL = 23,
  SPAWN_LOCATION_NEAREST_POLICE_STATION = 24,
  SPAWN_LOCATION_NEAREST_HOTEL_TO_SPECIFIC_COORDS = 25,
  SPAWN_LOCATION_MISSION_AREA_NEAR_CURRENT_POSITION = 26,
  SPAWN_LOCATION_PRIVATE_YACHT = 27,
  SPAWN_LOCATION_PRIVATE_YACHT_APARTMENT = 28,
  SPAWN_LOCATION_PRIVATE_FRIEND_YACHT = 29,
  SPAWN_LOCATION_PRIVATE_YACHT_NEAR_SHORE = 30,
  SPAWN_LOCATION_NEAR_GANG_BOSS = 31,
  SPAWN_LOCATION_NEAR_SPECIFIC_COORDS_WITH_GANG = 32,
  SPAWN_LOCATION_GANG_DM = 33,
  SPAWN_LOCATION_GANG_BOSS_PRIVATE_YACHT = 34,
  SPAWN_LOCATION_OFFICE = 35,
  SPAWN_LOCATION_CLUBHOUSE = 36,
  SPAWN_LOCATION_NEAR_CURRENT_POSITION_AS_POSSIBLE = 37,
  SPAWN_LOCATION_NEAR_CURRENT_PERCEIVED_POSITION = 38,
  SPAWN_LOCATION_IE_WAREHOUSE = 39,
  SPAWN_LOCATION_BUNKER = 40,
  SPAWN_LOCATION_HANGAR = 41,
  SPAWN_LOCATION_DEFUNCT_BASE = 42,
  SPAWN_LOCATION_NIGHTCLUB = 43,
  SPAWN_LOCATION_ARENA_GARAGE = 44,
  SPAWN_LOCATION_CASINO = 45,
  SPAWN_LOCATION_CASINO_APARTMENT = 46,
  SPAWN_LOCATION_CASINO_OUTSIDE = 47,
  SPAWN_LOCATION_ARCADE = 48,
  SPAWN_LOCATION_CASINO_NIGHTCLUB = 49,
  SPAWN_LOCATION_SUBMARINE = 50,
  SPAWN_LOCATION_HEIST_ISLAND_NEAR_DEATH = 51,
  SPAWN_LOCATION_HEIST_ISLAND_BEACH_PARTY = 52,
  SPAWN_LOCATION_LAND_NEAR_SUBMARINE = 53,
  SPAWN_LOCATION_CAR_MEET = 54,
  SPAWN_LOCATION_AUTO_SHOP = 55,
  SPAWN_LOCATION_FIXER_HQ = 56,
  SPAWN_LOCATION_SITTING_SMOKING = 57,
  SPAWN_LOCATION_DRUNK_WAKE_UP_MUSIC_STUDIO = 58,
  SPAWN_LOCATION_MUSIC_STUDIO = 59,
  TOTAL_SPAWN_LOCATIONS = 60,
}

---`ePlayerSwitchType` (natives.json: START_PLAYER_SWITCH)
---@enum fx.Enum.PlayerSwitchType
EnumLib.PlayerSwitchType = {
  SWITCH_TYPE_AUTO = 0,
  SWITCH_TYPE_LONG = 1,
  SWITCH_TYPE_MEDIUM = 2,
  SWITCH_TYPE_SHORT = 3,
}

---`Reactions` (natives.json: OVERRIDE_REACTION_TO_VEHICLE_SIREN)
---@enum fx.Enum.Reactions
EnumLib.Reactions = {
  Left = 0,
  Right = 1,
  Stop = 2,
}

---`eRenderingOptionFlags` (natives.json: STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP)
---@enum fx.Enum.RenderingOptionFlags
EnumLib.RenderingOptionFlags = {
  RO_NO_OPTIONS = 0,
  RO_STOP_RENDERING_OPTION_WHEN_PLAYER_EXITS_INTO_COVER = 1,
}

---`eRoofState` (natives.json: GET_CONVERTIBLE_ROOF_STATE)
---@enum fx.Enum.RoofState
EnumLib.RoofState = {
  RAISED = 0,
  LOWERING = 1,
  LOWERED = 2,
  RAISING = 3,
  CLOSING_BOOT = 4,
  ROOF_STUCK_RAISED = 5,
  ROOF_STUCK_LOWERED = 6,
}

---`eRopeFlags` (natives.json: GET_ROPE_FLAGS)
---@enum fx.Enum.RopeFlags
EnumLib.RopeFlags = {
  DrawShadowEnabled = 2,
  Breakable = 4,
  RopeUnwindingFront = 8,
  RopeWinding = 32,
}

---`eRotationOrder` (natives.json: GET_ENTITY_ROTATION)
---@enum fx.Enum.RotationOrder
EnumLib.RotationOrder = {
  ---Rotate around the z-axis, then the y-axis and finally the x-axis.
  ROT_ZYX = 0,
  ---Rotate around the y-axis, then the z-axis and finally the x-axis.
  ROT_YZX = 1,
  ---Rotate around the z-axis, then the x-axis and finally the y-axis.
  ROT_ZXY = 2,
  ---Rotate around the x-axis, then the z-axis and finally the y-axis.
  ROT_XZY = 3,
  ---Rotate around the y-axis, then the x-axis and finally the z-axis.
  ROT_YXZ = 4,
  ---Rotate around the x-axis, then the y-axis and finally the z-axis.
  ROT_XYZ = 5,
}

---`eScriptedAnimFlags` (natives.json: TASK_PLAY_ANIM, TASK_PLAY_ANIM)
---@enum fx.Enum.ScriptedAnimFlags
EnumLib.ScriptedAnimFlags = {
  AF_LOOPING = 1,
  AF_HOLD_LAST_FRAME = 2,
  AF_REPOSITION_WHEN_FINISHED = 4,
  AF_NOT_INTERRUPTABLE = 8,
  AF_UPPERBODY = 16,
  AF_SECONDARY = 32,
  AF_REORIENT_WHEN_FINISHED = 64,
  AF_ABORT_ON_PED_MOVEMENT = 128,
  AF_ADDITIVE = 256,
  AF_TURN_OFF_COLLISION = 512,
  AF_OVERRIDE_PHYSICS = 1024,
  AF_IGNORE_GRAVITY = 2048,
  AF_EXTRACT_INITIAL_OFFSET = 4096,
  AF_EXIT_AFTER_INTERRUPTED = 8192,
  AF_TAG_SYNC_IN = 16384,
  AF_TAG_SYNC_OUT = 32768,
  AF_TAG_SYNC_CONTINUOUS = 65536,
  AF_FORCE_START = 131072,
  AF_USE_KINEMATIC_PHYSICS = 262144,
  AF_USE_MOVER_EXTRACTION = 524288,
  AF_HIDE_WEAPON = 1048576,
  AF_ENDS_IN_DEAD_POSE = 2097152,
  AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304,
  AF_DONT_EXIT_ON_DEATH = 8388608,
  AF_ABORT_ON_WEAPON_DAMAGE = 16777216,
  AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432,
  AF_PROCESS_ATTACHMENTS_ON_START = 67108864,
  AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728,
  AF_USE_ALTERNATIVE_FP_ANIM = 268435456,
  AF_BLENDOUT_WRT_LAST_FRAME = 536870912,
  AF_USE_FULL_BLENDING = 1073741824,
}

---`eSeatPosition` (natives.json: IS_VEHICLE_SEAT_FREE)
---@enum fx.Enum.SeatPosition
EnumLib.SeatPosition = {
  SF_FrontDriverSide = -1,
  SF_FrontPassengerSide = 0,
  SF_BackDriverSide = 1,
  SF_BackPassengerSide = 2,
  SF_AltFrontDriverSide = 3,
  SF_AltFrontPassengerSide = 4,
  SF_AltBackDriverSide = 5,
  SF_AltBackPassengerSide = 6,
}

---`eSpawnReason` (natives.json: NETWORK_RESURRECT_LOCAL_PLAYER)
---@enum fx.Enum.SpawnReason
EnumLib.SpawnReason = {
  SPAWN_REASON_DEATH = 0,
  SPAWN_REASON_TRANSITION = 1,
  SPAWN_REASON_MANUAL = 2,
  SPAWN_REASON_RESTORE_CHARACTER = 3,
  SPAWN_REASON_IN_VEHICLE = 4,
}

---`eSwitchFlags` (natives.json: START_PLAYER_SWITCH)
---@enum fx.Enum.SwitchFlags
EnumLib.SwitchFlags = {
  SKIP_INTRO = 1,
  SKIP_OUTRO = 2,
  PAUSE_BEFORE_PAN = 4,
  PAUSE_BEFORE_OUTRO = 8,
  SKIP_PAN = 16,
  UNKNOWN_DEST = 32,
  DESCENT_ONLY = 64,
  START_FROM_CAMPOS = 128,
  PAUSE_BEFORE_ASCENT = 256,
  PAUSE_BEFORE_DESCENT = 512,
  ALLOW_SNIPER_AIM_INTRO = 1024,
  ALLOW_SNIPER_AIM_OUTRO = 2048,
  SKIP_TOP_DESCENT = 4096,
  SUPPRESS_OUTRO_FX = 8192,
  SUPPRESS_INTRO_FX = 16384,
  DELAY_ASCENT_FX = 32768,
}

---`eTattooFaction` (natives.json: GET_TATTOO_SHOP_DLC_ITEM_DATA)
---@enum fx.Enum.TattooFaction
EnumLib.TattooFaction = {
  TATTOO_SP_MICHAEL = 0,
  TATTOO_SP_FRANKLIN = 1,
  TATTOO_SP_TREVOR = 2,
  TATTOO_MP_FM = 3,
  TATTOO_MP_FM_F = 4,
}

---`eTempAction` (natives.json: TASK_VEHICLE_TEMP_ACTION)
---@enum fx.Enum.TempAction
EnumLib.TempAction = {
  TA_NONE = 0,
  TA_WAIT = 1,
  TA_UNUSED = 2,
  TA_BRAKE_REVERSE = 3,
  TA_HANDBRAKE_TURN_LEFT = 4,
  TA_HANDBRAKE_TURN_RIGHT = 5,
  TA_HANDBRAKE_UNTIL_TIME_ENDS = 6,
  TA_TURN_LEFT = 7,
  TA_TURN_RIGHT = 8,
  TA_ACCELERATE = 9,
  TA_TURN_LEFT_10 = 10,
  TA_TURN_RIGHT_11 = 11,
  TA_UNUSED_12 = 12,
  TA_TURN_LEFT_GO_REVERSE = 13,
  TA_TURN_RIGHT_GO_REVERSE = 14,
  ---(crashes game if not in plane)
  TA_PLANE_FLY_UP = 15,
  ---(crashes game if not in plane)
  TA_PLANE_FLY_STRAIGHT = 16,
  ---(crashes game if not in plane)
  TA_PLANE_SHARP_LEFT = 17,
  ---(crashes game if not in plane)
  TA_PLANE_SHARP_RIGHT = 18,
  TA_STRONG_BRAKE = 19,
  TA_TURN_LEFT_AND_STOP = 20,
  TA_TURN_RIGHT_AND_STOP = 21,
  TA_GO_IN_REVERSE = 22,
  TA_ACCELERATE_FAST = 23,
  TA_BRAKE_ACTION = 24,
  TA_HANDBRAKE_TURN_LEFT_MORE = 25,
  TA_HANDBRAKE_TURN_RIGHT_MORE = 26,
  TA_HANDBRAKE_BRAKE_STRAIGHT = 27,
  TA_BRAKE_STRONG_REVERSE_ACCELERATION = 28,
  TA_UNUSED_29 = 29,
  TA_PERFORMS_BURNOUT = 30,
  TA_REV_ENGINE = 31,
  TA_ACCELERATE_VERY_STRONG = 32,
  TA_SURFACE_IN_SUBMARINE = 33,
}

---`eTextFonts` (natives.json: SET_TEXT_FONT)
---@enum fx.Enum.TextFonts
EnumLib.TextFonts = {
  FONT_STANDARD = 0,
  FONT_CURSIVE = 1,
  FONT_ROCKSTAR_TAG = 2,
  FONT_LEADERBOAR0D = 3,
  FONT_CONDENSED = 4,
  FONT_STYLE_FIXED_WIDTH_NUMBERS = 5,
  FONT_CONDENSED_NOT_GAMERNAME = 6,
  FONT_STYLE_PRICEDOWN = 7,
  FONT_STYLE_TAXI = 8,
}

---`eTraceFlags` (natives.json: START_SHAPE_TEST_LOS_PROBE)
---@enum fx.Enum.TraceFlags
EnumLib.TraceFlags = {
  None = 0,
  IntersectWorld = 1,
  IntersectVehicles = 2,
  IntersectPeds = 4,
  IntersectRagdolls = 8,
  IntersectObjects = 16,
  IntersectWater = 32,
  IntersectGlass = 64,
  IntersectRiver = 128,
  IntersectFoliage = 256,
  IntersectEverything = -1,
}

---`eTrackedStuntType` (natives.json: PLAYSTATS_START_TRACKING_STUNTS)
---@enum fx.Enum.TrackedStuntType
EnumLib.TrackedStuntType = {
  ST_FRONTFLIP = 0,
  ST_BACKFLIP = 1,
  ST_SPIN = 2,
  ST_WHEELIE = 3,
  ST_STOPPIE = 4,
  ST_BOWLING_PIN = 5,
  ST_FOOTBALL = 6,
  ST_ROLL = 7,
}

---`eTrafficlightOverrideMode` (natives.json: SET_ENTITY_TRAFFICLIGHT_OVERRIDE)
---@enum fx.Enum.TrafficlightOverrideMode
EnumLib.TrafficlightOverrideMode = {
  TLO_RED = 0,
  TLO_AMBER = 1,
  TLO_GREEN = 2,
  TLO_NONE = 3,
}

---`eVehicleDrivetrainType` (natives.json: GET_VEHICLE_DRIVETRAIN_TYPE)
---@enum fx.Enum.VehicleDrivetrainType
EnumLib.VehicleDrivetrainType = {
  INVALID = 0,
  FWD = 1,
  RWD = 2,
  AWD = 3,
}

---`eVehicleDrivingFlags` (natives.json: SET_DRIVE_TASK_DRIVING_STYLE)
---@enum fx.Enum.VehicleDrivingFlags
EnumLib.VehicleDrivingFlags = {
  None = 0,
  StopForVehicles = 1,
  StopForPeds = 2,
  SwerveAroundAllVehicles = 4,
  SteerAroundStationaryVehicles = 8,
  SteerAroundPeds = 16,
  SteerAroundObjects = 32,
  DontSteerAroundPlayerPed = 64,
  StopAtTrafficLights = 128,
  GoOffRoadWhenAvoiding = 256,
  AllowGoingWrongWay = 512,
  Reverse = 1024,
  UseWanderFallbackInsteadOfStraightLine = 2048,
  AvoidRestrictedAreas = 4096,
  PreventBackgroundPathfinding = 8192,
  AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
  UseShortCutLinks = 262144,
  ChangeLanesAroundObstructions = 524288,
  UseSwitchedOffNodes = 2097152,
  PreferNavmeshRoute = 4194304,
  PlaneTaxiMode = 8388608,
  ForceStraightLine = 16777216,
  UseStringPullingAtJunctions = 33554432,
  TryToAvoidHighways = 536870912,
  ForceJoinInRoadDirection = 1073741824,
  StopAtDestination = 2147483648,
  ---StopForVehicles | StopForPeds | SteerAroundObjects | SteerAroundStationaryVehicles | StopAtTrafficLights | UseShortCutLinks | ChangeLanesAroundObstructions
  DrivingModeStopForVehicles = 786603,
  ---StopForVehicles | StopForPeds | StopAtTrafficLights | UseShortCutLinks
  DrivingModeStopForVehiclesStrict = 262275,
  ---SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
  DrivingModeAvoidVehicles = 786469,
  ---SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
  DrivingModeAvoidVehiclesReckless = 786468,
  ---StopForVehicles | SteerAroundStationaryVehicles | StopForPeds | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
  DrivingModeStopForVehiclesIgnoreLights = 786475,
  ---SwerveAroundAllVehicles | StopAtTrafficLights | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
  DrivingModeAvoidVehiclesObeyLights = 786597,
  ---SwerveAroundAllVehicles | StopAtTrafficLights | StopForPeds | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
  DrivingModeAvoidVehiclesStopForPedsObeyLights = 786599,
}

---`eVehicleHeadlightShadowFlags` (natives.json: SET_VEHICLE_HEADLIGHT_SHADOWS)
---@enum fx.Enum.VehicleHeadlightShadowFlags
EnumLib.VehicleHeadlightShadowFlags = {
  ---Default (Lights can be toggled between off, normal and high beams)
  NO_HEADLIGHT_SHADOWS = 0,
  ---Lights Disabled (Lights are fully disabled, cannot be toggled)
  HEADLIGHTS_CAST_DYNAMIC_SHADOWS = 1,
  ---Always On (Lights can be toggled between normal and high beams)
  HEADLIGHTS_CAST_STATIC_SHADOWS = 2,
  HEADLIGHTS_CAST_FULL_SHADOWS = 3,
}

---`eVehicleLightSetting` (natives.json: SET_VEHICLE_LIGHTS)
---@enum fx.Enum.VehicleLightSetting
EnumLib.VehicleLightSetting = {
  ---Normal light behavior. Lights cycle through off, then low beams, then high beams. Note: It's affected by day or night; high beams don't exist in daytime.
  NO_VEHICLE_LIGHT_OVERRIDE = 0,
  ---Vehicle doesn't have lights, always off.
  FORCE_VEHICLE_LIGHTS_OFF = 1,
  ---Vehicle has always-on lights. During day: Cycles between low beams and high beams. At night: Cycles between low beams, low beams, and high beams.
  FORCE_VEHICLE_LIGHTS_ON = 2,
  ---Sets vehicle lights on. Behaves like normal lights (same as 0).
  SET_VEHICLE_LIGHTS_ON = 3,
  ---Sets vehicle lights off. Behaves like normal lights (same as 0).
  SET_VEHICLE_LIGHTS_OFF = 4,
}

---`eVehicleLockState` (natives.json: SET_VEHICLE_DOORS_LOCKED, SET_VEHICLE_DOORS_LOCKED)
---@enum fx.Enum.VehicleLockState
EnumLib.VehicleLockState = {
  ---No specific lock state, vehicle behaves according to the game's default settings.
  VEHICLELOCK_NONE = 0,
  ---Vehicle is fully unlocked, allowing free entry by players and NPCs.
  VEHICLELOCK_UNLOCKED = 1,
  ---Vehicle is locked, preventing entry by players and NPCs.
  VEHICLELOCK_LOCKED = 2,
  ---Vehicle locks out only players, allowing NPCs to enter.
  VEHICLELOCK_LOCKOUT_PLAYER_ONLY = 3,
  ---Vehicle is locked once a player enters, preventing others from entering.
  VEHICLELOCK_LOCKED_PLAYER_INSIDE = 4,
  ---Vehicle starts in a locked state, but may be unlocked through game events.
  VEHICLELOCK_LOCKED_INITIALLY = 5,
  ---Forces the vehicle's doors to shut and lock.
  VEHICLELOCK_FORCE_SHUT_DOORS = 6,
  ---Vehicle is locked but can still be damaged.
  VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7,
  ---Vehicle is locked, but its trunk/boot remains unlocked.
  VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED = 8,
  ---Vehicle is locked and does not allow passengers, except for the driver.
  VEHICLELOCK_LOCKED_NO_PASSENGERS = 9,
  ---Vehicle is completely locked, preventing entry entirely, even if previously inside.
  VEHICLELOCK_CANNOT_ENTER = 10,
}

---`eVehicleMissionType` (natives.json: TASK_VEHICLE_MISSION)
---@enum fx.Enum.VehicleMissionType
EnumLib.VehicleMissionType = {
  None = 0,
  Cruise = 1,
  Ram = 2,
  Block = 3,
  GoTo = 4,
  Stop = 5,
  Attack = 6,
  Follow = 7,
  Flee = 8,
  Circle = 9,
  Escort = 12,
  GoToRacing = 14,
  FollowRecording = 15,
  PoliceBehaviour = 16,
  Land = 19,
  LandAndWait = 20,
  Crash = 21,
  PullOver = 22,
  HeliProtect = 23,
}

---`VehicleMods` (fx: keys of vehicle.mods and getProperties().mods (mod slot in the comment))
---@enum fx.Enum.VehicleMods
EnumLib.VehicleMods = {
  ---slot 0
  Spoiler = "spoiler",
  ---slot 1
  FrontBumper = "frontBumper",
  ---slot 2
  RearBumper = "rearBumper",
  ---slot 3
  SideSkirt = "sideSkirt",
  ---slot 4
  Exhaust = "exhaust",
  ---slot 5
  Frame = "frame",
  ---slot 6
  Grille = "grille",
  ---slot 7
  Hood = "hood",
  ---slot 8
  LeftFender = "leftFender",
  ---slot 9
  RightFender = "rightFender",
  ---slot 10
  Roof = "roof",
  ---slot 11
  Engine = "engine",
  ---slot 12
  Brakes = "brakes",
  ---slot 13
  Transmission = "transmission",
  ---slot 14
  Horn = "horn",
  ---slot 15
  Suspension = "suspension",
  ---slot 16
  Armor = "armor",
  ---slot 18 (toggle: boolean)
  Turbo = "turbo",
  ---slot 20 (toggle: boolean)
  TyreSmoke = "tyreSmoke",
  ---slot 22 (toggle: boolean)
  Xenon = "xenon",
  ---slot 23
  FrontWheels = "frontWheels",
  ---slot 24
  RearWheels = "rearWheels",
  ---slot 25
  PlateHolder = "plateHolder",
  ---slot 26
  VanityPlate = "vanityPlate",
  ---slot 27
  TrimA = "trimA",
  ---slot 28
  Ornaments = "ornaments",
  ---slot 29
  Dashboard = "dashboard",
  ---slot 30
  Dial = "dial",
  ---slot 31
  DoorSpeaker = "doorSpeaker",
  ---slot 32
  Seats = "seats",
  ---slot 33
  SteeringWheel = "steeringWheel",
  ---slot 34
  Shifter = "shifter",
  ---slot 35
  Plaque = "plaque",
  ---slot 36
  Speakers = "speakers",
  ---slot 37
  Trunk = "trunk",
  ---slot 38
  Hydraulics = "hydraulics",
  ---slot 39
  EngineBlock = "engineBlock",
  ---slot 40
  AirFilter = "airFilter",
  ---slot 41
  Struts = "struts",
  ---slot 42
  ArchCover = "archCover",
  ---slot 43
  Aerials = "aerials",
  ---slot 44
  TrimB = "trimB",
  ---slot 45
  Tank = "tank",
  ---slot 46
  LeftDoor = "leftDoor",
  ---slot 47
  RightDoor = "rightDoor",
  ---slot 48
  Livery = "livery",
  ---slot 49
  Lightbar = "lightbar",
}

---`eVehicleModType` (natives.json: SET_VEHICLE_MOD)
---@enum fx.Enum.VehicleModType
EnumLib.VehicleModType = {
  VMT_SPOILER = 0,
  VMT_BUMPER_F = 1,
  VMT_BUMPER_R = 2,
  VMT_SKIRT = 3,
  VMT_EXHAUST = 4,
  VMT_CHASSIS = 5,
  VMT_GRILL = 6,
  VMT_BONNET = 7,
  VMT_WING_L = 8,
  VMT_WING_R = 9,
  VMT_ROOF = 10,
  VMT_ENGINE = 11,
  VMT_BRAKES = 12,
  VMT_GEARBOX = 13,
  VMT_HORN = 14,
  VMT_SUSPENSION = 15,
  VMT_ARMOUR = 16,
  VMT_NITROUS = 17,
  VMT_TURBO = 18,
  VMT_SUBWOOFER = 19,
  VMT_TYRE_SMOKE = 20,
  VMT_HYDRAULICS = 21,
  VMT_XENON_LIGHTS = 22,
  VMT_WHEELS = 23,
  VMT_WHEELS_REAR_OR_HYDRAULICS = 24,
  VMT_PLTHOLDER = 25,
  VMT_PLTVANITY = 26,
  VMT_INTERIOR1 = 27,
  VMT_INTERIOR2 = 28,
  VMT_INTERIOR3 = 29,
  VMT_INTERIOR4 = 30,
  VMT_INTERIOR5 = 31,
  VMT_SEATS = 32,
  VMT_STEERING = 33,
  VMT_KNOB = 34,
  VMT_PLAQUE = 35,
  VMT_ICE = 36,
  VMT_TRUNK = 37,
  VMT_HYDRO = 38,
  VMT_ENGINEBAY1 = 39,
  VMT_ENGINEBAY2 = 40,
  VMT_ENGINEBAY3 = 41,
  VMT_CHASSIS2 = 42,
  VMT_CHASSIS3 = 43,
  VMT_CHASSIS4 = 44,
  VMT_CHASSIS5 = 45,
  VMT_DOOR_L = 46,
  VMT_DOOR_R = 47,
  VMT_LIVERY_MOD = 48,
  VMT_LIGHTBAR = 49,
}

---`eVehicleNodeProperties` (natives.json: GET_VEHICLE_NODE_PROPERTIES)
---@enum fx.Enum.VehicleNodeProperties
EnumLib.VehicleNodeProperties = {
  OFF_ROAD = 1,
  ON_PLAYERS_ROAD = 2,
  NO_BIG_VEHICLES = 4,
  SWITCHED_OFF = 8,
  TUNNEL_OR_INTERIOR = 16,
  LEADS_TO_DEAD_END = 32,
  HIGHWAY = 64,
  JUNCTION = 128,
  TRAFFIC_LIGHT = 256,
  GIVE_WAY = 512,
  WATER = 1024,
}

---`eVehiclePlateIndicies` (natives.json: GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX)
---@enum fx.Enum.VehiclePlateIndicies
EnumLib.VehiclePlateIndicies = {
  SanAndreasCursive = 0,
  SanAndreasBlack = 1,
  SanAndreasBlue = 2,
  SanAndreasPlain = 3,
  SRExcept = 4,
  NorthYankton = 5,
  ---All indicies below this require b3095
  ECola = 6,
  LasVenturas = 7,
  LiberyCity = 8,
  LSCarMeet = 9,
  LSPanic = 10,
  LSPounders = 11,
  Sprunk = 12,
}

---`eVehiclePlateType` (natives.json: GET_VEHICLE_PLATE_TYPE)
---@enum fx.Enum.VehiclePlateType
EnumLib.VehiclePlateType = {
  VPT_FRONT_AND_BACK_PLATES = 0,
  VPT_FRONT_PLATES = 1,
  VPT_BACK_PLATES = 2,
  VPT_NONE = 3,
}

---`VehicleType` (natives.json: GET_VEHICLE_TYPE_RAW)
---@enum fx.Enum.VehicleType
EnumLib.VehicleType = {
  VEHICLE_TYPE_NONE = -1,
  VEHICLE_TYPE_CAR = 0,
  VEHICLE_TYPE_PLANE = 1,
  VEHICLE_TYPE_TRAILER = 2,
  VEHICLE_TYPE_QUADBIKE = 3,
  VEHICLE_TYPE_DRAFT = 4,
  VEHICLE_TYPE_SUBMARINECAR = 5,
  VEHICLE_TYPE_AMPHIBIOUS_AUTOMOBILE = 6,
  VEHICLE_TYPE_AMPHIBIOUS_QUADBIKE = 7,
  VEHICLE_TYPE_HELI = 8,
  VEHICLE_TYPE_BLIMP = 9,
  VEHICLE_TYPE_AUTOGYRO = 10,
  VEHICLE_TYPE_BIKE = 11,
  VEHICLE_TYPE_BICYCLE = 12,
  VEHICLE_TYPE_BOAT = 13,
  VEHICLE_TYPE_TRAIN = 14,
  VEHICLE_TYPE_SUBMARINE = 15,
}

---`eVehicleWheels` (natives.json: IS_VEHICLE_TYRE_BURST)
---@enum fx.Enum.VehicleWheels
EnumLib.VehicleWheels = {
  ---Vehicle Left front
  WHEEL_LF = 0,
  ---Vehicle Right front
  WHEEL_RF = 1,
  ---Vehicle Left middle
  WHEEL_LM = 2,
  ---Vehicle Right middle
  WHEEL_RM = 3,
  ---Vehicle Left rear
  WHEEL_LR = 4,
  ---Vehicle Right rear
  WHEEL_RR = 5,
  ---Bike front
  WHEEL_BF = 6,
  ---Bike rear
  WHEEL_BR = 7,
  MAX_WHEELS = 8,
}

---`eVehicleWheelType` (natives.json: GET_VEHICLE_WHEEL_TYPE)
---@enum fx.Enum.VehicleWheelType
EnumLib.VehicleWheelType = {
  VWT_SPORT = 0,
  VWT_MUSCLE = 1,
  VWT_LOWRIDER = 2,
  VWT_SUV = 3,
  VWT_OFFROAD = 4,
  VWT_TUNER = 5,
  VWT_BIKE = 6,
  VWT_HIEND = 7,
  ---Benny's Original
  VWT_SUPERMOD1 = 8,
  ---Benny's Bespoke
  VWT_SUPERMOD2 = 9,
  ---Open Wheel
  VWT_SUPERMOD3 = 10,
  ---Street
  VWT_SUPERMOD4 = 11,
  ---Track
  VWT_SUPERMOD5 = 12,
}

---`eViolationType` (natives.json: IS_PLAYER_DRIVING_DANGEROUSLY)
---@enum fx.Enum.ViolationType
EnumLib.ViolationType = {
  ---Checks if the player is driving on pedestrians walk ways
  VT_PAVED_PEDESTRIAN_AREAS = 0,
  ---Checks if the player is running through red lights This takes some time to return true.
  VT_RUNNING_REDS = 1,
  ---checks if the player is driving on the wrong side of the road
  VT_AGAINST_TRAFFIC = 2,
}

---`eWeaponAnimationOverrides` (natives.json: SET_WEAPON_ANIMATION_OVERRIDE)
---@enum fx.Enum.WeaponAnimationOverrides
EnumLib.WeaponAnimationOverrides = {
  Ballistic = 1429513766,
  Default = -455129387,
  Franklin = 1153582740,
  Gang = -1140429928,
  Michael = 1435709240,
  MP_F_Freemode = -1397683069,
  Trevor = 657970604,
  Hillbilly = -2063346679,
  Gang1H = 1917483703,
  FirstPerson = -298260256,
  FirstPersonAiming = -949839965,
  FirstPersonRNG = -1526868472,
  FirstPersonScope = 672234530,
  FirstPersonMichael = -358460149,
  FirstPersonMichaelAiming = 1047524111,
  FirstPersonMichaelRNG = -1213716799,
  FirstPersonMichaelScope = -984297577,
  FirstPersonFranklin = -1006168518,
  FirstPersonFranklinAiming = 1028356867,
  FirstPersonFranklinRNG = -1099321164,
  FirstPersonFranklinScope = -1343593069,
  FirstPersonTrevor = -1503833263,
  FirstPersonTrevorAiming = -104952103,
  FirstPersonTrevorRNG = -780014327,
  FirstPersonTrevorScope = 883326317,
  FirstPersonMPFemale = -2077140929,
  Fat = -986602487,
  SuperFat = 1386108800,
  Female = 1830115867,
  GangFemale = 1737154434,
}

---`eWindowId` (natives.json: IS_VEHICLE_WINDOW_INTACT)
---@enum fx.Enum.WindowId
EnumLib.WindowId = {
  VEH_EXT_WINDOW_LF = 0,
  VEH_EXT_WINDOW_RF = 1,
  VEH_EXT_WINDOW_LR = 2,
  VEH_EXT_WINDOW_RR = 3,
  VEH_EXT_WINDOW_LM = 4,
  VEH_EXT_WINDOW_RM = 5,
  VEH_EXT_WINDSCREEN = 6,
  VEH_EXT_WINDSCREEN_R = 7,
}

---`WindowTints` (natives.json: SET_VEHICLE_WINDOW_TINT)
---@enum fx.Enum.WindowTints
EnumLib.WindowTints = {
  WINDOWTINT_NONE = 0,
  WINDOWTINT_PURE_BLACK = 1,
  WINDOWTINT_DARKSMOKE = 2,
  WINDOWTINT_LIGHTSMOKE = 3,
  WINDOWTINT_STOCK = 4,
  WINDOWTINT_LIMO = 5,
  WINDOWTINT_GREEN = 6,
}

---`eZoneScumminess` (natives.json: GET_ZONE_SCUMMINESS)
---@enum fx.Enum.ZoneScumminess
EnumLib.ZoneScumminess = {
  SCUMMINESS_POSH = 0,
  SCUMMINESS_NICE = 1,
  SCUMMINESS_ABOVE_AVERAGE = 2,
  SCUMMINESS_BELOW_AVERAGE = 3,
  SCUMMINESS_CRAP = 4,
  SCUMMINESS_SCUM = 5,
}
