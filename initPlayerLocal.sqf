waitUntil {!isNil "TOUR_init_complete"};
waitUntil {player == player};

#include "initBriefing.hpp"

HQ addAction ["Report In", "scripts\player\endAction.sqf", nil, 10, true, false, "", "(isNil {missionNameSpace getVariable 'TOUR_reportIn'}) && (player==leader group player) && (player distance _target < 2)"];

(typeOf player) call A455_fnc_setLoadout;

player playaction "stand";

if (!A455_DEBUG_MODE) then {
	_int = execVM "scripts\player\intro.sqf";
	// waitUntil { scriptDone _int };
};

waitUntil { !isNil { player getVariable "A455_GROUP" }; };
private _group = (player getVariable "A455_GROUP");
[player, _group] call A455_fnc_setupACRE;
[player, _group] call A455_fnc_updateORBATDetails;

if (A455_DEBUG_MODE) then {
	// enemy trackers
	while {alive player} do {
		{
			private _marker = _x getVariable ["A455_tracking_marker","unknown"];
			if (_marker == "unknown") then {
				private _name = ("tracker_mkr_" + str random 10000000);
				_marker = createMarker [_name, getPos _x]; // not visible yet.
				_marker setMarkerType "hd_dot";
				_marker setMarkerColor "ColorRed";
				// _marker setMarkerText (typeOf _x);
				_x setVariable ["A455_tracking_marker", _name];
			} else {
				_marker setMarkerPos (getPos _x);
			};
			
		} forEach units EAST;
		sleep 15;
	};
};
