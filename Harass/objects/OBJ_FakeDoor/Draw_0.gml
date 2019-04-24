draw_self()
image_speed = 1

if place_meeting(x,y,OBJ_Player)
{
	draw_sprite(Spr_Locked,image_index,x+80,y+100)
	if (keyboard_check(ord("W")) & (!audio_is_playing(Sfx_No)))
	{	
		audio_play_sound(Sfx_No,9,0);
	}
} 