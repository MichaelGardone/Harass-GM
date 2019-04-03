if abs(x)-abs(curr_node.x) == 0
{
	randomize();
	
	// choose between going left and right
	r = choose(-1, 1);
	dir = r
	if cindx + r < 0
		cindx = 1; // auto force right
	else if cindx + r > (maxnds-1)
		cindx = maxnds - 2; // auto force left
	else
		cindx += r; // don't care which way we go
	
	curr_node = nodes[cindx];
}

// Buggy function
mp_potential_step(curr_node.x, y, patrol_spd, false);

// new way
//dir = sign(curr_node.x - x);
	
//x_spd = dir * patrol_spd;
//x += x_spd;
