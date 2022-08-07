/*
if (isServer) then { this setVariable ["A455_group", "SHEPHERD", true]; group this setgroupIdGlobal ["SHEPHERD"]; }; 
*/

params ["_unit", "_localUnittype"];

["ACRE_PRC343", "default", "A455_preset1"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "default", "A455_preset2"] call acre_api_fnc_copyPreset;

["ACRE_PRC343", "A455_preset1", 1, "description", "SHEPHERD"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 2, "description", "HUSKY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 3, "description", "PITBULL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 4, "description", "COLLIE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 5, "description", "DAKKA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 6, "description", "BANG"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC343", "A455_preset1", 1, "label", "SHEPHERD"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 2, "label", "HUSKY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 3, "label", "PITBULL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 4, "label", "COLLIE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 5, "label", "DAKKA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "A455_preset1", 6, "label", "BANG"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC152", "A455_preset2", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "A455_preset2", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "A455_preset2", 3, "description", "FLYNET 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "A455_preset2", 4, "description", "CASNET 4"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC152", "A455_preset2", 1, "label", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "A455_preset2", 2, "label", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "A455_preset2", 3, "label", "FLYNET 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "A455_preset2", 4, "label", "CASNET 4"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC343", "A455_preset1"] call acre_api_fnc_setPreset;
["ACRE_PRC152", "A455_preset2"] call acre_api_fnc_setPreset;

if (!hasinterface || { player != _unit }) exitwith { false };

waitUntil { ([] call acre_api_fnc_isinitialized) };

private _personalradio = ["ACRE_PRC343"] call acre_api_fnc_getradioBytype;
private _handheldradio = ["ACRE_PRC152"] call acre_api_fnc_getradioBytype;

switch (_localUnittype) do {
    case "SHEPHERD": {
        [_personalradio, 1] call acre_api_fnc_setradioChannel;
    };
    case "HUSKY": {
        [_personalradio, 2] call acre_api_fnc_setradioChannel;
    };
    case "PITBULL": {
        [_personalradio, 3] call acre_api_fnc_setradioChannel;
    };
    case "COLLIE": {
        [_personalradio, 4] call acre_api_fnc_setradioChannel;
    };
    case "DAKKA": {
        [_personalradio, 5] call acre_api_fnc_setradioChannel;
    };
    case "BANG": {
        [_personalradio, 6] call acre_api_fnc_setradioChannel;
    };
};

[_handheldradio, 1] call acre_api_fnc_setradioChannel;