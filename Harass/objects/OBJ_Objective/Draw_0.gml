// OBJECTIVE STRING

if drawn == 0 && global.player_locked == 0
{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_sprite_ext(Spr_BlackBox,0,OBJ_Player.x,OBJ_Player.y-140,9.25,1.55,0,0,1)
	draw_text(OBJ_Player.x,OBJ_Player.y-180,"-DAILY OBJECTIVE-")
	draw_text(OBJ_Player.x,OBJ_Player.y-150,"Take the metro ")
	draw_text(OBJ_Player.x,OBJ_Player.y-120,loc[str_temp])
}