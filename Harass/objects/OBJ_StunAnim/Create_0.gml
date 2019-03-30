// RANDOMLY GENERATE COORDS
//is_spawn = false;

//spawn_locs[0] = 0;
//spawn_locs[1] = 0;

//spawn_locs[2] = 0;
//spawn_locs[3] = 0;

//spawn_locs[4] = 0;
//spawn_locs[5] = 0;

//spawn_locs[6] = 0;
//spawn_locs[7] = 0;

//spawn_locs[8] = 0;
//spawn_locs[9] = 0;

//spawn_locs[10] = 0;
//spawn_locs[11] = 0;

//spawn_locs[12] = 0;
//spawn_locs[13] = 0;

//spawn_locs[14] = 0;
//spawn_locs[15] = 0;

//num_eyes = array_length_1d(spawn_locs);

// PRESS
a_press = 0
d_press = 0

// drawing
eyes[0, 0] = Spr_BrwnEyes;
eyes[0, 1] = 200;
eyes[0, 2] = -150;
eyes[0, 3] = -20;

eyes[1, 0] = Spr_BrwnEyes;
eyes[1, 1] = -165;
eyes[1, 2] = -360;
eyes[1, 3] = 5;

eyes[2, 0] = Spr_GryEyes;
eyes[2, 1] = 430;
eyes[2, 2] = -280;
eyes[2, 3] = -40;

eyes[3, 0] = Spr_GryEyes;
eyes[3, 1] = -430;
eyes[3, 2] = -280;
eyes[3, 3] = 40;

static_max = array_length_1d(eyes);
curr_max = 0;

spawned = false;

draw[0] = false;
for(i = 0; i < static_max; i++)
	draw[i] = false;
