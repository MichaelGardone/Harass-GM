
switch(menu_index)
{
	case 0:
		audio_play_sound(Sfx_SelectMenu,2,0);
		global.next_room = rm_LvL1;
		global.level_fade = true;
		break;
	case 1:
		audio_play_sound(Sfx_SelectMenu,2,0);
		global.next_room = rm_Options;
		global.level_fade = true;
		break;
	case 2:
		audio_play_sound(Sfx_SelectMenu,2,0);
		global.next_room = rm_Credits;
		global.level_fade = true;
		break;
	case 3:
		game_end();
		break;
}