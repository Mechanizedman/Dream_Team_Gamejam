/// @description 

y+= spd;
/// States for Enemy
if (state == states.idle) {
		enemy_idle();
} else if (state == states.attack) {
		enemy_attack();
}
/// Collisions ..
	if (place_meeting(x, y, obj_collision))
		{
				 spd = .01; 
		}

if rot > 96 { instance_destroy(); }

if scale = .2 { instance_create_layer(x, y, "BulletsSmoke", obj_explo) }

if hp < 2 { scale -= .02; rot +=2;};

if hp = 1 || hp = 0  {
		    	pmin  = 2;
                pmax  = 5;
                pnum  = irandom_range(pmin, pmax);
				ScreenShake(2,5);
				global.screenFlash = 1;
	for (var i = 0; i < pnum; i++) {
                        with (instance_create_layer(x, y,"BulletsSmoke", obj_dust2)) {
                            // Set visual properties
							_col = random_range(240, 255)
                            _radius = irandom_range(10, 16);
                            _color  = make_colour_rgb(_col, _col, _col);
                            
                            // Randomize position (within an 8x8x8 cube of mouse position)
                             x += random_range(-18, 18);
                             y += random_range(-18, 18);
                            _z  = min(-(_radius * 1.5), -irandom_range(0, 8)); 
                            
                            // Begin motion
                            _vx = random_range(-1.00, 1.00);
                            _vy = random_range(-1.00, 1.00);
                            _vz = random_range(-1.00, 1.00);
                            
                            // Set other properties
                            _friction = random_range(0.02, 0.10);
                            _decay    = random_range(0.10, 0.30);  
                            _bounce   = 0.50;  
                        }
                    }
			}	