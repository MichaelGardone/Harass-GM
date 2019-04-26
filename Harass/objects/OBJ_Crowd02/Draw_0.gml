draw_self()
image_speed = 1

//Hide Marker
if global.hide = false && can_hide == true
{
	if place_meeting(x,y,OBJ_Player)
	{
		draw_sprite(Spr_Hide,image_index,x+64,y-60)
	}
}
if global.hide = false && can_hide == false
{
	image_blend = c_red
	draw_sprite(Spr_Locked,image_index,x+64,y+96)
	if (keyboard_check(ord("W")) && (!audio_is_playing(Sfx_No))) && global.sfx_on == 1
	&& place_meeting(x,y,OBJ_Player)
	{	
		audio_play_sound(Sfx_No,9,0);
	}
}