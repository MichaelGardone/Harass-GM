// Grab the states
Scr_States();

// Ints
x_spd = 0;
dir = 1;
patrol_spd = 5;

// Float
chase_spd = 6;

// Enemy Hitbox Information
dist_far_trig = 600; // Facing
dist_near_trig = 200; // Not looking, "hears" player
lost = 100; // Distance the player needs to be from the enemy to lose them
attack = 75;

// Initial state -- do not touch! should always be wandering
state = e_state.wander;

curr_node = noone;
left_or_right = 0;

nodes[instance_number(Obj_Node)] = noone;
cindx = 0;
maxnds= 0;

for(i = 0; i < instance_number(Obj_Node); i++)
{
	cn = instance_find(Obj_Node, i);
	
	if(curr_node == noone)
		curr_node = cn;
	else if ((x - curr_node.x) < (x - cn.x))
	{
		curr_node = cn;
		c_index = i;
	}
	
	nodes[i] = cn;
	maxnds++;
}
