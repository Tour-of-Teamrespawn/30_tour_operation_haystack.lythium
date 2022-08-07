A455_INTRO_DONE = false; publicVariable "A455_INTRO_DONE";
A455_CAPTURED = false; publicVariable "A455_CAPTURED";



call A455_fnc_setupTasks;
call A455_fnc_setupInsurgentLeader;



// make sure no core is done after unit BIS_fnc_curatorChallengeSpawnLightning
// ensure it is added to dynamically spawned units too
{ _x setVariable ["BIS_noCoreConversations", true, true]; } forEach allUnits;




TOUR_init_complete = true; publicVariable "TOUR_init_complete";

//  You can use any of the the following variables to check if a side is all dead or faitally injured and the side has no more lives left.
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