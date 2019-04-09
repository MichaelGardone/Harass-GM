
if(instance_number(OBJ_Pause) > 1)
{
	instance_destroy();
}

if (global.pause == 1)
{
	y_select = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
	y_temp = y_pos;

	if y_select != 0 {
	
		y_pos += y_select; // clamp(y_pos+y_select,0,y_max);
	
		if (y_pos > y_max)
			y_pos = 0;
		else if (y_pos < 0)
			y_pos = y_max;
	
		//audio_play_sound(snd_switch,10,0);
	}

	//interaction
	if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) {
		if (y_pos == 0)
		{
			global.pause = 0;
			y_pos = 0;
		}
		else if(y_pos == 1)
		{
			show_debug_message("not implemented");
		}
		else {
			game_end(); // TODO: Not quit
		}
	}
}
