if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index) && device_mouse_x(0) <= x + sprite_get_width(sprite_index))
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index) && device_mouse_y(0) <= y + sprite_get_height(sprite_index))
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
else if(device_mouse_check_button(0,mb_left))
{
	if(image_xscale == 1.15)
	{
		if(device_mouse_x(0) < x - sprite_get_width(sprite_index) || device_mouse_x(0) > x + sprite_get_width(sprite_index) || device_mouse_y(0) < y - sprite_get_height(sprite_index) || device_mouse_y(0) > y + sprite_get_height(sprite_index))
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
	if(device_mouse_x(0) > x - sprite_get_height(sprite_index) && device_mouse_x(0) < x + sprite_get_height(sprite_index))
	{
		if(device_mouse_y(0) > y - sprite_get_height(sprite_index) && device_mouse_y(0) < y + sprite_get_height(sprite_index))
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				image_yscale = 1;
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				if(!instance_exists(obj_pause_senor))
				{
					instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-130,obj_pause_senor);
					audio_pause_all();
				}
			}
		}
	}
}