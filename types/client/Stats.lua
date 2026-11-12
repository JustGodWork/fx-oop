---@meta
---@diagnostic disable
-- fx.Stats (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Stats
---@field cancelSaveMigrationStatus integer (read-only) [STAT_GET_CANCEL_SAVE_MIGRATION_STATUS]
local StatsStatic = {}

--- ```
--- Example:
--- for (v_2 = 0; v_2 <= 4; v_2 += 1) {
---     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);
--- }
--- ```
--- **Native**: `STAT_CLEAR_SLOT_FOR_RELOAD` (`0xEB0A72181D4AA4AD`)
---@param statSlot integer
---@return any result
function StatsStatic.clearSlotForReload(statSlot) end

--- **Native**: `STAT_DELETE_SLOT` (`0x49A49BED12794D70`)
---@param p0 any
---@return any result
function StatsStatic.deleteSlot(p0) end

--- **Native**: `STAT_GET_BOOL` (`0x11B5E6D2AE73F48E`)
---@param statHash integer|string
---@param p2 any
---@return boolean result
---@return boolean outValue
function StatsStatic.getBool(statHash, p2) end

--- ```
--- p2 - Default value? Seems to be -1 most of the time.
--- ```
--- **Native**: `STAT_GET_BOOL_MASKED` (`0x10FE3F1B79F9B071`)
---@param statName integer|string
---@param mask integer
---@param p2 integer
---@return boolean result
function StatsStatic.getBoolMasked(statName, mask, p2) end

--- **Native**: `STAT_GET_DATE` (`0x8B0FACEFC36C824B`)
---@param statHash integer|string
---@param p2 any
---@param p3 any
---@return boolean result
---@return any p1
function StatsStatic.getDate(statHash, p2, p3) end

--- **Native**: `STAT_GET_FLOAT` (`0xD7AE6C9C9C6AC54C`)
---@param statHash integer|string
---@param p2 any
---@return boolean result
---@return number outValue
function StatsStatic.getFloat(statHash, p2) end

--- ```
--- p2 appears to always be -1
--- ```
--- **Native**: `STAT_GET_INT` (`0x767FBC2AC802EF3D`)
---@param statHash integer|string
---@param p2 integer
---@return boolean result
---@return integer outValue
function StatsStatic.getInt(statHash, p2) end

--- **Native**: `STAT_GET_LICENSE_PLATE` (`0x5473D4195058B2E4`)
---@param statName integer|string
---@return string result
function StatsStatic.getLicensePlate(statName) end

--- **Native**: `STAT_GET_MASKED_INT` (`0x655185A06D9EEAAB`)
---@param p0 any
---@param p2 any
---@param p3 any
---@param p4 any
---@return boolean result
---@return any p1
function StatsStatic.getMaskedInt(p0, p2, p3, p4) end

--- ```
--- Needs more research. Gets the stat name of a masked bool?
--- section - values used in the decompiled scripts:
--- "_NGPSTAT_BOOL"
--- "_NGTATPSTAT_BOOL"
--- "_NGDLCPSTAT_BOOL"
--- "_DLCBIKEPSTAT_BOOL"
--- "_DLCGUNPSTAT_BOOL"
--- "_GUNTATPSTAT_BOOL"
--- "_DLCSMUGCHARPSTAT_BOOL"
--- "_GANGOPSPSTAT_BOOL"
--- "_BUSINESSBATPSTAT_BOOL"
--- "_ARENAWARSPSTAT_BOOL"
--- "_CASINOPSTAT_BOOL"
--- "_CASINOHSTPSTAT_BOOL"
--- "_HEIST3TATTOOSTAT_BOOL"
--- ```
--- **Native**: `GET_NGSTAT_BOOL_HASH` (`0xBA52FF538ED2BC71`)
---@param index integer
---@param spStat boolean
---@param charStat boolean
---@param character integer
---@param section string
---@return integer result
function StatsStatic.getNgstatBoolHash(index, spStat, charStat, character, section) end

--- ```
--- Needs more research. Gets the stat name of a masked int?
--- section - values used in the decompiled scripts:
--- "_NGPSTAT_INT"
--- "_MP_NGPSTAT_INT"
--- "_MP_LRPSTAT_INT"
--- "_MP_APAPSTAT_INT"
--- "_MP_LR2PSTAT_INT"
--- "_MP_BIKEPSTAT_INT"
--- "_MP_IMPEXPPSTAT_INT"
--- "_MP_GUNRPSTAT_INT"
--- "_NGDLCPSTAT_INT"
--- "_MP_NGDLCPSTAT_INT"
--- "_DLCSMUGCHARPSTAT_INT"
--- "_GANGOPSPSTAT_INT"
--- "_BUSINESSBATPSTAT_INT"
--- "_ARENAWARSPSTAT_INT"
--- "_CASINOPSTAT_INT"
--- "_CASINOHSTPSTAT_INT"
--- ```
--- **Native**: `GET_NGSTAT_INT_HASH` (`0x2B4CDCA6F07FF3DA`)
---@param index integer
---@param spStat boolean
---@param charStat boolean
---@param character integer
---@param section string
---@return integer result
function StatsStatic.getNgstatIntHash(index, spStat, charStat, character, section) end

--- **Native**: `STAT_GET_NUMBER_OF_DAYS` (`0xE0E854F5280FB769`)
---@param statName integer|string
---@return integer result
function StatsStatic.getNumberOfDays(statName) end

--- **Native**: `STAT_GET_NUMBER_OF_HOURS` (`0xF2D4B2FE415AAFC3`)
---@param statName integer|string
---@return integer result
function StatsStatic.getNumberOfHours(statName) end

--- **Native**: `STAT_GET_NUMBER_OF_MINUTES` (`0x7583B4BE4C5A41B5`)
---@param statName integer|string
---@return integer result
function StatsStatic.getNumberOfMinutes(statName) end

--- **Native**: `STAT_GET_NUMBER_OF_SECONDS` (`0x2CE056FF3723F00B`)
---@param statName integer|string
---@return integer result
function StatsStatic.getNumberOfSeconds(statName) end

--- ```
--- Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_BOOL_MASKED"?
--- ```
--- **Native**: `STAT_GET_PACKED_BOOL_MASK` (`0xF4D8E7AC2A27758C`)
---@param p0 integer
---@return integer result
function StatsStatic.getPackedBoolMask(p0) end

--- **Native**: `GET_PACKED_BOOL_STAT_KEY` (`0x80C75307B1C42837`)
---@param index integer
---@param spStat boolean
---@param charStat boolean
---@param character integer
---@return integer result
function StatsStatic.getPackedBoolStatKey(index, spStat, charStat, character) end

--- ```
--- Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_MASKED_INT"?
--- ```
--- **Native**: `STAT_GET_PACKED_INT_MASK` (`0x94F12ABF9C79E339`)
---@param p0 integer
---@return integer result
function StatsStatic.getPackedIntMask(p0) end

--- **Native**: `GET_PACKED_INT_STAT_KEY` (`0x61E111E323419E07`)
---@param index integer
---@param spStat boolean
---@param charStat boolean
---@param character integer
---@return integer result
function StatsStatic.getPackedIntStatKey(index, spStat, charStat, character) end

--- **Native**: `GET_PACKED_TU_BOOL_STAT_KEY` (`0xC4BB08EE7907471E`)
---@param index integer
---@param spStat boolean
---@param charStat boolean
---@param character integer
---@return integer result
function StatsStatic.getPackedTuBoolStatKey(index, spStat, charStat, character) end

--- **Native**: `GET_PACKED_TU_INT_STAT_KEY` (`0xD16C2AD6B8E32854`)
---@param index integer
---@param spStat boolean
---@param charStat boolean
---@param character integer
---@return integer result
function StatsStatic.getPackedTuIntStatKey(index, spStat, charStat, character) end

--- **Native**: `STAT_GET_POS` (`0x350F82CCB186AA1B`)
---@param p0 any
---@param p4 any
---@return boolean result
---@return any p1
---@return any p2
---@return any p3
function StatsStatic.getPos(p0, p4) end

--- **Native**: `STAT_GET_SAVE_MIGRATION_CONSUME_CONTENT_UNLOCK_STATUS` (`0xCE5AA445ABA8DEE0`)
---@param p0 integer
---@return integer result
---@return integer p0
function StatsStatic.getSaveMigrationConsumeContentUnlockStatus(p0) end

--- **Native**: `STAT_GET_SAVE_MIGRATION_STATUS` (`0x886913BBEACA68C1`)
---@param data any
---@return integer result
---@return any data
function StatsStatic.getSaveMigrationStatus(data) end

--- ```
--- p1 is always -1 in the script files
--- ```
--- **Native**: `STAT_GET_STRING` (`0xE50384ACC2C3DB74`)
---@param statHash integer|string
---@param p1 integer
---@return string result
function StatsStatic.getString(statHash, p1) end

--- ```
--- Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.
--- ```
--- **Native**: `STAT_GET_USER_ID` (`0x2365C388E393BBE2`)
---@param p0 any
---@return string result
function StatsStatic.getUserId(p0) end

--- **Native**: `HIRED_LIMO` (`0x792271AB35C356A4`)
---@param p0 any
---@param p1 any
function StatsStatic.hiredLimo(p0, p1) end

--- **Native**: `STAT_INCREMENT` (`0x9B5A68C6489E9909`)
---@param statName integer|string
---@param value number
function StatsStatic.increment(statName, value) end

--- **Native**: `LEADERBOARDS2_READ_BY_HANDLE` (`0xC30713A383BFBF0E`)
---@return boolean result
---@return any p0
---@return any p1
function StatsStatic.leaderboards2ReadByHandle() end

--- **Native**: `LEADERBOARDS2_READ_BY_PLATFORM` (`0xF1AE5DCDBFCA2721`)
---@param gamerHandleCsv string
---@param platformName string
---@return boolean result
---@return any p0
function StatsStatic.leaderboards2ReadByPlatform(gamerHandleCsv, platformName) end

--- **Native**: `LEADERBOARDS2_READ_BY_RADIUS` (`0x5CE587FB5A42C8C4`)
---@param p1 any
---@return boolean result
---@return any p0
---@return any p2
function StatsStatic.leaderboards2ReadByRadius(p1) end

--- **Native**: `LEADERBOARDS2_READ_BY_RANK` (`0xBA2C7DB0C129449A`)
---@param p1 any
---@param p2 any
---@return boolean result
---@return any p0
function StatsStatic.leaderboards2ReadByRank(p1, p2) end

--- **Native**: `LEADERBOARDS2_READ_BY_ROW` (`0xA9CDB1E3F0A49883`)
---@param p2 any
---@param p4 any
---@param p6 any
---@return boolean result
---@return any p0
---@return any p1
---@return any p3
---@return any p5
function StatsStatic.leaderboards2ReadByRow(p2, p4, p6) end

--- **Native**: `LEADERBOARDS2_READ_BY_SCORE_FLOAT` (`0xE662C8B759D08F3C`)
---@param p1 number
---@param p2 any
---@return boolean result
---@return any p0
function StatsStatic.leaderboards2ReadByScoreFloat(p1, p2) end

--- **Native**: `LEADERBOARDS2_READ_BY_SCORE_INT` (`0x7EEC7E4F6984A16A`)
---@param p1 any
---@param p2 any
---@return boolean result
---@return any p0
function StatsStatic.leaderboards2ReadByScoreInt(p1, p2) end

--- **Native**: `LEADERBOARDS2_READ_FRIENDS_BY_ROW` (`0x918B101666F9CB83`)
---@param p2 any
---@param p3 boolean
---@param p4 any
---@param p5 any
---@return boolean result
---@return any p0
---@return any p1
function StatsStatic.leaderboards2ReadFriendsByRow(p2, p3, p4, p5) end

--- **Native**: `LEADERBOARDS2_READ_RANK_PREDICTION` (`0xC38DC1E90D22547C`)
---@return boolean result
---@return any p0
---@return any p1
---@return any p2
function StatsStatic.leaderboards2ReadRankPrediction() end

--- **Native**: `LEADERBOARDS2_WRITE_DATA` (`0xAE2206545888AE49`)
---@param p0 any
---@return boolean result
---@return any p0
function StatsStatic.leaderboards2WriteData(p0) end

--- **Native**: `LEADERBOARDS2_WRITE_DATA_FOR_EVENT_TYPE` (`0xC980E62E33DF1D5C`)
---@return boolean result
---@return any p0
---@return any p1
function StatsStatic.leaderboards2WriteDataForEventType() end

--- **Native**: `LEADERBOARDS_CACHE_DATA_ROW` (`0xB9BB18E2C40142ED`)
---@param p0 any
---@return boolean result
---@return any p0
function StatsStatic.leaderboardsCacheDataRow(p0) end

--- **Native**: `LEADERBOARDS_CLEAR_CACHE_DATA` (`0xD4B02A6B476E1FDC`)
function StatsStatic.leaderboardsClearCacheData() end

--- **Native**: `LEADERBOARDS_DEATHS` (`0x428EAF89E24F6C36`)
---@param statName integer|string
---@param value number
function StatsStatic.leaderboardsDeaths(statName, value) end

--- **Native**: `LEADERBOARDS_GET_CACHE_DATA_ROW` (`0x9120E8DBA3D69273`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return boolean result
---@return any p2
function StatsStatic.leaderboardsGetCacheDataRow(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_GET_CACHE_EXISTS` (`0x9C51349BE6CDFE2C`)
---@param p0 any
---@return boolean result
function StatsStatic.leaderboardsGetCacheExists(p0) end

--- **Native**: `LEADERBOARDS_GET_CACHE_NUMBER_OF_ROWS` (`0x58A651CD201D89AD`)
---@param p0 any
---@return integer result
function StatsStatic.leaderboardsGetCacheNumberOfRows(p0) end

--- **Native**: `LEADERBOARDS_GET_CACHE_TIME` (`0xF04C1C27DA35F6C8`)
---@param p0 any
---@return any result
function StatsStatic.leaderboardsGetCacheTime(p0) end

--- **Native**: `LEADERBOARDS_GET_COLUMN_ID` (`0xC4B5467A1886EA7E`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return any result
function StatsStatic.leaderboardsGetColumnId(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_GET_COLUMN_TYPE` (`0xBF4FEF46DB7894D3`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return any result
function StatsStatic.leaderboardsGetColumnType(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_GET_NUMBER_OF_COLUMNS` (`0x117B45156D7EFF2E`)
---@param p0 any
---@param p1 any
---@return any result
function StatsStatic.leaderboardsGetNumberOfColumns(p0, p1) end

--- **Native**: `LEADERBOARDS_READ_ANY_PENDING` (`0xA31FD15197B192BD`)
---@return boolean result
function StatsStatic.leaderboardsReadAnyPending() end

--- **Native**: `LEADERBOARDS_READ_CLEAR` (`0x7CCE5C737A665701`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return any result
function StatsStatic.leaderboardsReadClear(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_READ_CLEAR_ALL` (`0xA34CB6E6F0DF4A0B`)
---@return any result
function StatsStatic.leaderboardsReadClearAll() end

--- **Native**: `LEADERBOARDS_READ_PENDING` (`0xAC392C8483342AC2`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return boolean result
function StatsStatic.leaderboardsReadPending(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_READ_SUCCESSFUL` (`0x2FB19228983E832C`)
---@param p0 any
---@param p1 any
---@param p2 any
---@return boolean result
function StatsStatic.leaderboardsReadSuccessful(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_WRITE_ADD_COLUMN` (`0x0BCA1D2C47B0D269`)
---@param p0 any
---@param p1 any
---@param p2 number
function StatsStatic.leaderboardsWriteAddColumn(p0, p1, p2) end

--- **Native**: `LEADERBOARDS_WRITE_ADD_COLUMN_LONG` (`0x2E65248609523599`)
---@param p0 any
---@param p1 any
---@param p2 any
function StatsStatic.leaderboardsWriteAddColumnLong(p0, p1, p2) end

--- **Native**: `STAT_LOAD` (`0xA651443F437B1CE6`)
---@param p0 integer
---@return boolean result
function StatsStatic.load(p0) end

--- **Native**: `STAT_LOAD_PENDING` (`0xA1750FFAFA181661`)
---@param p0 any
---@return boolean result
function StatsStatic.loadPending(p0) end

--- ```
--- platformName must be one of the following: ps3, xbox360, ps4, xboxone
--- ```
--- **Native**: `STAT_MIGRATE_SAVE` (`0xA5C80D8E768A9E66`)
---@param platformName string
---@return boolean result
function StatsStatic.migrateSave(platformName) end

--- **Native**: `ORDERED_BOSS_VEHICLE` (`0xCEA553E35C2246E1`)
---@param p0 any
---@param p1 any
---@param vehicleHash integer|string
function StatsStatic.orderedBossVehicle(p0, p1, vehicleHash) end

--- **Native**: `PLAYSTATS_ACQUIRED_HIDDEN_PACKAGE` (`0x79AB33F0FBFAC40C`)
---@param p0 any
function StatsStatic.playstatsAcquiredHiddenPackage(p0) end

--- **Native**: `PLAYSTATS_ACTIVITY_DONE` (`0xA071E0ED98F91286`)
---@param p0 any
---@param p1 any
function StatsStatic.playstatsActivityDone(p0, p1) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_ARCADEGAME` (`0x533A7D1EA58DF958`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function StatsStatic.playstatsArcadegame(p0, p1, p2, p3, p4, p5) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `PLAYSTATS_ARENA_WARS_ENDED` (`0xB479D9F0D48A1BC5`)
---@param data any
---@return any data
function StatsStatic.playstatsArenaWarsEnded(data) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `PLAYSTATS_ARENA_WAR_SPECTATOR` (`0x6F4F599753F8200A`)
---@param p0 integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
---@param p4 integer
function StatsStatic.playstatsArenaWarSpectator(p0, p1, p2, p3, p4) end

--- **Native**: `PLAYSTATS_AWARD_BADSPORT` (`0x47B32F5611E6E483`)
---@param id integer
function StatsStatic.playstatsAwardBadsport(id) end

--- **Native**: `PLAYSTATS_AWARD_XP` (`0x46F917F6B4128FE4`)
---@param amount integer
---@param type_ integer|string
---@param category integer|string
function StatsStatic.playstatsAwardXp(amount, type_, category) end

--- **Native**: `PLAYSTATS_BACKGROUND_SCRIPT_ACTION` (`0x5009DFD741329729`)
---@param action string
---@param value integer
function StatsStatic.playstatsBackgroundScriptAction(action, value) end

--- **Native**: `PLAYSTATS_BAN_ALERT` (`0x516FC96EB88EEFE5`)
---@param p0 integer
function StatsStatic.playstatsBanAlert(p0) end

--- **Native**: `PLAYSTATS_BUY_CONTRABAND` (`0xD6781E42755531F7`)
---@param data any
---@return any data
function StatsStatic.playstatsBuyContraband(data) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `PLAYSTATS_CARCLUB_CHALLENGE` (`0x1187CB58D7F3BED7`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function StatsStatic.playstatsCarclubChallenge(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `PLAYSTATS_CARCLUB_POINTS` (`0xFF14D6FEEC507BBE`)
---@param p0 any
function StatsStatic.playstatsCarclubPoints(p0) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `PLAYSTATS_CARCLUB_PRIZE` (`0x69C922B677621428`)
---@param p0 any
---@param p1 any
function StatsStatic.playstatsCarclubPrize(p0, p1) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_BLACKJACK` (`0x3EAE97309727E7AD`)
---@param p0 any
function StatsStatic.playstatsCasinoBlackjack(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_BLACKJACK_LIGHT` (`0xD5451C7BF151EB6F`)
---@param p0 any
function StatsStatic.playstatsCasinoBlackjackLight(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_CHIP` (`0x0999F3F090EC5012`)
---@param p0 any
function StatsStatic.playstatsCasinoChip(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_INSIDETRACK` (`0x049F059625058A86`)
---@param p0 any
function StatsStatic.playstatsCasinoInsidetrack(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_INSIDETRACK_LIGHT` (`0x23A3CBCD50D54E47`)
---@param p0 any
function StatsStatic.playstatsCasinoInsidetrackLight(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_LUCKYSEVEN` (`0x0C432C1435F5E4FA`)
---@param p0 any
function StatsStatic.playstatsCasinoLuckyseven(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_MISSION_ENDED` (`0x1A0D4A6C336B7BC5`)
---@param data any
---@return any data
function StatsStatic.playstatsCasinoMissionEnded(data) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_ROULETTE` (`0x95101C443A84E7F1`)
---@param p0 any
function StatsStatic.playstatsCasinoRoulette(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_ROULETTE_LIGHT` (`0x6572ABA3DE1197FC`)
---@param p0 any
function StatsStatic.playstatsCasinoRouletteLight(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_SLOTMACHINE` (`0xEF5EC67D392B830A`)
---@param p0 any
function StatsStatic.playstatsCasinoSlotmachine(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_SLOTMACHINE_LIGHT` (`0xE60054A0FAE8227F`)
---@param p0 any
function StatsStatic.playstatsCasinoSlotmachineLight(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_STORY_MISSION_ENDED` (`0xFCCCAC2BD3C1F180`)
---@param p0 any
---@param p1 any
function StatsStatic.playstatsCasinoStoryMissionEnded(p0, p1) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_THREECARDPOKER` (`0xF740FB339D471C35`)
---@param p0 any
function StatsStatic.playstatsCasinoThreecardpoker(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_CASINO_THREECARDPOKER_LIGHT` (`0xC9001364B4388F22`)
---@param p0 any
function StatsStatic.playstatsCasinoThreecardpokerLight(p0) end

--- **Native**: `PLAYSTATS_CHANGE_MC_EMBLEM` (`0x0A50D2604E05CB94`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function StatsStatic.playstatsChangeMcEmblem(p0, p1, p2, p3, p4) end

--- **Native**: `PLAYSTATS_CHEAT_APPLIED` (`0x6058665D72302D3F`)
---@param cheat string
function StatsStatic.playstatsCheatApplied(cheat) end

--- **Native**: `PLAYSTATS_CLOTH_CHANGE` (`0x34B973047A2268B9`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function StatsStatic.playstatsClothChange(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_COLLECTIBLE` (`0xCD0A8A9338681CF2`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
function StatsStatic.playstatsCollectible(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- **Native**: `PLAYSTATS_COPY_RANK_INTO_NEW_SLOT` (`0xB7257BA2550EA10A`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
function StatsStatic.playstatsCopyRankIntoNewSlot(p0, p1, p2, p3, p4, p5, p6) end

--- **Native**: `PLAYSTATS_CRATE_CREATED` (`0xAFC7E5E075A96F46`)
---@param p0 number
---@param p1 number
---@param p2 number
function StatsStatic.playstatsCrateCreated(p0, p1, p2) end

--- ```
--- NativeDB Added Parameter 7: Any p6
--- NativeDB Added Parameter 8: Any p7
--- ```
--- **Native**: `PLAYSTATS_CRATE_DROP_MISSION_DONE` (`0x1CAE5D2E3F9A07F0`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function StatsStatic.playstatsCrateDropMissionDone(p0, p1, p2, p3, p4, p5) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `PLAYSTATS_DAR_MISSION_END` (`0x0BC254FF3A911501`)
---@param data any
---@return any data
function StatsStatic.playstatsDarMissionEnd(data) end

--- **Native**: `PLAYSTATS_DEFEND_CONTRABAND` (`0x2605663BD4F23B5D`)
---@param data any
---@return any data
function StatsStatic.playstatsDefendContraband(data) end

--- **Native**: `PLAYSTATS_DIRECTOR_MODE` (`0x46326E13DA4E0546`)
---@param p0 any
---@return any p0
function StatsStatic.playstatsDirectorMode(p0) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `PLAYSTATS_DRONE_USAGE` (`0x66C7BB2416ED3FCE`)
---@param p0 integer
---@param p1 integer
---@param p2 integer
function StatsStatic.playstatsDroneUsage(p0, p1, p2) end

--- **Native**: `PLAYSTATS_DUPE_DETECTION` (`0x848B66100EE33B05`)
---@param data any
---@return any data
function StatsStatic.playstatsDupeDetection(data) end

--- **Native**: `PLAYSTATS_EARNED_MC_POINTS` (`0x501478855A6074CE`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function StatsStatic.playstatsEarnedMcPoints(p0, p1, p2, p3, p4, p5) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `PLAYSTATS_ENTER_SESSION_PACK` (`0x878FF156D36E9956`)
---@param data any
---@return any data
function StatsStatic.playstatsEnterSessionPack(data) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `PLAYSTATS_EXTRA_EVENT` (`0xFA5B74BAB8A7EF99`)
---@param p0 any
function StatsStatic.playstatsExtraEvent(p0) end

--- **Native**: `PLAYSTATS_FRIEND_ACTIVITY` (`0x0F71DE29AB2258F1`)
---@param p0 any
---@param p1 any
function StatsStatic.playstatsFriendActivity(p0, p1) end

--- **Native**: `PLAYSTATS_GUNRUN_MISSION_ENDED` (`0x0EACDF8487D5155A`)
---@param data any
---@return any data
function StatsStatic.playstatsGunrunMissionEnded(data) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `PLAYSTATS_H2_FMPREP_END` (`0xD8AFB345A9C5CCBB`)
---@param data any
---@return any data
function StatsStatic.playstatsH2FmprepEnd(data) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `PLAYSTATS_H2_INSTANCE_END` (`0x1E1497D0D2108115`)
---@param p1 any
---@param p2 any
---@param p3 any
---@return any data
function StatsStatic.playstatsH2InstanceEnd(p1, p2, p3) end

--- **Native**: `PLAYSTATS_HEIST_SAVE_CHEAT` (`0xF4FF020A08BC8863`)
---@param hash integer|string
---@param p1 integer
function StatsStatic.playstatsHeistSaveCheat(hash, p1) end

--- **Native**: `PLAYSTATS_HOLD_UP_MISSION_DONE` (`0xCB00196B31C39EB1`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function StatsStatic.playstatsHoldUpMissionDone(p0, p1, p2, p3) end

--- ```
--- longest time being ilde?
--- ```
--- **Native**: `PLAYSTATS_IDLE_KICK` (`0x5DA3A8DE8CB6226F`)
---@param time integer
function StatsStatic.playstatsIdleKick(time) end

--- **Native**: `PLAYSTATS_IMPORT_EXPORT_MISSION_DONE` (`0x2B69F5074C894811`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function StatsStatic.playstatsImportExportMissionDone(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `PLAYSTATS_INVENTORY` (`0x887DAD63CF5B7908`)
---@param p0 any
function StatsStatic.playstatsInventory(p0) end

--- **Native**: `PLAYSTATS_JOB_BEND` (`0xF5BB8DAC426A52C0`)
---@return any p0
---@return any p1
---@return any p2
---@return any p3
function StatsStatic.playstatsJobBend() end

--- **Native**: `PLAYSTATS_LEAVE_JOB_CHAIN` (`0xC5BE134EC7BA96A0`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function StatsStatic.playstatsLeaveJobChain(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Removed Parameter 4: Any p3
--- NativeDB Removed Parameter 5: Any p4
--- NativeDB Removed Parameter 6: Any p5
--- NativeDB Removed Parameter 7: Any p6
--- ```
--- **Native**: `PLAYSTATS_MATCH_STARTED` (`0xBC80E22DED931E3D`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
function StatsStatic.playstatsMatchStarted(p0, p1, p2, p3, p4, p5, p6) end

--- **Native**: `PLAYSTATS_MISSION_CHECKPOINT` (`0xC900596A63978C1D`)
---@param p1 any
---@param p2 any
---@param p3 any
---@return any p0
function StatsStatic.playstatsMissionCheckpoint(p1, p2, p3) end

--- **Native**: `PLAYSTATS_MISSION_OVER` (`0x7C4BB33A8CED7324`)
---@param p1 any
---@param p2 any
---@param p3 boolean
---@param p4 boolean
---@param p5 boolean
---@return any p0
function StatsStatic.playstatsMissionOver(p1, p2, p3, p4, p5) end

--- **Native**: `PLAYSTATS_MISSION_STARTED` (`0xC19A2925C34D2231`)
---@param p1 any
---@param p2 any
---@param p3 boolean
---@return any p0
function StatsStatic.playstatsMissionStarted(p1, p2, p3) end

--- **Native**: `PLAYSTATS_NPC_INVITE` (`0x93054C88E6AA7C44`)
---@param p0 any
---@return any p0
function StatsStatic.playstatsNpcInvite(p0) end

--- **This native does absolutely nothing, just a nullsub**
--- **Native**: `PLAYSTATS_ODDJOB_DONE` (`0x69DEA3E9DB727B4C`)
---@param p0 any
---@param p1 any
---@param p2 any
function StatsStatic.playstatsOddjobDone(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `PLAYSTATS_PASSIVE_MODE` (`0x35EEC6C2BC821A71`)
---@param p0 boolean
---@param p1 integer
---@param p2 integer
---@param p3 integer
function StatsStatic.playstatsPassiveMode(p0, p1, p2, p3) end

--- **Native**: `PLAYSTATS_PI_MENU_HIDE_SETTINGS` (`0x203B381133817079`)
---@param data any
---@return any data
function StatsStatic.playstatsPiMenuHideSettings(data) end

--- **Native**: `PLAYSTATS_PROP_CHANGE` (`0xBA739D6D5A05D6E7`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function StatsStatic.playstatsPropChange(p0, p1, p2, p3) end

--- **Native**: `PLAYSTATS_QUICKFIX_TOOL` (`0x90D0622866E80445`)
---@param element integer
---@param item string
function StatsStatic.playstatsQuickfixTool(element, item) end

--- **Native**: `PLAYSTATS_RACE_CHECKPOINT` (`0x9C375C315099DDE4`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function StatsStatic.playstatsRaceCheckpoint(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Removed Parameter 5: Any p4
--- NativeDB Removed Parameter 6: Any p5
--- NativeDB Removed Parameter 7: Any p6
--- NativeDB Removed Parameter 8: Any p7
--- NativeDB Removed Parameter 9: Any p8
--- NativeDB Removed Parameter 10: Any p9
--- ```
--- **Native**: `PLAYSTATS_RACE_TO_POINT_MISSION_DONE` (`0xADDD1C754E2E2914`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 any
function StatsStatic.playstatsRaceToPointMissionDone(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- **Native**: `PLAYSTATS_RANDOM_MISSION_DONE` (`0x71862B1D855F32E1`)
---@param name string
---@param p1 any
---@param p2 any
---@param p3 any
function StatsStatic.playstatsRandomMissionDone(name, p1, p2, p3) end

--- **Native**: `PLAYSTATS_RANK_UP` (`0xC7F2DE41D102BFB4`)
---@param rank integer
function StatsStatic.playstatsRankUp(rank) end

--- **Native**: `PLAYSTATS_RECOVER_CONTRABAND` (`0x04D90BA8207ADA2D`)
---@param data any
---@return any data
function StatsStatic.playstatsRecoverContraband(data) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `PLAYSTATS_ROBBERY_FINALE` (`0xBBA55BE9AAAABF44`)
---@param p0 any
function StatsStatic.playstatsRobberyFinale(p0) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `PLAYSTATS_ROBBERY_PREP` (`0x1A67DFBF1F5C3835`)
---@param p0 any
function StatsStatic.playstatsRobberyPrep(p0) end

--- **Native**: `PLAYSTATS_ROS_BET` (`0x121FB4DDDC2D5291`)
---@param amount integer
---@param act integer
---@param player fx.Player|integer
---@param cm number
function StatsStatic.playstatsRosBet(amount, act, player, cm) end

--- **Native**: `PLAYSTATS_SELL_CONTRABAND` (`0xC729991A9065376E`)
---@param data any
---@return any data
function StatsStatic.playstatsSellContraband(data) end

--- Sets a byte that is then used in session_host and session_join metrics when hosting or joining a session
--- **Native**: `PLAYSTATS_SET_JOIN_TYPE` (`0xD1032E482629049E`)
---@param joinType integer
function StatsStatic.playstatsSetJoinType(joinType) end

--- **Native**: `PLAYSTATS_SHOP_ITEM` (`0x176852ACAAC173D1`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function StatsStatic.playstatsShopItem(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `PLAYSTATS_SMUG_MISSION_ENDED` (`0x320C35147D5B5DDD`)
---@param data any
---@return any data
function StatsStatic.playstatsSmugMissionEnded(data) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `PLAYSTATS_SPECTATOR_WHEEL_SPIN` (`0x6731DE84A38BFAD0`)
---@param p0 integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
function StatsStatic.playstatsSpectatorWheelSpin(p0, p1, p2, p3) end

--- **Native**: `PLAYSTATS_SPENT_PI_CUSTOM_LOADOUT` (`0xBE509B0A3693DE8B`)
---@param amount integer
function StatsStatic.playstatsSpentPiCustomLoadout(amount) end

--- ```
--- PLAYSTATS_START_INVITE_DESPAWNING?
--- ```
--- **Native**: `PLAYSTATS_START_OFFLINE_MODE` (`0x098760C7461724CD`)
function StatsStatic.playstatsStartOfflineMode() end

--- Allows stunts to be triggered and sent as a `CEventNetworkStuntPerformed` event.
---
--- Event types are shown below:
---
--- ```cpp
--- enum eTrackedStuntType
--- {
---     ST_FRONTFLIP = 0,
---     ST_BACKFLIP = 1,
---     ST_SPIN = 2,
---     ST_WHEELIE = 3,
---     ST_STOPPIE = 4,
---     ST_BOWLING_PIN = 5,
---     ST_FOOTBALL = 6,
---     ST_ROLL = 7
--- };
--- ```
--- **Native**: `PLAYSTATS_START_TRACKING_STUNTS` (`0x928DBFB892638EF3`)
function StatsStatic.playstatsStartTrackingStunts() end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `PLAYSTATS_STONE_HATCHET_END` (`0x35E39E5570358630`)
---@param data any
---@return any data
function StatsStatic.playstatsStoneHatchetEnd(data) end

--- Disallows CEventNetworkStuntPerformed to be triggered (Resets [`PLAYSTATS_START_TRACKING_STUNTS`](#\_0x928DBFB892638EF3)).
--- **Native**: `PLAYSTATS_STOP_TRACKING_STUNTS` (`0x8A800DACCC0DA55D`)
function StatsStatic.playstatsStopTrackingStunts() end

--- **Native**: `PLAYSTATS_WEAPON_MODE_CHANGE` (`0xE95C8A1875A02CA4`)
---@param weaponHash integer|string
---@param componentHashTo integer|string
---@param componentHashFrom integer|string
function StatsStatic.playstatsWeaponModeChange(weaponHash, componentHashTo, componentHashFrom) end

--- **Native**: `PLAYSTATS_WEBSITE_VISITED` (`0xDDF24D535060F811`)
---@param scaleformHash integer|string
---@param p1 integer
function StatsStatic.playstatsWebsiteVisited(scaleformHash, p1) end

--- **Native**: `PRESENCE_EVENT_UPDATESTAT_FLOAT` (`0x30A6614C1F7799B8`)
---@param statHash integer|string
---@param value number
---@param p2 integer
function StatsStatic.presenceEventUpdatestatFloat(statHash, value, p2) end

--- **Native**: `PRESENCE_EVENT_UPDATESTAT_INT` (`0x11FF1C80276097ED`)
---@param statHash integer|string
---@param value integer
---@param p2 integer
function StatsStatic.presenceEventUpdatestatInt(statHash, value, p2) end

--- ```
--- NativeDB Added Parameter 4: Any p3
--- ```
--- **Native**: `STAT_SAVE` (`0xE07BCA305B82D2FD`)
---@param p0 integer
---@param p1 boolean
---@param p2 integer
---@return boolean result
function StatsStatic.save(p0, p1, p2) end

--- **Native**: `STAT_SAVE_MIGRATION_CANCEL` (`0x4FEF53183C3C6414`)
---@return boolean result
function StatsStatic.saveMigrationCancel() end

--- **Native**: `STAT_SAVE_MIGRATION_CONSUME_CONTENT_UNLOCK` (`0x3270F67EED31FBC1`)
---@param contentId integer|string
---@param srcPlatform string
---@param srcGamerHandle string
---@return boolean result
function StatsStatic.saveMigrationConsumeContentUnlock(contentId, srcPlatform, srcGamerHandle) end

--- **Native**: `STAT_SAVE_MIGRATION_STATUS_START` (`0xC70DDCE56D0D3A99`)
---@return boolean result
function StatsStatic.saveMigrationStatusStart() end

--- **Native**: `STAT_SAVE_PENDING` (`0x7D3A583856F2C5AC`)
---@return boolean result
function StatsStatic.savePending() end

--- **Native**: `STAT_SAVE_PENDING_OR_REQUESTED` (`0xBBB6AD006F1BBEA3`)
---@return boolean result
function StatsStatic.savePendingOrRequested() end

--- **Native**: `STAT_SET_BLOCK_SAVES` (`0xF434A10BA01C37D0`)
---@param toggle boolean
function StatsStatic.setBlockSaves(toggle) end

--- ```
--- Example:
---  STATS::STAT_SET_BOOL(MISC::GET_HASH_KEY("MPPLY_MELEECHLENGECOMPLETED"), trur, true);
--- ```
--- **Native**: `STAT_SET_BOOL` (`0x4B33C4243DE0C432`)
---@param statName integer|string
---@param value boolean
---@param save boolean
---@return boolean result
function StatsStatic.setBool(statName, value, save) end

--- **Native**: `STAT_SET_BOOL_MASKED` (`0x5BC62EC1937B9E5B`)
---@param statName integer|string
---@param value boolean
---@param mask integer
---@param save boolean
---@return boolean result
function StatsStatic.setBoolMasked(statName, value, mask, save) end

--- **Native**: `STAT_SET_CHEAT_IS_ACTIVE` (`0x047CBED6F6F8B63C`)
function StatsStatic.setCheatIsActive() end

--- ```
--- p1 always true.
--- ```
--- **Native**: `STAT_SET_CURRENT_POSIX_TIME` (`0xC2F84B7F9C4D0C61`)
---@param statName integer|string
---@param p1 boolean
---@return boolean result
function StatsStatic.setCurrentPosixTime(statName, p1) end

--- ```
--- 'value' is a structure to a structure, 'numFields' is how many fields there are in said structure (usually 7).
--- The structure looks like this:
--- int year
--- int month
--- int day
--- int hour
--- int minute
--- int second
--- int millisecond
--- The decompiled scripts use TIME::GET_POSIX_TIME to fill this structure.
--- ```
--- **Native**: `STAT_SET_DATE` (`0x2C29BFB64F4FCBE4`)
---@param statName integer|string
---@param numFields integer
---@param save boolean
---@return boolean result
---@return any value
function StatsStatic.setDate(statName, numFields, save) end

--- ```
--- Example:
---  STATS::STAT_SET_FLOAT(MISC::GET_HASH_KEY("MP0_WEAPON_ACCURACY"), 66.6f, true);
--- ```
--- **Native**: `STAT_SET_FLOAT` (`0x4851997F37FE9B3C`)
---@param statName integer|string
---@param value number
---@param save boolean
---@return boolean result
function StatsStatic.setFloat(statName, value, save) end

--- ```
--- The following values have been found in the decompiled scripts:
--- "RC_ABI1"
--- "RC_ABI2"
--- "RC_BA1"
--- "RC_BA2"
--- "RC_BA3"
--- "RC_BA3A"
--- "RC_BA3C"
--- "RC_BA4"
--- "RC_DRE1"
--- "RC_EPS1"
--- "RC_EPS2"
--- "RC_EPS3"
--- "RC_EPS4"
--- "RC_EPS5"
--- "RC_EPS6"
--- "RC_EPS7"
--- "RC_EPS8"
--- "RC_EXT1"
--- "RC_EXT2"
--- "RC_EXT3"
--- "RC_EXT4"
--- "RC_FAN1"
--- "RC_FAN2"
--- "RC_FAN3"
--- "RC_HAO1"
--- "RC_HUN1"
--- "RC_HUN2"
--- "RC_JOS1"
--- "RC_JOS2"
--- "RC_JOS3"
--- "RC_JOS4"
--- "RC_MAU1"
--- "RC_MIN1"
--- "RC_MIN2"
--- "RC_MIN3"
--- "RC_MRS1"
--- "RC_MRS2"
--- "RC_NI1"
--- [...]
--- **Native**: `STAT_SET_GXT_LABEL` (`0x17695002FD8B2AE0`)
---@param statName integer|string
---@param value string
---@param save boolean
---@return boolean result
function StatsStatic.setGxtLabel(statName, value, save) end

--- ```
--- Sets profile setting 866
--- SET_*
--- ```
--- **Native**: `SET_HAS_CONTENT_UNLOCKS_FLAGS` (`0xDAC073C7901F9E15`)
---@param value integer
function StatsStatic.setHasContentUnlocksFlags(value) end

--- **Native**: `STAT_SET_INT` (`0xB3271D7AB655B441`)
---@param statName integer|string
---@param value integer
---@param save boolean
---@return boolean result
function StatsStatic.setInt(statName, value, save) end

--- **Native**: `STAT_SET_LICENSE_PLATE` (`0x69FF13266D7296DA`)
---@param statName integer|string
---@param str string
---@return boolean result
function StatsStatic.setLicensePlate(statName, str) end

--- **Native**: `STAT_SET_MASKED_INT` (`0x7BBB1B54583ED410`)
---@param statName integer|string
---@param p1 any
---@param p2 any
---@param p3 integer
---@param save boolean
---@return boolean result
function StatsStatic.setMaskedInt(statName, p1, p2, p3, save) end

--- **Native**: `STAT_SET_POS` (`0xDB283FDE680FE72E`)
---@param statName integer|string
---@param coords vector3
---@param save boolean
---@return boolean result
function StatsStatic.setPos(statName, coords, save) end

--- **Native**: `SET_PROFILE_SETTING_PROLOGUE_COMPLETE` (`0xB475F27C6A994D65`)
function StatsStatic.setProfileSettingPrologueComplete() end

--- ```
--- Does not take effect immediately, unfortunately.
--- profileSetting seems to only be 936, 937 and 938 in scripts
--- ```
--- **Native**: `STAT_SET_PROFILE_SETTING_VALUE` (`0x68F01422BE1D838F`)
---@param profileSetting integer
---@param value integer
function StatsStatic.setProfileSettingValue(profileSetting, value) end

--- ```
--- Sets profile setting 501
--- ```
--- **Native**: `SET_SAVE_MIGRATION_TRANSACTION_ID` (`0xF6792800AC95350D`)
---@param transactionId integer
function StatsStatic.setSaveMigrationTransactionId(transactionId) end

--- **Native**: `STAT_SET_STRING` (`0xA87B2335D12531D7`)
---@param statName integer|string
---@param value string
---@param save boolean
---@return boolean result
function StatsStatic.setString(statName, value, save) end

--- **Native**: `STAT_SET_USER_ID` (`0x8CDDF1E452BABE11`)
---@param statName integer|string
---@param value string
---@param save boolean
---@return boolean result
function StatsStatic.setUserId(statName, value, save) end

--- **Native**: `STAT_SLOT_IS_LOADED` (`0x0D0A9F0E7BD91E3C`)
---@param p0 any
---@return boolean result
function StatsStatic.slotIsLoaded(p0) end

