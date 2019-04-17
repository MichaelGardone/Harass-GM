if global.player_locked == 1
{
	anim_Pace = anim_Pace + 1
	//show_debug_message(string(anim_Pace))
	alarm[0] = room_speed * 2
}
