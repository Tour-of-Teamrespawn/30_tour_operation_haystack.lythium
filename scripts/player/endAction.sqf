params [ "_laptop", "_caller", "_action"];
missionNameSpace setVariable ["TOUR_reportIn", true, true];
[[_caller, _laptop, _action],"scripts\player\endPlayer.sqf"] remoteExec ["execVM", 0, false];