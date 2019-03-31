// FACE SWAY

if angleSway == 10
{
	dir = true
}
else if angleSway == -10
{
	dir = false
}

if dir == false
{
	angleSway++
}
else
{
	angleSway--
}

alarm[0] = room_speed/12