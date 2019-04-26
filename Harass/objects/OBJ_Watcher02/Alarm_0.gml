
if(store_alarm0 == -1) // if == -1, then the timer expired naturally
{
	state = e_state.wander;
	if (identify_me == false)
			identify_me = true;
}
