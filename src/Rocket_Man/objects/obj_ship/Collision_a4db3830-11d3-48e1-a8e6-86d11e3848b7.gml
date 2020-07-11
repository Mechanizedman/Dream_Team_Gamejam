/// @description Collistions with the sheild breaking wall
if (sheild_check = true){
	with(obj_collistions_sheild) 
		instance_destroy();
	
}
else {
global.hull = -1000
}