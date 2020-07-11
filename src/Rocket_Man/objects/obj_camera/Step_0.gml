/// @description follow the player/targe
if(instance_exists(target)){
	global.cameraX = target.x -(global.cameraWidth/4);
	global.cameraY = target.y -(global.cameraWidth/2);
}
else{
	global.cameraX = (global.cameraWidth/4);
	global.cameraY = (global.cameraWidth/2);
}
