
if(y_movement_active)
{
	menu_move = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))

	menu_index += menu_move;

	if (menu_index < 0)
	{
		menu_index = buttons - 1;
	}
	if (menu_index > buttons - 1)
	{
		menu_index = 0;
	}

	if (menu_index != last_selected && global.sfx_on)
	{
		audio_play_sound(Sfx_MoveMenu,1,false);
	}

	last_selected = menu_index;
}
else
{
	if(sfx_vol == false && msc_vol == false)
	{
		menu_move = keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D"))

		horz_index += menu_move;

		if (horz_index < 0)
		{
			horz_index = music_buttons - 1;
		}
		if (horz_index > music_buttons - 1)
		{
			horz_index = 0;
		}

		if (horz_index != last_x_selected && global.sfx_on)
		{
			audio_play_sound(Sfx_MoveMenu,1,false);
		}

		last_x_selected = horz_index;
	}
	else {
		if(sfx_vol && global.sfx_on)
		{
			if (keyboard_check_pressed(ord("D")))
			{
				global.sfx_level = clamp(global.sfx_level+.10, 0, 1);
				audio_play_sound(Sfx_MoveMenu,1,false);
			}
			else if (keyboard_check_pressed(ord("A")))
			{
				global.sfx_level = clamp(global.sfx_level-.10, 0, 1);
				audio_play_sound(Sfx_MoveMenu,1,false);
			}
			
			audio_group_set_gain(sound_effects, global.sfx_level, 0);
		}
		
		if(msc_vol && global.groove)
		{
			if (keyboard_check_pressed(ord("D")))
			{
				global.msc_level = clamp(global.msc_level+.10, 0, 1);
			}
			else if (keyboard_check_pressed(ord("A")))
			{
				global.msc_level = clamp(global.msc_level-.10, 0, 1);
			}
			audio_group_set_gain(music, global.msc_level, 0);
		}
	}
}