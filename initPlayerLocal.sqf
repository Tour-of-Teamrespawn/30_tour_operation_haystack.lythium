params ["_player", "_didJIP"];

waitUntil {!isNil "TOUR_init_complete"};
waitUntil {_player == player};

#include "hpp\Briefing.hpp"

HQ addAction ["Report In", "scripts\player\endAction.sqf", nil, 10, true, false, "", "(isNil {missionNameSpace getVariable 'TOUR_reportIn'}) && (player==leader group player) && (player distance _target < 2)"];

(typeOf player) call A455_fnc_setLoadout;

player playaction "stand";

if (!A455_DEBUG_MODE) then {
	_int = execVM "scripts\player\intro.sqf";
} else {
	"mkr_blacklist_0" setMarkerAlphaLocal 1;

	// enemy trackers
	while {alive player} do {
		[units independent, "ColorGreen"] call A455_fnc_updateTrackingMarkers;
		[allMissionObjects "Car", "ColorWhite"] call A455_fnc_updateTrackingMarkers; 
		sleep 5;
	};
};

waitUntil { !isNil { player getVariable "A455_GROUP" }; };
private _group = (player getVariable "A455_GROUP");
[player, _group] call A455_fnc_setupACRE;
[player, _group] call A455_fnc_updateORBATDetails;
