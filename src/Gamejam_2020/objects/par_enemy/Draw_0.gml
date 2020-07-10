/// @description 


/*
draw_set_alpha(.2)
draw_circle_colour(x, y, 128, c_purple, c_green, false);
draw_set_alpha(1)
*/

if alf < 1 { alf +=.3; }
draw_sprite_ext(sprite_index, image_index, x+scale*6, y+scale*7, scale, scale, rot, c_black, alf-.7);
draw_sprite_ext(sprite_index, image_index, x, y, scale,scale, rot, c_white, alf)



