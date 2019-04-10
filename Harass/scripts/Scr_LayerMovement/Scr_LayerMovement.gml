
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
			// Tutorial is over, ranodmize
			else	
			{
				global.next_room = choose(rm_LvL3, rm_LvL4);
			}
		}
	} else {
		
		instance = instance_place(x,y, OBJ_Crowd01);
		instance = instance_place(x,y, OBJ_Crowd02);
		
		if (w_key && (place_meeting(x,y, OBJ_Crowd01) || place_meeting(x,y,OBJ_Crowd02))
			&& instance != noone && instance.can_hide)
		{
			instance.can_hide = false;
			
			alarm[1] = room_speed * hide_length;
			instance.alarm[0] = room_speed * (instance.time_to_open);
			
			fval = 255;
			is_hiding = true;
		}
		
		if ((left || right) && is_hiding == true && fval == 100)
		{
			is_hiding = false;
		}
		
	}
}
