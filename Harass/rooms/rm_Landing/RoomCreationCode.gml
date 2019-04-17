// SET TO 0 TO DISABLE MUSIC
global.groove = 1;

// SET TO 0 TO DISABLE SFX
global.sfx_on = 1;

// SET TO 0 TO DISABLE GUI
global.gui_on = 1;

// SOUND LEVELS
global.sfx_level = 1;
global.msc_level = 1;

audio_group_load(sound_effects);

room_goto(rm_Start);