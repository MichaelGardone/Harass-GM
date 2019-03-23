draw_self();

if global.debug == 1
{
	if (dir == 1)
	{
		draw_set_color(c_red);
		draw_rectangle(x-dist_near_trig, y, x+dist_far_trig, y+sprite_height, 1);
	
		draw_set_color(c_purple);
		draw_rectangle(x,y,x+sprite_width+watch_dist,y+sprite_height, 1);
		
		draw_set_color(c_lime);
		draw_rectangle(x,y,x+sprite_width+dist_near_trig,y+sprite_height, 1);
	} else {
		draw_set_color(c_red);
		draw_rectangle(x-dist_far_trig, y, x+sprite_width+dist_near_trig, y+sprite_height, 1);
	
		draw_set_color(c_purple);
		draw_rectangle(x,y,x-watch_dist,y+sprite_height, 1);
		
		draw_set_color(c_lime);
		draw_rectangle(x,y,x-dist_near_trig,y+sprite_height, 1);
	}
	
	draw_set_color(c_black);
	draw_rectangle(x, y, x+sprite_width, y+sprite_height,1);
}