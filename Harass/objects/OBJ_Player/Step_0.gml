
// inputs
if(global.pause == 0)
	Scr_Input();

// movement
Scr_Movement();
Scr_LayerMovement();

// enemy interaction
Scr_EnemyLocked();

// global hide
global.hide = is_hiding;

if(global.player_locked == 1 && alarm[2] == -1)
{
	alarm[2] = room_speed * time_to_incr;
}
else if(global.player_locked == 0 && alarm[2] > -1)
{
	alarm[2] = -1;
}
else if(global.pause == true && alarm[2] > -1)
{
	discomf_incr_store = alarm[2];
	alarm[2] = -1;
}
else if(global.pause == false && discomf_incr_store > -1)
{
	alarm[2] = discomf_incr_store;
	discomf_incr_store = -1;
}