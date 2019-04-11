xx = display_get_gui_width()/2;
yy = 100;

draw_set_halign(fa_center);
draw_set_font(Fnt_Press);
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_text(xx, yy, "HARASS");
yy+=50;
draw_text(xx, yy, "-Gold Master-");

yy += yoffset;
draw_set_halign(fa_center);
for (i=0; i < buttons; i++) {
	if i == menu_index
		draw_set_color(c_white);
	else
		draw_set_color(c_gray);
	draw_text(xx,yy+i*yoffset,text[i]);	
}
draw_set_halign(fa_left);