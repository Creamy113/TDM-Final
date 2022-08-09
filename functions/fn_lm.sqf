player setCustomAimCoef .0001;
player enableStamina false;
player enableFatigue false;

//TP to TDM arena
if (team isEqualto 1) then  {
  player setPos [12733.8,3249.73,0.000898123];
} else {  player setPos [12644.5,3286.08,0.00205135];};

_randomLoadout = [1, 3] call BIS_fnc_randomInt;

switch (_randomLoadout) do {

    case 1: {
      player addvest "V_PlateCarrierL_CTRG";
      player addUniform "U_B_CombatUniform_mcam";
      player addHeadgear "H_HelmetB";
      player addBackpack "B_AssaultPack_Kerry";
      player addMagazines ["20Rnd_762x51_Mag", 15];
      player addWeapon "srifle_EBR_ARCO_pointer_F";
      player addItem "FirstAidKit";
      player addItem "FirstAidKit";
      player addItem "FirstAidKit";
    };

    case 2: {
      player addvest "V_Chestrig_rgr";
      player addUniform "U_B_CombatUniform_mcam";
      player addHeadgear "H_HelmetB_black";
      player addBackpack "B_AssaultPack_Kerry";
      player addMagazines ["30Rnd_65x39_caseless_khaki_mag", 15];
      player addWeapon "arifle_MX_khk_ACO_Pointer_Snds_F";
      player addItem "FirstAidKit";
      player addItem "FirstAidKit";
      player addItem "FirstAidKit";
    };

    case 3: {
      player addvest "V_PlateCarrierL_CTRG";
      player addUniform "U_B_CombatUniform_mcam";
      player addHeadgear "H_HelmetB_camo";
      player addBackpack "B_AssaultPack_Kerry";
      player addMagazines ["7Rnd_408_Mag", 15];
      player addWeapon "srifle_LRR_tna_LRPS_F";
      player addItem "FirstAidKit";
      player addItem "FirstAidKit";
      player addItem "FirstAidKit";
    };

};


/*
[] spawn {
  _loopCloserRed = true;
    while {_loopCloserRed} do {
        if (damage player isEqualTo 1 && team isEqualTo 1) then {
          player setPos [12745.8,3226.61,0.00143886];
          redPlayerCap = redPlayerCap - 1;
          publicVariable "redPlayerCap";
          hint format ["%1", redPlayerCap];
          _loopCloserRed = false;
        };
      };
};

[] spawn {
  _loopCloserBlue = true;
    while {_loopCloserBlue} do {
      if (damage player isEqualTo 1 && team isEqualTo 2) then {
        player setPos [12745.8,3226.61,0.00143886];
        bluePlayerCap = bluePlayerCap - 1;
        publicVariable "bluePlayerCap";
        hint format ["%1", bluePlayerCap];
        _loopCloserBlue = false;
      };
    };
};
*/
