if(global.player_locked == 1 && global.pause == false)
{
	global.discomf++;
	
	// failed
	if(global.discomf == global.discomf_max)
	{
		global.level_fade = true;
		global.next_room = rm_GameOver;
	
		global.game_over = true;
		
		global.reason = "Discomfort meter rose too high.";
	
		global.record = 0;
		door_open = false;
	}
	else {
		alarm[2] = room_speed * time_to_incr;
	}
}