/// @description 
image_alpha = .6;


if image_xscale > 0 {
	image_xscale -= .4;
	image_yscale -= .4;
	y += .02;
} else {
	instance_destroy();
}

