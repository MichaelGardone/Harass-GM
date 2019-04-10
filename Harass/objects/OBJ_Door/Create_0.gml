
// setup timer for level
if (room == rm_LvL1)
	alarm[11] = room_speed * global.times[0];
else if (room == rm_LvL2)
	alarm[11] = room_speed * global.times[1];
else if (room == rm_LvL3)
	alarm[11] = room_speed * global.times[2];
else if (room == rm_LvL4)
	alarm[11] = room_speed * global.times[3];

door_open = false;
	
to_open = 0;
to_close = 0;

reset_alarms = false;

// DO NOT EDIT, Tracker for Door SFX
sfx_track = 0;

// Speed of Animation
play_Anim = 1;

