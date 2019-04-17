// FOR PLAYER PAUSE ONLY
global.pause = 0;

// FOR IF PLAYER STUNNED
global.player_locked = 0;

// SET TO 0 FOR RELEASE
global.debug = 0;

// RECORD TRACKER
global.record = 0;

// DOOR STATE
global.open = false;

// NEXT ROOM
global.next_room = rm_LvL1;

// GAME OVER
global.game_over = false;

// WHY DID I FAIL?
global.reason = "";

// TIMES
global.times[0] = -1; // lvl 1 - 1, TUTORIAL
global.times[1] = 25; // lvl 2 - 2
global.times[2] = 35; // lvl 3 - 3
global.times[3] = 45; // lvl 4 - 4
global.times[4] = 25; // lvl 5 - 2
global.times[5] = 25; // lvl 6 - 2
global.times[6] = 25; // lvl 7 - 2
global.times[7] = 35; // lvl 8 - 2
global.times[8] = 35; // lvl 9 - 2
global.times[9] = 15; // lvl 10 - 1 BUT NO WHERE TO HIDE

// HIDDEN
global.hide = false;

// DISCOMFORT METER
global.discomf = 0;

// DISCOMFORT METER MAX
global.discomf_max = 7;

// BREAKOUT LIMIT
global.breakout_lim = 22;