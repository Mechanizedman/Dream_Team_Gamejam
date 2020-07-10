/// @description 
alpha -= .008;
yy -= .1;
scale += .01;

draw_sprite_ext(sprite_index, 1, x, yy,scale, scale, 0, c_white, alpha);

if (alpha < 0) { instance_destroy(); }
