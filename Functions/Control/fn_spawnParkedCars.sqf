private _spawnedCars = 0;
private _carLimit = 100;
private _availableVehicles = "(getText (_x >> 'faction') == 'UK3CB_TKC_C') && (getText (_x >> 'editorSubcategory') == 'EdSubcat_Cars')" configClasses (configFile >> "CfgVehicles");

for [{ _i = 1 }, { _i < _carLimit }, { _i = _i + 1 }] do {
	private _vehPos = [0,0];
	while {(_vehPos isEqualTo [0,0]) || _vehPos isEqualTo [0,0,0]} do {
		_vehPos = [["mkr_ao_big"], [],  { ((isOnRoad _this) && ((count (_this nearObjects ["House", 150]) >= 5)))  || (count (_this nearObjects ["House", 20]) >= 1)}] call BIS_fnc_randomPos;
	};
	_pos = _vehPos;
	_direction = random 360;
	if (isOnRoad _vehPos) then {
		private _nearRoads = _vehPos nearRoads 10;
		private _direction = 0;
		private _roadPos = [0,0,0];
		if (count _nearRoads > 0) then {
			private _road = _nearRoads select 0;
			if (random 1 > 0.5) then {
				_roadPos = _road getRelPos [8, 90];
			} else {
				_roadPos = _road getRelPos [8, 270];
			};
			_pos = _roadPos;
			
			private _roadConnectedTo = roadsConnectedTo _road;
			private _connectedRoad = _roadConnectedTo select 0;
			if (!isNil "_connectedRoad") then {
				_direction = [_road, _connectedRoad] call BIS_fnc_DirTo;
			};
		};
	} else {
		_pos = _vehPos;
	};
	
	_safePos = [_pos, 0, 20, 5] call BIS_fnc_findSafePos;

	if (_safePos isEqualTo [0,0] || _safePos isEqualTo [0,0,0]) then {
		_safePos = _pos;
	};

	private _vehChoice = selectRandom _availableVehicles;
	private _vehicle = createVehicle [configName _vehChoice, _safePos, [], 20, "NONE"];
	_vehicle setDir _direction;
	_vehicle lock 3; //lock for players only
	
	// _vehicle enableDynamicSimulation true;
	
	_vehicle call A455_fnc_addSearchForIntel;
};


