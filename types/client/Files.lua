---@meta
---@diagnostic disable
-- fx.Files (client): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---@class fx.Files
---@field numDlcVehicles integer (read-only) [GET_NUM_DLC_VEHICLES] Returns the total number of DLC vehicles.
---@field numDlcWeapons integer (read-only) [GET_NUM_DLC_WEAPONS]
---@field numDlcWeaponsSp integer (read-only) [GET_NUM_DLC_WEAPONS_SP] Returns the total number of DLC weapons that are available in SP (availableInSP field in shop_weapon.meta).
local FilesStatic = {}

--- **Native**: `DOES_SHOP_PED_APPAREL_HAVE_RESTRICTION_TAG` (`0x341DE7ED1D2A1BFD`)
---@param componentHash integer|string
---@param restrictionTagHash integer|string
---@param componentId integer
---@return boolean result
function FilesStatic.doesShopPedApparelHaveRestrictionTag(componentHash, restrictionTagHash, componentId) end

--- The Second item in the struct `*(Hash *)(outData + 1)` is the vehicle hash.
--- **Native**: `GET_DLC_VEHICLE_DATA` (`0x33468EDC08E371F6`)
---@param dlcVehicleIndex integer takes a number from 0 to `GET_NUM_DLC_VEHICLES()` - 1.
---@param outData any a struct of 3 8-byte items.
---@return boolean result A boolean value return if find or not the dlcVehicleIndex.
---@return any outData a struct of 3 8-byte items.
function FilesStatic.getDlcVehicleData(dlcVehicleIndex, outData) end

--- **Native**: `GET_DLC_VEHICLE_FLAGS` (`0x5549EE11FA22FCF2`)
---@param dlcVehicleIndex integer
---@return integer result
function FilesStatic.getDlcVehicleFlags(dlcVehicleIndex) end

--- **Native**: `GET_DLC_VEHICLE_MOD_LOCK_HASH` (`0xC098810437312FFF`)
---@param hash integer|string
---@return integer result
function FilesStatic.getDlcVehicleModLockHash(hash) end

--- ```
--- p0 seems to be the weapon index
--- p1 seems to be the weapon component index
--- struct DlcComponentData{
--- int attachBone;
--- int padding1;
--- int bActiveByDefault;
--- int padding2;
--- int unk;
--- int padding3;
--- int componentHash;
--- int padding4;
--- int unk2;
--- int padding5;
--- int componentCost;
--- int padding6;
--- char nameLabel[64];
--- char descLabel[64];
--- };
--- ```
--- **Native**: `GET_DLC_WEAPON_COMPONENT_DATA` (`0x6CF598A2957C2BF8`)
---@param dlcWeaponIndex integer
---@param dlcWeapCompIndex integer
---@param ComponentDataPtr integer
---@return boolean result
---@return integer ComponentDataPtr
function FilesStatic.getDlcWeaponComponentData(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

--- Same as GET_DLC_WEAPON_COMPONENT_DATA but only works for DLC components that are available in SP.
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `GET_DLC_WEAPON_COMPONENT_DATA_SP` (`0x31D5E073B6F93CDC`)
---@param dlcWeaponIndex integer
---@param dlcWeapCompIndex integer
---@param ComponentDataPtr integer
---@return boolean result
---@return integer ComponentDataPtr
function FilesStatic.getDlcWeaponComponentDataSp(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

--- ```
--- dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.
--- struct DlcWeaponData
--- {
--- int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this
--- int padding1;
--- int weaponHash;
--- int padding2;
--- int unk;
--- int padding3;
--- int weaponCost;
--- int padding4;
--- int ammoCost;
--- int padding5;
--- int ammoType;
--- int padding6;
--- int defaultClipSize;
--- int padding7;
--- char nameLabel[64];
--- char descLabel[64];
--- char desc2Label[64]; // usually "the" + name
--- char upperCaseNameLabel[64];
--- };
--- ```
--- **Native**: `GET_DLC_WEAPON_DATA` (`0x79923CD21BECE14E`)
---@param dlcWeaponIndex integer
---@param outData integer
---@return boolean result
---@return integer outData
function FilesStatic.getDlcWeaponData(dlcWeaponIndex, outData) end

--- Same as GET_DLC_WEAPON_DATA but only works for DLC weapons that are available in SP.
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `GET_DLC_WEAPON_DATA_SP` (`0x310836EE7129BA33`)
---@param dlcWeaponIndex integer
---@param outData integer
---@return boolean result
---@return integer outData
function FilesStatic.getDlcWeaponDataSp(dlcWeaponIndex, outData) end

--- **Native**: `GET_FORCED_COMPONENT` (`0x6C93ED8C2F74859B`)
---@param componentHash integer|string
---@param forcedComponentIndex integer
---@return integer nameHash
---@return integer enumValue
---@return integer componentType
function FilesStatic.getForcedComponent(componentHash, forcedComponentIndex) end

--- **Native**: `GET_FORCED_PROP` (`0xE1CA84EBF72E691D`)
---@param componentHash integer|string
---@param forcedPropIndex integer
---@return integer nameHash
---@return integer enumValue
---@return integer anchorPoint
function FilesStatic.getForcedProp(componentHash, forcedPropIndex) end

--- ```
--- Returns the total number of DLC weapon components.
--- ```
--- **Native**: `GET_NUM_DLC_WEAPON_COMPONENTS` (`0x405425358A7D61FE`)
---@param dlcWeaponIndex integer
---@return integer result
function FilesStatic.getNumDlcWeaponComponents(dlcWeaponIndex) end

--- Returns the total number of DLC weapon components that are available in SP.
---
--- ```
--- NativeDB Introduced: v2060
--- ```
--- **Native**: `GET_NUM_DLC_WEAPON_COMPONENTS_SP` (`0xAD2A7A6DFF55841B`)
---@param dlcWeaponIndex integer
---@return integer result
function FilesStatic.getNumDlcWeaponComponentsSp(dlcWeaponIndex) end

--- ```
--- Character types:
--- 0 = Michael,
--- 1 = Franklin,
--- 2 = Trevor,
--- 3 = MPMale,
--- 4 = MPFemale
--- ```
--- **Native**: `GET_NUM_TATTOO_SHOP_DLC_ITEMS` (`0x278F76C3B0A8F109`)
---@param character integer
---@return integer result
function FilesStatic.getNumTattooShopDlcItems(character) end

--- ```
--- Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
--- ```
--- **Native**: `GET_SHOP_PED_APPAREL_FORCED_COMPONENT_COUNT` (`0xC6B9DB42C04DD8C3`)
---@param componentHash integer|string
---@return integer result
function FilesStatic.getShopPedApparelForcedComponentCount(componentHash) end

--- ```
--- Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
--- ```
--- **Native**: `GET_SHOP_PED_APPAREL_FORCED_PROP_COUNT` (`0x017568A8182D98A6`)
---@param componentHash integer|string
---@return integer result
function FilesStatic.getShopPedApparelForcedPropCount(componentHash) end

--- **Native**: `GET_SHOP_PED_APPAREL_VARIANT_COMPONENT_COUNT` (`0xC17AD0E5752BECDA`)
---@param componentHash integer|string
---@return integer result
function FilesStatic.getShopPedApparelVariantComponentCount(componentHash) end

--- **Native**: `GET_SHOP_PED_APPAREL_VARIANT_PROP_COUNT` (`0xD40AAC51E8E4C663`)
---@param propHash integer|string Ped helmet prop hash
---@return integer result This native returns 1 when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled. 0 if there's no alternative version wi…
function FilesStatic.getShopPedApparelVariantPropCount(propHash) end

--- ```
--- More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
--- ```
--- **Native**: `GET_SHOP_PED_COMPONENT` (`0x74C0E2A57EC66760`)
---@param componentHash integer|string
---@param outComponent any
---@return any outComponent
function FilesStatic.getShopPedComponent(componentHash, outComponent) end

--- **Native**: `GET_SHOP_PED_OUTFIT` (`0xB7952076E444979D`)
---@param p0 any
---@param p1 any
---@return any p1
function FilesStatic.getShopPedOutfit(p0, p1) end

--- **Native**: `GET_SHOP_PED_OUTFIT_COMPONENT_VARIANT` (`0x19F2A026EDF0013F`)
---@param outfit integer|string A structure, see [`GET_SHOP_PED_QUERY_OUTFIT`](#\_0x6D793F03A631FE56).
---@param slot integer outfit slot.
---@param outComponentVariant any
---@return boolean result
---@return any outComponentVariant
function FilesStatic.getShopPedOutfitComponentVariant(outfit, slot, outComponentVariant) end

--- **Native**: `GET_SHOP_PED_OUTFIT_LOCATE` (`0x073CA26B079F956E`)
---@param p0 any
---@return integer result
function FilesStatic.getShopPedOutfitLocate(p0) end

--- **Native**: `GET_SHOP_PED_OUTFIT_PROP_VARIANT` (`0xA9F9C2E0FDE11CBB`)
---@param outfitHash integer|string
---@param variantIndex integer
---@param outPropVariant any
---@return boolean result
---@return any outPropVariant
function FilesStatic.getShopPedOutfitPropVariant(outfitHash, variantIndex, outPropVariant) end

--- **Native**: `GET_SHOP_PED_PROP` (`0x5D5CAFF661DDF6FC`)
---@param componentHash integer|string
---@param outProp any
---@return any outProp
function FilesStatic.getShopPedProp(componentHash, outProp) end

--- **Native**: `GET_SHOP_PED_QUERY_COMPONENT` (`0x249E310B2D920699`)
---@param componentId integer
---@param outComponent integer
---@return integer outComponent
function FilesStatic.getShopPedQueryComponent(componentId, outComponent) end

--- ```
--- struct Outfit_s
--- {
--- 	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;
--- 	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,
--- 		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;
--- };
--- ```
--- **Native**: `GET_SHOP_PED_QUERY_OUTFIT` (`0x6D793F03A631FE56`)
---@param outfitIndex integer
---@param outfit any
---@return any outfit
function FilesStatic.getShopPedQueryOutfit(outfitIndex, outfit) end

--- **Native**: `GET_SHOP_PED_QUERY_PROP` (`0xDE44A00999B2837D`)
---@param componentId integer
---@param outProp any
---@return any outProp
function FilesStatic.getShopPedQueryProp(componentId, outProp) end

--- Returns data that adheres to the tattoo shop item data that is used in shop_tattoo.meta
---
--- Character types:
---
--- ```cpp
--- enum eTattooFaction
--- {
--- 	TATTOO_SP_MICHAEL = 0,
--- 	TATTOO_SP_FRANKLIN = 1,
--- 	TATTOO_SP_TREVOR = 2,
--- 	TATTOO_MP_FM = 3,
--- 	TATTOO_MP_FM_F = 4
--- }
--- ```
---
--- Returned struct properties:
---
--- ```cpp
--- struct sTattooShopItemValues
--- {
--- 	// Lock hash, used with IS_CONTENT_ITEM_LOCKED
--- 	int LockHash;
--- 	// Unique ID of this slot. It can also be 0.
--- 	int Index;
--- 	// Collection hash of this tattoo
--- 	int CollectionHash;
--- 	// Preset hash of this tattoo
--- 	int PresetHash;
--- 	// Cost of this tattoo in shops.
--- 	int Cost;
--- 	// Secondary placement of this tattoo.
--- 	int eFacing;
--- 	// Location of this tattoo on the body (for example, for torso there would be chest upper, stomach, etc)
--- 	int UpdateGroup;
--- 	// This tattoo's name in the form of a text label.
--- 	const char* NameTextLabel;
--- };
--- ```
--- **Native**: `GET_TATTOO_SHOP_DLC_ITEM_DATA` (`0xFF56381874F82086`)
---@param characterType fx.Enum.TattooFaction|integer Which character to get the tattoo data for (Refer to `eTattooFaction` above).
---@param decorationIndex integer Tattoo index, value between 0 and [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#\_0x278F76C3B0A8F109).
---@param outComponent any The referenced struct.
---@return boolean result A bool indicating that the tattoo data exists in the files.
---@return any outComponent The referenced struct.
function FilesStatic.getTattooShopDlcItemData(characterType, decorationIndex, outComponent) end

--- ```
--- NativeDB Introduced: v2189
--- ```
--- **Native**: `GET_TATTOO_SHOP_DLC_ITEM_INDEX` (`0x10144267DD22866C`)
---@param character integer AKA eFaction in shop_tattoo.meta. Which character this tattoo belongs to. See [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#\_0x278F76C3B0A8F109).
---@param collection integer Which collection this tattoo belongs to. If you specify `-1`, it will check all collections.
---@param preset integer Which preset this tattoo belongs to.
---@return integer result Returns the actual index (Not ID from `shop_tattoo.meta`) from `0` to [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#\_0x278F76C3B0A8F109), or `-1` (if it failed to find the tattoo) of a tattoo.
function FilesStatic.getTattooShopDlcItemIndex(character, collection, preset) end

--- **Native**: `GET_VARIANT_COMPONENT` (`0x6E11F282F11863B6`)
---@param componentHash integer|string
---@param variantComponentIndex integer
---@return integer nameHash
---@return integer enumValue
---@return integer componentType
function FilesStatic.getVariantComponent(componentHash, variantComponentIndex) end

--- **Native**: `GET_VARIANT_PROP` (`0xD81B7F27BC773E66`)
---@param componentHash integer|string
---@param variantPropIndex integer
---@return integer nameHash
---@return integer enumValue
---@return integer anchorPoint
function FilesStatic.getVariantProp(componentHash, variantPropIndex) end

--- **Native**: `INIT_SHOP_PED_COMPONENT` (`0x1E8C308FD312C036`)
---@param outComponent integer
---@return integer outComponent
function FilesStatic.initShopPedComponent(outComponent) end

--- **Native**: `INIT_SHOP_PED_PROP` (`0xEB0A2B758F7B850F`)
---@param outProp integer
---@return integer outProp
function FilesStatic.initShopPedProp(outProp) end

--- **Native**: `IS_CONTENT_ITEM_LOCKED` (`0xD4D7B033C3AA243C`)
---@param itemHash integer|string
---@return boolean result
function FilesStatic.isContentItemLocked(itemHash) end

--- **Native**: `IS_DLC_VEHICLE_MOD` (`0x0564B9FF9631B82C`)
---@param hash integer|string
---@return boolean result
function FilesStatic.isDlcVehicleMod(hash) end

--- ```
--- From fm_deathmatch_creator and fm_race_creator:
---
--- FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
--- FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
---
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `LOAD_CONTENT_CHANGE_SET_GROUP` (`0x6BEDF5769AC2DC07`)
---@param hash integer|string
function FilesStatic.loadContentChangeSetGroup(hash) end

--- **Native**: `SETUP_SHOP_PED_APPAREL_QUERY` (`0x50F457823CE6EB5F`)
---@param p0 integer
---@param p1 integer
---@param p2 integer
---@param p3 integer
---@return integer result
function FilesStatic.setupShopPedApparelQuery(p0, p1, p2, p3) end

--- ```
--- character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.
--- componentId is between 0 and 11 and corresponds to the usual component slots.
--- p1 could be the outfit number; unsure.
--- p2 is usually -1; unknown function.
--- p3 appears to be for selecting between clothes and props; false is used with components/clothes, true is used with props.
--- p4 is usually -1; unknown function.
--- componentId is -1 when p3 is true in decompiled scripts.
--- ```
--- **Native**: `SETUP_SHOP_PED_APPAREL_QUERY_TU` (`0x9BDF59818B1E38C1`)
---@param character integer
---@param p1 integer
---@param p2 integer
---@param p3 boolean
---@param p4 integer
---@param componentId integer
---@return integer result
function FilesStatic.setupShopPedApparelQueryTu(character, p1, p2, p3, p4, componentId) end

--- ```
--- characters
--- 0: Michael
--- 1: Franklin
--- 2: Trevor
--- 3: MPMale
--- 4: MPFemale
--- ```
--- **Native**: `SETUP_SHOP_PED_OUTFIT_QUERY` (`0xF3FBE2D50A6A8C28`)
---@param character integer
---@param p1 boolean
---@return integer result
function FilesStatic.setupShopPedOutfitQuery(character, p1) end

--- ```
--- From fm_deathmatch_creator and fm_race_creator:
---
--- FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
--- FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
---
--- NativeDB Introduced: v1604
--- ```
--- **Native**: `UNLOAD_CONTENT_CHANGE_SET_GROUP` (`0x3C1978285B036B25`)
---@param hash integer|string
function FilesStatic.unloadContentChangeSetGroup(hash) end

