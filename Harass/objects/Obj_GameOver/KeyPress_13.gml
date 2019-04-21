
switch(menu_index)
{
	case 0:
		if(global.sfx_on)
			audio_play_sound(Sfx_SelectMenu,2,0);
		global.level_fade = true;
		global.next_room = rm_LvL3;
		global.game_over = false;
		global.breakout_lim = 22;
		break;
	case 1:
		if(global.sfx_on)
			audio_play_sound(Sfx_SelectMenu,2,0);
		global.level_fade = true;
		global.next_room = rm_Start;
		global.game_over = false;
		break;
	case 2:
		game_end();
		break;
}