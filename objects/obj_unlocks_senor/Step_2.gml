if(device_mouse_check_button_released(0,mb_left))
{
	if(!instance_exists(obj_the_cat))
	{
		if(alarm_get(0) > 1)
		{
			alarm_set(0,1);
		}
	}
}