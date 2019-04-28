draw_self()

if place_meeting(x,y,OBJ_Player)
{
	if nDrawn == 0
	{
		alarm[0] = room_speed * 0.24
		nDrawn = 1
	}
	draw_sprite(Spr_Locked,tempIndex,x+80,y+128)
	if (keyboard_check(ord("W")) & (!audio_is_playing(Sfx_No))) & global.sfx_on == 1
	{	
		audio_play_sound(Sfx_No,9,0);
	}
} 
else
nDrawn = 0