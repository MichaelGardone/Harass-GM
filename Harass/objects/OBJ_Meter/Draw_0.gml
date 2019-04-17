draw_self()

// METER LABEL
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text_transformed(x,y-10,"Discomfort Meter",1,1,0)

// PAUSE ANIM
if global.pause == 1
	image_speed = 0
else
	image_speed = 1

// DRAWN PROGRESS OF METER
if global.discomf == 0
	sprite_index = Spr_Meter0
else if global.discomf == 1
	sprite_index = Spr_Meter1
else if global.discomf == 2
	sprite_index = Spr_Meter2
else if global.discomf == 3
	sprite_index = Spr_Meter3
else if global.discomf == 4
	sprite_index = Spr_Meter4
else if global.discomf == 5
	sprite_index = Spr_Meter5
else if global.discomf == 6
	sprite_index = Spr_Meter6
