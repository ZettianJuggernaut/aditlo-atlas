if(device_mouse_check_button_released(0,mb_left))
{
	var width, height;
	width = ((sprite_get_width(sprite_index)/2)/10)*7;
	height = ((sprite_get_height(sprite_index)/2)/10)*7;
	if(device_mouse_x(0) < x - width || device_mouse_x(0) > x + width || device_mouse_y(0) < y - height || device_mouse_y(0) > y + height)
	{
		if(vspeed == 0)
		{
			with(instance_nearest(x,y-180,obj_text_creators_short))
			{
				instance_destroy();
			}
			with(obj_text_creators_long)
			{
				instance_destroy();
			}
			vspeed = -27.5;
			if(global.sound == 1)
			{
				audio_play_sound(sd_scroll,10,0);
			}
			global.about = 0;
		}
	}
}