// Grab the states
Scr_States();

// Ints
x_spd = 0;
dir = 1;
if (direction == 0)
	dir = 1;
else
	dir = -1;
patrol_spd = 5;

// Float
chase_spd = 6;

// Enemy Hitbox Information
dist_far_trig = 600; // Facing
dist_near_trig = 200; // Not looking, "hears" player

lost = 100; // Distance the player needs to be from the enemy to lose them
watch_dist = dist_far_trig / 2;

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
	else if ((x - curr_node.x) > (x - cn.x))
	{
		curr_node = cn;
		cindx = i;
	}
	
	/*res1 = (x - curr_node.x);
	res2 = (x - cn.x);
	show_debug_message("at " + string(i) + ": (x - curr_node.x) = " + string(res1)
	+  "; (x - cn.x) = " + string(res2));*/
	
	nodes[i] = cn;
	maxnds++;
}

//show_debug_message("selected " + string(cindx));