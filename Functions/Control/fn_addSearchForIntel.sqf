private _unit = _this;

// adds the action to every client and JIP, but also adds it when it was already removed. E.g., Laptop has already been hacked by a player
[
	_unit,												// Object the action is attached to
	"Search for intel",									// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Progress icon shown on screen
	"(_this distance _target < 3) && (isNil { _target getVariable 'A455_hasBeenSearched' }) && ((!alive _target) || (_target getVariable ['ace_captives_isHandcuffed', true]))",	// Condition for the action to be shown
	"_caller distance _target < 3 && (isNil { _target getVariable 'A455_hasBeenSearched' }) && ((!alive _target) || (_target getVariable ['ace_captives_isHandcuffed', true]))",	// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{ _this spawn A455_fnc_searchedForIntel; },			// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	5,													// Action duration in seconds
	10,													// Priority
	true,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _unit];		// MP compatible implementation

