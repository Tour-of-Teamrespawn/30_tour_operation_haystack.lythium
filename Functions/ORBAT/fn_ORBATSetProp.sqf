/*
Author: Spenser King (ZERO_Z77)

Description:
sets ORBAT properties for the given group dynamically

parameters:
0: CONFIG - Path to ORBAT group in config file
1: strinG - Property to Change
2: NUMBER, strinG, ARRAY - Value to set for the property

Returns:
BOOL

*/

/*
Examples:
[missionConfigFile >> "CfgORBAT" >> "myUnit", "rank", "LIEUTENANT"] call MIS_fnc_ORBATsetProp;
[missionConfigFile >> "CfgORBAT" >> "myUnit", "commander", "Dan"] call MIS_fnc_ORBATsetProp;
[missionConfigFile >> "CfgORBAT" >> "myUnit", "ASsetS", [["B_Heli_Attack_01_F", 5]]] call MIS_fnc_ORBATsetProp;

*/

/*
notes:
Accepted property names:
"ID" - The unit's numerical id
"size" - The unit's size from CfgChainOfCommand
"type" - The unit 'stype from CfgChainOfCommand
"side" - The unit's side from CfgChainOfCommand
"name" - The unit's name format string
"SHorT name" - The unit's short name format string
"textURE" - Path to replacement texture
"textURE size" - Icon size scalar
"inSIGNIA" - Path to insignia
"COLor" - Color of unit's icon in format [r, g, b, a]
"commander" - name of unit's commander
"rank" - rank of unit's commander
"DESCRIPTION" - Unit description
"ASsetS" - Array of assets for the unit in format [vehicleClass:strinG, count:NUMBER]
"position" - position of unit's icon in format [x, y, z]

*/

params ["_path", "_prop", "_value"];
_prop = toUpper _prop;

// get prop num
_propNum=0;
switch(_prop) do {
    case "ID":{
        _propNum=0
    };
    case "size":{
        _propNum=1
    };
    case "type":{
        _propNum=2
    };
    case "side":{
        _propNum=3
    };
    case "name":{
        _propNum=4
    };
    case "SHorT name":{
        _propNum=5
    };
    case "textURE":{
        _propNum=6
    };
    case "textURE size":{
        _propNum=7
    };
    case "inSIGNIA":{
        _propNum=8
    };
    case "COLor":{
        _propNum=9
    };
    case "commander":{
        _propNum=10
    };
    case "rank":{
        _propNum=11
    };
    case "DESCRIPTION":{
        _propNum=12
    };
    case "ASsetS":{
        _propNum=13
    };
};

// create an entry if none exists, otherwise use existing entry
if (isnil "BIS_fnc_ORBATsetgroupparams_groups") then {
    BIS_fnc_ORBATsetgroupparams_groups = [];
};
_index = BIS_fnc_ORBATsetgroupparams_groups find _path;
if (_index < 0) then {
    _index = count BIS_fnc_ORBATsetgroupparams_groups;
    _props = [];
    _props resize 9;
    BIS_fnc_ORBATsetgroupparams_groups = BIS_fnc_ORBATsetgroupparams_groups + [_path, _props];
};

// edit entry
if (_prop != "position") then {
    BIS_fnc_ORBATsetgroupparams_groups set [_index, _path];
    BIS_fnc_ORBATsetgroupparams_groups select (_index +1) set [_propNum, _value];
};

// update map icon info
//if (!isNil { missionnamespace getVariable "BIS_fnc_modulestrategicMapORBAT_drawIcon" }) then {
  _drawIcon = missionnamespace getVariable "BIS_fnc_modulestrategicMapORBAT_drawIcon";
  _classProps = _path call BIS_fnc_ORBATgetgroupparams;
  {
      if (_x select 0 == _path) then {
          _x set [3, _classProps];
          _sizeTex = _x select 3 select 9;
          _typeTex = _x select 3 select 3;
          _size = _classProps select ("size" call BIS_fnc_ORBATgetgroupparams);
          _texturesize = _classProps select ("texturesize" call BIS_fnc_ORBATgetgroupparams);
          _iconsize = sqrt(_size+1)*26;
          _color = _classProps select 6;
          _x select 2 set [1, _color];
          _x select 2 set [3, _iconsize*_texturesize];
          _x select 2 set [4, _iconsize*_texturesize];
          _x select 4 set [0, _sizeTex];
          _x select 2 set [0, _typeTex];
          if (_prop=="position") then {
              _x select 2 set [2, _value];
              _x select 4 set [2, _value];
          };
      };
  }forEach _drawIcon;
//};


true;