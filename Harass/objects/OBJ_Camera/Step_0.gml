/*if (global.pause == false)
{
	x += (xTo - x + 100)/factor;
	y = yTo; // slap to y

	if (follow != noone)
	{
		xTo = follow.x;
		yTo = follow.y;
	}

	var view = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(camera, view);
}*/

if (global.pause == false)
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
	y = yTo; // slap to y
	
	camera_set_view_pos(camera, x - halfViewWidth, y - halfViewHeight / 2);
	
	camera_set_view_size(camera, 4640*zoom, 620*zoom);
}
