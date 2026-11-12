---@meta
---@diagnostic disable
-- fx.Money (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---GTA Online economy natives (namespace MONEY). Almost all of them are named `NETWORK_*` in the native definitions
---(`NETWORK_EARN_*`, `NETWORK_SPENT_*`, `NETWORK_BUY_*`, ...): they record cash transactions of GTA Online's own economy
---("VC" = virtual currency, wallet / bank), which is run by Rockstar's servers. The `network` prefix is dropped from the
---method names; `Money.networkX` only remains where the short name was already taken.
---A FiveM server has its own economy (your framework): the effect of these natives on a FiveM server is not documented.
---@class fx.Money
---@field canPayGoon boolean (read-only) [CAN_PAY_GOON]
---@field canShareJobCash boolean (read-only) [NETWORK_CAN_SHARE_JOB_CASH]
---@field evcBalance integer (read-only) [NETWORK_GET_EVC_BALANCE]
---@field isHighEarner boolean (read-only) [NETWORK_GET_IS_HIGH_EARNER]
---@field pvcBalance integer (read-only) [NETWORK_GET_PVC_BALANCE]
---@field pvcTransferBalance integer (read-only) [NETWORK_GET_PVC_TRANSFER_BALANCE]
---@field remainingTransferBalance integer (read-only) [NETWORK_GET_REMAINING_TRANSFER_BALANCE]
---@field stringBankBalance string (read-only) [NETWORK_GET_STRING_BANK_BALANCE]
---@field stringBankWalletBalance string (read-only) [NETWORK_GET_STRING_BANK_WALLET_BALANCE]
---@field vcBalance integer (read-only) [NETWORK_GET_VC_BALANCE]
---@field vcBankBalance integer (read-only) [NETWORK_GET_VC_BANK_BALANCE]
local MoneyStatic = {}

--- ```
--- p1 = 0 (always)
--- p2 = 1 (always)
--- ```
--- **Native**: `NETWORK_BUY_AIRSTRIKE` (`0x763B4BD305338F19`)
---@param cost integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.buyAirstrike(cost, p1, p2) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_BUY_BACKUP_GANG` (`0xA3EDDAA42411D3B9`)
---@param p0 integer
---@param p1 integer
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.buyBackupGang(p0, p1, p2, p3) end

--- ```
--- p1 is just an assumption. p2 was false and p3 was true.
--- ```
--- **Native**: `NETWORK_BUY_BOUNTY` (`0x7B718E197453F2D9`)
---@param amount integer
---@param victim fx.Player|integer
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.buyBounty(amount, victim, p2, p3) end

--- **Native**: `NETWORK_BUY_CONTRABAND` (`0x30FD873ECE50E9F6`)
---@param p0 integer
---@param p1 integer
---@param p2 integer|string
---@param p3 boolean
---@param p4 boolean
function MoneyStatic.buyContraband(p0, p1, p2, p3, p4) end

--- ```
--- The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.
--- The last 3 parameters are,
--- 2,0,1 in the am_ferriswheel.c
--- 1,0,1 in the am_rollercoaster.c
--- ```
--- **Native**: `NETWORK_BUY_FAIRGROUND_RIDE` (`0x8A7B3952DD64D2B5`)
---@param amountSpent integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.buyFairgroundRide(amountSpent, p1, p2, p3) end

--- **Native**: `NETWORK_BUY_HEALTHCARE` (`0xD9B067E55253E3DD`)
---@param cost integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.buyHealthcare(cost, p1, p2) end

--- ```
--- p1 = 0 (always)
--- p2 = 1 (always)
--- ```
--- **Native**: `NETWORK_BUY_HELI_STRIKE` (`0x81AA4610E3FD3A69`)
---@param cost integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.buyHeliStrike(cost, p1, p2) end

--- **Native**: `NETWORK_BUY_ITEM` (`0xF0077C797F66A355`)
---@param amount integer
---@param item integer|string
---@param p2 any
---@param p3 any
---@param p4 boolean
---@param item_name string
---@param p6 any
---@param p7 any
---@param p8 any
---@param p9 boolean
function MoneyStatic.buyItem(amount, item, p2, p3, p4, item_name, p6, p7, p8, p9) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_BUY_LOTTERY_TICKET` (`0xD987F2489969668C`)
---@param p0 integer
---@param p1 integer
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.buyLotteryTicket(p0, p1, p2, p3) end

--- **Native**: `NETWORK_BUY_PROPERTY` (`0x650A08A280870AF6`)
---@param propertyCost integer
---@param propertyName integer|string
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.buyProperty(propertyCost, propertyName, p2, p3) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_BUY_SMOKES` (`0x75AF80E61248EEBD`)
---@param p0 integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.buySmokes(p0, p1, p2) end

--- **Native**: `NETWORK_CAN_BET` (`0x3A54E33660DED67F`)
---@param amount integer
---@return boolean result
function MoneyStatic.canBet(amount) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_CAN_BUY_LOTTERY_TICKET` (`0xC62DD18375C99130`)
---@param cost integer
---@return boolean result
function MoneyStatic.canBuyLotteryTicket(cost) end

--- **Native**: `NETWORK_CAN_RECEIVE_PLAYER_CASH` (`0x5D17BE59D2123284`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@return boolean result
function MoneyStatic.canReceivePlayerCash(p0, p1, p2, p3) end

--- ```
--- NativeDB Added Parameter 6: Any p5
--- ```
--- **Native**: `NETWORK_CAN_SPEND_MONEY` (`0xAB3CAA6B422164DA`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p4 any
---@return boolean result
function MoneyStatic.canSpendMoney(p0, p1, p2, p3, p4) end

--- ```
--- NETWORK_CAN_R??? or NETWORK_CAN_S???
--- ```
---
--- ```
--- NativeDB Added Parameter 7: Any p6
--- ```
--- **Native**: `NETWORK_CAN_SPEND_MONEY_2` (`0x7303E27CC6532080`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
---@param p3 boolean
---@param p5 any
---@return boolean result
---@return any p4
function MoneyStatic.canSpendMoney2(p0, p1, p2, p3, p5) end

--- NETWORK_C\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_CASINO_CAN_GAMBLE` (`0xF62F6D9528358FE4`)
---@param p0 any
---@return boolean result
function MoneyStatic.casinoCanGamble(p0) end

--- Same as 0x8968D4D8C6C40C11.
--- NETWORK_C\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_CASINO_CAN_PURCHASE_CHIPS_WITH_PVC` (`0x394DCDB9E836B7A9`)
---@return boolean result
function MoneyStatic.casinoCanPurchaseChipsWithPvc() end

--- Same as 0x394DCDB9E836B7A9.
--- NETWORK_C\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_CASINO_CAN_PURCHASE_CHIPS_WITH_PVC_2` (`0x8968D4D8C6C40C11`)
---@return boolean result
function MoneyStatic.casinoCanPurchaseChipsWithPvc2() end

--- GTAO_CASINO_HOUSE
--- GTAO_CASINO_INSIDETRACK
--- GTAO_CASINO_LUCKYWHEEL
--- GTAO_CASINO_BLACKJACK
--- GTAO_CASINO_ROULETTE
--- GTAO_CASINO_SLOTS
--- GTAO_CASINO_PURCHASE_CHIPS
--- NETWORK_C\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_CASINO_CAN_USE_GAMBLING_TYPE` (`0x158C16F5E4CF41F8`)
---@param hash integer|string
---@return boolean result
function MoneyStatic.casinoCanUseGamblingType(hash) end

--- NETWORK_C\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_CASINO_PURCHASE_CHIPS` (`0x3BD101471C7F9EEC`)
---@param p0 integer
---@param p1 integer
---@return boolean result
function MoneyStatic.casinoPurchaseChips(p0, p1) end

--- NETWORK_C\*
---
--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_CASINO_SELL_CHIPS` (`0xED44897CB336F480`)
---@param p0 integer
---@param p1 integer
---@return boolean result
function MoneyStatic.casinoSellChips(p0, p1) end

--- **Native**: `NETWORK_CLEAR_CHARACTER_WALLET` (`0xA921DED15FDF28F5`)
---@param characterSlot integer
function MoneyStatic.clearCharacterWallet(characterSlot) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_DEDUCT_CASH` (`0x18B7AE224B087E26`)
---@param amount integer
---@param p1 string
---@param p2 string
---@param p3 boolean
---@param p4 boolean
---@param p5 boolean
function MoneyStatic.deductCash(amount, p1, p2, p3, p4, p5) end

--- ```
--- Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);
--- ```
--- **Native**: `NETWORK_DELETE_CHARACTER` (`0x05A50AF38947EB8D`)
---@param characterSlot integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.deleteCharacter(characterSlot, p1, p2) end

--- ```
--- Does nothing and always returns false.
--- ```
--- **Native**: `DEPOSIT_VC` (`0xE260E0BB9CD995AC`)
---@param amount integer
---@return boolean result
function MoneyStatic.depositVc(amount) end

--- **Native**: `NETWORK_EARN_BOSS` (`0x08B0CA7A6AB3AC32`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnBoss(p0, p1, p2) end

--- **Native**: `NETWORK_EARN_BOSS_AGENCY` (`0x0CB1BE0633C024A8`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.earnBossAgency(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_BOUNTY_HUNTER_REWARD` (`0xF6B170F9A02E9E87`)
---@param p0 any
function MoneyStatic.earnBountyHunterReward(p0) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `NETWORK_EARN_CASINO_HEIST` (`0x72E7C7B9615FA3C3`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
function MoneyStatic.earnCasinoHeist(p0, p1, p2, p3, p4, p5, p6) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `NETWORK_EARN_CASINO_HEIST_BONUS` (`0x3EC7471E6909798A`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.earnCasinoHeistBonus(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `NETWORK_EARN_COLLECTABLE_COMPLETED_COLLECTION` (`0x5C9B198AF5A54FA6`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnCollectableCompletedCollection(amount, p1) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FMBB_WAGE_BONUS` (`0xFFFBA1B1F7C0B6F4`)
---@param p0 any
function MoneyStatic.earnFmbbWageBonus(p0) end

--- ```
--- DSPORT
--- ```
--- **Native**: `NETWORK_EARN_FROM_AI_TARGET_KILL` (`0x515B4A22E4D3C6D7`)
---@param p0 any
---@param p1 any
function MoneyStatic.earnFromAiTargetKill(p0, p1) end

--- ```
--- Example for p1: "AM_DISTRACT_COPS"
--- ```
--- **Native**: `NETWORK_EARN_FROM_AMBIENT_JOB` (`0xFB6DB092FBAE29E6`)
---@param p0 integer
---@param p1 string
---@param p2 any
---@return any p2
function MoneyStatic.earnFromAmbientJob(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_ARENA_CAREER_PROGRESSION` (`0x0F99F70C61F14619`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnFromArenaCareerProgression(amount, p1) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_ARENA_SKILL_LEVEL_PROGRESSION` (`0xE08256F972C7BB2C`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnFromArenaSkillLevelProgression(amount, p1) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_ARENA_WAR` (`0x631F1CB8FB4130AA`)
---@param amount integer
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.earnFromArenaWar(amount, p1, p2, p3) end

--- ```
--- For the money bags that drop a max of $40,000. Often called 40k bags.
--- Most likely NETWORK_EARN_FROM_ROB***
--- ```
--- **Native**: `NETWORK_EARN_FROM_ARMOUR_TRUCK` (`0xF514621E8EA463D0`)
---@param amount integer
function MoneyStatic.earnFromArmourTruck(amount) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED` (`0xFA700D8A9905F78A`)
---@param amount integer
function MoneyStatic.earnFromAssassinateTargetKilled(amount) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED_2` (`0x5E7AE8AABE8B7C0D`)
---@param amount integer
function MoneyStatic.earnFromAssassinateTargetKilled2(amount) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_AUTOSHOP_BUSINESS` (`0x36A7FD5A7194B03E`)
---@param p0 any
---@param p1 any
function MoneyStatic.earnFromAutoshopBusiness(p0, p1) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_AUTOSHOP_INCOME` (`0xC66D1CF99ED7FE25`)
---@param p0 any
function MoneyStatic.earnFromAutoshopIncome(p0) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_BB_EVENT_BONUS` (`0xFDD8D2440DAF1590`)
---@param amount integer
function MoneyStatic.earnFromBbEventBonus(amount) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_BB_EVENT_CARGO` (`0xA82959062361B259`)
---@param amount integer
function MoneyStatic.earnFromBbEventCargo(amount) end

--- **Native**: `NETWORK_EARN_FROM_BEND_JOB` (`0x61326EE6DF15B0CA`)
---@param amount integer
---@param heistHash string
function MoneyStatic.earnFromBendJob(amount, heistHash) end

--- **Native**: `NETWORK_EARN_FROM_BETTING` (`0x827A5BA1A44ACA6D`)
---@param amount integer
---@param p1 string
function MoneyStatic.earnFromBetting(amount, p1) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_EARN_FROM_BIKER_INCOME` (`0x71BEC32FA466E105`)
---@param p0 any
function MoneyStatic.earnFromBikerIncome(p0) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_EARN_FROM_BIKE_SHOP_BUSINESS` (`0x2C5809EB9DF57257`)
---@param p0 any
---@param p1 any
function MoneyStatic.earnFromBikeShopBusiness(p0, p1) end

--- **Native**: `NETWORK_EARN_FROM_BOUNTY` (`0x131BB5DA15453ACF`)
---@param amount integer
---@param p3 any
---@return integer networkHandle
---@return any p2
function MoneyStatic.earnFromBounty(amount, p3) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FROM_BUSINESS_BATTLE` (`0x42FCE14F50F27291`)
---@param p0 any
function MoneyStatic.earnFromBusinessBattle(p0) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FROM_BUSINESS_HUB_SELL` (`0x0B39CF0D53F1C883`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnFromBusinessHubSell(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_EARN_FROM_BUSINESS_HUB_SOURCE` (`0x59498BC8B1C8B15C`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.earnFromBusinessHubSource(p0, p1, p2, p3) end

--- **Native**: `NETWORK_EARN_FROM_BUSINESS_PRODUCT` (`0x8586789730B10CAF`)
---@param amount integer
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.earnFromBusinessProduct(amount, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_CARCLUB_MEMBERSHIP` (`0xBC6227792A188E2E`)
---@param p0 any
function MoneyStatic.earnFromCarclubMembership(p0) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_CASHING_OUT` (`0xEFE9C9A1651B81E6`)
---@param amount integer
function MoneyStatic.earnFromCashingOut(amount) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_CASINO_AWARD` (`0x973A9781A34F8DEB`)
---@param amount integer
---@param hash integer|string
function MoneyStatic.earnFromCasinoAward(amount, hash) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_CASINO_MISSION_PARTICIPATION` (`0x09E8F18641BE2575`)
---@param amount integer
function MoneyStatic.earnFromCasinoMissionParticipation(amount) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_CASINO_MISSION_REWARD` (`0x566FD402B25787DE`)
---@param amount integer
function MoneyStatic.earnFromCasinoMissionReward(amount) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_CASINO_STORY_MISSION_REWARD` (`0xAC95ED552157E092`)
---@param amount integer
function MoneyStatic.earnFromCasinoStoryMissionReward(amount) end

--- **Native**: `NETWORK_EARN_FROM_CHALLENGE_WIN` (`0x2B171E6B2F64D8DF`)
---@param p0 any
---@param p2 boolean
---@return any p1
function MoneyStatic.earnFromChallengeWin(p0, p2) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FROM_CLUB_MANAGEMENT_PARTICIPATION` (`0xA75EAC69F59E96E7`)
---@param p0 any
function MoneyStatic.earnFromClubManagementParticipation(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_COLLECTABLES_ACTION_FIGURES` (`0x5517F90043466049`)
---@param amount integer
function MoneyStatic.earnFromCollectablesActionFigures(amount) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_COLLECTION_ITEM` (`0x84FF63BD4966F33D`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnFromCollectionItem(amount, p1) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_COMPLETE_COLLECTION` (`0x83AD64F53F4E9483`)
---@param amount integer
function MoneyStatic.earnFromCompleteCollection(amount) end

--- **Native**: `NETWORK_EARN_FROM_CONTRABAND` (`0xECA658CE2A4E5A72`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnFromContraband(amount, p1) end

--- **Native**: `NETWORK_EARN_FROM_CRATE_DROP` (`0xB1CC1B9EC3007A2A`)
---@param amount integer
function MoneyStatic.earnFromCrateDrop(amount) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_CRIMINAL_MASTERMIND_BONUS` (`0xFA009A62990671D4`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnFromCriminalMastermindBonus(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_DAILY_OBJECTIVE_EVENT` (`0x5128DF14A5BB86FC`)
---@param amount integer
function MoneyStatic.earnFromDailyObjectiveEvent(amount) end

--- **Native**: `NETWORK_EARN_FROM_DAILY_OBJECTIVES` (`0x6EA318C91C1A8786`)
---@param p0 integer
---@param p1 string
---@param p2 integer
function MoneyStatic.earnFromDailyObjectives(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_DAR_CHALLENGE` (`0xCAC672087B4A24AB`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnFromDarChallenge(amount, p1) end

--- **Native**: `NETWORK_EARN_FROM_DESTROYING_CONTRABAND` (`0x84C0116D012E8FC2`)
---@param p0 any
function MoneyStatic.earnFromDestroyingContraband(p0) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_DOOMSDAY_FINALE_BONUS` (`0x128A747F4A230952`)
---@param amount integer
---@param vehicleHash integer|string
function MoneyStatic.earnFromDoomsdayFinaleBonus(amount, vehicleHash) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FROM_FMBB_BOSS_WORK` (`0x1FDA0AA679C9919B`)
---@param p0 any
function MoneyStatic.earnFromFmbbBossWork(p0) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FROM_FMBB_PHONECALL_MISSION` (`0xC5156361F26E2212`)
---@param p0 any
function MoneyStatic.earnFromFmbbPhonecallMission(p0) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_AWARDS` (`0xA9A31475F530DFDA`)
---@param amount integer
---@param unk string
---@param p2 any
function MoneyStatic.earnFromGangopsAwards(amount, unk, p2) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_ELITE` (`0x2597A0D4A4FC2C77`)
---@param amount integer
---@param unk string
---@param actIndex integer
function MoneyStatic.earnFromGangopsElite(amount, unk, actIndex) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_JOBS_FINALE` (`0x1C121FC9545E0D52`)
---@param amount integer
---@param unk string
function MoneyStatic.earnFromGangopsJobsFinale(amount, unk) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_JOBS_PREP_PARTICIPATION` (`0xED26584F6BDCBBFD`)
---@param amount integer
function MoneyStatic.earnFromGangopsJobsPrepParticipation(amount) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_JOBS_SETUP` (`0xA9160796D47A2CF8`)
---@param amount integer
---@param unk string
function MoneyStatic.earnFromGangopsJobsSetup(amount, unk) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_WAGES` (`0x2DCB19ABAB0380A8`)
---@param amount integer
---@param p1 integer
function MoneyStatic.earnFromGangopsWages(amount, p1) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_GANGOPS_WAGES_BONUS` (`0x15BB2A5C757EB91F`)
---@param amount integer
---@param p1 integer
function MoneyStatic.earnFromGangopsWagesBonus(amount, p1) end

--- **Native**: `NETWORK_EARN_FROM_GANG_PICKUP` (`0xA03D4ACE0A3284CE`)
---@param amount integer
function MoneyStatic.earnFromGangPickup(amount) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_EARN_FROM_HACKER_TRUCK_MISSION` (`0xE8815FE993896AD3`)
---@param p0 any
---@param amount integer
---@param p2 any
---@param p3 any
function MoneyStatic.earnFromHackerTruckMission(p0, amount, p2, p3) end

--- **Native**: `NETWORK_EARN_FROM_HOLDUPS` (`0x45B8154E077D9E4D`)
---@param amount integer
function MoneyStatic.earnFromHoldups(amount) end

--- **Native**: `NETWORK_EARN_FROM_IMPORT_EXPORT` (`0xF92A014A634442D6`)
---@param amount integer
---@param modelHash fx.Model|integer|string
function MoneyStatic.earnFromImportExport(amount, modelHash) end

--- **Native**: `NETWORK_EARN_FROM_JOB` (`0xB2CC4836834E8A98`)
---@param amount integer
---@param p1 string
function MoneyStatic.earnFromJob(amount, p1) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_EARN_FROM_JOB_BONUS` (`0x6816FB4416760775`)
---@param p0 any
---@return any p1
---@return any p2
function MoneyStatic.earnFromJobBonus(p0) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_JOB_X2` (`0xDEBBF584665411D0`)
---@param amount integer
---@param p1 string
function MoneyStatic.earnFromJobX2(amount, p1) end

--- **Native**: `NETWORK_EARN_FROM_NOT_BADSPORT` (`0x4337511FA8221D36`)
---@param amount integer
function MoneyStatic.earnFromNotBadsport(amount) end

--- **Native**: `NETWORK_EARN_FROM_PERSONAL_VEHICLE` (`0x3F4D00167E41E0AD`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
function MoneyStatic.earnFromPersonalVehicle(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- **Native**: `NETWORK_EARN_FROM_PICKUP` (`0xED1517D3AF17C698`)
---@param amount integer
function MoneyStatic.earnFromPickup(amount) end

--- **Native**: `NETWORK_EARN_FROM_PREMIUM_JOB` (`0xC8407624CEF2354B`)
---@param amount integer
---@param p1 string
function MoneyStatic.earnFromPremiumJob(amount, p1) end

--- **Native**: `NETWORK_EARN_FROM_PROPERTY` (`0x849648349D77F5C5`)
---@param amount integer
---@param propertyName integer|string
function MoneyStatic.earnFromProperty(amount, propertyName) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_RC_TIME_TRIAL` (`0xDFF49EE984E7AAE8`)
---@param amount integer
function MoneyStatic.earnFromRcTimeTrial(amount) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_RDR_BONUS` (`0x7A5349B773584675`)
---@param amount integer
---@param p1 any
function MoneyStatic.earnFromRdrBonus(amount, p1) end

--- **Native**: `NETWORK_EARN_FROM_ROCKSTAR` (`0x02CE1D6AC0FC73EA`)
---@param amount integer
function MoneyStatic.earnFromRockstar(amount) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_SELL_BASE` (`0x0E1E2FF3F4EC11AA`)
---@param amount integer
---@param baseNameHash integer|string
function MoneyStatic.earnFromSellBase(amount, baseNameHash) end

--- **Native**: `NETWORK_EARN_FROM_SELL_BUNKER` (`0x9251B6ABF2D0A5B4`)
---@param amount integer
---@param bunkerHash integer|string
function MoneyStatic.earnFromSellBunker(amount, bunkerHash) end

--- ```
--- NativeDB Added Parameter 2: Any p1
--- NativeDB Added Parameter 3: Any p2
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_SELLING_VEHICLE` (`0x8BCB27A057DF7B7F`)
---@param amount integer
function MoneyStatic.earnFromSellingVehicle(amount) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_EARN_FROM_SIGHTSEEING` (`0x45087AE480B233AC`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.earnFromSightseeing(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_EARN_FROM_SMUGGLING` (`0xDEE612F2D71B0308`)
---@param amount integer
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.earnFromSmuggling(amount, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_EARN_FROM_SPIN_THE_WHEEL_CASH` (`0x676C48776CACBB5A`)
---@param amount integer
function MoneyStatic.earnFromSpinTheWheelCash(amount) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_FROM_TARGET_REFUND` (`0x5B669CF2299A271F`)
---@param amount integer
---@param p1 integer
function MoneyStatic.earnFromTargetRefund(amount, p1) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_EARN_FROM_TIME_TRIAL_WIN` (`0x0819DB99FD2FBBD8`)
---@param amount integer
function MoneyStatic.earnFromTimeTrialWin(amount) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_TUNER_AWARD` (`0xB846F547D3792DF6`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnFromTunerAward(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_TUNER_FINALE` (`0xBCB266247193AC61`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.earnFromTunerFinale(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_UPGRADE_AUTOSHOP_LOCATION` (`0xC10322A8D3E061EE`)
---@param p0 any
---@param p1 any
function MoneyStatic.earnFromUpgradeAutoshopLocation(p0, p1) end

--- **Native**: `NETWORK_EARN_FROM_VEHICLE` (`0xB539BD8A4C1EECF8`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
function MoneyStatic.earnFromVehicle(p0, p1, p2, p3, p4, p5, p6, p7) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_VEHICLE_AUTOSHOP` (`0x533073E8A596008C`)
---@param p0 any
---@param p1 any
function MoneyStatic.earnFromVehicleAutoshop(p0, p1) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_EARN_FROM_VEHICLE_AUTOSHOP_BONUS` (`0xFE65AFE7308E32B2`)
---@param p0 any
function MoneyStatic.earnFromVehicleAutoshopBonus(p0) end

--- **Native**: `NETWORK_EARN_FROM_VEHICLE_EXPORT` (`0xEDEAD9A91EC768B3`)
---@param amount integer
---@param p1 any
---@param p2 any
function MoneyStatic.earnFromVehicleExport(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_EARN_FROM_WAGE_PAYMENT` (`0x35F8DA0E8A31EF1B`)
---@param amount integer
function MoneyStatic.earnFromWagePayment(amount) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_EARN_FROM_WAGE_PAYMENT_BONUS` (`0x005ACA7100BD101D`)
---@param amount integer
function MoneyStatic.earnFromWagePaymentBonus(amount) end

--- ```
--- NativeDB Added Parameter 1: int amount
--- NativeDB Added Parameter 2: int id
--- ```
--- **Native**: `NETWORK_EARN_FROM_WAREHOUSE` (`0x3E4ADAFF1830F146`)
function MoneyStatic.earnFromWarehouse() end

--- **Native**: `NETWORK_EARN_GOON` (`0xCDA1C62BE2777802`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnGoon(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_EARN_ISLAND_HEIST` (`0xD21D111C46BA9F15`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function MoneyStatic.earnIslandHeist(p0, p1, p2, p3, p4, p5) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_JOB_BONUS_FIRST_TIME_BONUS` (`0x11B0A20C493F7E36`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnJobBonusFirstTimeBonus(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_EARN_JOB_BONUS_HEIST_AWARD` (`0x9D4FDBB035229669`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.earnJobBonusHeistAward(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_GET_STRING_WALLET_BALANCE` (`0xF9B10B529DCFB33B`)
---@param characterSlot integer
---@return string result
function MoneyStatic.getStringWalletBalance(characterSlot) end

--- ```
--- Returns true if bank balance >= amount.
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_GET_VC_BANK_BALANCE_IS_NOT_LESS_THAN` (`0xA31FD6A0865B6D14`)
---@param amount integer
---@return boolean result
function MoneyStatic.getVcBankBalanceIsNotLessThan(amount) end

--- ```
--- Returns true if bank balance + wallet balance >= amount.
--- ```
--- **Native**: `NETWORK_GET_VC_BANK_WALLET_BALANCE_IS_NOT_LESS_THAN` (`0xDC18531D7019A535`)
---@param amount integer
---@param characterSlot integer
---@return boolean result
function MoneyStatic.getVcBankWalletBalanceIsNotLessThan(amount, characterSlot) end

--- **Native**: `NETWORK_GET_VC_WALLET_BALANCE` (`0xA40F9C2623F6A8B5`)
---@param characterSlot integer
---@return integer result
function MoneyStatic.getVcWalletBalance(characterSlot) end

--- ```
--- Returns true if wallet balance >= amount.
---
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_GET_VC_WALLET_BALANCE_IS_NOT_LESS_THAN` (`0xED5AB8860415BABA`)
---@param amount integer
---@param characterSlot integer
---@return boolean result
function MoneyStatic.getVcWalletBalanceIsNotLessThan(amount, characterSlot) end

--- **Native**: `NETWORK_GIVE_PLAYER_JOBSHARE_CASH` (`0xFB18DF9CB95E0105`)
---@param amount integer
---@param networkHandle integer
---@return integer networkHandle
function MoneyStatic.givePlayerJobshareCash(amount, networkHandle) end

--- **Native**: `NETWORK_INITIALIZE_CASH` (`0x3DA5ECD1A56CBA6D`)
---@param wallet integer
---@param bank integer
function MoneyStatic.initializeCash(wallet, bank) end

--- **Native**: `NETWORK_MANUAL_DELETE_CHARACTER` (`0x821418C727FCACD7`)
---@param characterSlot integer
function MoneyStatic.manualDeleteCharacter(characterSlot) end

--- **Native**: `NETWORK_MONEY_CAN_BET` (`0x81404F3DC124FE5B`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
---@return boolean result
function MoneyStatic.moneyCanBet(amount, p1, p2) end

--- **Native**: `NETWORK_PAY_EMPLOYEE_WAGE` (`0x5FD5ED82CBBE9989`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.payEmployeeWage(p0, p1, p2) end

--- **Native**: `NETWORK_PAY_MATCH_ENTRY_FEE` (`0x9346E14F2AF74D46`)
---@param amount integer
---@param matchId string
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.payMatchEntryFee(amount, matchId, p2, p3) end

--- **Native**: `NETWORK_PAY_UTILITY_BILL` (`0xAFE08B35EC0C9EAE`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.payUtilityBill(amount, p1, p2) end

--- **Native**: `PROCESS_CASH_GIFT` (`0x20194D48EAEC9A41`)
---@param p2 string
---@return string result
---@return integer p0
---@return integer p1
function MoneyStatic.processCashGift(p2) end

--- **Native**: `NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH` (`0x56A3B51944C50598`)
---@param value integer
---@param networkHandle integer
---@return integer networkHandle
function MoneyStatic.receivePlayerJobshareCash(value, networkHandle) end

--- ```
--- index
--- -------
--- See function sub_1005 in am_boat_taxi.ysc
--- context
--- ----------
--- "BACKUP_VAGOS"
--- "BACKUP_LOST"
--- "BACKUP_FAMILIES"
--- "HIRE_MUGGER"
--- "HIRE_MERCENARY"
--- "BUY_CARDROPOFF"
--- "HELI_PICKUP"
--- "BOAT_PICKUP"
--- "CLEAR_WANTED"
--- "HEAD_2_HEAD"
--- "CHALLENGE"
--- "SHARE_LAST_JOB"
--- "DEFAULT"
--- reason
--- ---------
--- "NOTREACHTARGET"
--- "TARGET_ESCAPE"
--- "DELIVERY_FAIL"
--- "NOT_USED"
--- "TEAM_QUIT"
--- "SERVER_ERROR"
--- "RECEIVE_LJ_L"
--- "CHALLENGE_PLAYER_LEFT"
--- "DEFAULT"
--- unk
--- -----
--- Unknown bool value
--- ```
--- **Native**: `NETWORK_REFUND_CASH` (`0xF9C812CD7C46E817`)
---@param index integer
---@param context string
---@param reason string
---@param unk boolean
function MoneyStatic.refundCash(index, context, reason, unk) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_RIVAL_DELIVERY_COMPLETED` (`0x1B882107C23A9022`)
---@param earnedMoney integer
function MoneyStatic.rivalDeliveryCompleted(earnedMoney) end

--- **Native**: `NETWORK_SPENT_AMMO_DROP` (`0xB162DC95C0A3317B`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentAmmoDrop(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `NETWORK_SPENT_ARCADE_GAME` (`0xEAD3D81F2C3A1458`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentArcadeGame(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `NETWORK_SPENT_ARCADE_GENERIC` (`0x43AA7FAC4E6D6687`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentArcadeGeneric(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_SPENT_ARENA_JOIN_SPECTATOR` (`0x14EAEA58F93B55AF`)
---@param amount integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentArenaJoinSpectator(amount, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_SPENT_ARENA_PREMIUM` (`0x619496D837EFD920`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentArenaPremium(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_SPENT_ARENA_SPECTATOR_BOX` (`0x7049BF858601DC0F`)
---@param amount integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentArenaSpectatorBox(amount, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_ARREST_BAIL` (`0x812F5488B1B2A299`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentArrestBail(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_AUTOSHOP_MODIFICATIONS` (`0x9BEA350D7C48061B`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentAutoshopModifications(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_AUTOSHOP_PROPERTY_UTILITY_FEE` (`0xB40F96D6D252839B`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentAutoshopPropertyUtilityFee(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_BALLISTIC_EQUIPMENT` (`0x5D97630A8A0EF123`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBallisticEquipment(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_SPENT_BANK_INTEREST` (`0xCA230C9682556CF1`)
---@param p0 integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBankInterest(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_BA_SERVICE` (`0xD7CCCBA28C4ECAF0`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentBaService(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_SPENT_BEACH_PARTY_GENERIC` (`0x54ABA22FA6371249`)
---@param p0 any
function MoneyStatic.spentBeachPartyGeneric(p0) end

--- **Native**: `NETWORK_SPENT_BETTING` (`0x1C436FD11FFA692F`)
---@param amount integer
---@param p1 integer
---@param matchId string
---@param p3 boolean
---@param p4 boolean
function MoneyStatic.spentBetting(amount, p1, matchId, p3, p4) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SPENT_BIKE_SHOP_MODIFY` (`0x923AEA8E78F8DF0B`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBikeShopModify(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_BOAT_PICKUP` (`0x524EE43A37232C00`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBoatPickup(p0, p1, p2) end

--- ```
--- NativeDB Added Parameter 1: int amount
--- NativeDB Added Parameter 2: BOOL p1
--- NativeDB Added Parameter 3: BOOL p2
--- ```
--- **Native**: `NETWORK_SPENT_BOSS` (`0xFFBE02CD385356BD`)
---@return boolean result
function MoneyStatic.spentBoss() end

--- **Native**: `NETWORK_SPENT_BOUNTY` (`0x29B260B84947DFCC`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBounty(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_SPENT_BOUNTY_HUNTER_MISSION` (`0x1BEA0CD93470BB1F`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBountyHunterMission(amount, p1, p2) end

--- **Native**: `NETWORK_SPENT_BULL_SHARK` (`0xA6DD8458CE24012C`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBullShark(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_BUSINESS` (`0x0035BB914316F1E3`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBusiness(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_SPENT_BUY_ARENA` (`0x40D5DA9550B7CB46`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
---@param p3 string
function MoneyStatic.spentBuyArena(amount, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_BUY_AUTOSHOP` (`0xEEB7E5D1FEB20869`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBuyAutoshop(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_BUY_BASE` (`0x4EA3F425C7744D21`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBuyBase(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_BUY_BUNKER` (`0x12D148D26538D0F9`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBuyBunker(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_SPENT_BUY_CASINO` (`0x34A6FC4D06C4DA0F`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
---@param data any
---@return any data
function MoneyStatic.spentBuyCasino(amount, p1, p2, data) end

--- **Native**: `NETWORK_SPENT_BUY_OFFTHERADAR` (`0xA628A745E2275C5D`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBuyOfftheradar(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_BUY_PASSIVE_MODE` (`0x6D3A430D1A809179`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBuyPassiveMode(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_BUY_REVEAL_PLAYERS` (`0x6E176F1B18BC0637`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentBuyRevealPlayers(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_BUY_TILTROTOR` (`0x0CCE73BC7A11E885`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBuyTiltrotor(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_BUY_TRUCK` (`0xAC272C0AE01B4BD8`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentBuyTruck(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_BUY_WANTEDLEVEL` (`0xE1B13771A843C4F6`)
---@param p0 any
---@param p2 boolean
---@param p3 boolean
---@return any p1
function MoneyStatic.spentBuyWantedlevel(p0, p2, p3) end

--- **Native**: `NETWORK_SPENT_CALL_PLAYER` (`0xACDE7185B374177C`)
---@param p0 any
---@param p2 boolean
---@param p3 boolean
---@return any p1
function MoneyStatic.spentCallPlayer(p0, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_CARCLUB` (`0x925227803A0EAA1B`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
---@param p3 any
function MoneyStatic.spentCarclub(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_CARCLUB_MEMBERSHIP` (`0x1464E17207CD36E2`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentCarclubMembership(p0, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_CARCLUB_TAKEOVER` (`0xD1E46824E6FB92B5`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentCarclubTakeover(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SPENT_CARGO_SOURCING` (`0x948705F6F9C50824`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function MoneyStatic.spentCargoSourcing(p0, p1, p2, p3, p4, p5) end

--- **Native**: `NETWORK_SPENT_CARWASH` (`0xEC03C719DB2F4306`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 boolean
---@param p4 boolean
function MoneyStatic.spentCarwash(p0, p1, p2, p3, p4) end

--- **Native**: `NETWORK_SPENT_CASH_DROP` (`0x289016EC778D60E0`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentCashDrop(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_SPENT_CASINO_CLUB_GENERIC` (`0xC991C255AA6D90B2`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
---@param p6 any
---@param p7 any
---@param p8 any
function MoneyStatic.spentCasinoClubGeneric(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_SPENT_CASINO_GENERIC` (`0x88BF9B612B84D3C3`)
---@param amount integer
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentCasinoGeneric(amount, p1, p2, p3, p4) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `NETWORK_SPENT_CASINO_HEIST` (`0xD30E8392F407C328`)
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
---@param p10 any
function MoneyStatic.spentCasinoHeist(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

--- ```
--- NativeDB Introduced: v1868
--- ```
--- **Native**: `NETWORK_SPENT_CASINO_HEIST_SKIP_MISSION` (`0x487009DD91D93429`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentCasinoHeistSkipMission(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_SPENT_CASINO_MEMBERSHIP` (`0xFBBE0570EDF39D46`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
---@param p3 integer
function MoneyStatic.spentCasinoMembership(amount, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_CINEMA` (`0x6B38ECB05A63A685`)
---@param p0 any
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentCinema(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_EMPLOY_ASSASSINS` (`0x5BBBD92186E1F1C5`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentEmployAssassins(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_FROM_BANK` (`0xB9F7A469460E7A4A`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 boolean
function MoneyStatic.spentFromBank(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_FROM_ROCKSTAR` (`0x6A445B64ED7ABEB5`)
---@param bank integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentFromRockstar(bank, p1, p2) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_GANGOPS_CANNON` (`0x771ADB0E7635B7BF`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentGangopsCannon(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_GANGOPS_START_MISSION` (`0xDA947AE8880D5C18`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentGangopsStartMission(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_GANGOPS_START_STRAND` (`0xA19EC0786E326E06`)
---@param type_ integer
---@param amount integer
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentGangopsStartStrand(type_, amount, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_GANGOPS_TRIP_SKIP` (`0x5ECE6FD7B4EC8D6A`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentGangopsTripSkip(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SPENT_GUNRUNNING_CONTACT_SERVICE` (`0x2CEB0E0BC2A77C05`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentGunrunningContactService(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_SPENT_HANGAR_STAFF_CHARGES` (`0xB1F1346FD57685D7`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentHangarStaffCharges(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_SPENT_HANGAR_UTILITY_CHARGES` (`0xB18AC2ECBB15CB6A`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentHangarUtilityCharges(amount, p1, p2) end

--- **Native**: `NETWORK_SPENT_HELI_PICKUP` (`0x7BF1D73DB2ECA492`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentHeliPickup(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_HIRE_MERCENARY` (`0xE7B80E2BF9D80BD6`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentHireMercenary(p0, p1, p2) end

--- ```
--- Only used once in a script (am_contact_requests)
--- p1 = 0
--- p2 = 1
--- ```
--- **Native**: `NETWORK_SPENT_HIRE_MUGGER` (`0xE404BFB981665BF0`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentHireMugger(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_HOLDUPS` (`0xD9B86B9872039763`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentHoldups(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_IM_ABILITY` (`0x93AA4165CB67E925`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentImAbility(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_IMPORT_EXPORT_REPAIR` (`0xC1952F3773BA18FE`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.spentImportExportRepair(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_IN_STRIPCLUB` (`0xEE99784E4467689C`)
---@param p0 any
---@param p1 boolean
---@param p2 any
---@param p3 boolean
function MoneyStatic.spentInStripclub(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_SPENT_ISLAND_HEIST` (`0xE86689E5F82DE429`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentIslandHeist(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v323
--- ```
--- **Native**: `NETWORK_SPENT_JOB_SKIP` (`0x28F174A67B8D0C2F`)
---@param amount integer
---@param matchId string
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentJobSkip(amount, matchId, p2, p3) end

--- **Native**: `NETWORK_SPENT_JUKEBOX` (`0x5BCDE0F640C773D2`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentJukebox(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_SPENT_MAKE_IT_RAIN` (`0xE5F5A060439C2F5D`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentMakeItRain(amount, p1, p2) end

--- **Native**: `NETWORK_SPENT_MOVE_YACHT` (`0xE7DF4E0545DFB56E`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentMoveYacht(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_SPENT_NIGHTCLUB_BAR_DRINK` (`0xDD21B016E4289465`)
---@param amount integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentNightclubBarDrink(amount, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_NO_COPS` (`0xD5BB406F4E04019F`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentNoCops(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_ORDER_BODYGUARD_VEHICLE` (`0xE8B0B270B6E7C76E`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentOrderBodyguardVehicle(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_ORDER_WAREHOUSE_VEHICLE` (`0x05F04155A226FBBF`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentOrderWarehouseVehicle(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_PA_SERVICE_DANCER` (`0xB49ECA122467D05F`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentPaServiceDancer(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_PA_SERVICE_HELI_PICKUP` (`0x0FE8E1FCD2B86B33`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentPaServiceHeliPickup(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_PAY_BOSS` (`0xDBC966A01C02BCA7`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.spentPayBoss(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_PAY_GOON` (`0x08A1B82B91900682`)
---@param p0 integer
---@param p1 integer
---@param amount integer
function MoneyStatic.spentPayGoon(p0, p1, amount) end

--- ```
--- According to how I understood this in the freemode script alone,
--- The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.
--- The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.
--- The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").
--- The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.
--- The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,
--- bool hasTheMoney = MONEY::_GET_BANK_BALANCE() < carCost.
--- ```
--- **Native**: `NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM` (`0x9FF28D88C766E3E8`)
---@param amount integer
---@param vehicleModel fx.Model|integer|string
---@param notBankrupt boolean
---@param hasTheMoney boolean
---@return integer networkHandle
function MoneyStatic.spentPayVehicleInsurancePremium(amount, vehicleModel, notBankrupt, hasTheMoney) end

--- **Native**: `NETWORK_SPENT_PLAYER_HEALTHCARE` (`0x7C99101F7FCE2EE5`)
---@param p0 integer
---@param p1 integer
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentPlayerHealthcare(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_PROSTITUTES` (`0xB21B89501CFAC79E`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentProstitutes(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_SPENT_PURCHASE_HANGAR` (`0xCCB339CC970452DA`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentPurchaseHangar(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_PURCHASE_WAREHOUSE` (`0x33981D6804E62F49`)
---@param amount integer
---@param data any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentPurchaseWarehouse(amount, data, p2, p3) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_SPENT_RDRHATCHET_BONUS` (`0xE284D46FFDB82E36`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentRdrhatchetBonus(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v1493
--- ```
--- **Native**: `NETWORK_SPENT_REHIRE_DJ` (`0xF6C8A544E4CF14FC`)
---@param amount integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentRehireDj(amount, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_RENAME_ORGANIZATION` (`0xFC4EE00A7B3BFB76`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.spentRenameOrganization(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_REQUEST_HEIST` (`0x9D26502BB97BFE62`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentRequestHeist(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_REQUEST_JOB` (`0x8204DA7934DF3155`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentRequestJob(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_ROBBED_BY_MUGGER` (`0x995A65F15F581359`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentRobbedByMugger(amount, p1, p2) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SPENT_SALES_DISPLAY` (`0x7E2F4E8F44CAF4E0`)
---@param p0 boolean
function MoneyStatic.spentSalesDisplay(p0) end

--- ```
--- NativeDB Introduced: v1604
---
--- NativeDB Removed Parameter 4: BOOL p3
--- ```
--- **Native**: `NETWORK_SPENT_SPIN_THE_WHEEL_PAYMENT` (`0x9A5BD1D0000B339C`)
---@param amount integer
---@param p1 any
---@param p2 boolean
---@param p3 boolean
function MoneyStatic.spentSpinTheWheelPayment(amount, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_SPENT_SUBMARINE` (`0x6C8BC1488527AAAB`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
---@param p5 any
function MoneyStatic.spentSubmarine(p0, p1, p2, p3, p4, p5) end

--- **Native**: `NETWORK_SPENT_TAXI` (`0x17C3A7D31EAE39F9`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentTaxi(amount, p1, p2) end

--- **Native**: `NETWORK_SPENT_TELESCOPE` (`0x7FE61782AD94CC09`)
---@param p0 any
---@param p1 boolean
---@param p2 boolean
function MoneyStatic.spentTelescope(p0, p1, p2) end

--- ```
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_ARENA` (`0x037ABB06825D7AB1`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
---@param p3 string
function MoneyStatic.spentUpgradeArena(amount, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2372
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_AUTOSHOP` (`0xDD829AA198FDC46C`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeAutoshop(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_BASE` (`0x3DD3F33A5D55EA6F`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeBase(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_UPGRADE_BUNKER` (`0x0C82D21A77C22D49`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeBunker(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1734
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_CASINO` (`0x4740D62BC1B4EBEA`)
---@param amount integer
---@param p1 boolean
---@param p2 boolean
---@param data any
---@return any data
function MoneyStatic.spentUpgradeCasino(amount, p1, p2, data) end

--- ```
--- NativeDB Introduced: v1180
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_HANGAR` (`0x615EB504B0788DAF`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeHangar(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_SUB` (`0x89049A84065CE68E`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeSub(p0, p1, p2, p3) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NETWORK_SPENT_UPGRADE_TILTROTOR` (`0x165E135D6DFA2907`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeTiltrotor(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_UPGRADE_TRUCK` (`0x365E877C61D6988B`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
function MoneyStatic.spentUpgradeTruck(p0, p1, p2, p3) end

--- **Native**: `NETWORK_SPENT_VEHICLE_EXPORT_MODS` (`0xA75CCF58A60A5FD1`)
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
function MoneyStatic.spentVehicleExportMods(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- ```
--- NativeDB Introduced: v2699
--- ```
--- **Native**: `NETWORK_SPENT_VEHICLE_REQUESTED` (`0x02D24A35A9CC3503`)
---@param p0 any
---@param p1 any
---@param p2 any
---@param p3 any
---@param p4 any
function MoneyStatic.spentVehicleRequested(p0, p1, p2, p3, p4) end

--- **Native**: `NETWORK_SPENT_VIP_UTILITY_CHARGES` (`0x5182A339A3474510`)
---@param p0 any
---@param p1 any
---@param p2 any
function MoneyStatic.spentVipUtilityCharges(p0, p1, p2) end

--- **Native**: `NETWORK_SPENT_WAGER` (`0xD99DB210089617FE`)
---@param p0 any
---@param p1 any
---@param amount integer
function MoneyStatic.spentWager(p0, p1, amount) end

--- ```
--- Does nothing and always returns 0.
--- ```
--- **Native**: `WITHDRAW_VC` (`0xF70EFA14FE091429`)
---@param amount integer
---@return integer result
function MoneyStatic.withdrawVc(amount) end

