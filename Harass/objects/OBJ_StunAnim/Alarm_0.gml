
i = irandom_range(0, curr_max - 1);

show_debug_message(i);
show_debug_message(curr_max);

if(draw[i] == false)
{
	draw[i] = true;
	curr_max -= 1;
}

if (curr_max != 0)
	alarm[0] = room_speed * 2;
