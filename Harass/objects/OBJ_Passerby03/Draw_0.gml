draw_self();

if global.pause == 0 && global.player_locked == 0
{
	image_speed = 1	
	if OBJ_Passerby03.x > OBJ_Passerby03.xprevious
	{
		image_xscale = 1
		sprite_index = Spr_CarlMove
	} else if OBJ_Passerby03.x < OBJ_Passerby03.xprevious
	{
		image_xscale = -1
		sprite_index = Spr_CarlMove
	} else if global.player_locked == 1
		image_speed = 0
	}
else 
{
	image_speed = 0
}
	
image_blend = make_color_rgb(200, 200, 200);