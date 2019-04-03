
if global.pause == 0 && global.player_locked == 0
{
	if path_speed == 0
	{
		path_speed = patrol_spd;
	}
	
	if(dir == 1)
	{
		detect = collision_rectangle(x-dist_near_trig, y, x+dist_far_trig, y+sprite_height, OBJ_Player, false, true);
		attack = collision_rectangle(x+sprite_width,y,x+attack_trig,y+sprite_height, OBJ_Player, false, true);
	} else {
		detect = collision_rectangle(x-dist_far_trig, y, x+dist_near_trig, y+sprite_height, OBJ_Player, false, true);
		attack = collision_rectangle(x,y,x-attack_trig,y+sprite_height, OBJ_Player, false, true);
	}
	

	switch(state)
	{
		case e_state.wander:
		if_stunned = 0;
		if_moving = 1;
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
	
		// The enemy had found the player & player isn't hiding
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
		if_moving = 1;
		// If (player hides we lost) OR (player escapes detection hitbox)
		if(OBJ_Player.is_hiding == true/* || detect == noone*/)
			state = e_state.wander;
	
		// using mp is wonky, use our own version
		dir = sign(OBJ_Player.x - x);
	
		x_spd = dir * chase_spd;
		x += x_spd;
	
		if(attack != noone && OBJ_Player.is_hiding == false)
			state = e_state.attack;
		
		curr_node = instance_nearest(x,y,Obj_Node);
		
		break;
		
		// Attack
		case e_state.attack:
		// If (player hides it lost) OR (player escapes hitboxes)
		if OBJ_Player.player_escape
		{	
			OBJ_Player.player_escape = false;
			
			state = e_state.stunned;
			
			if global.stun_effect < 7
				global.stun_effect++;
			OBJ_Player.breakout_lim = round(OBJ_Player.breakout_lim * 1.5);
		} else 
		{
			global.player_locked = 1;
			OBJ_Player.fval = 0;
		}
		break;
	
		case e_state.stunned:
		if_stunned = 1;
		fval = 0;
		alarm[0] = room_speed * (9 - global.stun_effect);
		state = e_state.sit_tight;
		break;
		
		case e_state.sit_tight:
		if_moving = 0
		// burn cycles
		//show_debug_message(string(x+attack*dir));
		//show_debug_message(x);
		//show_debug_message(attack);
		break;
	}
} else {
	path_speed = 0;	
}
