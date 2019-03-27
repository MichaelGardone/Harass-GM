draw_self();

// Set Font Behavior
draw_set_font(Fnt_Press);
draw_set_alpha(0.4);
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
	
// String
if (OBJ_Door.alarm[11] == -1)
{
	draw_text_transformed(x+73,y+45,"Arrived!", 1.25, 1.5, 0);
}
else {
	draw_text_transformed(x+40,y+45,"Arrival: " + string(ceil(OBJ_Door.alarm[11]/room_speed)), 1.25, 1.5, 0);
}
draw_set_alpha(1);

