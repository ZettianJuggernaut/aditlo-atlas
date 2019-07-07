if(device_mouse_check_button_pressed(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(!instance_exists(obj_the_cat))
			{
				var xx = obj_scroll.x;
				var width = sprite_get_width(spr_scroll)/2;
				if(x < xx - width || x > xx + width)
				{
					if(image_xscale == 1)
					{
						image_xscale = 1.01;
						image_yscale = 1.01;
					}
				}
			}
		}
	}
}
else if(device_mouse_check_button_released(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/2 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/2)
	{
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(image_xscale == 1.01)
			{
				ds_list_add(global.list_cat,"HMM, I BELIEVE","THAT UNLOCKED YOU","THE ARTIST SKIN.","(IS NO ONE ELSE TIRED","OF THE PINEAPPLE","JOKE YET?)");
				instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-100,obj_the_cat);
				ini_open("save.ini");
				ini_write_real("achiev","pineapple",1);
				ini_close();
				global.pineapple = 1;
				script_execute(unlock_skin,28,"skin29");
				if(achievement_available())
				{
					//Complete Collection Achiev
					achievement_increment("CgkIpuaHvKwHEAIQDg",1);
				}
				instance_destroy();
			}
		}
	}
}
