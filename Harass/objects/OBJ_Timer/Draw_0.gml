
draw_self();

//Set Font Behavior
draw_set_font(Fnt_Press);
draw_set_color(c_black);

//String
if (OBJ_Door.alarm[11] == -1)
{
	draw_text_transformed(x,y,"Arrival:" + "0", 1, 1.25, 0);
}
else {
	draw_text_transformed(x,y,"Arrival: " + string(ceil(OBJ_Door.alarm[11]/room_speed)), 1, 1.25, 0);
}