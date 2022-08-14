params ["_unit", "_killer"];

// Fail 
["A455_task_capture", "FAILED", true] call BIS_fnc_tasksetState;

private _intelTask = [west, ["A455_task_intel", "A455_task_capture"], ["Retrieve any intel that Fahim al-Arshad was carrying, be sure to search him and any vehicles thoroughly.", "Search for intel", "mkr_ao"], [insurgentLeader, false], "ASSIGNED", 2, true, "search", false] call BIS_fnc_taskCreate;

_unit call A455_fnc_addSearchForIntel;
