/// @description Insert description here
// You can write your code in this editor

draw_self();

if(dir == 1)
{
	image_index = 0;
}
else if(dir == -1)
{
	image_index = 1;
}

if state == e_state.sit_tight
{
	image_blend = c_black;
} else {
	image_blend = c_white;	
}
