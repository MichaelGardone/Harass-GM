track     = collision_rectangle(x-dist_near_trig*dir, y, x+dist_far_trig*dir, y+sprite_height, OBJ_Player, false, true);
//flee      = collision_rectangle(x+sprite_width*dir,y,x+sprite_width+attack*dir,y+sprite_height, OBJ_Player, false, true);
max_close = collision_rectangle(x,y,x+watch_dist*dir,y+sprite_height, OBJ_Player, false, true);

switch(state)
{
	case e_state.wander:
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
	
	if (track != noone && OBJ_Player.is_hiding == false)
	{
		state = e_state.chase;
	}
	
	break;

	// CHASE
	case e_state.chase:
	// Watcher chase is to be going after player up until a certain point
	// and just sit there
	
	if(OBJ_Player.is_hiding == true || track == noone)
	{
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
	if (!max_close)
	{
		state = e_state.chase;
	}
	break;
}
