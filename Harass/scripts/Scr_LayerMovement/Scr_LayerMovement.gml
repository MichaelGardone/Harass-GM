
if global.player_locked == 0 && global.pause == 0
{
	if(place_meeting(x,y,OBJ_Door))
	{
		if (w_key && OBJ_Door.door_open && global.win == false)
		{
			global.record += 1;
			global.level_fade = true;
			global.win = true;
			if (room == rm_LvL1)
				global.next_room = rm_LvL2;
			else if (room == rm_LvL2)
				global.next_room = rm_LvL3;
			// Tutorial is over, randomize
			else	
			{
				// Re-seed to keep it random
				// Does GM use linear randomization?
				randomize();
				global.next_room = choose(rm_LvL3, rm_LvL4);
			}
		}
	} else {
		
		instance = instance_place(x,y, OBJ_Crowd01);
		instance2 = instance_place(x,y, OBJ_Crowd02);
		
		if (w_key && (place_meeting(x,y, OBJ_Crowd01) || place_meeting(x,y,OBJ_Crowd02))
			&& ((instance != noone && instance.can_hide) || (instance2 != noone && instance2.can_hide)))
		{
			alarm[1] = room_speed * hide_length;
			
			if(instance != noone)
			{
				instance.can_hide = false;
				instance.alarm[0] = room_speed * (instance.time_to_open);
			}
			
			if (instance2 != noone)
			{
				instance2.can_hide = false;
				instance2.alarm[0] = room_speed * (instance2.time_to_open);
			}
			
			fval = 255;
			is_hiding = true;
		}
		
		if ((left || right) && is_hiding == true && fval == 100)
		{
			is_hiding = false;
		}
		
	}
}

if (global.pause && alarm[1] > 0)
{
	hiding_timer = alarm[1];
	alarm[1] = -1;
}
if (global.pause == false && alarm[1] = -1 && hiding_timer != -1)
{
	alarm[1] = hiding_timer;
	hiding_timer = -1;
}