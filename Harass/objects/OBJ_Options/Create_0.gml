display_set_gui_size(1080,620);

y_pos = 0;

yoffset = 75;

text[0] = "Music On/Off:";
text[1] = "SFX On/Off:";
text[2] = "GUI On/Off:";
text[3] = "Music Volume:";
text[4] = "SFX Volume:";
text[5] = "Return to Menu";
buttons = array_length_1d(text);

y_movement_active = true;
menu_index = 0;
last_selected = 0;

x_pos = 0;
horz_index = 0;
last_x_selected = 0;

music_contrl[0] = "On";
music_contrl[1] = "Off";
music_buttons = array_length_1d(music_contrl);
music_active = 0;

sfx_contrl[0] = "On";
sfx_contrl[1] = "Off";
sfx_buttons = array_length_1d(sfx_contrl);
sfx_active = 0;