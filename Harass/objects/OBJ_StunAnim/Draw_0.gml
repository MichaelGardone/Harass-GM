
if global.player_locked == 1 && global.game_over == false
{
	//SOUND & AUDIO MANAGEMENT
	audio_pause_sound(Sfx_Background)
	if !audio_is_playing(Sfx_StunHit) && sfx_play == 0  && global.sfx_on
	{
		audio_play_sound(Sfx_StunHit,3,0)
		sfx_play = 1
	}
	if !audio_is_playing(Sfx_StunDur) && global.groove
	{
		audio_play_sound(Sfx_StunDur,4,0)
	}
	
	//MASH UI
	draw_sprite(Spr_ABut,a_press,OBJ_Player.x+-30,OBJ_Player.y + -110)
	draw_sprite(Spr_DBut,d_press,OBJ_Player.x+30,OBJ_Player.y + -110)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_text(OBJ_Player.x-54,OBJ_Player.y+-160,"Mash!")
	if (keyboard_check_pressed(ord("A")))
	{
		a_press = 1
		if !audio_is_playing(Sfx_MashAD) && global.sfx_on
		{
			audio_play_sound(Sfx_MashAD,2,0)
			//a_played += 1
		}
	} else if (keyboard_check_released(ord("A"))) {
		a_press = 0
		//if keyboard_check_released(ord("A"))
			//a_played -= 1
	}
	if (keyboard_check_pressed(ord("D")))
	{
		d_press = 1
		if !audio_is_playing(Sfx_MashAD) && global.sfx_on
		{
			audio_play_sound(Sfx_MashAD,2,0)
			//d_played += 1
		}
	} else if (keyboard_check_released(ord("D"))) {
		d_press = 0
		//if keyboard_check_released(ord("D"))
			//d_played -= 1
	}
	
} else {
	if global.sfx_on
	{
		audio_resume_sound(Sfx_Background)
		sfx_play = 0
		if audio_is_playing(Sfx_ChitChat)
		{
			audio_stop_sound(Sfx_ChitChat)
		}
		if audio_is_playing(Sfx_StunDur)
		{
			audio_stop_sound(Sfx_StunDur)
			audio_play_sound(Sfx_StunBreak,6,0)
		}
	}
}