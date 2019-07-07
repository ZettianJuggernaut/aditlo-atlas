if(token_on)
{
	if(ds_list_find_index(global.list_token_green,ds_list_find_value(global.list_sequencing,0)) == -1)
	{
		with(obj_vine_right)
		{
			hspeed = 6;
		}
		with(obj_vine_left)
		{
			hspeed = -6;
		}
		if(audio_is_playing(sd_vine))
		{
			audio_stop_sound(sd_vine);
		}
	}
}