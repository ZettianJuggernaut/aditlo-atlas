if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(!instance_exists(obj_the_cat))
			{
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_press,10,0);
				}
				if(image_index & 1)
				{
					image_xscale = 1.15;
					image_yscale = 1.15;
				}
				else if(image_angle == 0)
				{
					alarm[0] = 1;
					if(global.sound == 1)
					{
						audio_play_sound(sd_button_slide,10,0);
					}
				}
			}
		}
	}
}
else if(device_mouse_check_button(0,mb_left))
{
	if(image_xscale == 1.15)
	{
		if(device_mouse_x(0) < x - sprite_get_width(sprite_index)/2|| device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y - sprite_get_height(sprite_index)/2 || device_mouse_y(0) > y + sprite_get_height(sprite_index)/2)
		{
			image_xscale = 1;
			image_yscale = 1;
			if(global.sound == 1)
			{
				audio_play_sound(sd_button_slide,10,0);
			}
		}
	}
}
else if(device_mouse_check_button_released(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(spr_selector_level)/2 && device_mouse_x(0) <= x + sprite_get_width(spr_selector_level)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(spr_selector_level)/2 && device_mouse_y(0) <= y + sprite_get_height(spr_selector_level)/2)
		{
			if(image_xscale == 1.15)
			{
				var x1, x2, x3, x4, x5, y1, y2, y3;
				x1 = obj_scroll_big.x - 300;
				x2 = obj_scroll_big.x - 150;
				x3 = obj_scroll_big.x;
				x4 = obj_scroll_big.x + 150;
				x5 = obj_scroll_big.x + 300;
				y1 = obj_scroll_big.y - 75;
				y2 = obj_scroll_big.y + 75;
				y3 = obj_scroll_big.y + 225;
				if(global.open_chapter == 1)
				{
					if(global.lvlcomplete >= 0 && x == x1)
					{
						global.currentlvl = 1;
					}
					else if(global.lvlcomplete >= 1 && x == x2)
					{
						global.currentlvl = 2;
					}
					else if(global.lvlcomplete >= 2 && x == x3)
					{
						global.currentlvl = 3;
					}
					else if(global.lvlcomplete >= 3 && x == x4)
					{
						global.currentlvl = 4;
					}
					else if(global.lvlcomplete >= 4 && x == x5)
					{
						global.currentlvl = 5;
					}
				}
				else if(global.open_chapter == 2)
				{
					if(global.lvlcomplete2 >= 0 && x == x1 && y == y1)
					{
						global.currentlvl = 6;
					}
					else if(global.lvlcomplete2 >= 1 && x == x2 && y == y1)
					{
						global.currentlvl = 7;
					}
					else if(global.lvlcomplete2 >= 2 && x == x3 && y == y1)
					{
						global.currentlvl = 8;
					}
					else if(global.lvlcomplete2 >= 3 && x == x4 && y == y1)
					{
						global.currentlvl = 9;
					}
					else if(global.lvlcomplete2 >= 4 && x == x5 && y == y1)
					{
						global.currentlvl = 10;
					}
					else if(global.lvlcomplete2 >= 5 && x == x1 && y == y2)
					{
						global.currentlvl = 11;
					}
					else if(global.lvlcomplete2 >= 6 && x == x2 && y == y2)
					{
						global.currentlvl = 12;
					}
					else if(global.lvlcomplete2 >= 7 && x == x3 && y == y2)
					{
						global.currentlvl = 13;
					}
					else if(global.lvlcomplete2 >= 8 && x == x4 && y == y2)
					{
						global.currentlvl = 14;
					}
					else if(global.lvlcomplete2 >= 9 && x == x5 && y == y2)
					{
						global.currentlvl = 15;
					}
				}
				else if(global.open_chapter == 3)
				{
					if(global.lvlcomplete3 >= 0 && x == x1 && y == y1)
					{
						global.currentlvl = 16;
					}
					else if(global.lvlcomplete3 >= 1 && x == x2 && y == y1)
					{
						global.currentlvl = 17;
					}
					else if(global.lvlcomplete3 >= 2 && x == x3 && y == y1)
					{
						global.currentlvl = 18;
					}
					else if(global.lvlcomplete3 >= 3 && x == x4 && y == y1)
					{
						global.currentlvl = 19;
					}
					else if(global.lvlcomplete3 >= 4 && x == x5 && y == y1)
					{
						global.currentlvl = 20;
					}
      				else if(global.lvlcomplete3 >= 5 && x == x1 && y == y2)
      				{
						global.currentlvl = 21;
      				}
      				else if(global.lvlcomplete3 >= 6 && x == x2 && y == y2)
      				{
						global.currentlvl = 22;
      				}
      				else if(global.lvlcomplete3 >= 7 && x == x3 && y == y2)
      				{
						global.currentlvl = 23;
      				}
      				else if(global.lvlcomplete3 >= 8 && x == x4 && y == y2)
      				{
						global.currentlvl = 24;
      				}
      				else if(global.lvlcomplete3 >= 9 && x == x5 && y == y2)
      				{
						global.currentlvl = 25;
      				}
      				else if(global.lvlcomplete3 >= 10 && x == x1 && y == y3)
      				{
						global.currentlvl = 26;
      				}
      				else if(global.lvlcomplete3 >= 11 && x == x2 && y == y3)
      				{
        				global.currentlvl = 27;
      				}
      				else if(global.lvlcomplete3 >= 12 && x == x3 && y == y3)
      				{
        				global.currentlvl = 28;
      				}
      				else if(global.lvlcomplete3 >= 13 && x == x4 && y == y3)
      				{
        				global.currentlvl = 29;
      				}
      				else if(global.lvlcomplete3 >= 14 && x == x5 && y == y3)
      				{
        				global.currentlvl = 30;
      				}
				}
      			else if(global.open_chapter == 4)
				{
					if(global.lvlcomplete4 >= 0 && x == x1 && y == y1)
      				{
        				global.currentlvl = 31;
      				}
      				else if(global.lvlcomplete4 >= 1 && x == x2 && y == y1)
      				{
        				global.currentlvl = 32;
      				}
      				else if(global.lvlcomplete4 >= 2 && x == x3 && y == y1)
      				{
        				global.currentlvl = 33;
      				}
      				else if(global.lvlcomplete4 >= 3 && x == x4 && y == y1)
      				{
        				global.currentlvl = 34;
      				}
      				else if(global.lvlcomplete4 >= 4 && x == x5 && y == y1)
      				{
        				global.currentlvl = 35;
      				}
      				else if(global.lvlcomplete4 >= 5 && x == x1 && y == y2)
      				{
        				global.currentlvl = 36;
      				}
      				else if(global.lvlcomplete4 >= 6 && x == x2 && y == y2)
      				{
        				global.currentlvl = 37;
      				}
      				else if(global.lvlcomplete4 >= 7 && x == x3 && y == y2)
      				{
        				global.currentlvl = 38;
      				}
      				else if(global.lvlcomplete4 >= 8 && x == x4 && y == y2)
      				{
        				global.currentlvl = 39;
      				}
      				else if(global.lvlcomplete4 >= 9 && x == x5 && y == y2)
      				{
        				global.currentlvl = 40;
      				}
      				else if(global.lvlcomplete4 >= 10 && x == x1 && y == y3)
      				{
        				global.currentlvl = 41;
      				}
      				else if(global.lvlcomplete4 >= 11 && x == x2 && y == y3)
      				{
        				global.currentlvl = 42;
      				}
      				else if(global.lvlcomplete4 >= 12 && x == x3 && y == y3)
      				{
        				global.currentlvl = 43;
      				}
      				else if(global.lvlcomplete4 >= 13 && x == x4 && y == y3)
					{
        				global.currentlvl = 44;
					}
					else if(global.lvlcomplete4 >= 14 && x == x5 && y == y3)
					{
        				global.currentlvl = 45;
					}
				}
				if(global.currentlvl > 0)
				{
        			if(global.sound == 1)
					{
						audio_play_sound(sd_button_release,10,0);
					}
					global.currently_playing = 1;
					global.ad_pop -= 1;
        			global.goto_room = rm_game_modes;
        			script_execute(scroll_kill);
				}
				else
				{
					if(global.sound == 1)
					{
						audio_play_sound(sd_button_slide,10,0);
					}
				}
				image_xscale = 1;
				image_yscale = 1;
			}
		}
	}
}