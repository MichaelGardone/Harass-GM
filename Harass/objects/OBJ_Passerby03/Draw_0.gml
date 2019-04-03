draw_self();
if dir > 0
{
	image_xscale = 1
	sprite_index = Spr_CarlMove
} else if dir < 0 
{
	image_xscale = -1
	sprite_index = Spr_CarlMove
}
image_blend = make_color_rgb(200, 200, 200);