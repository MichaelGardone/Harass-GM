
i = irandom_range(0, curr_max - 1);

if(draw[i] == false)
{
	draw[i] = true;
	curr_max -= 1;
}

if (curr_max != 0)
	alarm[0] = room_speed * 2;
