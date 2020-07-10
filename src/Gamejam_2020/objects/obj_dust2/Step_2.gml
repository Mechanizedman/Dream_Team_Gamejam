/// @description  Logic

// Apply friction
_vx = Approach(_vx, 0, _friction);
_vy = Approach(_vy, 0, _friction);

// Apply gravity
_vz = Approach(_vz, 0, _friction);

// Apply decay
_radius = Approach(_radius, 0, _decay);

// Destroy self after fully decayed
if (_radius <= 0)
    instance_destroy();

/// Move

// Apply velocity
 x += _vx;
 y += _vy;
_z += _vz;

// Collide with floor
if (_z >= (_radius * 0.5)) {
    // Clamp
    _z = (_radius * 0.5);
    
    // Bounce
    _vz *= -(_bounce);
}

/// Shadow Casting

var x1, y1, x2, y2, col;

// I am passing points separately so that the shadow can be scewed along the y-axis to show depth
x1  = round(x - _radius);
y1  = round(y - (_radius * 0.50));
x2  = round(x + _radius);
y2  = round(y + (_radius * 0.50));
col = _color;

_col -= 2;
_color  = make_colour_rgb(_col, _col, _col);

