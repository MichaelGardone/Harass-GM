
if global.player_locked == 1
{
	//MASH UI
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
	
	// SCARY FACE
	if faceTrack == false
		{
		instance_create_depth(OBJ_Player.x - 400,OBJ_Player.y - 30, -100, OBJ_HrssrFace)
		faceTrack = true
		}
		
	//SPOOKY EYEBALLS
	if(!spawned)
	{
		spawned = true;
		alarm[0] = room_speed * 2;
		curr_max = static_max;
		for(i = 0; i < static_max; i++)
			draw[i] = false;
	}
	
	for(i = 0; i < static_max; i++)
	{
		if (draw[i] == true)
			instance_create_depth(OBJ_Player.x + eyes[i, 1], OBJ_Player.y + eyes[i, 2], 
			-100, eyes[i, 0])
	}
}