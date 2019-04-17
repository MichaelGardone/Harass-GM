if(global.gui_on)
{
	draw_self();

	// Set Font Behavior
	draw_set_font(Fnt_Press);
	draw_set_alpha(0.4);
	if(global.pause == 0)
	{
		if (alarm[0] <= 30)
		{
			draw_set_color(c_green);
			if alarm[0] == -1
			{
				alarm[0] = 60
			}
		}
		else
		{
			draw_set_color(c_lime);
		}
	}
	else
	{
		if (alarm_save <= 30)
		{
			draw_set_color(c_green);
		}
		else 
		{
			draw_set_color(c_lime);
		}
	}


	// String
	draw_set_halign(fa_left)
	draw_text_transformed(x+75,y+50,"Record: " + string(global.record), 1.1, 1.1, 0);

	draw_set_alpha(1);
}
