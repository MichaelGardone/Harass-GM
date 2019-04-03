draw_self();
if dir > 0 && global.player_locked == 0 && if_stunned == 0
{
	image_xscale = 1
	sprite_index = Spr_CarlMove
} else if dir < 0 && global.player_locked == 0 && if_stunned == 0
{
	image_xscale = -1
	sprite_index = Spr_CarlMove
} else if global.player_locked == 1 || if_stunned == 1
{
	sprite_index = Spr_CarlIdle
}

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

if global.debug == 1
{
	if (dir == 1)
	{
		// Detect
		draw_set_color(c_red);
		draw_rectangle(x-dist_near_trig, y, x+dist_far_trig, y+sprite_height, 1);
	
		// Attack
		draw_set_color(c_purple);
		draw_rectangle(x+sprite_width,y,x+attack_trig,y+sprite_height, 1);
	}
	else {
		// Detect
		draw_set_color(c_red);
		draw_rectangle(x-dist_far_trig, y, x+dist_near_trig, y+sprite_height, 1);
	
		// Attack
		draw_set_color(c_purple);
		draw_rectangle(x,y,x-attack_trig,y+sprite_height, 1);
	}
	
	// Normal
	draw_set_color(c_black);
	draw_rectangle(x, y, x+sprite_width, y+sprite_height,1);
}