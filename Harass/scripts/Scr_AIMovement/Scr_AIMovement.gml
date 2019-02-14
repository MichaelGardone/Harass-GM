switch(state)
{
	case e_state.idle:
	x_spd = 0;
	if(distance_to_object(OBJ_Player) < 96)
	{
		if(depth == OBJ_Player.depth)
		{
			state = e_state.chase;
		}
	}
	break;
	case e_state.wander:
	// TODO: Fill in
	break;
	case e_state.chase:
	dir = sign(OBJ_Player.x - x);
	x_spd = spd * dir;
	show_debug_message("hello");
	if(distance_to_object(OBJ_Player) > 128)
	{
		state = e_state.idle;
	}
	
	break;
}


x += x_spd;
