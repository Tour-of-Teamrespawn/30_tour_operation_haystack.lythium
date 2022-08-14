params ["_unit", "_state", "_reason", "_caller"];

if (_reason == "SetHandcuffed" && _state == true) then {
	// has been handcuffed
	// do radio chatter
} else {
	// is either released from handcuffs or start/stop surrender
	if (A455_DEBUG_MODE) then { hint str _this; }
};