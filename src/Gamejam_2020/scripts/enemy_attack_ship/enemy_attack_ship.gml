

		mood = "attack"
		// attack..
			spd = .6
			if hp > 1 {
				if canShoot = 1 && y+20 < obj_player.y {
						//  audio_play_sound(snd_Enemy_Gun, 10, false);
						var _lasor_x = x + lengthdir_x(+12, image_angle+0);
						var _lasor_y = y + lengthdir_y(-32, image_angle+0);
						instance_create_layer(_lasor_x-12, _lasor_y-5, "Enemy", obj_enemy_bullet);
						canShoot = 0;
						alarm[0] = random_range( 5, 20);
						}
				}
		//	if x < obj_player.x { rot += .2; x += .2;}
		//	if x > obj_player.x { rot -= .2; x -= .2;}
				
		if (!collision_circle(x, y, 130, obj_player, false, false)) {
					spd = .3
					state = states.idle;
		}
