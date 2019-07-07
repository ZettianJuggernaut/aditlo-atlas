///Swipe Release
if(device_mouse_check_button_released(0,mb_left))
{
    instance_destroy(obj_swipe_senor_cone);
	instance_destroy(obj_swipe_senor_wall);
	instance_destroy(obj_swipe_glow);
	script_execute(sequence_glow_setup);
	ds_list_clear(global.list_swipes);
	if(global.sound == 1)
	{
		audio_stop_sound(sd_swipe);
	}
}