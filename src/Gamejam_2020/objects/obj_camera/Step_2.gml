/// @description 

input_up = keyboard_check(vk_up) || keyboard_check(ord("W"));

		if (size_w < 192)
		{
					size_w += 1;
					size_h += 2;
					camera_set_view_size(cam, size_w, size_h);
					camera_set_view_border(cam, size_w, size_h);
		}
else if (size_w > 192)
		{
					size_w -= 1;
					size_h -= 2;
					camera_set_view_size(cam, size_w, size_h);
					camera_set_view_border(cam, size_w, size_h);
		}


if  !(input_up) { vspeed = -1;}
//Sleep(20);
// Initialize input variables
var kRestart, kQuit;

kRestart   = keyboard_check_pressed(ord("R"));
kQuit		  = keyboard_check_pressed(vk_escape);


if (kRestart)
    game_restart();
    
// Close application
if (kQuit)
    game_end();
    

