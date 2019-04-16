draw_self();

// Set Font Behavior
draw_set_font(Fnt_Press);
draw_set_alpha(0.4);
if (global.pause == 0)
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
if (global.pause == 0 && OBJ_Door.alarm[11] == -1)
{
	draw_text_transformed(x+73,y+50,"Arrived!", 1.1, 1.1, 0);
}
else if (global.pause == 0) {
	draw_text_transformed(x+40,y+50,"Arrival: " + string(ceil(OBJ_Door.alarm[11]/room_speed)), 1.1, 1.1, 0);
} else if (global.pause == 1)
{
	draw_text_transformed(x+40,y+50,"Arrival: " + string(ceil(OBJ_Door.to_open/room_speed)), 1.1, 1.1, 0);
}
draw_set_alpha(1);

