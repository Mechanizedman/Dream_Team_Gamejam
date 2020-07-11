/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter)){
	switch(room){
	    case rm_start:
			room_goto(rm_level)
	        break;
	    case rm_win:
	    case rm_gameover:	
	        game_restart();
	        break;
    }
}
//win conditions
if (room == rm_level){
	if score >= 1000{
		room_goto(rm_win);
		//audio_play_sound(snd_win, 1, false)
    }
		if lives <= 0{
	    room_goto(rm_gameover);
		//audio_play_sound(snd_lose, 1, false)
    }
}
