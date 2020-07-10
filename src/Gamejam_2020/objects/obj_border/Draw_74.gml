/// @description Draw BORDER + STUFF ..


input_debug		 = keyboard_check(ord("D"));
if (input_debug) { global.debug = !global.debug; }

 
 
 if global.screenFlash = 1 {
			draw_set_alpha(alpha)
			draw_set_colour(c_white)
			draw_rectangle(0, 0, gui_width, gui_height ,false);
			alpha -= .1;
			draw_set_alpha(1)
					if alpha < 0 {global.screenFlash = 0; alpha = 1;}
 }
 
 // Draw GUI Items ..
 
if instance_exists(obj_player) {
 global.heal = obj_player.hp;
 global.load = obj_player.load;
    }
		if (obj_player.hp > 100) { obj_player.hp = 100; }
		if obj_player.hp < 1 { obj_player.hp = 1;}
	draw_sprite_part_ext(spr_UI, 0, 0, 0, UI_width, UI_height, UI_x, UI_y, scale, scale, c_white, 1)

	
	draw_sprite_ext(spr_healthInnerLeft, 1, 10, 13, 2, global.heal/50, 0, c_white, global.heal/30) /// HEALTH
	draw_sprite_ext(spr_healthInnerRight, 1, 715, 13, 2, global.load/50, 0, c_white, global.load/30) /// DUNNO YET ..
	
	draw_sprite_ext(spr_HealthBarLeft, 1, 9, 12, 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_HealthBarRight, 1, 714, 12, 2, 2, 0, c_white, 1)
	



