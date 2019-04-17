
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