A455_eh_leaderKilled = insurgentLeader addEventHandler ["Killed", {
	params ["_unit", "_killer"];
	if (A455_DEBUG_MODE) then { hint format ["%1 has been killed by %2.", _unit, _killer]; };
	_this call A455_fnc_insurgentLeaderKilled;
}];

// setup trigger to fire if insurgentLeader knows about ANY player
playerDetectedTrigger = createTrigger ["EmptyDetector", [0,0,0]];
playerDetectedTrigger setTriggerArea [0, 0, 0, false];
playerDetectedTrigger setTriggerStatements ["(allPlayers findIf { insurgentLeader knowsAbout _x > 1 }) != -1", "call A455_fnc_insurgentLeaderAlerted", ""];
playerDetectedTrigger setTriggerInterval 5;

// setup trigger to fire if ANY player knows about insurgentLeader
playerDetectedTrigger = createTrigger ["EmptyDetector", [0,0,0]];
playerDetectedTrigger setTriggerArea [0, 0, 0, false];
playerDetectedTrigger setTriggerStatements ["WEST knowsAbout insurgentLeader > 0.5", "_nil = [(WEST knowsAbout insurgentLeader)] spawn A455_fnc_insurgentLeaderFound", ""];
playerDetectedTrigger setTriggerInterval 5;