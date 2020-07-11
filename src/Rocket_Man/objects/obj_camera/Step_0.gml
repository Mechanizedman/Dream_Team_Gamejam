/// @description follow the player/target

if(instance_exists(target)){
	global.cameraX = target.x -(global.cameraWidth/4);
	global.cameraY = target.y -(global.cameraWidth/2);
}

camera_set_view_pos(view_camera[0],global.cameraX, 0);
