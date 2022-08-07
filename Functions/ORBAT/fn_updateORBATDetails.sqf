params ["_unit", "_group"];
private ["_company", "_type", "_id", "_size", "_icon", "_commander", "_commanderRank", "_description", "_assets"];

if (leader group _unit != _unit) exitWith {false;};

_company = "supportCompany";
if ( !isNil { (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "type") call BIS_fnc_getCfgData } ) then {
	_type = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "type") call BIS_fnc_getCfgData
} else {
	_company = "charlieCompany";
	_type = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "type") call BIS_fnc_getCfgData;
};

_id = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "id") call BIS_fnc_getCfgData;
_type = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "type") call BIS_fnc_getCfgData;
_size = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "size") call BIS_fnc_getCfgData;
_description = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "description") call BIS_fnc_getCfgData;
if (_type == "Recon") then { _icon = "b_recon"; } else { _icon = "b_hq"; };

if ( !isNil { (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "assets") call BIS_fnc_getCfgData } ) then {
	_assets = (missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group >> "assets") call BIS_fnc_getCfgData;
} else {
	_assets = [];
};

// Get specific commander name from group leader
_commander = name _unit;
_commanderRank = rank _unit;

// Doesnt work on map icon either
// [(missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group), "commander", _commander] call MIS_fnc_ORBATsetProp;
// [(missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group), "commanderRank", _commanderRank] call MIS_fnc_ORBATsetProp;

[
	(missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> _company >> _group), 
	_id, 
	_size, 
	_type, 
	"West", 
	_group, 
	_group, 
	_icon, 
	1,
	"", // adds picture under long desc 
	[0,0.3,0.6,1],
	_commander, 
	_commanderRank, 
	_description, 
	_assets 
] remoteExecCall ["BIS_fnc_ORBATSetGroupParams", [0, -2] select isDedicated];

// Also set parent company commander as HQ element IS the company command
if (_group == "SHEPHERD") then {
	// Doesnt work on map icon either
	// [(missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> "charlieCompany"), "commander", _commander] call MIS_fnc_ORBATsetProp;
	// [(missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> "charlieCompany"), "commanderRank", _commanderRank] call MIS_fnc_ORBATsetProp;

	[
		(missionConfigFile >> "CfgORBAT" >> "b_5th_sfg" >> "1stBat" >> "charlieCompany"), 
		3, 
		"Company", 
		"Recon", 
		"West", 
		"%1 %3", 
		"%1 %3", 
		"b_recon", 
		1,
		"", // adds picture under long desc 
		[0,0.3,0.6,1],
		_commander, 
		_commanderRank, 
		"Charlie Company is the 1st Battalion's direct action specialists, consisting of three operational detachment alpha (ODA) teams and one command element.", 
		[] 
	] remoteExecCall ["BIS_fnc_ORBATSetGroupParams", [0, -2] select isDedicated];
};



	

