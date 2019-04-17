xx = display_get_gui_width()/2;
yy = 25;

draw_set_halign(fa_center);
draw_set_font(Fnt_Press);
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_text(xx, yy, "Credits");
yy+=15;

yy += yoffset;
draw_set_halign(fa_center);
for (i=0; i < prod_s; i++) {
	draw_set_color(c_yellow);
	draw_text(xx,yy+i*yoffset,prod[i]);
}
yy += prod_s * yoffset + 10;

for (i=0; i < ca_s; i++) {
	draw_set_color(c_teal);
	draw_text(xx-300,yy+i*yoffset,ca[i]);
}

for (i=0; i < ea_s; i++) {
	draw_set_color(c_green);
	draw_text(xx+250,yy+i*yoffset,ea[i]);
}
yy += ea_s * yoffset + 10;

for (i=0; i < prog_s; i++) {
	
	draw_set_color(color);
	draw_text(xx-300,yy+i*yoffset,prog[i]);
}

for (i=0; i < uix_s; i++) {
	draw_set_color(c_gray);
	draw_text(xx+250,yy+i*yoffset,uix[i]);
}
yy += uix_s * yoffset + 10;

draw_set_color(c_ltgray);
draw_text(xx,yy,"= Music =");
draw_text(xx,yy+yoffset,"Captive Portal");
yy += uix_s * yoffset + 10;

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(50,yy,"Main Menu");
draw_set_halign(fa_left);