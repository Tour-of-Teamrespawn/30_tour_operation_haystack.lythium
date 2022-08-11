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

private _leaderVehicles = ["UK3CB_TKC_C_Datsun_Civ_Closed","UK3CB_TKC_C_Datsun_Civ_Open","UK3CB_TKC_C_Hatchback","UK3CB_TKC_C_Hilux_Civ_Closed","UK3CB_TKC_C_Hilux_Civ_Open","UK3CB_TKC_C_Kamaz_Covered","UK3CB_TKC_C_Kamaz_Open","UK3CB_TKC_C_Lada","UK3CB_TKC_C_Lada_Taxi","UK3CB_TKC_C_LR_Closed","UK3CB_TKC_C_LR_Open","UK3CB_TKC_C_Pickup","UK3CB_TKC_C_V3S_Closed","UK3CB_TKC_C_V3S_Recovery","UK3CB_TKC_C_V3S_Open","UK3CB_TKC_C_Sedan","UK3CB_TKC_C_Skoda","UK3CB_TKC_C_S1203","UK3CB_TKC_C_SUV","UK3CB_TKC_C_SUV_Armoured","UK3CB_TKC_C_UAZ_Closed","UK3CB_TKC_C_UAZ_Open","UK3CB_TKC_C_Ural","UK3CB_TKC_C_Ural_Open","UK3CB_TKC_C_Ural_Empty","UK3CB_TKC_C_Ural_Recovery","UK3CB_TKC_C_Gaz24","UK3CB_TKC_C_Golf"];
private _leaderVehicleChoice = selectRandom _leaderVehicles;
private _leaderStart = [0,0];
while {(_leaderStart isEqualTo [0,0]) || _leaderStart isEqualTo [0,0,0]} do {
	_leaderStart = [["mkr_ao"], ["mkr_blacklist_0"],  { isOnRoad _this }] call BIS_fnc_randomPos;
};
private _leaderVehicle = createVehicle [_leaderVehicleChoice, _leaderStart, [], 0, "NONE"];
insurgentLeader assignAsDriver _leaderVehicle;
insurgentLeader moveInDriver _leaderVehicle;

if (A455_DEBUG_MODE) then {
	private _name = ("pos_" + str random 1000000);  
	private _marker = createMarker [_name, _leaderStart];  
	_marker setMarkerType "hd_dot";  
	_marker setMarkerColor "ColorGreen";  
	_marker setMarkerText ("_leaderStart" + str _leaderStart); 
};

private _leaderDestination = [0,0];
while {(_leaderDestination isEqualTo [0,0]) || _leaderDestination isEqualTo [0,0,0]} do {
	// _leaderDestination = [A455_AO_CENTRE, (A455_AO_SIZE / 2), A455_AO_SIZE, 5, 0, 30, 0, ["mkr_blacklist_0"], [[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;
	_leaderDestination = [["mkr_ao"], ["mkr_blacklist_0"],  { (isOnRoad _this) && (count (_this nearObjects ["House", 100]) >= 5) && (_leaderStart distance _this > 2000) }] call BIS_fnc_randomPos;
};

if (A455_DEBUG_MODE) then {
	private _name = ("pos_" + str random 1000000);  
	private _marker = createMarker [_name, _leaderDestination];  
	_marker setMarkerType "hd_dot";  
	_marker setMarkerColor "ColorRed";  
	_marker setMarkerText ("_leaderDestination" + str _leaderDestination + " - " + str count (_leaderDestination nearObjects ["House", 100])); 
};

// Set destination as 1st waypoint
private _wp = (group insurgentLeader) addWaypoint [_leaderDestination, 0];
_wp setWaypointSpeed "NORMAL";
_wp setWaypointCombatMode "GREEN";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointCompletionRadius 30;
_wp setWaypointType "MOVE";
(group insurgentLeader) setCurrentWaypoint _wp;
