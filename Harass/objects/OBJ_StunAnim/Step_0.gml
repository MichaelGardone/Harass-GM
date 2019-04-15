// POSITION OF FACE
x = OBJ_Player.x
y = OBJ_Player.y

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
	faceDrawn = -1
	faceTrack -= 1
}

if anim_Pace == 2 && faceTrack == 0
	{
		faceDrawn += 1
		show_debug_message(string(faceDrawn))
		faceTrack += 1
	}
