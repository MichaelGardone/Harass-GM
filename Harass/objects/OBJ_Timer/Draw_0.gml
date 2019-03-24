/// @description Insert description here
//Set Font Behavior

draw_set_font(Fnt_Press);
draw_set_color(c_black);

//Sprite (Frame)
draw_sprite(Spr_Frame, image_index, x, y,);

//String
draw_text_transformed(x,y,"Arrival:" + string(time_var), 1, 1.25, 0);