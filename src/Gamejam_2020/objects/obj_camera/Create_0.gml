/// @description Setup Cam
cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam)  /2;
view_h_half = camera_get_view_height(cam) /2;

xTo = xstart;
yTo = ystart;


// ScreenShake .. 
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 2;


size_w = 96;
size_h = 168;

// Water ripples
alarm[0] = 100;
