if(instance_count(OBJ_Meter) > 1)
	instance_destroy();

added = false;

// POSITION OF OBJ
xDifference = x - camera_get_view_x(view_camera[0]);

// DISCOMFORT TRACKER - Demo, Change Value to see progress in meter... 0-6
discTrack = 6