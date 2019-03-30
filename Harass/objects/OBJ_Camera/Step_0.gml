if (global.pause == 0)
{
	// Keep updating this
	halfViewWidth = camera_get_view_width(camera) / 2 + 50;
	halfViewHeight = camera_get_view_height(camera) / 2;
	
	if (follow != noone)
	{
		xTo = follow.x + offset;
		yTo = follow.y;
	}

	x += (xTo - x) / factor;
	x = clamp(x, halfViewWidth, room_width - halfViewWidth);
	//x += OBJ_ScreenShake.view_x;
	
	//y = yTo - OBJ_ScreenShake.view_y; // slap to y
	
	camera_set_view_pos(camera, (x - halfViewWidth), (y - halfViewHeight));
	
}
