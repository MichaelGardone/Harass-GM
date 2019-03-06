x_dir = right - left;
if !is_hiding && global.player_locked == 0 && global.pause == 0
{
	// Todo: Optimize
	if !running
	{
		if place_meeting(x + spd * x_dir, y, Obj_Barrier)
		{
			while (!place_meeting(x+sign(x_dir),y,Obj_Barrier))
				x += x_dir;
			x_dir = 0;
		}
		x += spd * x_dir;	
	} else {
		if place_meeting(x + run_spd * x_dir, y, Obj_Barrier)
		{
			while (!place_meeting(x+sign(x_dir),y,Obj_Barrier))
				x += x_dir;
			x_dir = 0;
		}
		x += run_spd * x_dir;	
	}	
}
