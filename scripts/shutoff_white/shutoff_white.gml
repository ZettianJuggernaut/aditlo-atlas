if(token_on)
{
	if(ds_list_find_index(global.list_token_white,ds_list_find_value(global.list_sequencing,0)) == -1)
	{
		instance_destroy(obj_windchange);
		global.windspeed = 0;
		if(global.sound == 1 && !audio_is_playing(sd_wind))
		{
			audio_stop_sound(sd_wind);
		}
	}
}