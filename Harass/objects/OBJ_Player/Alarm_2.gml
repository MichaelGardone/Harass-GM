if(global.player_locked == 1 && global.pause == false)
{
	global.discomf++;
	alarm[2] = room_speed * time_to_incr;
}