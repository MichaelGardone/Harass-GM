draw_self();

// play the sound only If it's not playing (!)
if (door_open == true && global.pause == 0)
{
	if (!audio_is_playing(Sfx_Door) && (sfx_track == 0) && global.sfx_on)
	{
		audio_play_sound(Sfx_Door,10,0);
		sfx_track = 1;
	}
	image_speed = play_Anim;
	if (image_index+image_speed >= image_number)
	{
		image_speed = 0;
	}
	if (!audio_is_playing(Sfx_DoorAlert)) && (!audio_is_playing(Sfx_Door) && global.sfx_on)
	{
		audio_play_sound(Sfx_DoorAlert,5,0);
	}
} else if (door_open == false) {
	image_index = 0;
	sfx_track = 0;
} else if(global.pause == 1)
{
	image_speed = 0;	
}


if (door_open == false && (!audio_is_playing(Sfx_Tram)) && global.sfx_on)
	{
		audio_play_sound(Sfx_Tram,2,1);
	}
if (door_open == true && global.sfx_on)
{
	audio_pause_sound(Sfx_Tram)
} 
else if(door_open == false && global.sfx_on)
{
	audio_resume_sound(Sfx_Tram)
}

if place_meeting(x,y,OBJ_Player) && door_open == false
{
	if alarm[4] == -1
	{
		alarm[4] = room_speed * 0.5
	}
	draw_sprite(Spr_Correct,cm_index,x+80,y+100)
	if (keyboard_check(ord("W")) & (!audio_is_playing(Sfx_No)))
	{	
		audio_play_sound(Sfx_No,9,0);
	}
} else if door_open == true
{
	alarm[4] = -1
}