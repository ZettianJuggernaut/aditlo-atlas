/// @description Bruise
if(device_mouse_check_button_pressed(0,mb_left) && global.bruise < 5)
{
	var width = sprite_get_width(sprite_index)/2;
	var height = sprite_get_height(sprite_index);
	if(device_mouse_x(0) > x - width && device_mouse_x(0) < x + width)
	{
		if(device_mouse_y(0) > y - height/2 && device_mouse_y(0) < y + height)
		{
			global.bruise++;
			if(global.bruise == 5)
			{
				if(global.sound == 1)
				{
					audio_play_sound(sd_atlas_hurt,10,0);
				}
			}
		}
	}
	else if(device_mouse_x(0) < x - width || device_mouse_x(0) > x + width || device_mouse_y(0) < y - height/2 || device_mouse_y(0) > y + height)
	{
		global.bruise = 0;
	}
}