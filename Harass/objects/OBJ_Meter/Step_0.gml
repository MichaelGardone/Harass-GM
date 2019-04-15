// If global.player_locked and not already added, add
if (global.player_locked && added == false)
{
	global.discomf++;
	added = true;
}

// Reset once the player is out
if (global.player_locked == false && added)
	added = false;

if (global.win && global.discomf > 0)
{
	// Decrement
	global.discomf--;
}

// Plz work, it moves

cx = camera_get_view_x(view_camera[0]);

x = cx + xDifference;

