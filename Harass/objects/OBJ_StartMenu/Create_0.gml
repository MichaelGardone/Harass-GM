display_set_gui_size(1080,620);

y_pos = 0;

yoffset = 60;

text[0] = "Start";
text[1] = "Options";
text[2] = "Credits";
text[3] = "Exit Game";
buttons = array_length_1d(text);

menu_index = 0;
last_selected = 0;

global.next_room = rm_LvL1;

prompt[0] = "Yes";
prompt[1] = "No";
prompt_s = array_length_1d(prompt);
prompt_on = false;

prompt_index = 0;
prompt_last_selected = 0;