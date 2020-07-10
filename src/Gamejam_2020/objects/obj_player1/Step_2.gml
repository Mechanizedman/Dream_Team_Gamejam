/// @description Squash ..and Pause ..

xscale = Approach(xscale, 1, 0.6);
yscale = Approach(yscale, 1, 0.6);

timer += 1;
if timer < 100 {
			if  (input_up) { vspeed = -2;} else {vspeed = -1;}}
