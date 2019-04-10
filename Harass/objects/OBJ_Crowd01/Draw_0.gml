draw_self()
image_speed = 1

//Hide Marker
if global.hide = false
{
	if place_meeting(x,y,OBJ_Player)
	{
		draw_sprite(Spr_Hide,image_index,x+64,y-60)
	}
}