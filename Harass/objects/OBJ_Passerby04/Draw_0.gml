draw_self();
if dir > 0
{
	image_xscale = 1
	sprite_index = Spr_ChadMove
} else if dir < 0 
{
	image_xscale = -1
	sprite_index = Spr_ChadMove
}
image_blend = make_color_rgb(200, 200, 200);