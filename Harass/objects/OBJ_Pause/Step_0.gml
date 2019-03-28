y_select = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
y_temp = y_pos;

if y_select != 0 {
	
	y_pos += y_select; // clamp(y_pos+y_select,0,y_max);
	
	if (y_pos > y_max)
		y_pos = 0;
	else if (y_pos < 0)
		y_pos = y_max;
	
	if y_pos == y_temp { //didn't move
		//audio_play_sound(snd_error,10,0);
	} else { //did move
		//audio_play_sound(snd_switch,10,0);
		//instance_create_depth(240,72+y_pos*38,10,obj_spark);
	}
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