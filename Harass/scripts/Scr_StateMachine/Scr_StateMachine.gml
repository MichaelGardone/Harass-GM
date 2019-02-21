detect = collision_line(x-dist_near_trig*dir, y, x+dist_far_trig*dir, y, OBJ_Player, false, true);
attack = collision_line(x,y,x+attack,y, OBJ_Player, false, true);

switch(state)
{
	case e_state.wander:
	x_spd = 0; // we do not want to modify the x coord in this state!
	
	if(path_index != test_patrol)
	{
		// Try to go back to the path's start
		mp_linear_step(start_x, start_y, patrol_spd, false);
		if(abs(x - start_x) < 2)
			path_start(test_patrol, patrol_spd, path_action_reverse, true);
	}
	
	// The enemy had found the player
	if(detect != noone)
	{
		// Check if the player is actually on the same depth level as the enemy
		if(depth == OBJ_Player.depth)
		{
			// Get to work!
			path_end();
			state = e_state.chase;
		}
	}
	
	break;
	
	// CHASE
	case e_state.chase:
	
	// If (player hides we lost) OR (player escapes hitboxes)
	if(depth != OBJ_Player.depth || detect == noone)
	{
		state = e_state.wander;
	}
	
	// using mp is wonky, use our own version
	dir = sign(OBJ_Player.x - x);
	
	x_spd = dir * chase_spd;
	x += x_spd;
	
	if(position_meeting(x,y,OBJ_Player))
		state = e_state.attack;
	break;
	
	// Attack
	case e_state.attack:
	// If (player hides we lost) OR (player escapes hitboxes)
	if(depth != OBJ_Player.depth || detect == noone)
	{
		state = e_state.wander;
	}
	break;
	
	case e_state.stunned:
	break;
}