params ["_unit", "_state", "_reason", "_caller"];

if (A455_DEBUG_MODE) then {
	hint str _this;
};

_arr = _this select 0;
_unit = _arr select 0;
_state = _arr select 1;
_reason = _arr select 2;
_caller = _arr select 3;

if (_unit == insurgentLeader && _reason == "SetHandcuffed" && _state == true) then {
	sleep 2;
	// has been handcuffed
	
	_rankingPlayer = allPlayers call A455_fnc_getHighestRankingOfficer;
	_rankingPlayerGroupName = _rankingPlayer getVariable "A455_group";

	enableRadio true;
	_rankingPlayer sideChat format ["HQ, this is %1 actual, reporting that we now have Fahim al-Arshad in custody. Over.", _rankingPlayerGroupName];
	sleep 4;
	HQ sideChat format ["Copy that %1, good work. Now get him back here ASAP, I'll inform SENIOR. Over.", _rankingPlayerGroupName];
	sleep 4;
	_rankingPlayer sideChat format ["Roger that, %1 out.", _rankingPlayerGroupName];
	enableRadio false;




player sideChat "HQ, this is X. We think we've found our guy!";
sleep 5;
player sideChat "Copy that X, we can see it on the cameras, that's the guy! Bring him in";
sleep 5;
player sideChat "Roger, moving to secure, out.";

	
	sleep 5;
	player sideChat "Roger, moving to secure, out.";
	enableRadio false;


	["A455_task_capture", "SUCCEEDED", true] call BIS_fnc_tasksetState;

	sleep 3;
	private _intelTask = [west, "A455_task_RTB", ["Escort Fahim back to FOB Fabiano for questioning.", "Escort Fahim", "mkr_fob"], [A455_CORE, false], "ASSIGNED", 3, true, "move", false] call BIS_fnc_taskCreate;

} else {
	// is either released from handcuffs or start/stop surrender
	// could be 
};