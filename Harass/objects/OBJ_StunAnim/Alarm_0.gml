
i = random_range(0, curr_max-1);
draw[i] = true;
curr_max -= 1;

show_debug_message(draw[i]);

if (curr_max != 0)
	alarm[0] = room_speed * 2;
