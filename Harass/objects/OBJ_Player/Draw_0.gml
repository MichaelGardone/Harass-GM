
// Draw yourself
draw_self();

if (is_hiding)
{
	fval = clamp(fval - hide_fade, 100, 255);
	image_blend = make_color_rgb(fval, fval, fval);
}
else if (global.player_locked)
{
	fval = clamp(fval + attk_fade, 0, 255);
	image_blend = make_color_rgb(255, 255-fval, 255-fval);
}
else {
	image_blend = c_white;
}
