if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index) && device_mouse_y(0) <= y)
		{
			if(!instance_exists(obj_the_cat) && global.open_chapter == 0)
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
				if(obj_cam.x == 2100)
				{
					global.open_chapter = 1;
					instance_create_depth(0,0,-50,obj_scroll_big);
					with(obj_selector_cp1)
					{
						alarm_set(0,29);
					}
				}
				else if(obj_cam.x == 3510 && global.farrest_cp > 0)
				{
					global.open_chapter = 2;
					instance_create_depth(0,0,-50,obj_scroll_big);
				}
				else if(obj_cam.x == 4920 && global.farrest_cp > 1)
				{
					global.open_chapter = 3
					instance_create_depth(0,0,-50,obj_scroll_big);
				}
				else if(obj_cam.x == 6330 && global.farrest_cp > 2)
				{
					global.open_chapter = 4;
					instance_create_depth(0,0,-50,obj_scroll_big);
				}
				else if(obj_cam.x == 690)
				{
					global.open_chapter = -1;
					instance_create_depth(0,0,-50,obj_scroll_big);
					with(obj_selector_cp)
					{
						alarm_set(0,29);
					}
				}
				image_xscale = 1;
				image_yscale = 1;
			}
		}
	}
}