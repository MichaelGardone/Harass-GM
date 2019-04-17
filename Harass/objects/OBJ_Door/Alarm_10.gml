if (door_open && global.win == false)
{
	global.level_fade = true;
	global.next_room = rm_GameOver;
	
	global.game_over = true;
	
	global.record = 0;
	door_open = false;
	
	global.reason = "Failed to get off the train in time.";
}
else {
	alarm[11] = room_speed * 5;
}
