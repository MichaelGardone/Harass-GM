// PAUSE EVENT
if global.pause == 1 && tut_pause == 0
{
	tut_pause += 1
	saveTemp = alarm[0]
	alarm[0] = -1
}

if global.pause == 0 && tut_pause == 1
{
	alarm[0] = saveTemp
	tut_pause -= 1
}

if tut_prog == 5 && tut_timer == 0
{
	alarm[1] = room_speed * 9
	tut_timer += 1
}

if tut_move == 1 && tut_hide == 1 && tut_enemy == 1 && door_open == false
{
	door_open = true
}

if tut_prog == 1
{
	if keyboard_check_pressed(ord("A")) && a_pressed == 0 && global.pause == 0
	{
		pressTemp += 1
		a_press = 1;
	}

	if keyboard_check_pressed(ord("D")) && d_pressed == 0 && global.pause == 0
	{
		pressTemp += 1
		d_press = 1;
	}
}

if pressTemp == 2
{
	alarm[2] = room_speed * 2
	pressTemp += 1
}

show_debug_message(string(global.open))
if door_open = true
{
	global.open = true
} else {
	global.open = false
}
