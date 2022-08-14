// runs local to _caller

params ["_target", "_caller", "_actionId", "_arguments"];

_target setVariable ["A455_hasBeenSearched", true, true];

switch (_target) do {
	case insurgentLeader: {
		// should only be this when he is dead
		["A455_task_intel", "SUCCEEDED", true] call BIS_fnc_taskSetState;

		// do some radio chatter?
		
	};
	case A455_leaderVehicle: { };
	default {
		// random solder or vehicle. Give small 2% chance to find intel
		// TODO: make chance based on difficulty 
		if (random 100 > 98) then {
			// found intel! make levels to it so that for each intel found, it gets more useful / specific

			// Update task


			if (A455_DEBUG_MODE) then {
				private _marker = createMarker [("intel_pos_" + str random 1000000), getPos _target];  
				_marker setMarkerType "hd_dot";  
				_marker setMarkerColor "ColorWhite";  
				_marker setMarkerText (format ["intel found by %1", name _caller]); 
			};
		} else {
			if (A455_DEBUG_MODE) then {
				private _marker = createMarker [("intel_pos_" + str random 1000000), getPos _target];  
				_marker setMarkerType "hd_dot";  
				_marker setMarkerColor "ColorBlack";  
				_marker setMarkerText (format ["Search for intel by %1. Nothing found", name _caller]); 
			};
		};
	};
};
