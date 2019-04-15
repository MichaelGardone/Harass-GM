image_speed = 1
// GROWS CREEPY FUCKING FACE
if global.player_locked == 1
{
	draw_self()
	if image_index > 0 && image_index < 14 && sprite_index == Spr_HarWake
	{
		image_xscale = image_index/7
		image_yscale = image_index/7
		image_angle = angleSway
	}
	if image_index > image_number - 1
	{
		sprite_index = Spr_Chat
	}
	if sprite_index == Spr_Chat
	{
		draw_set_halign(fa_center)
		draw_text_transformed(OBJ_HrssrFace.x + xShake,OBJ_HrssrFace.y - 250 + yShake,
			comment[str_temp],1,1.25,0)
	}
} else {
	sprite_index = Spr_HarWake;
	instance_destroy(OBJ_HrssrFace);
}
	
