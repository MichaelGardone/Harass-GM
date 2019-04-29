
if (!global.open)
{
	if (!global.pause)
	{
		if (room == rm_LvL1)
		{
			// Different doors
			if(layer_exists("ParallaxLayer"))
			{
				if(OBJ_TutDoor.tut_move == 1 && OBJ_TutDoor.tut_hide == 1 &&
					OBJ_TutDoor.tut_enemy == 1 && OBJ_TutDoor.tut_tempISHide == 1)
				{
					if(alarm[0] == -1&& slow_down < parallax_speed)
						alarm[0] = room_speed * time_scale;
					layer_x("ParallaxLayer", layer_get_x("ParallaxLayer") - (parallax_speed - slow_down));
					layer_background_alpha(layer_background_get_id(layer_get_id("ParallaxLayer")),
						(parallax_speed - slow_down) / parallax_speed);
				}
				else
				{
					layer_x("ParallaxLayer", layer_get_x("ParallaxLayer") - parallax_speed);
				}
			}
		}
		else
		{
			if(layer_exists("ParallaxLayer"))
			{
				if(OBJ_Door.alarm[11] <= time_start_slow)
				{
					if (alarm[0] == -1)
					{
						alarm[0] = room_speed * time_scale;
					}
					layer_background_alpha(layer_background_get_id(layer_get_id("ParallaxLayer")),
						(parallax_speed - slow_down) / parallax_speed);
					layer_x("ParallaxLayer", layer_get_x("ParallaxLayer") - (parallax_speed - slow_down));
				}
				else
				{
					layer_x("ParallaxLayer", layer_get_x("ParallaxLayer") - parallax_speed);
				}
			}
		}
	}
}
