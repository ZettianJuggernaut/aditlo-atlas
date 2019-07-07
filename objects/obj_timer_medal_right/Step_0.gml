if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(image_xscale == 1)
			{
				image_xscale = 1.01;
				image_yscale = 1.01;
			}
		}
	}
}
else if(device_mouse_check_button(0,mb_left))
{
	if(image_xscale == 1.01)
	{
		if(device_mouse_x(0) < x || device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y - sprite_get_height(sprite_index)/2 || device_mouse_y(0) > y + sprite_get_height(sprite_index)/2)
		{
			image_xscale = 1;
			image_yscale = 1;
		}
	}
}
else if(device_mouse_check_button_released(0,mb_left))
{
	if(device_mouse_x(0) >= x && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(image_xscale == 1.01)
			{
				global.dream_world = 3;
				ini_open("save.ini");
				ini_write_real("achiev","unlockdreamworld",3);
				ini_close();
				repeat(5)
				{
					part_particles_create(global.ps_scored,random_range(x - sprite_get_width(sprite_index)/2,x + sprite_get_width(sprite_index)/2),random_range(y - sprite_get_height(sprite_index)/2,y + sprite_get_height(sprite_index)/2),global.pt_scored,1)
				}
				instance_destroy(obj_timer_medal_left);
				instance_destroy();
			}
		}
	}
}