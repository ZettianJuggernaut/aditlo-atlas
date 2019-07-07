if(token_on)
{
	if(ds_list_find_index(global.list_token_blue,ds_list_find_value(global.list_sequencing,0)) == -1)
	{
		global.grab_width += 10;
		global.grab_height += 10;
		instance_destroy(obj_rain_spawn);
		if(global.sound == 1)
		{
			audio_stop_sound(sd_rain);
		}
	}
}