camera = camera_create();

var view = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var proj = matrix_build_projection_ortho(2320, 620, 0.1, 1000);

camera_set_view_mat(camera, view);
camera_set_proj_mat(camera, proj);

view_camera[0] = camera;

follow = OBJ_Player;
xTo = x;
yTo = y;

factor = 25;
offset = 100;

// For DYNAMIC ZOOMING
zoom_factor = 1;

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;