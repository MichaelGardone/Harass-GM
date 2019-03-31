
if global.pause == 1 && reset_alarms == false
{
	to_open = alarm[11];
	to_close = alarm[10];
	
	alarm[11] = -1;
	alarm[10] = -1;
	
	reset_alarms = true;
}
else if global.pause == 0 && reset_alarms == true
{
	alarm[11] = to_open;
	alarm[10] = to_close;
	
	reset_alarms = false;
}

if door_open = false
	{
	global.door = false
	}
	else
	{
	global.door = true
	}
