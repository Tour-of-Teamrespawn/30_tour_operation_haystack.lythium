params ["_unit", "_killer"];

// Fail 
["A455_task_capture", "FAILED", true] call BIS_fnc_tasksetState;

private _intelTask = [west, ["A455_task_intel", "A455_task_capture"], ["Retrieve any intel that Ayman al-Arshad was carrying, be sure to search him and any vehicles thoroughly.", "Search for intel", "mkr_ao"], [insurgentLeader, false], "ASSIGNED", 2, true, "search", false] call BIS_fnc_taskCreate;

// adds the action to every client and JIP, but also adds it when it was already removed. E.g., Laptop has already been hacked by a player
[
	insurgentLeader,											// Object the action is attached to
	"Search for intel",										// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Progress icon shown on screen
	"_this distance _target < 2",						// Condition for the action to be shown
	"_caller distance _target < 2",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{ _this call A455_fnc_searchForIntel; },			// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	5,													// Action duration in seconds
	10,													// Priority
	true,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, insurgentLeader];	// MP compatible implementation