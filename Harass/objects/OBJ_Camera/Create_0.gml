camera = view_camera[0];
follow = OBJ_Player;

view_w_half = camera_get_view_width(camera) * 0.5;
view_h_half = camera_get_view_height(camera) * 0.5;

x_dest = xstart;
y_dest = ystart;

factor = 15.0;