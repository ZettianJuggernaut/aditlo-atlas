if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y && device_mouse_y(0) <= y + sprite_get_height(sprite_index))
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
		if(device_mouse_x(0) < x - sprite_get_width(sprite_index)/2 || device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y || device_mouse_y(0) > y + sprite_get_height(sprite_index))
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
	if(device_mouse_x(0) > x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) < x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) > y && device_mouse_y(0) < y + sprite_get_height(sprite_index))
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				image_yscale = 1;
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				if(achievement_login_status())
				{
					achievement_logout();
					image_index = 0;
					ini_open("save.ini");
					ini_write_real("perfs","gsignin",0);
					ini_close();
				}
				else if(!achievement_login_status())
				{
					achievement_login();
					image_index = 1;
					alarm_set(1,180);
					ini_open("save.ini");
					ini_write_real("perfs","gsignin",1);
					ini_close();
				}
			}
		}
	}
}