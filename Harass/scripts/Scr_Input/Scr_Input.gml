left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shift_layer = keyboard_check(ord("W"));
//use_item = keyboard_check(ord(""));

if keyboard_check_pressed(vk_escape) game_end();
if keyboard_check_pressed(ord("R")) game_restart();
