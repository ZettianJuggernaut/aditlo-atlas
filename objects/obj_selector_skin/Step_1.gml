if(!instance_exists(obj_the_cat))
{
	if(device_mouse_check_button_released(0,mb_left))
	{
		if(global.cam_moving == false)
		{
			if(device_mouse_x(0) >= x - sprite_get_width(sprite_index)/3.8 && device_mouse_x(0) <= x + sprite_get_width(sprite_index)/3.8)
			{
				if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/3.8 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/3.8)
				{
					if(global.sound == 1)
					{
						audio_play_sound(sd_button_release,10,0);
					}
					var temp_skin = image_index;
					with(obj_skin_large)
					{
						image_index = temp_skin;
						if(ds_list_find_index(global.list_locked_skins,temp_skin) != -1)
						{
							repeat(2)
							{
								image_blend = c_black;
							}
						}
						else
						{
							image_blend = -1;
						}
					}
					if(!instance_exists(obj_selected_skin))
					{
						instance_create_depth(x,y,depth-1,obj_selected_skin);
					}
					else
					{
						obj_selected_skin.x = x;
					}
					if(ds_list_find_index(global.list_locked_skins,temp_skin) == -1)
					{
						if(!instance_exists(obj_button_select))
						{
							instance_create_depth(obj_button_purchase.x,obj_button_purchase.y,-14,obj_button_select);
							instance_destroy(obj_button_purchase);
						}
						else
						{
							with(obj_button_select)
							{
								if(obj_skin_large.image_index == global.current_skin)
								{
									image_index = 0;
								}
								else if(obj_skin_large.image_index != global.current_skin)
								{
									image_index = 1;
								}
							}
						}
					}
					else if(ds_list_find_index(global.list_unlocked_skins,temp_skin) == -1)
					{
						if(!instance_exists(obj_button_purchase))
						{
							instance_create_depth(obj_button_select.x,obj_button_select.y,-14,obj_button_purchase);
							instance_destroy(obj_button_select);
						}
					}
				}
			}
		}
	}
}