/// @description 

// Position
_z = 0;

// Velocity
_vx = 0;
_vy = 0;
_vz = 0;

// Draw
_radius = 0;
_color  = 0;

// Other
_friction         = 0;
_decay            = 0;
_bounce           = 0;

_col = random_range(240, 255)
_color  = make_colour_rgb(_col, _col, _col);

// Setup Camera
cam = view_camera[0];
view_w = camera_get_view_width(cam)*2;
view_h = camera_get_view_height(cam)*2;
