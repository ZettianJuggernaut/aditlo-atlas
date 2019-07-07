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
		}
	}
}
else if(device_mouse_check_button_released(0,mb_left))
{
	if(image_xscale == 1.15)
	{
		var width, height;
		width = sprite_get_width(sprite_index)/2;
		height = sprite_get_height(sprite_index)/2;
		if(device_mouse_x(0) > x - width && device_mouse_x(0) < x + width)
		{
			if(device_mouse_y(0) > y - height && device_mouse_y(0) < y + height)
			{
				image_xscale = 1;
				image_yscale = 1;
				move_towards_point(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5 + 136,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 16,6);
				alarm_set(0,point_distance(x,y,camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5 + 136,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 16)/6);
			}
		}
	}
}