if(global.eod == 0)
{
	if(device_mouse_check_button_pressed(0,mb_left))
	{
		if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
		{
			if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
			{
				if(!instance_exists(obj_the_cat))
				{
					image_xscale = 1.001;
					image_yscale = 1.001;
				}
			}
		}
	}
	else if(device_mouse_check_button(0,mb_left))
	{
		if(image_xscale == 1.001)
		{
			if(device_mouse_x(0) < x - sprite_get_width(sprite_index)/2|| device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y - sprite_get_height(sprite_index)/2 || device_mouse_y(0) > y + sprite_get_height(sprite_index)/2)
			{
				image_xscale = 1;
				image_yscale = 1;
			}
		}
	}
	else if(device_mouse_check_button_released(0,mb_left))
	{
		if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
		{
			if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
			{
				if(image_xscale == 1.001)
				{
					image_xscale = 1;
					image_yscale = 1;
					if(image_index == 2)
					{
						sprite_index = spr_brick_gap;
						instance_create_depth(x,y,depth-1,obj_eod_eyes);
						global.eod = 1;
						ini_open("save.ini");
						ini_write_real("achiev","unlockeod",1);
						ini_close();
					}
					else
					{
						image_index++;
					}
					if(global.sound == 1)
					{
						audio_play_sound(sd_eod_brick,8,0);
						alarm_set(0,60);
					}
				}
			}
		}
	}
}