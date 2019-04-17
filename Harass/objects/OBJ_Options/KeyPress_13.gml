if (y_movement_active)
{
	switch(menu_index)
	{
		case 0:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			horz_index = global.groove;
			music_control = true;
			break;
		case 1:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			horz_index = global.sfx_on;
			sfx_control = true;
			break;
		case 2:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			horz_index = global.gui_on;
			gui_control = true;
			break;
		case 3:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			msc_vol = true;
			break;
		case 4:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			y_movement_active = false;
			sfx_vol = true;
			break;
		case 5:
			if(global.sfx_on)
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
				if(global.sfx_on)
					audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				music_control = false;
				global.groove = 0;
				break;
			case 1:
				if(global.sfx_on)
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
				if(global.sfx_on)
					audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				sfx_control = false;
				global.sfx_on = 0;
				break;
			case 1:
				if(global.sfx_on)
					audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				sfx_control = false;
				global.sfx_on = 1;
				break;
		}
	}
	
	if(gui_control)
	{
		switch(horz_index)
		{
			case 0:
				if(global.sfx_on)
					audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				gui_control = false;
				global.gui_on = 0;
				break;
			case 1:
				if(global.sfx_on)
					audio_play_sound(Sfx_SelectMenu,2,0);
				y_movement_active = true;
				gui_control = false;
				global.gui_on = 1;
				break;
		}
	}
	
	if(msc_vol)
	{
		msc_vol = false;
		y_movement_active = true;
	}
	
	if(sfx_vol)
	{
		sfx_vol = false;
		y_movement_active = true;
	}
	
}
