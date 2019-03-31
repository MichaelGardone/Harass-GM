
image_speed = 1
if global.player_locked == 1
{
	draw_self()
	if image_index > 0 && image_index < 7 && sprite_index == Spr_HarWake
		{
		image_xscale = image_index/7
		image_yscale = image_index/7
		image_angle = angleSway
		}
	if image_index > image_number - 1
		{
			sprite_index = Spr_HarChat
		}
	if sprite_index == Spr_HarChat
		{
			draw_text_transformed(OBJ_HrssrFace.x+ 100,OBJ_HrssrFace.y - 10,
			comment[str_temp],0.8,0.8,random_range(-0.3, 0.3))

	}
}
	

