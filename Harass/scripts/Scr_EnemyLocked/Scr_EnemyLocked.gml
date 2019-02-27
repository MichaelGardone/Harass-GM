// interaction
if global.player_locked == 1
{
	
	if left or right
	{
		breakout++;	
	}
	
	if breakout == breakout_lim
	{
		player_escape = true;
		breakout = 0;
		global.player_locked = 0;
	}
}

