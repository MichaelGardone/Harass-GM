//show_debug_message(string(room));

if (global.level_fade)
{
	a = clamp(a + (fade * fade_speed), 0, 1);
	show_debug_message(a);
	if (a == 1)
	{
		show_debug_message("trans from " + string(room));
		
		room_goto(global.next_room);
		
		fade = -1;
	}
	if (a == 0 && fade == -1)
	{
		fade = 1;
		global.level_fade = false;
		
		if(global.game_over == true)
		{
			global.game_over = false;
			global.player_locked = 0;
		}
	}
	
}
