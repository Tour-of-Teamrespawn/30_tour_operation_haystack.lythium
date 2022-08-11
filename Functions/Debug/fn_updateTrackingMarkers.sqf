params ["_unitList", "_prefix"];
if (isNil "_prefix") then {
	_prefix = "A455_tracking_mkr_";
};

{
	private _marker = _x getVariable ["A455_tracking_marker","unknown"];
	if (_marker == "unknown") then {
		private _name = (_prefix + str random 100000000);
		_marker = createMarker [_name, getPos _x];
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorRed";
		_marker setMarkerText (typeOf _x);
		_x setVariable ["A455_tracking_marker", _name];
	} else {
		_marker setMarkerPos (getPos _x);
	};
} forEach _unitList;