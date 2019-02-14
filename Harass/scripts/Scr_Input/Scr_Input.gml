left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
w_key = keyboard_check(ord("W"));
s_key = keyboard_check(ord("S"));
running = keyboard_check(vk_shift);
//use_item = keyboard_check(ord(""));

if keyboard_check_pressed(vk_escape) game_end();
if keyboard_check_pressed(ord("R")) game_restart();
