x_dir = right - left;
if !is_hiding
{
	if !running
	{
		x += spd * x_dir;	
	} else {
		x += run_spd * x_dir;	
	}	
}
