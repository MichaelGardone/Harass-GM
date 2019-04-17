if (y_movement_active)
{
	switch(menu_index)
	{
		case 0:
			audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			horz_index = global.groove;
			music_control = true;
			break;
		case 1:
			audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			horz_index = sfx_active;
			sfx_control = true;
			break;
		case 2:
			audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			horz_index = gui_active;
			gui_control = true;
			break;
		case 3:
			audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			break;
		case 4:
			audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			break;
		case 5:
			audio_play_sound(Sfx_SelectMenu,2,0);
			global.next_room = rm_Start;
			global.level_fade = true;
			break;
	}
}
else {
	if(music_control)
	{
		switch(horz_index)
		{
			case 0:
				audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				music_control = false;
				global.groove = 0;
				break;
			case 1:
				audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				music_control = false;
				global.groove = 1;
				break;
		}
	}
	
	if(sfx_control)
	{
		switch(horz_index)
		{
			case 0:
				audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				sfx_control = false;
				sfx_active = 0;
				break;
			case 1:
				audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				sfx_control = false;
				sfx_active = 1;
				break;
		}
	}
	
	if(gui_control)
	{
		switch(horz_index)
		{
			case 0:
				audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				gui_control = false;
				gui_active = 0;
				break;
			case 1:
				audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				gui_control = false;
				gui_active = 1;
				break;
		}
	}
	
}
