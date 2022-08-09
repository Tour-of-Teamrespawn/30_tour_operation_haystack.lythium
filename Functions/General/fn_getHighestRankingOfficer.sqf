private ["_units", "_candidate"];
_units = _this;
_candidate = objNull;

{
    if (isNull _candidate) then {
        _candidate = _x;
    } else {
        if(((rankId _x) >= (rankId _candidate))) then {
            _candidate = _x;
        };
    };
} forEach _units;

_candidate