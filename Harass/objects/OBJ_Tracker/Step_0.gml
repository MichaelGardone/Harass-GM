cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

x = cx + xDifference;
y = cy + yDifference;

if(global.pause == 1)
{
	alarm_save = alarm [0];
	alarm[0] = -1;
	resetAlarms = true;
} else if (global.pause == 0 && resetAlarms == true)
{
	alarm[0] = alarm_save;
	resetAlarms = false;
}