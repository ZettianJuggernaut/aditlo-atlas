///Swiping
if(device_mouse_check_button_pressed(0,mb_left))
{
	x = device_mouse_x(0);
	y = device_mouse_y(0);
	if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) != -1)
	{
		if(!instance_place(x,y,obj_track_cover) && ds_list_find_index(global.list_swipes,9) == -1)
		{
			instance_create(x,y,obj_swipe_glow);
		}
		if(!instance_exists(obj_swipe_senor_cone))
		{
			instance_create(device_mouse_x(0),device_mouse_y(0),obj_swipe_senor_cone);
			instance_create(device_mouse_x(0),device_mouse_y(0),obj_swipe_senor_wall);
			script_execute(swipe_pattern_setup);
		}
	}
	if(global.sound == 1)
	{
		audio_play_sound(sd_swipe,9,1);
	}
}
else if(device_mouse_check_button(0,mb_left))
{
	if(instance_exists(obj_swipe_senor_wall))
	{
		x = device_mouse_x(0);
		y = device_mouse_y(0);
		if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) != -1)
		{
			if(!instance_place(x,y,obj_track_cover) && ds_list_find_index(global.list_swipes,9) == -1)
			{
				if(x != obj_swipe_glow.x && y != obj_swipe_glow.y)
				{
					instance_create(x,y,obj_swipe_glow);
				}
			}
		}
	}
}