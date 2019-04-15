
// inputs
Scr_Input();

// movement
Scr_Movement();
Scr_LayerMovement();

// enemy interaction
Scr_EnemyLocked();

// global hide
global.hide = is_hiding;

if (global.discomf == global.discomf_max)
{
	// End game
	global.level_fade = true;
	// TODO: Go to game over
	global.next_room = rm_GameOver;
	
	global.game_over = true;
	
	global.record = 0;
}