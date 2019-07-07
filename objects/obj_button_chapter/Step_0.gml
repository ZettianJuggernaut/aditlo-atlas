if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(!instance_exists(obj_the_cat))
			{
				image_xscale = 1.15;
				image_yscale = 1.15;
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_press,10,0);
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
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				image_yscale = 1;
				if(global.currently_playing == 0)
				{
					if(global.won == true)
					{
						global.open_chapter = global.current_cp;
					}
					else
					{
						global.open_chapter = global.current_cp + 1;
					}
				}
				else if(global.currently_playing == 1)
				{
					if(global.won == true)
					{
						if(global.currentlvl >= 1 && global.currentlvl <= 6)
						{
							global.open_chapter = 1;
						}
						else if(global.currentlvl >= 7 && global.currentlvl <= 16)
						{
							global.open_chapter = 2;
						}
						else if(global.currentlvl >= 17 && global.currentlvl <= 31)
						{
							global.open_chapter = 3;
						}
						else if(global.currentlvl >= 32 && global.currentlvl <= 46)
						{
							global.open_chapter = 4;
						}
					}
					else
					{
						if(global.currentlvl >= 1 && global.currentlvl <= 5)
						{
							global.open_chapter = 1;
						}
						else if(global.currentlvl >= 6 && global.currentlvl <= 15)
						{
							global.open_chapter = 2;
						}
						else if(global.currentlvl >= 16 && global.currentlvl <= 30)
						{
							global.open_chapter = 3;
						}
						else if(global.currentlvl >= 31 && global.currentlvl <= 45)
						{
							global.open_chapter = 4;
						}
					}
				}
				else if(global.currently_playing > 1)
				{
					global.open_chapter = -1;
					if(global.currently_playing == 4)
					{
						ini_open("save.ini");
						global.current_skin = ini_read_real("perfs","skin",0);
						ini_close();
					}
					else if(global.currently_playing == 5)
					{
						ini_open("save.ini");
						global.invert_tilt = ini_read_real("perfs","inverttilt",0);
						global.current_skin = ini_read_real("perfs","skin",0);
						ini_close();
					}
				}
				if(room == rm_game_modes)
				{
					audio_stop_all();
					if(global.music == 1)
					{
						audio_play_sound(sd_menu_music,1,1);
					}
				}
				else
				{
					audio_stop_sound(sd_victroy);
					audio_stop_sound(sd_defeat);
				}
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				global.goto_room = rm_menu_chapter;
				instance_create_depth(obj_cam.x,obj_cam.y,-200,obj_fade_black);
			}
		}
	}
}

