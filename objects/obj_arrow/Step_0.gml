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
		if(device_mouse_x(0) < x - sprite_get_width(sprite_index)/2 || device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y - sprite_get_height(sprite_index)/2 || device_mouse_y(0) > y + sprite_get_height(sprite_index)/2)
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
	var arrow_width, arrow_height;
	arrow_width = sprite_get_width(spr_arrow)/2;
	arrow_height = sprite_get_height(spr_arrow)/2;
	if(device_mouse_x(0) > x - arrow_width && device_mouse_x(0) < x + arrow_width)
	{
		if(device_mouse_y(0) > y - arrow_height && device_mouse_y(0) < y + arrow_height)
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				image_yscale = 1;
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				//Left Arrow
				if(image_angle == 180)
				{
					var bg_skin = obj_selector_bg.image_index - 1;
					while(ds_list_find_index(global.list_bg_skins,bg_skin) == -1 && bg_skin > 0)
					{
						bg_skin--;
					}
					if(bg_skin < 0)
					{
						ds_list_sort(global.list_bg_skins,false);
						bg_skin = ds_list_find_value(global.list_bg_skins,0);
					}
					if(ds_list_find_index(global.list_bg_skins,bg_skin) != -1)
					{
						with(obj_selector_bg)
						{
							image_index = bg_skin;
						}
					}
				}
				//Right Arrow
				else if(image_angle == 0)
				{
					var bg_skin = obj_selector_bg.image_index + 1;
					ds_list_sort(global.list_bg_skins,false);
					while(ds_list_find_index(global.list_bg_skins,bg_skin) == -1 && bg_skin < ds_list_find_value(global.list_bg_skins,0))
					{
						bg_skin++;
					}
					if(bg_skin > ds_list_find_value(global.list_bg_skins,0))
					{
						ds_list_sort(global.list_bg_skins,true);
						bg_skin = ds_list_find_value(global.list_bg_skins,0);
					}
					if(ds_list_find_index(global.list_bg_skins,bg_skin) != -1)
					{
						with(obj_selector_bg)
						{
							image_index = bg_skin;
						}
					}
				}
			}
		}
	}
}