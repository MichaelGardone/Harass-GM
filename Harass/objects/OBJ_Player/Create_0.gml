// Ints
x_spd = 0;
left = 0;
right = 0;
x_dir = 0;
running = 0;

hide_length = 6;

// == Constants ==
// WHY DO THEY USE MACROS AND NOT A CONST MODIFIER
#macro spd 6
#macro run_spd 8

// Booleans
w_key = false;
s_key = false;
use_item = false; // not implemented

is_hiding = false;

player_escape = false;
breakout = 0;
breakout_lim = 10;

// graphics
fval = 255;
// control how fast the fade is for hiding
hide_fade = 2;
// control how fast the fade to red is for attack
attk_fade = 5;

//Anim Direction Tracker
dir_remain = 0;

// TIMER STORAGE
hiding_timer = -1;