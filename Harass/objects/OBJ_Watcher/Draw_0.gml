
draw_self();

if state == e_state.sit_tight
{
	image_blend = make_color_rgb(fval, fval, fval);
	if alarm[0] > 0
		fval = clamp(fval + (fade_back / alarm[0]), 0, 255);
	else
		fval = 255;
} else {
	image_blend = c_white;
}
