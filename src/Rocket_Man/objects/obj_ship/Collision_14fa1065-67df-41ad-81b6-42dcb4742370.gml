/// @description Collistions with the enviroment

vspeed = 0; 
faceing = -2;
if (sheild_check = false){
	with(obj_game){
	alarm[0] = room_speed;
	}
	instance_destroy()
	//play death sound
	//audio_play_sound(snd_zap, 1, false)
	repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}
}
//sheild bounce
if (sheild_check = true and system_conflict = false) {
	motion_add(y,5);
}
