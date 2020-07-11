/// @description Engine input & movement

// ---------- Move to the right
if (global.hull != 0){
	hspeed = 5;
}

if (image_angle > faceing){
    image_angle -= ship_speed + 2;
	
}
else if (image_angle < faceing){
	image_angle += ship_speed - 2;
}


if (gravity == 0){
	
	gravity = .1;
	
}
//this controls the player if they are alive an not using the other keys
if(mouse_check_button(mb_left)){
	faceing = 5;
	vspeed = -4;
	image_speed = 0.75;
	alarm[0] = 60;
	}