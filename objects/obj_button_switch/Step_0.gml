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
				if(y == 370)
				{
					if(global.sound == 0)
					{
						image_index = 1;
						global.sound = 1;
					}
					else if(global.sound == 1)
					{
						image_index = 0;
						global.sound = 0;
					}
					ini_open("save.ini");
					ini_write_real("perfs","sound",global.sound);
					ini_close();
				}
				else if(y == 480)
				{
					if(global.music == 0)
					{
						image_index = 1;
						global.music = 1;
						audio_play_sound(sd_menu_music,1,1);
					}
					else if(global.music == 1)
					{
						image_index = 0;
						global.music = 0;
						audio_stop_sound(sd_menu_music);
					}
					ini_open("save.ini");
					ini_write_real("perfs","music",global.music);
					ini_close();
				}
				else if(y == 590)
				{
					if(global.invert_tilt == 0)
					{
						image_index = 1;
						global.invert_tilt = 1;
					}
					else if(global.invert_tilt == 1)
					{
						image_index = 0;
						global.invert_tilt = 0;
					}
					ini_open("save.ini");
					ini_write_real("perfs","inverttilt",global.invert_tilt);
					ini_close();
				}
				else if(y == 700)
				{
					if(global.active_cat == 0)
					{
						image_index = 1;
						global.active_cat = 1;
						global.list_cat = ds_list_create();
					}
					else if(global.active_cat == 1)
					{
						image_index = 0;
						global.active_cat = 0;
						ds_list_destroy(global.list_cat);
					}
					ini_open("save.ini");
					ini_write_real("perfs","activecat",global.active_cat);
					ini_close();
				}
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
			}
		}
	}
}