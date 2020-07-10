/// @description 

// Dialogue Stuff ..
cam = view_camera[0];
view_w = camera_get_view_width(cam)*2;
view_h = camera_get_view_height(cam)*2;
chat = 1;
modifier = "/"
message[0] = "/0THIS IS /1SERIOUS/0!!CAPTAIN .. Kill ALL Enemy Ships.!! ";


lightGreen = make_colour_rgb(250, 210, 210);
darkGreen = make_colour_rgb(170, 200, 170);

message_current = 0;
timer = 0;
cutoff = 0;
portrait = "jim";

t = 0;
increment = 1;
done = false;

// Vars
spr_UI = spr_border;
scale = 2;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

UI_width = 384;
UI_height = 672;

UI_x = (gui_width * 0.5) - (UI_width * 0.5 * scale);
UI_y = (gui_height * 0.5) - (UI_height * 0.5 * scale);

// Cloud Creation ..
alarm[0] = 150;

// ScreenFlash
alpha = 1;
