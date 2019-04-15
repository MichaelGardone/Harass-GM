draw_self()

// METER LABEL
draw_set_color(c_white)
draw_text_transformed(x-190,y-10,"Discomfort Meter",1,1,0)

// PAUSE ANIM
if global.pause == 1
	image_speed = 0
else
	image_speed = 1

// DRAWN PROGRESS OF METER
if discTrack == 0
	sprite_index = Spr_Meter0
else if discTrack == 1
	sprite_index = Spr_Meter1
else if discTrack == 2
	sprite_index = Spr_Meter2
else if discTrack == 3
	sprite_index = Spr_Meter3
else if discTrack == 4
	sprite_index = Spr_Meter4
else if discTrack == 5
	sprite_index = Spr_Meter5
else if discTrack == 6
	sprite_index = Spr_Meter6
