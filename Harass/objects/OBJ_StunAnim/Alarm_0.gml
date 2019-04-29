if global.player_locked == 1
{
	if anim_Pace < 15
	{
		anim_Pace = anim_Pace + 1
		alarm[0] = room_speed * 0.75
		//show_debug_message(string(anim_Pace))
	} else 
	{alarm[0] = -1}
}
