display_set_gui_size(1080,620);

y_select = 0;
y_pos = 0;
yoffset = 100;
text[0] = "Continue";
text[1] = "Options";
text[2] = "Exit";
y_max = array_length_1d(text)-1;

// 0 = pause, 1 = options
menu_current = 0;
