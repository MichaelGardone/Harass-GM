x_dir = right - left;
if !is_hiding && global.player_locked == 0 && global.pause == 0
{
	if !running
	{
		x += spd * x_dir;	
	} else {
		x += run_spd * x_dir;	
	}	
}
