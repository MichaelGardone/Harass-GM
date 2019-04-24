draw_self();
show_debug_message(dir)

if global.pause == 0 && global.player_locked == 0
	{
	image_speed = 1	
	if OBJ_Passerby02.x > OBJ_Passerby02.xprevious
	{
		image_xscale = 1
		sprite_index = Spr_MauriceMove
	} else if OBJ_Passerby02.x < OBJ_Passerby02.xprevious
	{
		image_xscale = -1
		sprite_index = Spr_MauriceMove
	} else if global.player_locked == 1
		image_speed = 0
	}
else 
	{
	image_speed = 0
	}
	
image_blend = make_color_rgb(200, 200, 200);