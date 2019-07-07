if(device_mouse_check_button_released(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(spr_ad_x) && device_mouse_x(0) <= x)
	{
		if(device_mouse_y(0) >= y && device_mouse_y(0) <= y + sprite_get_height(spr_ad_x))
		{
			instance_destroy();
		}
	}
}