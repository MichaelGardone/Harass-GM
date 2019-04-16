if (global.pause == 0)
{	
	if(instance_exists(follow))
	{
		x_dest = follow.x;
		y_dest = follow.y;
	}
	
	x += (x_dest - x) / factor;
	y += (y_dest - y) / factor;
	
	x = clamp(x, view_w_half, room_width-view_w_half);
	
	camera_set_view_pos(camera, x - view_w_half, y - view_h_half - 80);
}
