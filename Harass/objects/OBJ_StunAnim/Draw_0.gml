
if global.player_locked == 1
{
	if (!is_spawn)
	{
		for(i = 0; i < num_eyes; i+=2)
		{
			spawn_locs[i] = random_range(-200,200);
			spawn_locs[i+1] = random_range(-200,200);
		}
		
		is_spawn = true;
	}
	draw_sprite(Spr_BrwnEye,image_index,OBJ_Player.x + spawn_locs[0],OBJ_Player.y + spawn_locs[1])
	draw_sprite(Spr_BluEye,image_index,OBJ_Player.x + spawn_locs[2],OBJ_Player.y + spawn_locs[3])
	//draw_sprite(Spr_GrnEye,image_index,OBJ_Player.x + random_range(-200,200),OBJ_Player.y + random_range(-200,200))
	//draw_sprite(Spr_HzlEye,image_index,OBJ_Player.x + random_range(-200,200),OBJ_Player.y + random_range(-200,200))
	//is_spawn = true
} else {
	is_spawn = false;
}

