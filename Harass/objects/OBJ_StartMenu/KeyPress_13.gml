
if(prompt_on == false)
{
	switch(menu_index)
	{
		case 0:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			prompt_on = true;
			break;
		case 1:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			global.next_room = rm_Options;
			global.level_fade = true;
			break;
		case 2:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			global.next_room = rm_Credits;
			global.level_fade = true;
			break;
		case 3:
			game_end();
			break;
	}
} else {
	switch(prompt_index)
	{
		case 0:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			global.next_room = rm_LvL1;
			global.level_fade = true;
			break;
		case 1:
			if(global.sfx_on)
				audio_play_sound(Sfx_SelectMenu,2,0);
			global.next_room = rm_LvL8;
			global.level_fade = true;
			break;
	}
}