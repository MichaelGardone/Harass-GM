camera = view_camera[0];

follow = OBJ_Player;
xTo = x;
yTo = y;

// Change this for changing camera lerp speed
factor = 15;
// Offset to keep player in center
offset = 60;

screenW = camera_get_view_width(view_camera[0]);
screenH = camera_get_view_height(view_camera[0]);
halfViewWidth = screenW / 2;
halfViewHeight = screenH / 2;
