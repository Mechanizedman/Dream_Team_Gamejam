/// @description

draw_sprite_ext(spr_player_shadow, image_index, x+shad/2, y+shad, xscale+0.3, yscale, 0, c_dkgray, .4);


	var _dust_x = x+5 //+ lengthdir_x(1, image_angle+180);
	var _dust_y = y+13//+ lengthdir_y(-25, image_angle+180);
	instance_create_layer(_dust_x+random_range(-2, 2), _dust_y+random_range(-2, 2), "BulletsSmoke", obj_dust);
	var _dust_x = x-5 //+ lengthdir_x(1, image_angle+180);
	var _dust_y = y+13//+ lengthdir_y(-25, image_angle+180);
	instance_create_layer(_dust_x+random_range(-2, 2), _dust_y+random_range(-2, 2), "BulletsSmoke", obj_dust);

draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, 0, c_white, 1);

// ---------- Shooting ..
fireingDelay = fireingDelay -1;
if load > 0 {
		if (input_shoot) && (fireingDelay < 0)
		{
					fireingDelay = 7;
					ScreenShake(1,3);
					 load -= 5;
					with (instance_create_layer(x-12, y-3,"BulletsSmoke", obj_bullet ))
					{
								speed = 10;
								direction = 90+random_range(-2,+2);
								image_angle = direction;
					}
					with (instance_create_layer(x+12, y-3,"BulletsSmoke", obj_bullet ))
					{
								speed = 10;
								direction = 90+random_range(-2,+2);
								image_angle = direction;
					}
		}
} if !(input_shoot) && load < 99 { load += 1;} 
if shad < 10 { shad += .06;}