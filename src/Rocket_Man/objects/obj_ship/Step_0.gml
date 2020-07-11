/// @description Engine input & movement

// ---------- Move to the right
//var xs = camera_get_view_speed_x(view_camera[0]);
if (global.hull != 0){
	camera_set_view_speed(view_camera[0], 200, 0);
	hspeed = 5;
}

if (image_angle > faceing){
    image_angle -= ship_speed+2;
	
}
else if (image_angle < faceing){
	image_angle += ship_speed;
}


if (gravity == 0){
	
	gravity = .1;
	
}
//this controls the player if they are alive an not using the other keys
if(mouse_check_button(mb_left)){
	faceing = 1;
	vspeed = -3;
	image_speed = 0.5;
	alarm[0] = 20;
	}