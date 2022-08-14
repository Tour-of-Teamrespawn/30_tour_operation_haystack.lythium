_thisList = _this;

if (A455_DEBUG_MODE) then {
	hint format ["NotLeftYet thisList: %1",_thisList];
};

// Get highest ranking player to respond
_rankingPlayer = allPlayers call A455_fnc_getHighestRankingOfficer;
_rankingPlayerGroupName = _rankingPlayer getVariable "A455_group";

enableRadio true;
HQ sideChat "This is HQ to all units. Get your asses moving, We need to get to Fahim before he goes to ground! Over.";
sleep 5;
_rankingPlayer sideChat format ["HQ, this is %1 actual. I'll get us moving out ASAP, out.", _rankingPlayerGroupName];
enableRadio false;