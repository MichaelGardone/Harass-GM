// interaction
if global.player_locked == 1
{
	
	if left or right
	{
		breakout++;	
	}
	
	if breakout == global.breakout_lim
	{
		player_escape = true;
		breakout = 0;
		global.player_locked = 0;
	}
}

