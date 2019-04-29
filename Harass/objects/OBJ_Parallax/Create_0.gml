parallax_speed = 15;
slow_down = 1;
time_start_slow = room_speed * 8; // 8 seconds is the best time to start slowing down
time_scale = 0.5;

// Shader information
fade_val = shader_get_uniform(Shdr_FadeWhite,"fade_val");