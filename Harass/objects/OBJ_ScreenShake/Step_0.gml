if (global.pause == 0)
{
	camy = camera_get_view_y(cam0);
	
	if(shake){
		shakeDur--;
	
	    camy += choose(-shakeForce,shakeForce);
	
	    if(shakeDur <= 0) {
	        shake = false;
	        shakeDur = 5;
			alarm[0] = room_speed * 1.5;
	   }
	}
	
	camera_set_view_pos(cam0, camera_get_view_x(cam0), camy);
}
