xx = display_get_gui_width()/2;
yy = 50;

draw_set_halign(fa_center);
draw_set_font(Fnt_Press);
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_text(xx, yy, "Options");
yy+=25;

yy += yoffset;
draw_set_halign(fa_left);
for (i=0; i < buttons; i++) {
	if i == menu_index
		draw_set_color(c_white);
	else
		draw_set_color(c_gray);
	draw_text(50,yy+i*yoffset,text[i]);	
}

for (i=0; i < music_buttons; i++) {
	if (music_control == true)
	{
		if i == horz_index
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
	}
	else {
		if i == global.groove
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
	}
	
	draw_text(400+i*100,150,music_contrl[i]);	
}

for (i=0; i < sfx_buttons; i++) {
	if (sfx_control == true)
	{
		if i == horz_index
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
	}
	else {
		if i == sfx_active
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
	}
	
	draw_text(400+i*100,225,music_contrl[i]);	
}

for (i=0; i < gui_buttons; i++) {
	if (gui_control == true)
	{
		if i == horz_index
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
	}
	else {
		if i == gui_active
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
	}
	
	draw_text(400+i*100,300,gui_contrl[i]);	
}

draw_set_halign(fa_left);