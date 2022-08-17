params ["_unit", "_killer"];

sleep 3;


// TODO: add check for

_exists = ["A455_task_RTB"] call BIS_fnc_taskExists;
if (_exists) then {
	["A455_task_RTB", "FAILED", true] call BIS_fnc_tasksetState;
} else {
	["A455_task_capture", "FAILED", true] call BIS_fnc_tasksetState;
};

sleep 3;

private _intelTask = [west, "A455_task_intel", ["Retrieve any intel that Fahim al-Arshad was carrying, be sure to search him and any vehicles thoroughly.", "Search for intel", "mkr_ao"], [insurgentLeader, false], "ASSIGNED", 2, true, "search", false] call BIS_fnc_taskCreate;

_unit call A455_fnc_addSearchForIntel;
