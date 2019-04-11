if (global.level_fade)
{
	width = camera_get_view_width(view_camera[0]);
	height = camera_get_view_width(view_camera[0]);
	
	draw_set_color(c_black);
	draw_set_alpha(a);
	draw_rectangle(
		0, 0,
		width, height,
		0
		);
	draw_set_alpha(1);
	draw_set_color(c_white);
}
draw_set_color(c_white);
draw_text(50,50,global.next_room);