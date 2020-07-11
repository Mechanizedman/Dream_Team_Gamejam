/// @description Insert description here


// ---------- Move to the right

if (hull != 0){
	hspeed = 1;
}

if (image_angle > faceing){
    image_angle -= ship_speed;
	
}
else if (image_angle < faceing){
	image_angle += ship_speed;
}

/// @description Engine input

if (gravity == 0){
	
	gravity = .05;
	
}
//this controls the player if they are alive an not using the other keys
if (mouse_check_button_pressed(mb_left)){
	faceing = 1;
	vspeed = -5;
	image_speed = 0.5;
	alarm[0] = 20;
	}