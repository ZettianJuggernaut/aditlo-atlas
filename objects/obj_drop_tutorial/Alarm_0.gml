///@descr Drop Kill
if(vspeed == 0)
{
	var drop_color = image_index;
	if(!instance_exists(obj_burn))
	{
		with(instance_create_depth(x,y,depth,obj_token_broken_left))
		{
			image_index = drop_color;
		}
		with(instance_create_depth(x,y,depth,obj_token_broken_right))
		{
			image_index = drop_color;
		}
		if(global.sound == 1)
		{
			audio_play_sound(sd_token_break,9,0);
		}
	}
	with(instance_nearest(x,y,obj_token_crack))
	{
		instance_destroy();
	}
	if(image_index == 1 && instance_exists(obj_halo_blue))
	{
		ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
		if(ds_list_find_index(global.list_token_blue,obj_sequence_current.image_index) > -1 && ds_list_find_index(global.list_token_frozen,1) == -1)
		{
			with(instance_nearest(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_halo_blue))
			{
				instance_destroy();
			}
			ds_list_add(global.list_swipes,9);
			with(obj_swipe_glow)
			{
				image_blend = c_red;
			}
			if(global.sound == 1)
			{
				audio_play_sound(sd_swipe_red,9,0);
			}
		}
		with(instance_nearest(x,y,obj_halo_blue))
		{
			instance_destroy();
		}
	}
	else if(image_index == 2 && instance_exists(obj_halo_green))
	{
		ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
		if(ds_list_find_index(global.list_token_green,obj_sequence_current.image_index) > -1 && ds_list_find_index(global.list_token_frozen,2) == -1)
		{
			with(instance_nearest(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_halo_green))
			{
				instance_destroy();
			}
			ds_list_add(global.list_swipes,9);
			with(obj_swipe_glow)
			{
				image_blend = c_red;
			}
			if(global.sound == 1)
			{
				audio_play_sound(sd_swipe_red,9,0);
			}
		}
		with(instance_nearest(x,y,obj_halo_green))
		{
			instance_destroy();
		}
	}
	else if(image_index == 3 && instance_exists(obj_halo_red))
	{
		ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
		if(ds_list_find_index(global.list_token_red,obj_sequence_current.image_index) > -1 && ds_list_find_index(global.list_token_frozen,3) == -1)
		{
			with(instance_nearest(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_halo_red))
			{
				instance_destroy();
			}
			ds_list_add(global.list_swipes,9);
			with(obj_swipe_glow)
			{
				image_blend = c_red;
			}
			if(global.sound == 1)
			{
				audio_play_sound(sd_swipe_red,9,0);
			}
		}
		with(instance_nearest(x,y,obj_halo_red))
		{
			instance_destroy();
		}
	}
	else if(image_index == 4 && instance_exists(obj_halo_white))
	{
		ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
		if(ds_list_find_index(global.list_token_white,obj_sequence_current.image_index) > -1 && ds_list_find_index(global.list_token_frozen,4) == -1)
		{
			with(instance_nearest(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_halo_white))
			{
				instance_destroy();
			}
			ds_list_add(global.list_swipes,9);
			with(obj_swipe_glow)
			{
				image_blend = c_red;
			}
			if(global.sound == 1)
			{
				audio_play_sound(sd_swipe_red,9,0);
			}
		}
		with(instance_nearest(x,y,obj_halo_white))
		{
			instance_destroy();
		}
	}
	else if(image_index == 5 && instance_exists(obj_halo_yellow))
	{
		ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
		if(ds_list_find_index(global.list_token_yellow,obj_sequence_current.image_index) > -1 && ds_list_find_index(global.list_token_frozen,5) == -1)
		{
			with(instance_nearest(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_halo_yellow))
			{
				instance_destroy();
			}
			ds_list_add(global.list_swipes,9);
			with(obj_swipe_glow)
			{
				image_blend = c_red;
			}
			if(global.sound == 1)
			{
				audio_play_sound(sd_swipe_red,9,0);
			}
		}
		with(instance_nearest(x,y,obj_halo_yellow))
		{
			instance_destroy();
		}
	}
	instance_destroy();
}