/// @description Tap to Continue
if(device_mouse_check_button_released(0,mb_right))
{
	alarm_set(1,1);
	alarm_set(0,-1);
	alarm_set(2,-1);
}