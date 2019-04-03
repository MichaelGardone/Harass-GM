
if (global.level_fade)
{
	a = clamp(a + (fade * fade_speed), 0, 1);
	if (a == 1)
	{
		if (global.game_over == false)
			room_goto(global.next_room);
		
		fade = -1;
	}
	if (a == 0 && fade == -1)
	{
		fade = 1;
		global.level_fade = false;
	}
	
	xview = camera_get_view_x(view_camera);
	yview = camera_get_view_y(view_camera);
	width = camera_get_view_width(view_camera);
	height = camera_get_view_width(view_camera);
	
	draw_set_color(c_black);
	draw_set_alpha(a);
	draw_rectangle(
		xview, yview,
		xview + width,
		yview + height,
		0
		);
	draw_set_alpha(1);
	draw_set_color(c_white);
}
