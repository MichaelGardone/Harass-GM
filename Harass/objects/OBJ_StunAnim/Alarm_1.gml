randomize();
if color_temp = c_red
{
	color_temp = choose(c_white, c_ltgray)
} else if color_temp = c_white
{
	color_temp = choose(c_red, c_ltgray)
} else if color_temp = c_ltgray
{
	color_temp = choose(c_red, c_white)
}
alarm[1] = room_speed * 0.1;