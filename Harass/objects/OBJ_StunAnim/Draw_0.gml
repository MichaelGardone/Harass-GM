
if global.player_locked == 1 && global.game_over == false
{
	//SOUND & AUDIO MANAGEMENT
	audio_pause_sound(Sfx_Background)
	if !audio_is_playing(Sfx_StunHit) && sfx_play == 0
		{
		audio_play_sound(Sfx_StunHit,3,0)
		sfx_play = 1
		}
	if !audio_is_playing(Sfx_StunDur)
		{
		audio_play_sound(Sfx_StunDur,4,0)
		}
	
	//MASH UI
	draw_sprite(Spr_ABut,a_press,OBJ_Player.x+-30,OBJ_Player.y + -110)
	draw_sprite(Spr_DBut,d_press,OBJ_Player.x+30,OBJ_Player.y + -110)
	draw_set_color(c_white)
	draw_text(OBJ_Player.x-54,OBJ_Player.y+-160,"Mash!")
	if (keyboard_check(ord("A")))
	{
		a_press = 1
		if !audio_is_playing(Sfx_MashAD)
		{
			audio_play_sound(Sfx_MashAD,2,0)
		}
	} else {
		a_press = 0
	}
	if (keyboard_check(ord("D")))
	{
		d_press = 1
		if !audio_is_playing(Sfx_MashAD)
		{
			audio_play_sound(Sfx_MashAD,2,0)
		}
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
		if (draw[i] == true && eyes_spawned[i] == false)
		{
			instance_create_depth(OBJ_Player.x + eyes[i, 1], OBJ_Player.y + eyes[i, 2], 
			-100, eyes[i, 0]);
			eyes_spawned[i] = true;
		}
	}
} else {
	audio_resume_sound(Sfx_Background)
	sfx_play = 0
	
	if audio_is_playing(Sfx_StunDur)
	{
		audio_stop_sound(Sfx_StunDur)
		audio_play_sound(Sfx_StunBreak,6,0)
	}
	faceTrack = false;
	
	for(i = 0; i < static_max; i++)
	{
		if (draw[i] == true && eyes_spawned[i] == true)
		{
			instance_destroy(eyes[i, 0]);
			eyes_spawned[i] = false;
			draw[i] = false;
		}
	}
	
	spawned = false;
}