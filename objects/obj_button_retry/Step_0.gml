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
		if(device_mouse_x(0) < x - sprite_get_width(sprite_index)/2|| device_mouse_x(0) > x + sprite_get_width(sprite_index)/2 || device_mouse_y(0) < y - sprite_get_height(sprite_index)/2 || device_mouse_y(0) > y + sprite_get_height(sprite_index)/2)
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
		if(device_mouse_y(0) >= y - sprite_get_height(sprite_index)/2 && device_mouse_y(0) <= y + sprite_get_height(sprite_index)/2)
		{
			if(image_xscale == 1.15)
			{
				image_xscale = 1;
				image_yscale = 1;
				if(room == rm_game_modes)
				{
					if(global.currently_playing == 1)
					{
						global.ad_pop -= 1;
					}
					if(global.currently_playing != 4)
					{
						ds_list_destroy(global.list_drop_farleft);
						ds_list_destroy(global.list_drop_left);
						ds_list_destroy(global.list_drop_right);
						ds_list_destroy(global.list_drop_farright);
						ds_list_destroy(global.list_sequencing);
						ds_list_destroy(global.list_scored);
						ds_list_destroy(global.list_swipes);
						ds_list_destroy(global.list_token_black);
						ds_list_destroy(global.list_token_blue);
						ds_list_destroy(global.list_token_green);
						ds_list_destroy(global.list_token_red);
						ds_list_destroy(global.list_token_white);
						ds_list_destroy(global.list_token_yellow);
					}
				}
				else if(room == rm_inlvl)
				{
					if(global.won == true && global.currently_playing == 1)
					{
						global.currentlvl -= 1;
					}
				}
				audio_stop_all();
				if(global.sound == 1)
				{
					audio_play_sound(sd_button_release,10,0);
				}
				global.goto_room = rm_game_modes;
				instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
			}
		}
	}
}