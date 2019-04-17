left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
w_key = keyboard_check(ord("W"));
s_key = keyboard_check(ord("S"));
running = keyboard_check(vk_shift);
//use_item = keyboard_check(ord(""));

// For enemy interection!
// Take notice in KEY_RELEASE versus CHECK

if global.player_locked == 1
{
	left = keyboard_check_released(ord("A"));
	right = keyboard_check_released(ord("D"));
}

//if keyboard_check_pressed(vk_escape) game_end();
//if keyboard_check_pressed(ord("R")) game_restart();
