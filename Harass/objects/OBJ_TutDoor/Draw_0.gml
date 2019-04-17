draw_self()
image_speed = 1

draw_self();

// TUTORIAL
if tut_prog == 1
{
	draw_text(OBJ_Player.x,OBJ_Player.y-60,"Move with the 'A' and 'D' keys.")
	if keyboard_check_pressed(ord("Z"))
	{
		tut_prog += 1
		show_debug_message("Movement Complete")
		alarm[0] = room_speed * 3
	}
}

if tut_prog == 3
{
	draw_text(OBJ_Player.x,OBJ_Player.y-60,"Hide with the 'S' key")
	if keyboard_check_pressed(ord("X"))
	{
		tut_prog += 1
		show_debug_message("Hide Complete")
		alarm[0] = room_speed * 3
	}
}
if tut_prog == 5
{
	draw_text(OBJ_Player.x,OBJ_Player.y-60,"Be wary of those who walk beside you")
	if keyboard_check_pressed(ord("C"))
	{
		tut_prog += 1
		show_debug_message("Aware Complete")
		alarm[0] = room_speed * 3
	}
}

// DOOR OPENING ANIMATION
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
	if (!audio_is_playing(Sfx_DoorAlert)) & (!audio_is_playing(Sfx_Door))
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

// ENVIRONMENT SOUNDS
if (door_open == false && (!audio_is_playing(Sfx_Tram)))
	{
		audio_play_sound(Sfx_Tram,2,1);
	}
if (door_open == true)
	{
		audio_pause_sound(Sfx_Tram)
	} 
	else
	{
		audio_resume_sound(Sfx_Tram)
	} 