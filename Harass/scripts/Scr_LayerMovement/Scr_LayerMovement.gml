
if(place_meeting(x,y,OBJ_Door))
{
	if (w_key && OBJ_Door.door_open)
	{
		game_restart(); // TODO: Change scenes
	}
} else {
	if w_key
	{
		if (depth == 0) {
	       depth = 200;
		   is_hiding = true;
		}
	}

	if s_key
	{
		if (depth == 200) {
	       depth = 0;
		   is_hiding = false;
		}
	}	
}