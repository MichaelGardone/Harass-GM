if(prompt_on == false)
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
else {
	menu_move = keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D"))

	prompt_index += menu_move;

	if (prompt_index < 0)
	{
		prompt_index = prompt_s - 1;
	}
	if (prompt_index > prompt_s - 1)
	{
		prompt_index = 0;
	}

	if (prompt_index != prompt_last_selected && global.sfx_on)
	{
		audio_play_sound(Sfx_MoveMenu,1,false);
	}

	prompt_last_selected = prompt_index;
}