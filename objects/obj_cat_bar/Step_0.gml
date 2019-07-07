if(device_mouse_check_button_released(0,mb_left))
{
	if(device_mouse_x(0) >= x - sprite_get_width(spr_cat_bar)/2 && device_mouse_x(0) <= x - sprite_get_width(spr_cat_bar)/2 + sprite_get_width(spr_button_switch))
	{
		if(device_mouse_y(0) >= y && device_mouse_y(0) <= y + sprite_get_width(spr_button_switch))
		{
			if(instance_exists(obj_the_cat))
			{
				instance_destroy(obj_the_cat);
				instance_destroy(obj_speak_bubble);
				instance_create_depth(camera_get_view_x(view_camera[0]) + 170,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + sprite_get_height(spr_ad_box),-10,obj_ad_box);
				ds_list_destroy(global.list_cat);
				global.active_cat = 0;
				ini_open("save.ini");
				ini_write_real("perfs","activecat",0);
				ini_close();
				hspeed = -10;
			}
		}
	}
}