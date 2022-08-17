params ["_unit", "_state"];

if (_state == true) then {
	private _weapon = currentWeapon _unit;       
	_unit removeWeapon (currentWeapon _unit);

	_unit directSay "A455_ISurrender";

	sleep 0.1;
	private _weaponHolder = "WeaponHolderSimulated" createVehicle [0,0,0];
	_weaponHolder addWeaponCargoGlobal [_weapon,1];
	_weaponHolder setPos (_unit modelToWorld [0,.2,1.2]);
	_weaponHolder disableCollisionWith _unit;
	private _dir = random(360);
	private _speed = 1.5;
	_weaponHolder setVelocity [_speed * sin(_dir), _speed * cos(_dir),4];

	// set ACE surrender status (_not_ handcuffed, but with hands on head)
	["ACE_captives_setSurrendered", [_unit, true], _unit] call CBA_fnc_targetEvent;
} else {
	// if not cuffed, run away
	private _isCaptive = _unit getVariable ["ace_captives_isHandcuffed", false];
	if (!_isCaptive) then {
		// unset ACE surrender status (not handcuffed)
		["ACE_captives_setSurrendered", [_unit, false], _unit] call CBA_fnc_targetEvent;	
	} else {
		// do nothing, handcuffed and west left the area?
		// or maybe uncuff if no WEST and >=2 GUER...
	};
};



