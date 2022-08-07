enableRadio true;
player sideChat "HQ, this is X. We think we've found our guy!";
player sideChat "Copy that X, we can see it on the cameras, that's the guy! Bring him in";
player sideChat "Roger, moving to secure, out.";
enableRadio false;

["A455_task_capture", [insurgentLeader, true]] call BIS_fnc_taskSetDestination;
