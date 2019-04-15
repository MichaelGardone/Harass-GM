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
	faceDrawn -= 2
}

if anim_Pace == 2
	{
		faceDrawn += 1
	}



