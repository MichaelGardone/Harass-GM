draw_self()
image_speed = 1

draw_self();
draw_set_color(c_white)
//// TUTORIAL

// OBJECTIVE
if tut_prog == 0
{
	draw_set_halign(fa_center)
	draw_text(OBJ_Player.x,OBJ_Player.y-200,"-TUTORIAL LEVEL-")
	draw_text_transformed(OBJ_Player.x,OBJ_Player.y-170,"Objective: Use public transport and ",
	0.75,0.75,0)
	draw_text_transformed(OBJ_Player.x,OBJ_Player.y-140,"exit the train once you've arrived at ",
	0.75,0.75,0)
	draw_text_transformed(OBJ_Player.x,OBJ_Player.y-110,"your destination.",
	0.75,0.75,0)
}

// HOW TO MOVE
if tut_prog == 1
{
	draw_sprite(Spr_A_Arrow,a_press,OBJ_Player.x-30,OBJ_Player.y)
	if keyboard_check_pressed(ord("A")) && global.pause == 0
	{
		a_press = 1
	} else if keyboard_check_released(ord("A")) {
		a_press = 0
	}
	draw_sprite(Spr_D_Arrow,d_press,OBJ_Player.x+30,OBJ_Player.y)
	if keyboard_check_pressed(ord("D")) && global.pause == 0
	{
		d_press = 1
	} else if keyboard_check_released(ord("D")) {
		d_press = 0
	}
	if pressTemp > 1
	{
		if alarm[2] == -1
		{
			tut_prog += 1
			tut_move += 1
			alarm[0] = room_speed * 3
		}
	}
}

// HOW TO HIDE - REMOVE X PRESS ONCE IT WORKS
if tut_prog == 9
{
	draw_set_halign(fa_center)
	draw_text(OBJ_Player.x,OBJ_Player.y-140,"Some doors may not open.")
	draw_text(OBJ_Player.x,OBJ_Player.y-110,"Look around for doors with marks.")
	draw_sprite(Spr_Correct,image_index,OBJ_TutDoor.x-32,OBJ_TutDoor.y-64)
	if alarm[1] = -1
	{
		alarm[0] = room_speed * 3
		tut_correctDoor += 1
		tut_prog += 1
	}
}

if tut_prog == 7
{
	draw_set_halign(fa_center)
	draw_text(OBJ_Player.x,OBJ_Player.y-140,"You can't stay in a hiding spot forever.")
	if alarm[1] = -1
	{
		alarm[0] = room_speed * 3
		tut_tempISHide += 1
		tut_prog += 1
		tut_timer = 0
	}
}

if tut_prog == 5
{
	draw_set_halign(fa_center)
	draw_text(OBJ_Player.x,OBJ_Player.y-140,"Potential Harassers could confront you.")
	draw_text(OBJ_Player.x,OBJ_Player.y-110,"Find a Crowd and hide with the 'W' key.")
	draw_sprite(Spr_Hide,betterIndex,OBJ_CrowdTutorial.x+64,OBJ_CrowdTutorial.y-60)
	if global.hide
	{
		tut_timer = 0
		alarm[0] = room_speed * 3
		tut_prog += 1
		tut_hide += 1	
	}
}

// WHO TO AVOID
if tut_prog == 3
{
	draw_set_halign(fa_center)
	draw_text(OBJ_Player.x,OBJ_Player.y-140,"Be wary of pedestrians.")
	draw_text(OBJ_Player.x,OBJ_Player.y-110,"They can make you uncomfortable.")
	draw_sprite(Spr_Locater,betterIndex,OBJ_Meter.x,OBJ_Meter.y-80)
	draw_sprite(Spr_Locater,betterIndex,OBJ_Stalker01.x-15,OBJ_CrowdTutorial.y-60)
	draw_sprite(Spr_Locater,betterIndex,OBJ_Passerby02.x-15,OBJ_CrowdTutorial.y-60)
	draw_sprite(Spr_Locater,betterIndex,OBJ_Passerby03.x-15,OBJ_CrowdTutorial.y-60)
	draw_sprite(Spr_Locater,betterIndex,OBJ_Passerby04.x-15,OBJ_CrowdTutorial.y-60)
	if alarm[1] = -1
	{
		alarm[0] = room_speed * 3
		tut_prog += 1
		tut_enemy += 1
	}
}

// HOW TO EXIT
if tut_enemy == 1 && tut_hide == 1 && tut_move == 1 && tut_correctDoor == 1 && tut_tempISHide == 1
{
	draw_set_halign(fa_center)
	draw_text(OBJ_Player.x,OBJ_Player.y-110,"You have arrived. Use 'W' to Exit.")
}

// DOOR OPENING ANIMATION
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
		global.door = true
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

// ENVIRONMENT SOUNDS
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