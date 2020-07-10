

		mood = "attack"
		// attack..
				spd = -.9
				if hp > 1 {
				if canShoot = 1 && y+40 < obj_player.y {
						//  audio_play_sound(snd_Enemy_Gun, 10, false);
						var _lasor_x = x + lengthdir_x(+1, image_angle+0);
						var _lasor_y = y + lengthdir_y(+2, image_angle+0);
						instance_create_layer(_lasor_x, _lasor_y+5, "Enemy", obj_enemy_bullet);
						canShoot = 0;
						alarm[0] = random_range( 15, 50);
						}	
					}
			if x < obj_player.x { rot += .01; x += .02;}
			if x > obj_player.x { rot -= .01; x -= .02;}
				
		if (!collision_circle(x, y, 256, obj_player, false, false)) {
					spd = .8
					state = states.idle;
		}
