/// @description DRAW DIALOGUE + STUFF ..


draw_set_font(fnt_dialogue);
draw_set_colour(darkGreen);
draw_sprite_ext(spr_dialogueBox, 1, view_w-324, view_h-626 , 3, 3, 0, c_white, .8);	
// How many messages in the array ..?
message_end = array_length_1d(message);

if (message_end > 0)
 {
			// Variables ..
			var charWidth = 16;
			var lineEnd = 30;
			var line = 0;
			var space = 0;
			var i = 1;
			var delay = 4;
			
			// TypeWriter ..
			if (cutoff < string_length(message[message_current]))
			{
					if (timer >= delay)
					{
							cutoff ++;
							timer = 0;
					}
				else timer ++;
			}
			
			//Text Position..
			var tY = view_h -613;
			if (portrait == "noone") var tX = 5;
			else var tX =  view_w-170

			// Next Message
			//if (keyboard_check_pressed(ord("P")))
			//	{
						// If we still have some messages,  go to next ..
						if (message_current < message_end-1)
						{
								message_current++;	
								cutoff = 0;
						}
					// If we dont ..
					else 
					{
						done = true;
					}
				//}
					// Draw Text ..
					while (i <= string_length(message[message_current]) && i <= cutoff)
						{
								
																
												chat += 1;
												if (chat > 4) { chat = 2};
								
								// check for Modifier ..
								if (string_char_at(message[message_current], i) == "/" )
									{
												modifier = real(string_char_at(message[message_current], ++i ));
												++i
									}
								if (string_char_at(message[message_current], i) == "!" )
									{
												chat = 1; 
												
												//draw_sprite_ext(spr_port_jim, chat, view_w-320, view_h -622, 4, 4, 0, c_white, 1);	
									}
							

								
								// go to next line..
								var length = 0;
								while (string_char_at (message[message_current], i) != " " && i <= string_length(message[message_current]))
								{
										i ++;
										length ++;
								}
									if (space+length > lineEnd)
									{
											space = 0;
											line ++;
									}

								i -= length;
								
									// Text modifier
								switch (modifier)
								{
										case 0: // Normal
										{
												draw_set_colour(darkGreen);
												draw_text(tX+(space*charWidth), tY+(31*line), string_char_at(message[message_current], i));
												break;
										}
										case 1: // Shakey
										{
												draw_set_colour(lightGreen);
												draw_text(tX+(space*charWidth)+random_range(-2, 2), tY+(31*line)+random_range(-3, 3), string_char_at(message[message_current], i));
												break;
										}
									
									
								}
								//draw_text(tX+(space*charWidth), tY+(18*line), string_char_at(message[message_current], i));
								
								space ++;
								i ++;
							
						} 
					
					
					// Draw Portraits ..
					switch (portrait)
					{
							case "none":
							{
								break;
							}
							
							case "jim":
							{
									draw_sprite_ext(spr_port_jim, chat, view_w-320, view_h -622, 4, 4, 0, c_white, 1);	
							}
						
					}
					
 } 


if (obj_player.yy < 3100 && obj_player.yy> 3098) {cutoff = 0; message[0] = "/0Still Early Days .. A Long Way To Go ...!!! ";}

draw_sprite_part_ext(spr_scanLines, 0, 0, 0, UI_width, UI_height, UI_x, UI_y, scale+2, scale+2, c_white, .2)