if (alarm[0] == 0)
{
	var ran_x=random_range(-10,10);
	var ran_y=random_range(-10,10);
	camera_set_view_pos(view_camera[0], view_x+ran_x,view_y+ran_y);
	view_x=camera_get_view_x(view_camera[0]);
	view_y=camera_get_view_y(view_camera[0]);
} else if (alarm[0] == -1) {
	alarm[0]=room_speed*1.5
}

