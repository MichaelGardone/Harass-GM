if global.player_locked == 1 && global.game_over == false
{
	width = camera_get_view_width(view_camera[0]);
	height = camera_get_view_width(view_camera[0]);
	
	draw_set_color(c_black);
	draw_set_alpha(a);
	draw_rectangle(
		0, 0,
		width, height,
		0
		);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	//CREEPY GROWING FACE
	if faceDrawn == 0
		{
			instance_create_depth(x+520,y+310,-100,OBJ_HrssrFace)
			faceDrawn += 1
			if !audio_is_playing(Sfx_ChitChat)
			{
				audio_play_sound(Sfx_ChitChat,5,0)
			}
		}
		
	//EYE SPAWN
	if anim_Pace == 4 && eyeTotal == 0
		{
			instance_create_depth(OBJ_HrssrFace.x-300,OBJ_HrssrFace.y-215,-100,OBJ_Eyes01)
			eyeTotal += 1
		}
	
	if anim_Pace == 6 && eyeTotal == 1
		{
			instance_create_depth(OBJ_HrssrFace.x+300,OBJ_HrssrFace.y-215,-100,OBJ_Eyes02)
			eyeTotal += 1
		}
	
	if anim_Pace == 8 && eyeTotal == 2
		{
			instance_create_depth(OBJ_HrssrFace.x-375,OBJ_HrssrFace.y-50,-100,OBJ_Eyes03)
			eyeTotal += 1
		}
	
	if anim_Pace == 10 && eyeTotal == 3
		{
			instance_create_depth(OBJ_HrssrFace.x+375,OBJ_HrssrFace.y-50,-100,OBJ_Eyes04)
			eyeTotal += 1
		}
	
	if anim_Pace == 12 && eyeTotal == 4
		{
			instance_create_depth(OBJ_HrssrFace.x-300,OBJ_HrssrFace.y+140,-100,OBJ_Eyes05)
			eyeTotal += 1
		}
	
	if anim_Pace == 14 && eyeTotal == 5
		{
			instance_create_depth(OBJ_HrssrFace.x+300,OBJ_HrssrFace.y+140,-100,OBJ_Eyes06)
			eyeTotal += 1
		}
} else if global.player_locked == 0 {
	if instance_exists(OBJ_Eyes01)
	{
		instance_destroy(OBJ_Eyes01)
	}
	if instance_exists(OBJ_Eyes02)
	{
		instance_destroy(OBJ_Eyes02)
	}
	if instance_exists(OBJ_Eyes03)
	{
		instance_destroy(OBJ_Eyes03)
	}
	if instance_exists(OBJ_Eyes04)
	{
		instance_destroy(OBJ_Eyes04)
	}
	if instance_exists(OBJ_Eyes05)
	{
		instance_destroy(OBJ_Eyes05)
	}
	if instance_exists(OBJ_Eyes06)
	{
		instance_destroy(OBJ_Eyes06)
	}
}
