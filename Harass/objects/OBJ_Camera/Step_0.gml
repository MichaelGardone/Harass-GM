if (global.pause == 0)
{
	// Keep updating this
	halfViewWidth = camera_get_view_width(camera) / 2;
	halfViewHeight = camera_get_view_height(camera) / 2;
	
	if (follow != noone)
	{
		xTo = follow.x + offset;
		yTo = follow.y;
	}	

	x += (xTo - x) / factor;
	x = clamp(x, halfViewWidth, room_width - halfViewWidth);
	
	y = yTo; // slap to y
	//zoom += (target_zoom - zoom) / zoom_factor;
	
	camera_set_view_pos(camera, x - halfViewWidth, y - halfViewHeight / 2);
}
