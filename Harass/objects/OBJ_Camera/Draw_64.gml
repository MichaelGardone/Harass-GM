
if global.debug == 1
{
	draw_set_color(c_lime);
	draw_text(view_wport[0]*.45, 0, "DEBUG MODE IS ON");
	
	draw_text(view_wport[0]*.45, view_hport[0] * .05,
		"Total Breakout: " + string(OBJ_Player.breakout) + "/"
		+ string(OBJ_Player.breakout_lim));
	
	if (OBJ_Player.is_hiding)
		draw_text(0, 0, "CURRENT STATE: Hiding");
	else if (global.player_locked == 1)
		draw_text(0, 0, "CURRENT STATE: Combat");
	else if (global.pause == 1)
		draw_text(0, 0, "CURRENT STATE: Paused");
	else if (OBJ_Player.x_dir != 0)
	{
		if (OBJ_Player.x_dir > 0 && OBJ_Player.x_spd == spd)
			draw_text(0,0, "CURRENT STATE: Walk Right");
		else if (OBJ_Player.x_dir > 0 && OBJ_Player.x_spd == run_spd)
			draw_text(0,0, "CURRENT STATE: Sprint Right");
		else if(OBJ_Player.x_dir < 0 && OBJ_Player.x_spd == spd)
			draw_text(0,0, "CURRENT STATE: Walk Left");
		else if(OBJ_Player.x_dir < 0 && OBJ_Player.x_spd == run_spd)
			draw_text(0, 0, "CURRENT STATE: Sprint Left");
	}
	else if (OBJ_Player.x_dir == 0)
		draw_text(0,0, "CURRENT STATE: Idle");
	else
		draw_text(0,0, "CURRENT STATE: Undefined -- Talk to Michael");
	
	draw_set_color(c_black);
}

// Draw GUI
if global.player_locked == 1
{
	// GENERAL HERE
	// Todo: Make it more interesting
	draw_set_color(c_red);
	draw_text(view_wport[0]*.45, view_hport[0] * .4,
		"MASH A AND D");
	draw_set_color(c_black);
}
