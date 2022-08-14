// TODO: ADD "IS HANDCUFFED" CHECK TO CAPTURED TRIGGER

private _captureTask = [west, "A455_task_capture", ["Capture Fahim al-Arshad, leader of the local Al-Shabab cell, and bring him in for questioning.", "Capture Fahim al-Arshad", "mkr_ao"], objNull, "ASSIGNED", 1, false, "search", false] call BIS_fnc_taskCreate;

private _NoDeadCivsTask = [west, "A455_task_nocollateral", ["Ensure that no civilians are harmed during the operation.", "No collateral damage", "mkr_ao"], objNull, "CREATED", 3, false, "meet", false] call BIS_fnc_taskCreate;

private _capturedTrigger = createTrigger ["EmptyDetector", getPosATL A455_CORE];
_capturedTrigger settriggerActivation ["ANY", "PRESENT", false];
_capturedTrigger settriggerArea [250, 250, 0, false];
_capturedTrigger settriggerStatements ["(alive insurgentLeader) && (insurgentLeader in thisList) && (insurgentLeader getVariable [""ace_captives_isHandcuffed"",false]) && (vehicle insurgentLeader == insurgentLeader)", "call A455_fnc_seizedPlant", ""];
_capturedTrigger settriggerTimeout [5, 10, 15, false];
_capturedTrigger setTriggerInterval 5;

// private _NCTask1Trigger = createTrigger ["EmptyDetector", [11553.5, 6989.65, 0.00131226]];
// _NCTask1Trigger settriggerArea [7, 7, 0, false];
// _NCTask1Trigger settriggerStatements ["count (nearestTerrainObjects [getPosATL thistrigger, [""HOUSE""], 7]) < 3", "call A455_fnc_failnCTask", ""];
// _NCTask1Trigger settriggerInterval 5;