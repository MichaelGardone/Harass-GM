if (global.level_fade)
{
	a = clamp(a + (fade * fade_speed), 0, 1);
	if (a == 1)
	{
		if(global.discomf > 0)
		{
			global.discomf--;
			global.breakout_lim = round(global.discomf * 1.5 * global.breakout_lim);
		}
		else {
			global.breakout_lim = 22;
		}
		
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
