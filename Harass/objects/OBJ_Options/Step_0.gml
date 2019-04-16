
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

	if (menu_index != last_selected)
	{
		audio_play_sound(Sfx_MoveMenu,1,false);
	}

	last_selected = menu_index;
}
else
{
	menu_move = keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D"))

	horz_index += menu_move;

	if (horz_index < 0)
	{
		horz_index = buttons - 1;
	}
	if (horz_index > buttons - 1)
	{
		horz_index = 0;
	}

	if (horz_index != last_x_selected)
	{
		audio_play_sound(Sfx_MoveMenu,1,false);
	}

	last_x_selected = horz_index;
}