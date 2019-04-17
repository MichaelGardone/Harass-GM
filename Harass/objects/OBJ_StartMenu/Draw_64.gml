xx = display_get_gui_width()/2;
yy = 50;

draw_set_halign(fa_center);
draw_set_font(Fnt_Press);
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_text(xx, yy, "HARASS");
yy+=50;
draw_text(xx, yy, "The Game");

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

if(prompt_on)
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(100,yy-50,"Would you like to play the tutorial?");
	for (i=0; i < prompt_s; i++) {
		if i == prompt_index
			draw_set_color(c_white);
		else
			draw_set_color(c_gray);
		draw_text((xx-100) + i * yoffset,yy,prompt[i]);	
	}
}

/*
global.next_room = rm_LvL1;
global.level_fade = true;
*/
