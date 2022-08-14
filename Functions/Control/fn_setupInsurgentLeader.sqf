// This function runs on server only
// ------------------------------------------------------------------------------------------------
// EVENT HANDLERS
// ------------------------------------------------------------------------------------------------

A455_eh_leaderKilled = insurgentLeader addEventHandler ["Killed", {
	params ["_unit", "_killer"];
	if (A455_DEBUG_MODE) then { hint format ["%1 has been killed by %2.", _unit, _killer]; };
	_this call A455_fnc_insurgentLeaderKilled;
}];

// add capturedEH
["ace_captiveStatusChanged", { _this spawn A455_fnc_insurgentLeaderDetained; }] call CBA_fnc_addEventHandler;

// ------------------------------------------------------------------------------------------------
// TRIGGERS
// ------------------------------------------------------------------------------------------------

// setup trigger to fire if insurgentLeader knows about ANY player
private _playerDetectedTrigger = createTrigger ["EmptyDetector", [0,0,0]];
_playerDetectedTrigger setTriggerArea [0, 0, 0, false];
_playerDetectedTrigger setTriggerStatements ["(allPlayers findIf { insurgentLeader knowsAbout _x > 1 }) != -1", "call A455_fnc_insurgentLeaderAlerted", ""];
_playerDetectedTrigger setTriggerInterval 5;

// setup trigger to fire if ANY player knows about insurgentLeader
private _insurgentLeaderDetectedTrigger = createTrigger ["EmptyDetector", [0,0,0]];
_insurgentLeaderDetectedTrigger setTriggerArea [0, 0, 0, false];
_insurgentLeaderDetectedTrigger setTriggerStatements ["WEST knowsAbout insurgentLeader > 0.5", "_nil = [(WEST knowsAbout insurgentLeader)] spawn A455_fnc_insurgentLeaderFound", ""];
_insurgentLeaderDetectedTrigger setTriggerInterval 5;

// setup trigger to force surrender when
// players get within 30m
// WEST outnumbers GUER in 30m
// he is out of vehicle
private _doSurrenderTrigger = createTrigger ["EmptyDetector", [0,0,0]];
_doSurrenderTrigger setTriggerArea [30, 30, 0, false];
_doSurrenderTrigger setTriggerActivation ["ANY", "PRESENT", true];
_doSurrenderTrigger setTriggerStatements ["(({ side _x == WEST } count thisList) >= ({ side _x == independent } count thisList)) && (vehicle insurgentLeader == insurgentLeader)", "[insurgentLeader, true] spawn A455_fnc_doSurrender", ""];
_doSurrenderTrigger setTriggerInterval 1;
_doSurrenderTrigger attachTo [insurgentLeader, [0,0,0]];

// ------------------------------------------------------------------------------------------------
// STARTING VEHICLE + GROUP
// ------------------------------------------------------------------------------------------------

private _insurgentLeaderGroup = group insurgentLeader;

private _leaderVehicles = ["UK3CB_TKC_C_Datsun_Civ_Closed","UK3CB_TKC_C_Datsun_Civ_Open","UK3CB_TKC_C_Hatchback","UK3CB_TKC_C_Hilux_Civ_Closed","UK3CB_TKC_C_Hilux_Civ_Open","UK3CB_TKC_C_Kamaz_Covered","UK3CB_TKC_C_Kamaz_Open","UK3CB_TKC_C_Lada","UK3CB_TKC_C_Lada_Taxi","UK3CB_TKC_C_LR_Closed","UK3CB_TKC_C_LR_Open","UK3CB_TKC_C_Pickup","UK3CB_TKC_C_V3S_Closed","UK3CB_TKC_C_V3S_Recovery","UK3CB_TKC_C_V3S_Open","UK3CB_TKC_C_Sedan","UK3CB_TKC_C_Skoda","UK3CB_TKC_C_S1203","UK3CB_TKC_C_SUV","UK3CB_TKC_C_SUV_Armoured","UK3CB_TKC_C_UAZ_Closed","UK3CB_TKC_C_UAZ_Open","UK3CB_TKC_C_Ural","UK3CB_TKC_C_Ural_Open","UK3CB_TKC_C_Ural_Empty","UK3CB_TKC_C_Ural_Recovery","UK3CB_TKC_C_Gaz24","UK3CB_TKC_C_Golf"];
private _leaderVehicleChoice = selectRandom _leaderVehicles;
private _leaderStart = [0,0];
while {(_leaderStart isEqualTo [0,0]) || _leaderStart isEqualTo [0,0,0]} do {
	_leaderStart = [["mkr_ao"], ["mkr_blacklist_0"],  { isOnRoad _this }] call BIS_fnc_randomPos;
};
A455_leaderVehicle = createVehicle [_leaderVehicleChoice, _leaderStart, [], 0, "NONE"];
publicVariable "A455_leaderVehicle";
A455_leaderVehicle call A455_fnc_addSearchForIntel;

insurgentLeader assignAsDriver A455_leaderVehicle;
insurgentLeader moveInDriver A455_leaderVehicle;

// fill slots in vehicle with soldiers
_totalCrewCount = A455_leaderVehicle emptyPositions "Cargo";
_availableUnitTypes = "(getText (_x >> 'faction') == 'UK3CB_TKM_I') && (getText (_x >> 'vehicleClass') == 'Men')" configClasses (configFile >> "CfgVehicles");
for [{ _i = 1 }, { _i < _totalCrewCount }, { _i = _i + 1 }] do {
	_unitChosen = selectRandom _availableUnitTypes;
	_unit = _insurgentLeaderGroup createUnit [(configName _unitChosen), position insurgentLeader, [], 0, "NONE"];
	_unit assignAsCargo A455_leaderVehicle;
	_unit moveInCargo A455_leaderVehicle;

	// make retinue expert skilled
	_unit setSkill 1;

	_unit addEventHandler ["Killed", {
		params ["_unit", "_killer"];
		_unit call A455_fnc_addSearchForIntel;
	}];
};

if (A455_DEBUG_MODE) then {
	private _name = ("pos_" + str random 1000000);  
	private _marker = createMarker [_name, _leaderStart];  
	_marker setMarkerType "hd_dot";  
	_marker setMarkerColor "ColorGreen";  
	_marker setMarkerText ("_leaderStart" + str _leaderStart); 
};

// ------------------------------------------------------------------------------------------------
// DESTINATION
// ------------------------------------------------------------------------------------------------

private _leaderDestination = [0,0];
while {(_leaderDestination isEqualTo [0,0]) || _leaderDestination isEqualTo [0,0,0]} do {
	// TODO: Change upper & lower bounds based on difficulty?
	_leaderDestination = [["mkr_ao"], ["mkr_blacklist_0"],  { (isOnRoad _this) && (count (_this nearObjects ["Building", 100]) >= 10) && ((_leaderStart distance _this > 2000) && (_leaderStart distance _this < 10000)) }] call BIS_fnc_randomPos;
};

if (A455_DEBUG_MODE) then {
	private _name = ("pos_" + str random 1000000);  
	private _marker = createMarker [_name, _leaderDestination];  
	_marker setMarkerType "hd_dot";  
	_marker setMarkerColor "ColorRed";  
	_marker setMarkerText ("_leaderDestination" + str _leaderDestination + " - " + str count (_leaderDestination nearObjects ["Building", 100])); 
};

// Set destination as 1st waypoint
private _wp = (group insurgentLeader) addWaypoint [_leaderDestination, 0];
_wp setWaypointSpeed "NORMAL";
_wp setWaypointCombatMode "GREEN";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointCompletionRadius 30;
_wp setWaypointType "MOVE";
(group insurgentLeader) setCurrentWaypoint _wp;
