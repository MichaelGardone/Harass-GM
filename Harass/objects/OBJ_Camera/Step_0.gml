if (global.pause == false)
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
}