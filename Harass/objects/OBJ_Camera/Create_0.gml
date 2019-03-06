camera = camera_create();

//var view = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
//var proj = matrix_build_projection_ortho(4640, 620, 0.1, 1000);

//camera_set_view_mat(camera, view);
//camera_set_proj_mat(camera, proj);

//view_camera[0] = camera;

view_camera[0] = camera;

follow = OBJ_Player;
xTo = x;
yTo = y;

factor = 25;
offset = 60;

// Zoom
zoom = 0.7;

screenW = camera_get_view_width(view_camera[0]);
screenH = camera_get_view_height(view_camera[0]);
halfViewWidth = screenW / 2;
halfViewHeight = screenH / 2;