private _unit = _this;
private _loadout = [];

switch (toLower _unit) do {
    // case "rhsusf_socom_swcc_officer": {
    //     _loadout = [[],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_g3_aor2",[["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["rhsusf_mag_15Rnd_9x19_JHP",1,15],["Chemlight_red",1,1]]],["rhsusf_spc_patchless_radio",[["rhsusf_mag_15Rnd_9x19_JHP",3,15],["rhs_mag_m18_red",1,1],["rhs_mag_m18_green",1,1],["rhs_mag_m18_yellow",1,1]]],[],"rhsusf_cvc_green_ess","",[],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    // };
    case "rhsusf_socom_marsoc_teamchief": {
        _loadout = [["rhs_weap_m4a1_blockII_KAC_SU230","","rhsusf_acc_anpeq15","rhsusf_acc_su230",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_rifleman",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_m18_red",1,1],["rhs_mag_m18_green",1,1],["rhs_mag_m18_yellow",1,1],["I_IR_Grenade",2,1],["rhs_mag_m67",1,1]]],[],"rhsusf_mich_bare_norotos_alt_headset","",["rhsusf_bino_lerca_1200_black","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };

    case "rhsusf_socom_marsoc_jtac": {
        _loadout = [["rhs_weap_m4a1_mstock_grip3","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15_top","rhsusf_acc_eotech_xps3",["rhs_mag_30Rnd_556x45_M855A1_Stanag",22],[],"rhsusf_acc_rvg_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_mbav_mg",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_m18_yellow",2,1],["rhs_mag_m18_purple",2,1],["I_IR_Grenade",2,1],["Chemlight_red",3,1],["rhs_mag_m67",1,1]]],[],"rhsusf_opscore_mar_fg_pelt","rhs_googles_black",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_teamleader": {
        _loadout = [["rhs_weap_m4a1_blockII_KAC_SU230_sup","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15","rhsusf_acc_su230_mrds_c",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],[],"rhsusf_acc_harris_bipod"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_rifleman",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_m18_red",1,1],["rhs_mag_m18_green",1,1],["rhs_mag_m18_yellow",1,1],["I_IR_Grenade",2,1],["rhs_mag_m67",1,1]]],[],"rhsusf_mich_bare_norotos_alt","rhs_googles_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_elementleader": {
        _loadout = [["rhs_weap_mk18_eotech","","rhsusf_acc_anpeq15","rhsusf_acc_eotech_xps3",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_plateframe_teamleader",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_mk84",4,1],["rhs_mag_m67",1,1],["Chemlight_red",4,1]]],[],"rhsusf_opscore_mar_ut_pelt","rhs_googles_clear",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_marksman": {
        _loadout = [["rhs_weap_mk17_LB_DMR_marsoc","","rhsusf_acc_anpeq15side","rhsusf_acc_M8541_mrds",["rhs_mag_20Rnd_SCAR_762x51_m118_special",20],[],"rhsusf_acc_harris_bipod"],[],[],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["Chemlight_red",1,1]]],["rhsusf_plateframe_marksman",[["rhsusf_acc_aac_scarh_silencer",1],["rhs_mag_20Rnd_SCAR_762x51_m118_special",5,20],["rhs_mag_an_m8hc",1,1],["rhs_mag_mk84",1,1],["rhs_mag_m67",2,1]]],[],"rhsusf_mich_bare_norotos_arc","rhs_ess_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_cso_mk17": {
        _loadout = [["rhs_weap_mk17_CQC_grip2","","rhsusf_acc_anpeq15side","rhsusf_acc_su230a_c",["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr",20],[],"rhsusf_acc_tdstubby_tan"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_EarPlugs",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr",1,20]]],["rhsusf_plateframe_marksman",[["rhsusf_acc_aac_scarh_silencer",1],["rhs_mag_20Rnd_SCAR_762x51_m80a1_epr",4,20],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_an_m8hc",1,1],["rhs_mag_mk84",1,1],["rhs_mag_m67",2,1],["Chemlight_red",3,1]]],[],"rhsusf_opscore_mar_ut_pelt","rhs_googles_clear",[],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_cso_grenadier": {
        _loadout = [["rhs_weap_m4a1_blockII_M203_SU230","","rhsusf_acc_anpeq15side","rhsusf_acc_su230_mrds_c",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],["rhs_mag_M433_HEDP",1],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_grenadier",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_M433_HEDP",3,1],["rhs_mag_an_m8hc",1,1],["rhs_mag_m67",1,1],["Chemlight_red",3,1]]],["rhsusf_falconii_coy_gr",[["rhs_mag_M433_HEDP",10,1],["rhs_mag_M583A1_white",5,1]]],"rhsusf_mich_bare_norotos","rhs_googles_black",[],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_cso_mechanic": {
        _loadout = [["rhs_weap_m4a1_mstock_grip3","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15_top","rhsusf_acc_eotech_xps3",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],[],"rhsusf_acc_rvg_blk"],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",1,30]]],["rhsusf_mbav_medic",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",5,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_an_m8hc",1,1],["rhs_mag_mk84",1,1],["rhs_mag_m67",2,1],["Chemlight_red",3,1]]],["rhsusf_assault_eagleaiii_coy_engineer",[["ToolKit",1]]],"rhsusf_mich_bare_norotos_arc_alt_tan","rhs_ess_black",[],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_socom_marsoc_sarc": {
        _loadout = [["rhs_weap_mk18_SU230","","rhsusf_acc_anpeq15","rhsusf_acc_su230_mrds_c",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["rhs_uniform_g3_m81",[["rhs_Booniehat_m81",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1]]],["rhsusf_mbav_medic",[["rhsusf_acc_nt4_black",1],["rhs_mag_30Rnd_556x45_Mk318_Stanag",6,30],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhs_mag_an_m8hc",1,1],["rhs_mag_mk84",1,1],["rhs_mag_m67",2,1],["Chemlight_red",3,1]]],["rhsusf_falconii_sarc",[["ACE_fieldDressing",7],["ACE_packingBandage",8],["ACE_morphine",7],["ACE_tourniquet",7],["ACE_epinephrine",1],["ACE_salineIV_250",1],["ACE_splint",2],["Chemlight_red",1,1]]],"rhsusf_mich_bare_norotos_arc_alt_tan","rhs_googles_black",[],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    case "rhsusf_army_ucp_helipilot": {
        _loadout = [["rhs_weap_m4_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_FMJ",15],[],""],["rhs_uniform_cu_ucp",[["rhsusf_patrolcap_ucp",1],["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ucp",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,30]]],[],"rhsusf_hgu56p","",[],["ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"]];
    };
    default {
        hint format ["Invalid unit for loadout: %1\nTypeOf: %2", _unit, typeOf player];
        diag_log format ["Invalid unit for loadout: %1\nTypeOf: %2", _unit, typeOf player];
    };
};

player setUnitLoadout _loadout;

if (A455_DEBUG_modE) then {
    hint format ["Class: %1\n\nloadout: %2", typeOf player, _loadout];
};