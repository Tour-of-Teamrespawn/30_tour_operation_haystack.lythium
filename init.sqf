/*
DO NOT EDIT THIS DIRECTLY, BUILD.PS1 will increment the minor version of this by 1 each time it runs
###MISSION_VERSION 0.10
*/

/* Creates an entry in the server and client RPT file with the mission name in place of the %1.
Makes it easier to debug when you know what mission created the error. */
diag_log text "";
diag_log text format["|=============================   STARTING: %1   =============================|", missionName];
diag_log text "";

private _0 = addMissionEventHandler ["MPEnded", {
	diag_log text "";
	diag_log text format["|=============================   ENDING: %1   =============================|", missionName];
	diag_log text "";
}];

private _0 = addMissionEventHandler ["Ended", {
	diag_log text "";
	diag_log text format["|=============================   ENDING: %1   =============================|", missionName];
	diag_log text "";
}];

enableDynamicSimulationSystem true;

private _pp = [] spawn A455_fnc_processParams;
waitUntil {scriptDone _pp};

private _svd = [250, TOUR_viewDistance, 20, 0.05] spawn A455_fnc_setViewDistance;
waitUntil {scriptDone _svd};

// re-set identity
insurgentLeader setIdentity "FahimalArshad";