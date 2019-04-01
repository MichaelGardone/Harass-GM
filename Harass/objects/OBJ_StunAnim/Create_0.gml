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

eyes[2,0] = OBJ_Eyes03
eyes[2,1] = -200
eyes[2,2] = -150

eyes[3,0] = OBJ_Eyes04
eyes[3,1] = -430
eyes[3,2] = -280

eyes[4,0] = OBJ_Eyes05
eyes[4,1] = 430
eyes[4,2] = -280

eyes[5,0] = OBJ_Eyes06
eyes[5,1] = 0
eyes[5,2] = -270

eyes[6,0] = OBJ_Eyes07
eyes[6,1] = 300
eyes[6,2] = -220

eyes[7,0] = OBJ_Eyes08
eyes[7,1] = 300
eyes[7,2] = -220

eyes[8,0] = OBJ_Eyes09
eyes[8,1] = 165
eyes[8,2] = -360

static_max = array_length_1d(eyes);
curr_max = 0;

spawned = false;

draw[0] = false;
for(i = 0; i < static_max; i++)
	draw[i] = false;
	
is_spawn = false

// FACE TRACKER
faceTrack = false
