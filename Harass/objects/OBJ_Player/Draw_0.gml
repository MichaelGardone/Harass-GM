
// Draw yourself
draw_self();
//show_debug_message(string(eIndex))
if (is_hiding)
{
	fval = clamp(fval - hide_fade, 100, 255);
	image_blend = make_color_rgb(fval, fval, fval);
	
	// HIDE JUICE
	if alarm[3] == -1
	{
		alarm[3] = room_speed * 0.24
	}
	draw_sprite(Spr_Hidden,eIndex,x,y)
	hasHidden = 1;

}
else if (global.player_locked)
{
	fval = clamp(fval + attk_fade, 0, 255);
	image_blend = make_color_rgb(255, 255-fval, 255-fval);
}
else {
	if(global.player_locked == false)
	{
		image_blend = c_white;
	}
	
	if (place_meeting(x,y,OBJ_CrowdTutorial) || place_meeting(x,y,OBJ_Crowd01) || place_meeting(x,y,OBJ_Crowd02)) 
	&& hasHidden == 1
	{
		image_blend = c_white;
		draw_sprite(Spr_Unhidden,eIndex,x,y)
	}
	else if !place_meeting(x,y,OBJ_CrowdTutorial) && hasHidden == 1 {
		hasHidden = 0
		alarm[3] = -1
	}
}

if global.debug == 1
{
	draw_rectangle(x, y, x+sprite_width, y+sprite_height,1);
}

// Anim for Player
if (x_spd != 0) && global.player_locked == 0 && global.pause == 0
	if (keyboard_check(ord("A")) && !keyboard_check(ord("D")))
	{
		sprite_index = Spr_PlayerMove
		image_xscale = -1
		image_speed = 1
	} else if (keyboard_check(ord("D")) && !keyboard_check(ord("A")))
	{
		sprite_index = Spr_PlayerMove
		image_xscale = 1
		image_speed = 1
	} else
	{
		sprite_index = Spr_PlayerIdle
		if (keyboard_lastkey == vk_left)
		{
			image_xscale = -1
		}
		image_speed = 0
		image_index = 0
	}
else if global.player_locked == 1
{
	sprite_index = Spr_PlayerStun
	image_speed = 0
	image_index = 0
}
else if(global.pause)
{
	image_speed = 0;	
}
		
// EXIT
if global.open == true && !place_meeting(OBJ_Player.x,OBJ_Player.y,OBJ_Door) && instance_exists(OBJ_Door)
	{
	if (OBJ_Door.x > OBJ_Player.x)
		{
		draw_sprite(Spr_ExitR,image_index,OBJ_Player.x + 120, OBJ_Player.y)
		}
	else
		{
		draw_sprite(Spr_ExitL,image_index,OBJ_Player.x - 120, OBJ_Player.y)
		}
	}
	
if global.open == true && !place_meeting(OBJ_Player.x,OBJ_Player.y,OBJ_TutDoor) && instance_exists(OBJ_TutDoor)
	{
	if (OBJ_TutDoor.x > OBJ_Player.x)
		{
		draw_sprite(Spr_ExitR,image_index,OBJ_Player.x + 120, OBJ_Player.y)
		}
	else
		{
		draw_sprite(Spr_ExitL,image_index,OBJ_Player.x - 120, OBJ_Player.y)
		}
	}
	