if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(spr_skin_large)/2 && device_mouse_x(0) <= x + sprite_get_width(spr_skin_large)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(spr_skin_large) && device_mouse_y(0) <= y + 20)
		{
			if(!instance_exists(obj_scroll_about))
			{
				image_xscale = 1.15;
			}
		}
	}
}
else if(device_mouse_check_button(0,mb_left))
{
	if(image_xscale == 1.15)
	{
		if(device_mouse_x(0) < x - sprite_get_width(spr_skin_large)/2 || device_mouse_x(0) > x + sprite_get_width(spr_skin_large)/2 || device_mouse_y(0) < y - sprite_get_height(spr_skin_large) || device_mouse_y(0) > y + 20)
		{
			image_xscale = 1;
		}
	}
}
else if(device_mouse_check_button_released(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(spr_skin_large)/2 && device_mouse_x(0) <= x + sprite_get_width(spr_skin_large)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(spr_skin_large) && device_mouse_y(0) <= y + 20)
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				if(x < 900)
				{
					global.about = 1;
				}
				else if(x > 1000)
				{
					global.about = 2;
				}
				instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) - sprite_get_height(spr_scroll_big)/2 + 100,-10,obj_scroll_about)
			}
		}
	}
}