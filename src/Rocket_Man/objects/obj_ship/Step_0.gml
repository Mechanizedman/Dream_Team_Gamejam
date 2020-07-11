/// @description Engine input & movement

// ---------- Move to the right
if (global.hull != 0){
	hspeed = 10;
}
//ship falling
if (image_angle > faceing){
    image_angle -= ship_speed;
	
}
else if (image_angle < faceing){
  image_angle += ship_speed -2;
}


if (gravity == 0){
	
	gravity = .1;
	
}
//this will be used to check if the button is pressed. 
var engine_check = mouse_check_button(mb_left);
var sheild_check = mouse_check_button(mb_middle);
var weapons_check = mouse_check_button(mb_right)
//this controls the player if they are alive an not using the other keys
//control for engine
if(engine_check = true 
	&& sheild_check != true 
	&& weapons_check != true){
		
	//object_get_sprite(spr_ship_engine)
	sprite_index = spr_ship_engine
	faceing = 5;
	vspeed = -4;
	image_speed = 0.75;
	alarm[0] = room_speed;
	
	}
//control for sheilds *put animateion here
else if(sheild_check = true
	&& engine_check != true 
	&& weapons_check != true){
	sprite_index = spr_ship_sheild
	
	}
//control for weapons *put animation here*
else if(weapons_check = true
	&&  sheild_check = false 
	&&  engine_check = false){
	sprite_index = spr_ship_weapon
	}
else {
	sprite_index = spr_ship_idle; 
	
}

/*	with (obj_ship_idle)
    {
    if !collision_line(x, y, other.x, other.y, obj_Wall, false, true)
        {
        sprite_index = spr_spotted;
        }
    else
        {
        sprite_index = spr_clear;
        }
    }
}
*/
