draw_self();

if global.debug == 1
{
	draw_set_color(c_red);
	draw_rectangle(x-dist_near_trig*dir, y, x+dist_far_trig*dir, y+sprite_height, 1);
	draw_set_color(c_black);
	draw_rectangle(x, y, x+sprite_width, y+sprite_height,1);
}