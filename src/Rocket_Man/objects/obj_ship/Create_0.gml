/// @description Vars / Stats ..

global.hull = 1000; 
faceing = 2;
ship_speed = 5;

//This code sets the mask and oragin point

sprite_set_offset(sprite_index,512,230)

//set the collision mask for all sprites
sprite_collision_mask(sprite_index,true,2,100,70,440,350,bboxkind_rectangular,0);