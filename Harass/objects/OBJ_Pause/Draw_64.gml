if global.pause == 1
{
	xx = display_get_gui_width()/2;
	yy = 150;
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, 2320+OBJ_Camera.x, 620, 0);
	draw_set_halign(fa_center);
	draw_set_font(Fnt_Press);
	draw_set_color(c_white);
	draw_set_alpha(1.0);
	draw_text(xx, yy, "PAUSED");
	draw_set_color(c_black);
	
	yy += yoffset;
	draw_set_halign(fa_center);
	for (i=0; i<= y_max; i++) {
		if i = y_pos draw_set_color(c_white);
		else draw_set_color(c_gray);
		draw_text(xx,yy+i*yoffset,text[i]);	
	}
	draw_set_halign(fa_left);
}
