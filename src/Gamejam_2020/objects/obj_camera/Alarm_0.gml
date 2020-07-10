/// @description 
// Water Ripples

playerX = obj_player.x;
playerY = obj_player.y-200;

instance_create_layer(playerX+random_range(-130, 130), playerY+random_range(-150, 150), "Water", obj_waterRipple);
instance_create_layer(playerX+random_range(-140, 140), playerY+random_range(-160, 160), "Water", obj_waterRipple);
instance_create_layer(playerX+random_range(-60, 60), playerY+random_range(-60, 60), "Water", obj_waterRipple);
instance_create_layer(playerX+random_range(-80, 80), playerY+random_range(-80, 80), "Water", obj_waterRipple);
instance_create_layer(playerX+random_range(-130, 130), playerY+random_range(-150, 150), "Water", obj_waterRipple);
instance_create_layer(playerX+random_range(-140, 140), playerY+random_range(-160, 160), "Water", obj_waterRipple);
alarm[0] = 50;
