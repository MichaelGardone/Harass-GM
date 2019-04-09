xx = display_get_gui_width()/2;
yy = 150;

draw_set_halign(fa_center);
draw_set_font(Fnt_Press);
draw_set_color(c_red);
draw_set_alpha(1.0);
draw_text(xx, yy, "GAME OVER");
	
yy += yoffset;
draw_set_halign(fa_center);
for (i=0; i<= buttons; i++) {
	if i = menu_index draw_set_color(c_white);
	else draw_set_color(c_gray);
	draw_text(xx,yy+i*yoffset,text[i]);	
}
draw_set_halign(fa_left);