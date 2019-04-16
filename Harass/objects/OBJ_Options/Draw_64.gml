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
draw_set_halign(fa_left);