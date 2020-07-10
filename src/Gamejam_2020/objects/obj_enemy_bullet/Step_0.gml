/// @description 

_acceleration = 1; 
var _top_speed = 2;



	friction = .1;
	motion_add(_direction, _acceleration);
	speed = min(speed, _top_speed);



	var _turn_amount = angle_difference(image_angle, _direction) * _acceleration;
	image_angle -= _turn_amount;

