// PRESS
a_press = 0
d_press = 0

// WITNESS ANIM
alarm[0] = room_speed * 2

eyes[0,0] = OBJ_Eyes01
eyes[0,1] = 200
eyes[0,2] = -150

eyes[1,0] = OBJ_Eyes02
eyes[1,1] = -165
eyes[1,2] = -260

static_max = array_length_1d(eyes);
curr_max = 0;

spawned = false;

draw[0] = false;
for(i = 0; i < static_max; i++)
	draw[i] = false;
	
is_spawn = false

// FACE TRACKER
faceTrack = false
