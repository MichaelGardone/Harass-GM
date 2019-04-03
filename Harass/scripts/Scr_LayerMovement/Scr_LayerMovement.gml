
if global.player_locked == 0 && global.pause == 0
{
	if(place_meeting(x,y,OBJ_Door))
	{
		if (w_key && OBJ_Door.door_open)
		{
			global.record = +1 
			global.level_fade = true;
			if (room == rm_LvL1)
				global.next_room = rm_LvL2;
			else if (room == rm_LvL2)
				global.next_room = rm_LvL3;
			else if (room == rm_LvL3)
			{
				global.next_room = choose(rm_LvL1, rm_LvL2, rm_LvL3);
			}
		}
	} else {
		if w_key && (place_meeting(x,y, OBJ_Crowd01) || place_meeting(x,y,OBJ_Crowd02))
		{
			fval = 255;
			is_hiding = true;
		}
		if s_key
		{
			is_hiding = false;
		}
	}
}
