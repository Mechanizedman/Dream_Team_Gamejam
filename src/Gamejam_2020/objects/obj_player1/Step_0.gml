 /// @description Movements ..


// -----------  Input..
input_left		 = keyboard_check(vk_left)  || keyboard_check(ord("A"));
input_right	 = keyboard_check(vk_right) || keyboard_check(ord("D"));
input_up		 = keyboard_check(vk_up) || keyboard_check(ord("W"));
input_down	 = keyboard_check(vk_down) || keyboard_check(ord("S"));
input_shoot    = keyboard_check(vk_space);

input_walk	 = keyboard_check(vk_control);
input_run		 = keyboard_check(vk_shift);

input_squash = keyboard_check(ord("P"));

if (input_squash)
{
		      xscale = 1.8;
			  yscale = 0.3;
}

						
// ---------- Move Vars ..
moveX = 0;
moveY = 0;

yy = y

// ---------- The Movement..
moveY = (input_down - input_up) * spd;
moveX = (input_right - input_left) * spd; 

if (input_up) {moveY += 1.2;}
if (input_down) {moveY -= .6;}

// ---------- Collision Check ..
// Horizontal ..
if (moveX != 0) 
{
		if (place_meeting(x+moveX, y, obj_collision))
		{
				 repeat(abs(moveX)) 
				{
						if (!place_meeting(x+sign(moveX), y, obj_collision))
						{
								x += sign(moveX);
						} 
								else 
						{
								break;
						}
				}
					moveX = 0;
		}
}
// Vertical ..
if (moveY != 0)
{
		if (place_meeting(x, y+moveY, obj_collision))
		{
				 repeat(abs(moveY)) 
				{
						if (!place_meeting(x, y+sign(moveY), obj_collision))
						{
								y += sign(moveY);
						} 
								else 
						{
								break;
						}
				}
					moveY = 0;
		}
}



// ---------- Apply Movement ..
x += moveX;
y += moveY;

