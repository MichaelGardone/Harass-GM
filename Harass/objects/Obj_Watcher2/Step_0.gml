// Let's make a smart decision and NOT call into another script and waste
// the cycles
if global.pause == 0 && global.player_locked == 0
{
	Scr_WatcherSM();
	show_debug_message(y);
}