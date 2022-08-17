_rankingPlayer = allPlayers call A455_fnc_getHighestRankingOfficer;
_rankingPlayerGroupName = _rankingPlayer getVariable "A455_group";

enableRadio true;
_rankingPlayer sideChat format ["HQ, this is %1. We think we've found our guy at grid %2. Over.", _rankingPlayerGroupName, mapGridPosition insurgentLeader];
sleep 4;
HQ sideChat format ["Copy that %1, we can see it on the cameras, that's our man! Bring him in. Over.", _rankingPlayerGroupName];
sleep 4;
_rankingPlayer sideChat format ["Wilco, %1 out.", _rankingPlayerGroupName];
enableRadio false;

["A455_task_capture", [insurgentLeader, true]] call BIS_fnc_taskSetDestination;

// update task description saying intel was found at grid X
