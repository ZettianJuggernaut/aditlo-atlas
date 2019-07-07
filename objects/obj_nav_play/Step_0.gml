if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(spr_nav_play)/2 && device_mouse_x(0) <= x + sprite_get_width(spr_nav_play)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(spr_nav_play)/2 && device_mouse_y(0) <= y + sprite_get_height(spr_nav_play)/2)
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
		if(device_mouse_x(0) < x - sprite_get_width(spr_nav_play)/2|| device_mouse_x(0) > x + sprite_get_width(spr_nav_play)/2 || device_mouse_y(0) < y - sprite_get_height(spr_nav_play)/2 || device_mouse_y(0) > y + sprite_get_height(spr_nav_play)/2)
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
	if(device_mouse_x(0) >= x - sprite_get_height(spr_nav_play)/2 && device_mouse_x(0) <= x + sprite_get_width(spr_nav_play)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(spr_nav_play)/2 && device_mouse_y(0) <= y + sprite_get_height(spr_nav_play)/2)
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				image_yscale = 1;
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				global.goto_room = rm_menu_chapter;
				instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
			}
		}
	}
}