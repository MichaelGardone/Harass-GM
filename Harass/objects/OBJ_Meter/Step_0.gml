// If global.player_locked and not already added, add
if (global.player_locked && added == false)
{
	global.discomf++;
	added = true;
}

// Reset once the player is out
if (global.player_locked == false && added)
	added = false;

if (global.discomf == global.discomf_max)
{
	// End game
	global.level_fade = true;
	// TODO: Go to game over
	global.next_room = rm_LvL1;
	
	global.game_over = true;
	
	global.record = 0;
}