if(shake){
    shakeDur--;
    view_x += choose(-shakeForce,shakeForce);
    view_y += choose(-shakeForceY,shakeForceY);
    if(shakeDur <= 0){
        shake = false;
        shakeDur = 5;
		alarm[0] = room_speed * 1.5;
    }
}
else {
    view_x = Scr_Approach(view_x, 0, 0.3);
    view_y = Scr_Approach(view_y, 0, 0.3);
} 