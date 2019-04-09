
if (global.level_fade)
{
	a = clamp(a + (fade * fade_speed), 0, 1);
	if (a == 1)
	{
		room_goto(global.next_room);
		
		fade = -1;
	}
	if (a == 0 && fade == -1)
	{
		fade = 1;
		global.level_fade = false;
		
		if(global.game_over == true)
		{
			global.game_over = false;
			global.player_locked = 0;
		}
	}
	
	xview = camera_get_view_x(view_camera[0]);
	yview = camera_get_view_y(view_camera[0]);
	width = camera_get_view_width(view_camera[0]);
	height = camera_get_view_width(view_camera[0]);
	
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
