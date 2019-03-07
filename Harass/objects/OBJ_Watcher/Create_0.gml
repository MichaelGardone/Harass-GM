// Init the states
Scr_States();

// Ints
x_spd = 0;
dir = 1;
patrol_spd = 2;

// Float
chase_spd = 2.5;

// Stun reduction
stun_effect = -1;

// Enemy Hitbox Information
dist_far_trig = 600; // Facing
dist_near_trig = 200; // Not looking, "hears" player
lost = 100; // Distance the player needs to be from the enemy to lose them
attack = 75;

// Initial state -- do not touch! should always be wandering
state = e_state.wander;

start_x = x;
start_y = y;



nodes[instance_number(Obj_Node)] = noone;

for(i = 0; i < instance_number(Obj_Node); i++)
	nodes[i] = instance_find(Obj_Node, i);
