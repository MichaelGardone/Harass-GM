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
	draw_sprite_ext(Spr_BrwnEyes,image_index, OBJ_Player.x + 190, OBJ_Player.y + -150, 1, 1, -20, c_white, 1)
	draw_sprite_ext(Spr_BluEyes,image_index, OBJ_Player.x + -185, OBJ_Player.y + -140, 1, 1, 25, c_white, 1)
	//draw_sprite(Spr_GrnEyes,image_index,OBJ_Player.x + 192,OBJ_Player.y - 144)
	//draw_sprite(Spr_HzlEyes,image_index,OBJ_Player.x + 384,OBJ_Player.y + - 80)
	//draw_sprite(Spr_BrwnEyes,image_index,OBJ_Player.x + spawn_locs[8],OBJ_Player.y + spawn_locs[9])
	//draw_sprite(Spr_BluEyes,image_index,OBJ_Player.x + spawn_locs[10],OBJ_Player.y + spawn_locs[11])
	//draw_sprite(Spr_GrnEyes,image_index,OBJ_Player.x + spawn_locs[12],OBJ_Player.y + spawn_locs[13])
	//draw_sprite(Spr_HzlEyes,image_index,OBJ_Player.x + spawn_locs[14],OBJ_Player.y + spawn_locs[15])
} else {
	is_spawn = false;
}

