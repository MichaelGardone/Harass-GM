if (door_open)
{
	global.level_fade = true;
	global.next_room = noone;
	global.game_over = true;
	global.record = 0;
	door_open = false;
}
else {
	alarm[11] = room_speed * 5;
}
