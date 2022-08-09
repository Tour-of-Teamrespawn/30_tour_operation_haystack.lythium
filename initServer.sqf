A455_INTRO_DONE = false; publicVariable "A455_INTRO_DONE";
A455_CAPTURED = false; publicVariable "A455_CAPTURED";



call A455_fnc_setupTasks;
call A455_fnc_setupInsurgentLeader;



// setup trigger to fire if no player has left base after 10min
// RemoteExec on all players but not dedicated server
private _notLeftYetTrigger = createTrigger ["EmptyDetector", (getPos A455_CORE)];
_notLeftYetTrigger setTriggerArea [500, 500, 0, false];
_notLeftYetTrigger setTriggerActivation ["ANY", "PRESENT", false];
_notLeftYetTrigger setTriggerStatements ["((count allPlayers) == ({isPlayer _x} count thisList)) && time > 600", "private _nil = [thisList] remoteExec [""A455_fnc_notLeftYet"", [0, -2] select isDedicated];", ""];
_notLeftYetTrigger setTriggerInterval 5;

// TODO: make sure BIS_noCoreConversations is done after unit spawns & ensure it is added to dynamically spawned units too
{ _x setVariable ["BIS_noCoreConversations", true, true]; } forEach allUnits;

{
	_x disableAI "PATH";
	_x allowDamage false;
	group _x setVariable ["lambs_danger_disableGroupAI", true];
	_x setVariable ["lambs_danger_disableAI", true];
} forEach [senior, HQ];


TOUR_init_complete = true; publicVariable "TOUR_init_complete";

//  You can use any of the the following variables to check if a side
//  is all dead or faitally injured and the side has no more lives left.
//	TOUR_RC_WEST_DEAD 
//	TOUR_RC_EAST_DEAD
//	TOUR_RC_INDEPENDENT_DEAD
//	TOUR_RC_CIVILIAN_DEAD

waitUntil { time > 60 || A455_DEBUG_MODE };
A455_INTRO_DONE = true;
publicVariable "A455_INTRO_DONE";

waitUntil {!isNil "TOUR_RC_WEST_DEAD"};
waitUntil {!TOUR_RC_WEST_DEAD};
waitUntil {sleep 2; TOUR_RC_WEST_DEAD};

"KIA" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];