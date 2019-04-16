
switch(menu_index)
{
	case 0:
		audio_play_sound(Sfx_SelectMenu,2,0);
		
		break;
	case 1:
		audio_play_sound(Sfx_SelectMenu,2,0);
		
		break;
	case 2:
		audio_play_sound(Sfx_SelectMenu,2,0);
		
		break;
	case 5:
		audio_play_sound(Sfx_SelectMenu,2,0);
		global.next_room = rm_Start;
		global.level_fade = true;
		break;
}