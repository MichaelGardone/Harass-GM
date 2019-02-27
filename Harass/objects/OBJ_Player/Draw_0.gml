
draw_self();

if (is_hiding)
{
	image_blend = c_gray;
}
else if (global.player_locked)
{
	image_blend = c_red;
}
else {
	image_blend = c_white;	
}
