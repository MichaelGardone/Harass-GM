
if global.pause == 0 && global.player_locked == 0
{
	if path_speed == 0
	{
		path_speed = patrol_spd;
	}
	detect = collision_rectangle(x-dist_near_trig*dir, y, x+dist_far_trig*dir, y, OBJ_Player, false, true);
	attack = collision_rectangle(x+sprite_width*dir,y,x+sprite_width+attack*dir,y+sprite_height, OBJ_Player, false, true);

	switch(state)
	{
		case e_state.wander:
		x_spd = 0; // we do not want to modify the x coord in this state!
	
		if(path_index != path2)
		{
			// Try to go back to the path's start
			mp_linear_step(start_x, start_y, patrol_spd, false);
			if(abs(x - start_x) < 2)
				path_start(path2, patrol_spd, path_action_reverse, true);
		}
	
		// The enemy had found the player & player is actually on the same depth level as the enemy
		if(detect != noone && OBJ_Player.is_hiding == false)
		{
			// Get to work!
			path_end();
			state = e_state.chase;
		}
	
		if (direction == 0)
			dir = 1;
		else
			dir = -1;
	
		break;
	
		// CHASE
		case e_state.chase:
	
		// If (player hides we lost) OR (player escapes detection hitbox)
		if(OBJ_Player.is_hiding == true/* || detect == noone*/)
			state = e_state.wander;
	
		// using mp is wonky, use our own version
		dir = sign(OBJ_Player.x - x);
	
		x_spd = dir * chase_spd;
		x += x_spd;
	
		if(attack != noone && OBJ_Player.is_hiding == false)
			state = e_state.attack;
		break;
	
		// Attack
		case e_state.attack:
		// If (player hides it lost) OR (player escapes hitboxes)
		if OBJ_Player.player_escape
		{
			OBJ_Player.player_escape = false;
			
			state = e_state.stunned;
			
			if stun_effect < 7
				stun_effect++;
			OBJ_Player.breakout_lim = round(OBJ_Player.breakout_lim * 1.5);
		} else 
		{
			global.player_locked = 1;	
		}
		break;
	
		case e_state.stunned:
		alarm[0] = room_speed * (9 - stun_effect);
		state = e_state.sit_tight;
		break;
		
		case e_state.sit_tight:
		// burn cycles
		break;
	}
} else {
	path_speed = 0;	
}
