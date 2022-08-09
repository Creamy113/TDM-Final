removeAllWeapons player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeUniform player;
player setPos [12745.8,3226.61,0.00143886];

redPlayerCap = 2;
bluePlayerCap = 2;
waitUntil {alive player};
[] spawn TAG_fnc_lm;

[] spawn {
  player addEventHandler ["Killed", {
    if (team isEqualTo 1) then {
      player setPos [12745.8,3226.61,0.00143886];
      redPlayerCap = redPlayerCap - 1;
      publicVariable "redPlayerCap";
   };
   if (team isEqualTo 2) then {
     player setPos [12745.8,3226.61,0.00143886];
     bluePlayerCap = bluePlayerCap - 1;
     publicVariable "bluePlayerCap";
   };
  }];
};

[] spawn {
  _loopCloser1 = true;
    while {_loopCloser1} do {
      if (redPlayerCap isEqualTo 0 || bluePlayerCap isEqualTo 0) then {
        if (redPlayerCap isEqualTo 0) then {
          blueScore = blueScore + 1;
          publicVariable "blueScore";
          hint format ["The current score is Blue Team %1, Red Team %2", blueScore, redScore];
          _loopCloser1 = false;
            if (blueScore isNotEqualTo 5 || redScore isNotEqualTo 5) then {
              forceRespawn player;
            [] spawn TAG_fnc_tdm;
            };
          };
        if (bluePlayerCap isEqualTo 0) then {
          redScore = redScore + 1;
          publicVariable "redScore";
          hint format ["The current score is Blue Team %1, Red Team %2", blueScore, redScore];
          _loopCloser1 = false;
            if (blueScore isNotEqualTo 5 || redScore isNotEqualTo 5) then {
              forceRespawn player;
            [] spawn TAG_fnc_tdm;
            };
          };
      };
    };
  };

waitUntil {blueScore isEqualTo 5 || redScore isEqualTo 5};
  if (blueScore isEqualTo 5) exitWith {
        Hint "The Blue Team has won!";
        if (team isEqualto 1) then {
        uiSleep 1;
        Hint "You have been give X money for winning!";
        };
      };
  if (redScore isEqualTo 5) exitWith {
        Hint "The Red Team has won!";
        if (team isEqualto 2) then {
        uiSleep 1;
        Hint "You have been give X money for winning!";
        };
      };
