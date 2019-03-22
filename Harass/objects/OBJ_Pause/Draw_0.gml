if global.pause == 1
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, 2320+OBJ_Camera.x, 620, 0);
	draw_set_halign(fa_center);
	// TODO: Custom font
	draw_set_color(c_white);
	draw_set_alpha(1.0);
	draw_text(OBJ_Camera.x, camH/2-100, "PAUSED");
	draw_set_color(c_black);
}
