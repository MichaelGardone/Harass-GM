x_dir = right - left;
if !is_hiding && global.player_locked == 0 && global.pause == 0
{
	// Todo: Optimize
	if !running
	{
		x_spd = spd;
	} else {
		x_spd = run_spd;
	}
	
	if place_meeting(x + x_spd * x_dir, y, Obj_Barrier)
	{
		while (!place_meeting(x+sign(x_dir),y,Obj_Barrier))
			x += x_dir;
		x_spd = 0;
	}
	x += x_spd * x_dir;
}
