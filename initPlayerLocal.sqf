waitUntil {!isNil "TOUR_init_complete"};
waitUntil {player == player};

#include "hpp\initBriefing.hpp"

HQ addAction ["Report In", "scripts\player\endAction.sqf", nil, 10, true, false, "", "(isNil {missionNameSpace getVariable 'TOUR_reportIn'}) && (player==leader group player) && (player distance _target < 2)"];

(typeOf player) call A455_fnc_setLoadout;

player playaction "stand";

if (!A455_DEBUG_MODE) then {
	_int = execVM "scripts\player\intro.sqf";
};

waitUntil { !isNil { player getVariable "A455_GROUP" }; };
private _group = (player getVariable "A455_GROUP");
[player, _group] call A455_fnc_setupACRE;
[player, _group] call A455_fnc_updateORBATDetails;

if (A455_DEBUG_MODE) then {
	// enemy trackers
	while {alive player} do {
		[allUnits] call A455_fnc_updateTrackingMarkers;
		sleep 5;
	};
};
