if(token_on)
{
	if(ds_list_find_index(global.list_token_yellow,ds_list_find_value(global.list_sequencing,0)) == -1)
	{
		with(obj_sunbleam)
		{
			alarm_set(0,-1);
			alarm_set(1,1);
		}
		with(obj_sun_affect)
		{
			alarm_set(0,-1);
			alarm_set(1,1);
		}
	}
}