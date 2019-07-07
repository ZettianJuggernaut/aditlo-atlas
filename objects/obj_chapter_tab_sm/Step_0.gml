if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index) && device_mouse_y(0) <= y)
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
		if(device_mouse_x(0) < x - sprite_get_width(sprite_index)/2|| device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y - sprite_get_height(sprite_index) || device_mouse_y(0) > y)
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
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index) && device_mouse_y(0) <= y)
		{
			if(image_xscale == 1.15)
			{
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				if(x == camera_get_view_x(view_camera[0]) + sprite_get_width(sprite_index)/2)
				{
					script_execute(cam_left);
					if(global.open_chapter > 1)
					{
						global.open_chapter -= 1;
					}
					else if(global.open_chapter == 1)
					{
						global.open_chapter = -1;
					}
				}
				else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(sprite_index)/2)
				{
					script_execute(cam_right);
					if(global.open_chapter > 0)
					{
						global.open_chapter += 1;
					}
					else if(global.open_chapter == -1)
					{
						global.open_chapter = 1;
					}
				}
				image_xscale = 1;
				image_yscale = 1;
			}
		}
	}
}