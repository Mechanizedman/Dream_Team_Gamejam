/// @description Where the start and end menu are. PLACEHOLDER
switch (room){
	case rm_level:
	   // draw_text(20, 20, "SCORE: " + string(score));
	  //  draw_text(20, 40, "LIVES: " + string(lives));
	    break; 
	case rm_start:
		draw_set_halign(fa_center);
	    var c = c_blue;
	    draw_text_transformed_colour(room_width / 2, room_height /2, "Space Man", 6, 6, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, room_height/3, 
		    @"Controls:
Left Click: Control engines/move up.
Middle Click: Control Shields
Right Click: Turn on Weapons
Can't have more then one system on at a time.

LEFT CLICK TO START");
	    draw_set_halign(fa_left);
    break;
	case rm_win:
	    draw_set_halign(fa_center);
	    var c = c_lime;
	    draw_text_transformed_colour(room_width / 2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 300, "LEFT CLICK TO RESTART");
	    draw_set_halign(fa_left);
	    break;
	case rm_gameover:
		draw_set_halign(fa_center);
	    var c = c_red;
	    draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
	    draw_text(room_width / 2, 300, "LEFT CLICK TO RESTART");
	    draw_set_halign(fa_left);
	    break;
}
//draw_set_font(fnt_text)
