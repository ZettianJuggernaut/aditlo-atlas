if(!instance_exists(obj_the_cat))
{
	if(global.sound == 1)
	{
		if(device_mouse_y(0) > 153 && device_mouse_y(0) < 308)
		{
			with(obj_selector_skin)
			{
				if(alarm_get(0) == -1)
				{
					var xx = obj_cam.x;
					var width = sprite_get_width(spr_cover)/2;
					if(x < xx - width || x > xx + width)
					{
						audio_play_sound(choose(sd_gear2,sd_gear3),10,0);
						alarm_set(0,60);
					}
				}
			}
		}
	}
}