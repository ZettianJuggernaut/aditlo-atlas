if(device_mouse_check_button_released(0,mb_left))
{
	if(global.cam_moving == true)
	{
		global.cam_moving = false;
	}
}