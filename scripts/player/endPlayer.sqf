private _caller = _this select 0;
private _officer = _this select 1;
private _action = _this select 2;

if (A455_DEBUG_MODE) then {
	hint format ["---endPlayer---\n%1\n%2\n%3\n%4",_caller,_officer,HQ];
};
if (!isDedicated) then {
    _officer removeAction _action;
};

sleep 2;

enableRadio true;
_rankingPlayerGroupName = _caller getVariable "A455_group";

_caller sideChat "Sir, I am sorry to report that we had to pull out without Fahim al-Arshad in custody.";
sleep 5;
HQ sideChat "That is NOT what I wanted to hear from you! Well, at least some of you made it back. Get yourselves cleaned up and report in for debriefing.";
sleep 5;
_caller sideChat "Sir, roger that, sir!";


// private _NCT = "A455_task_nocollateral" call BIS_fnc_taskState;
// if (_NCT != "FAILED") then {
// 	["A455_task_nocollateral", "CANCELED", true] call BIS_fnc_tasksetState;
// };
// ["A455_task_seize", "FAILED", true] call BIS_fnc_tasksetState;

enableRadio false;

// if (_NCT == "FAILED") then {
// 	"MEGA_FAIL" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
// } else {
// 	"FAIL" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
// };


