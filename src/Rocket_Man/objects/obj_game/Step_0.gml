/// @description 
//lets the player continue via left click
if (mouse_check_button_pressed(mb_left)){
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
/*win conditions
if (room == rm_level){
	if score >= 1{
		room_goto(rm_win);
		//audio_play_sound(snd_win, 1, false)
    }
		if lives <= 0{
	    room_goto(rm_gameover);
		//audio_play_sound(snd_lose, 1, false)
    }
}
*/