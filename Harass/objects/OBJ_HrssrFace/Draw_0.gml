image_speed = 1
// GROWS CREEPY FUCKING FACE

if global.player_locked == 1
{
	if keyboard_check_pressed(ord("A")) ||  keyboard_check_pressed(ord("D"))
	{
		shader_set(Shd_Flash)
		draw_self();
		shader_reset();
	}else{
		draw_self();
	}
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
		draw_text_transformed(OBJ_HrssrFace.x + xShake,OBJ_HrssrFace.y - 210 + yShake,
			comment[str_temp],0.8,1.1,0)
	}
} else {
	sprite_index = Spr_HarWake;
	instance_destroy(OBJ_HrssrFace);
}

	