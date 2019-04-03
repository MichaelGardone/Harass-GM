draw_set_font(Fnt_Press);

//TITLE
draw_set_color(c_white);
draw_text_transformed(x,y-200,"Harass",2,2,0);
draw_text_transformed(x,y-150,"-Beta Version-",1,1,0);


//BUTTON SELECT
var i = 0;
repeat (buttons) 
{
	draw_set_halign(fa_center);
	draw_set_color(c_gray);
	
	if (menu_index == i)
	{
		draw_set_color(c_white);
	}
	draw_text(menu_x,menu_y + button_h * i, button[i]);
	i++;
}