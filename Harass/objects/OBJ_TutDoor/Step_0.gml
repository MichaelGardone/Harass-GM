// PAUSE EVENT
if global.pause == 1 && tut_pause == 0
{
	tut_pause += 1
	saveTemp = alarm[0]
	alarm[0] = -1
}

if global.pause == 0 && tut_pause == 1
{
	alarm[0] = saveTemp
	tut_pause -= 1
}