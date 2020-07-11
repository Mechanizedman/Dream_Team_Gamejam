/// @description Engine input & movement

//Keep Track of health and lives

if(global.hull = 0){
	instance_destroy();
	
}




// ---------- Move to the right
if (global.hull != 0){
	hspeed = 5;
}
//ship falling
if (image_angle > faceing){
    image_angle -= ship_speed;
	
}
else if (image_angle < faceing){
  image_angle += ship_speed -2;
}
//set gravaty for the level
if (gravity == 0){
	
	gravity = .1;
	
}
//this will be used to check if the button is pressed. 
engine_check = mouse_check_button(mb_left);
sheild_check = mouse_check_button(mb_middle);
weapon_check = mouse_check_button(mb_right)
system_delay = false;
system_conflict = false;
//this controls the player if they are alive an not using the other keys
//control for engine
// this code will check for if more then one putton is pressed. If do the ship will do nothing
if( weapon_check and sheild_check 
	      || weapon_check and engine_check
		  || sheild_check and engine_check
		  || weapon_check and sheild_check and engine_check){
			sprite_index = spr_ship_idle
			system_conflict = true;
			
	}

if(engine_check = true and system_conflict = false){
    
	//swich to this sprite
	sprite_index = spr_ship_engine
	faceing = 5;
	vspeed = -4;
	image_speed = 0.75;
	alarm[0] = room_speed;
	//prevents the other two buttons from being pressed for a bit
	system_delay = true;
	
	}
//control for sheilds *put animateion here
else if(sheild_check = true
	and system_conflict = false){
	sprite_index = spr_ship_sheild
	system_delay = true;
	}
//control for weapons *put animation here*
else if(weapon_check = true
	and system_conflict = false){
	sprite_index = spr_ship_weapon
	system_delay = true;
	}

else {
	sprite_index = spr_ship_idle; 
	if(system_delay =true){
	alarm[1] = room_speed;	
	}
}