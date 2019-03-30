image_angle = random_range(-45,45)

if global.player_locked == 1
{
	//if (!is_spawn)
	//{
		//for(i = 0; i < num_eyes; i+=2)
		//{
			//spawn_locs[i] = random_range(-450,450);
			//spawn_locs[i+1] = random_range(100,-400);
		//}
		
	is_spawn = true
	
	draw_sprite_ext(Spr_BrwnEyes,image_index, OBJ_Player.x + 200, OBJ_Player.y + -150, 1, 1, -20, c_white, 1)
	draw_sprite_ext(Spr_BluEyes,image_index, OBJ_Player.x + -200, OBJ_Player.y + -150, 1, 1, 25, c_white, 1)
	draw_sprite(Spr_GrnEyes,image_index,OBJ_Player.x,OBJ_Player.y - 270)
	draw_sprite_ext(Spr_GryEyes,image_index, OBJ_Player.x + 300, OBJ_Player.y + -220, 1, 1, -20, c_white, 1)
	draw_sprite_ext(Spr_HzlEyes,image_index, OBJ_Player.x + -300, OBJ_Player.y + -220, 1, 1, 25, c_white, 1)
	draw_sprite_ext(Spr_BluEyes,image_index, OBJ_Player.x + 165, OBJ_Player.y + -360, 1, 1, -5, c_white, 1)
	draw_sprite_ext(Spr_BrwnEyes,image_index, OBJ_Player.x + -165, OBJ_Player.y + -360, 1, 1, 5, c_white, 1)
	draw_sprite_ext(Spr_GryEyes,image_index, OBJ_Player.x + -430, OBJ_Player.y + -280, 1, 1, 40, c_white, 1)
	draw_sprite_ext(Spr_GrnEyes,image_index, OBJ_Player.x + 430, OBJ_Player.y + -280, 1, 1, -40, c_white, 1)
	
	draw_sprite(Spr_ABut,a_press,OBJ_Player.x+-30,OBJ_Player.y + -110)
	draw_sprite(Spr_DBut,d_press,OBJ_Player.x+30,OBJ_Player.y + -110)
	draw_set_color(c_white)
	draw_text(OBJ_Player.x-54,OBJ_Player.y+-160,"Mash!")
	if (keyboard_check(ord("A")))
	{
		a_press = 1
	} else {
		a_press = 0
	}
	if (keyboard_check(ord("D")))
	{
		d_press = 1
	} else {
		d_press = 0
	}
	
} else {
	is_spawn = false;
}

