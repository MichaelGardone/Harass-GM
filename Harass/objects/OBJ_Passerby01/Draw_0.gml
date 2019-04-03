draw_self();

//ANIM

if global.pause == 0 || global.player_locked = 1
	{
	image_speed = 1	
	if OBJ_Passerby01.x > OBJ_Passerby01.xprevious
	{
		image_xscale = 1
		sprite_index = Spr_DougMove
	} else if OBJ_Passerby01.x < OBJ_Passerby01.xprevious
	{
		image_xscale = -1
		sprite_index = Spr_DougMove
	} else if global.player_locked == 1
		image_speed = 0
	}
else 
	{
	image_speed = 0
	}
	
image_blend = make_color_rgb(200, 200, 200);