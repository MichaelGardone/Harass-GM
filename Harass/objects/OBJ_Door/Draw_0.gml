draw_self();

// play the sound only If it's not playing (!)
if (door_open == true && global.pause == 0)
{
	if (!audio_is_playing(Sfx_Door) & (sfx_track == 0))
	{
		audio_play_sound(Sfx_Door,10,0);
		sfx_track = 1;
	}
	image_speed = play_Anim;
	if (image_index+image_speed >= image_number)
	{
		image_speed = 0;
	}
} else if (door_open == false) {
	image_index = 0;
	sfx_track = 0;
} else if(global.pause == 1)
{
	image_speed = 0;	
}
