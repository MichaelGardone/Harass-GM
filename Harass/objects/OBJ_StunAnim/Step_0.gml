// POSITION OF FACE
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

// ANIM PACING FOR EYES AND FACE
if global.player_locked == 1 && anim_Pace == 0
{
	
	anim_Pace += 1
	//show_debug_message(string(anim_Pace))
	alarm[0] = room_speed * 2
}
else if (global.player_locked == 0 && anim_Pace != 0)
{
	alarm[0] = -1
	anim_Pace = 0
	//show_debug_message(string(anim_Pace))
	
	// REMOVES FACE
	faceDrawn = -1
	faceTrack -= 1
	
	// REMOVES EYES
	eyeTotal = 0
	
	a = 0;
}

if(anim_Pace > 2 && a != 1)
{
	a = clamp(a + (fade * fade_speed), 0, 1);
}

// CHECK WHEN TO SPAWN FACE
if anim_Pace == 2 && faceTrack == 0
{
	faceDrawn += 1
	show_debug_message(string(faceDrawn))
	faceTrack += 1
}