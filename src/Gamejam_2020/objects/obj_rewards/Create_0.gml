/// @description 
reward = choose (1,4, 1, 2, 4, 5, 1, 4);

switch (reward)
	{
	case 1: // Healthboost
	sprite_index = spr_moreHealth; 
	obj_player.hp += 10;
	if (obj_player.hp > 100) { obj_player.hp = 100; }
	break;
	case 2: // SCORE + 200..
	sprite_index = spr_200; 
	obj_player.skore += 200;
	break;
	case 4: // SCORE + 50..
	sprite_index = spr_50; 
	obj_player.skore += 50;
	break;
	case 5: // SCORE + 500..
	sprite_index = spr_500; 
	obj_player.skore += 500;
	break;
	}
alpha = 1;
yy = y;
scale = .1;