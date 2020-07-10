/// @description DRAW

draw_set_circle_precision(8);
draw_set_color(_color);
    draw_circle(round(x), (round(y) + round(_z)), _radius, false);
draw_set_color(c_white);



