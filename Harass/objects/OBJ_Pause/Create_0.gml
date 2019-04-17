if(instance_number(OBJ_Pause) > 1)
	instance_destroy();

display_set_gui_size(1080,620);

y_select = 0;
y_pos = 0;

yoffset = 75;
text[0] = "Continue";
text[1] = "Options";
text[2] = "Exit";
y_max = array_length_1d(text);

// 0 = pause, 1 = options
menu_current = 0;

menu_index = 0;
last_selected = 0;

options[0] = "Music On/Off:";
options[1] = "SFX On/Off:";
options[2] = "GUI On/Off:";
options[3] = "Music Volume:";
options[4] = "SFX Volume:";
options[5] = "Return to Menu";
buttons = array_length_1d(options);

y_movement_active = true;
music_control = false;
sfx_control = false;
gui_control = false;

sfx_vol = false;
msc_vol = false;

music_contrl[0] = "Off";
music_contrl[1] = "On";
music_buttons = array_length_1d(music_contrl);

sfx_contrl[0] = "Off";
sfx_contrl[1] = "On";
sfx_buttons = array_length_1d(sfx_contrl);

gui_contrl[0] = "Off";
gui_contrl[1] = "On";
gui_buttons = array_length_1d(sfx_contrl);

x_pos = 0;
horz_index = 0;
last_x_selected = 0;