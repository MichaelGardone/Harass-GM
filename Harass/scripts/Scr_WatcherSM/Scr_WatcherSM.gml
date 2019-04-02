if (dir == 1)
{
	track     = collision_rectangle(x-dist_near_trig, y, x+dist_far_trig, y+sprite_height, OBJ_Player, false, true);
	flee      = collision_rectangle(x,y,x+sprite_width+dist_near_trig,y+sprite_height, OBJ_Player, false, true);
	max_close = collision_rectangle(x,y,x+sprite_width+watch_dist,y+sprite_height, OBJ_Player, false, true);
} else {
	track     = collision_rectangle(x-dist_far_trig, y, x+sprite_width+dist_near_trig, y+sprite_height, OBJ_Player, false, true);
	flee      = collision_rectangle(x,y,x-dist_near_trig,y+sprite_height, OBJ_Player, false, true);
	max_close = collision_rectangle(x,y,x-watch_dist,y+sprite_height, OBJ_Player, false, true);
}

switch(state)
{
	case e_state.wander:
	if_moving = true;
	x_spd = 0; // we do not want to modify the x coord in this state!
	
	// Update the index
	// linear operation, should be fine so long as we don't
	// have millions of 
	// TODO: Optimize in the event of massive cars
	// TODO: Separation of concerns and put this in another script
	if curr_node != nodes[cindx]
	{
		for(i = 0; i < maxnds; i++)
		{
			if curr_node == nodes[i]
			{
				if (curr_node + 2 > maxnds)
					curr_node = nodes[maxnds - 1]; // just go to the end
				else
					curr_node = nodes[i+2]; // go two nodes over and then resume from there
				break; // done, found it
			}
		}
	}
	
	Scr_AIPathing();
	
	if (direction == 0)
		dir = 1;
	else
		dir = -1;
	
	if (act_normal == false && track != noone && OBJ_Player.is_hiding == false && flee == noone)
	{
		state = e_state.chase;
	}
	
	break;

	// CHASE
	case e_state.chase:
	if_moving = true;
	// Watcher chase is to be going after player up until a certain point
	// and just sit there
	
	if(OBJ_Player.is_hiding == true || track == noone || flee != noone)
	{
		if (flee != noone)
		{
			alarm[0] = room_speed * seconds_to_ret; // 3 seconds before they get back to their scheduled tasks
			act_normal = true;
		}
		state = e_state.wander;
		break;
	}
	
	if (max_close)
	{
		// don't move past this
		state = e_state.sit_tight;
	}
	else {
		// player changed
		dir = sign(OBJ_Player.x - x);
	
		x_spd = dir * chase_spd;
		x += x_spd;
		
		curr_node = instance_nearest(x,y,Obj_Node);
	}
	
	break;
	
	// Attack
	case e_state.attack:
	// shouldn't reach
	break;

	case e_state.stunned:
	// shouldn't reach
	break;
	
	case e_state.sit_tight:
	if_moving = false;
	if (!max_close)
	{
		state = e_state.chase;
	}
	if (flee != noone)
	{
		state = e_state.wander;
	}
	break;
}
