---@meta
---@diagnostic disable
-- fx.Netshopping (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Netshopping
---@field isCatalogValid boolean (read-only) [NET_GAMESERVER_IS_CATALOG_VALID]
---@field isSessionRefreshPending boolean (read-only) [NET_GAMESERVER_IS_SESSION_REFRESH_PENDING]
local NetshoppingStatic = {}

--- **Native**: `NET_GAMESERVER_BASKET_ADD_ITEM` (`0xF30980718C8ED876`)
---@param quantity integer
---@return boolean result
---@return any itemData
function NetshoppingStatic.basketAddItem(quantity) end

--- **Native**: `NET_GAMESERVER_BASKET_APPLY_SERVER_DATA` (`0xE1A0450ED46A7812`)
---@param p0 any
---@param p1 any
---@return boolean result
---@return any p1
function NetshoppingStatic.basketApplyServerData(p0, p1) end

--- ```
--- NativeDB Introduced: v372
--- ```
--- **Native**: `NET_GAMESERVER_BASKET_DELETE` (`0xFA336E7F40C0A0D0`)
---@return boolean result
function NetshoppingStatic.basketDelete() end

--- **Native**: `NET_GAMESERVER_BASKET_END` (`0xA65568121DF2EA26`)
---@return boolean result
function NetshoppingStatic.basketEnd() end

--- **Native**: `NET_GAMESERVER_BASKET_IS_FULL` (`0x27F76CC6C55AD30E`)
---@return boolean result
function NetshoppingStatic.basketIsFull() end

--- **Native**: `NET_GAMESERVER_BASKET_START` (`0x279F08B1A4B29B7E`)
---@param categoryHash integer|string
---@param actionHash integer|string
---@param flags integer
---@return boolean result
---@return integer transactionId
function NetshoppingStatic.basketStart(categoryHash, actionHash, flags) end

--- **Native**: `NET_GAMESERVER_BEGIN_SERVICE` (`0x3C5FD37B5499582E`)
---@param categoryHash integer|string
---@param itemHash integer|string
---@param actionTypeHash integer|string
---@param value integer
---@param flags integer
---@return boolean result
---@return integer transactionId
function NetshoppingStatic.beginService(categoryHash, itemHash, actionTypeHash, value, flags) end

--- **Native**: `NET_GAMESERVER_CATALOG_IS_READY` (`0x3C4487461E9B0DCB`)
---@return boolean result
function NetshoppingStatic.catalogIsReady() end

--- **Native**: `NET_GAMESERVER_CATALOG_ITEM_EXISTS` (`0xBD4D7EAF8A30F637`)
---@param name string
---@return boolean result
function NetshoppingStatic.catalogItemExists(name) end

--- **Native**: `NET_GAMESERVER_CATALOG_ITEM_EXISTS_HASH` (`0x247F0F73A182EA0B`)
---@param hash integer|string
---@return boolean result
function NetshoppingStatic.catalogItemExistsHash(hash) end

--- **Native**: `NET_GAMESERVER_CHECKOUT_START` (`0x39BE7CEA8D9CC8E6`)
---@param transactionId integer
---@return boolean result
function NetshoppingStatic.checkoutStart(transactionId) end

--- **Native**: `NET_GAMESERVER_DELETE_CHARACTER_SLOT` (`0x51F1A8E48C3D2F6D`)
---@param slot integer
---@param transfer boolean
---@param reason integer|string
---@return boolean result
function NetshoppingStatic.deleteCharacterSlot(slot, transfer, reason) end

--- **Native**: `NET_GAMESERVER_DELETE_CHARACTER_SLOT_GET_STATUS` (`0x0A6D923DFFC9BD89`)
---@return integer result
function NetshoppingStatic.deleteCharacterSlotGetStatus() end

--- **Native**: `NET_GAMESERVER_DELETE_SET_TELEMETRY_NONCE_SEED` (`0x112CEF1615A1139F`)
---@return boolean result
function NetshoppingStatic.deleteSetTelemetryNonceSeed() end

--- **Native**: `NET_GAMESERVER_END_SERVICE` (`0xE2A99A9B524BEFFF`)
---@param transactionId integer
---@return boolean result
function NetshoppingStatic.endService(transactionId) end

--- ```
--- Note: only one of the arguments can be set to true at a time
--- ```
--- **Native**: `NET_GAMESERVER_GET_BALANCE` (`0x35A1B3E1D1315CFA`)
---@param inventory boolean
---@param playerbalance boolean
---@return boolean result
function NetshoppingStatic.getBalance(inventory, playerbalance) end

--- **Native**: `NET_GAMESERVER_GET_CATALOG_STATE` (`0xCF38DAFBB49EDE5E`)
---@param state integer
---@return boolean result
---@return integer state
function NetshoppingStatic.getCatalogState(state) end

--- ```
--- bool is always true in game scripts
--- ```
--- **Native**: `NET_GAMESERVER_GET_PRICE` (`0xC27009422FCCA88D`)
---@param itemHash integer|string
---@param categoryHash integer|string
---@param p2 boolean
---@return integer result
function NetshoppingStatic.getPrice(itemHash, categoryHash, p2) end

--- **Native**: `NET_GAMESERVER_GET_TRANSACTION_MANAGER_DATA` (`0x897433D292B44130`)
---@return boolean result
---@return integer p0
---@return boolean p1
function NetshoppingStatic.getTransactionManagerData() end

--- **Native**: `NET_GAMESERVER_IS_SESSION_VALID` (`0xB24F0944DA203D9E`)
---@param charSlot integer
---@return boolean result
function NetshoppingStatic.isSessionValid(charSlot) end

--- **Native**: `NET_GAMESERVER_SESSION_APPLY_RECEIVED_DATA` (`0x2F41D51BA3BCD1F1`)
---@param charSlot integer
---@return boolean result
function NetshoppingStatic.sessionApplyReceivedData(charSlot) end

--- **Native**: `NET_GAMESERVER_SET_TELEMETRY_NONCE_SEED` (`0x9507D4271988E1AE`)
---@param p0 integer
---@return boolean result
function NetshoppingStatic.setTelemetryNonceSeed(p0) end

--- **Native**: `NET_GAMESERVER_START_SESSION` (`0xA135AC892A58FC07`)
---@param charSlot integer
---@return boolean result
function NetshoppingStatic.startSession(charSlot) end

--- **Native**: `NET_GAMESERVER_TRANSFER_BANK_TO_WALLET` (`0xD47A2C1BA117471D`)
---@param charSlot integer
---@param amount integer
---@return boolean result
function NetshoppingStatic.transferBankToWallet(charSlot, amount) end

--- ```
--- Same as 0x350AA5EBC03D3BD2
--- ```
--- **Native**: `NET_GAMESERVER_TRANSFER_CASH_GET_STATUS` (`0x23789E777D14CE44`)
---@return integer result
function NetshoppingStatic.transferCashGetStatus() end

--- ```
--- Same as 0x23789E777D14CE44
--- ```
--- **Native**: `NET_GAMESERVER_TRANSFER_CASH_GET_STATUS_2` (`0x350AA5EBC03D3BD2`)
---@return integer result
function NetshoppingStatic.transferCashGetStatus2() end

--- ```
--- Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
--- ```
--- **Native**: `NET_GAMESERVER_TRANSFER_CASH_SET_TELEMETRY_NONCE_SEED` (`0x498C1E05CE5F7877`)
---@return boolean result
function NetshoppingStatic.transferCashSetTelemetryNonceSeed() end

--- **Native**: `NET_GAMESERVER_TRANSFER_WALLET_TO_BANK` (`0xC2F7FE5309181C7D`)
---@param charSlot integer
---@param amount integer
---@return boolean result
function NetshoppingStatic.transferWalletToBank(charSlot, amount) end

--- ```
--- NativeDB Introduced: v1290
--- ```
--- **Native**: `NET_GAMESERVER_USE_SERVER_TRANSACTIONS` (`0x7D2708796355B20B`)
---@return boolean result
function NetshoppingStatic.useServerTransactions() end

