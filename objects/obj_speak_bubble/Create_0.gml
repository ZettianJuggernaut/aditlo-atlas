alarm_set(0,1);
depth = obj_the_cat.depth - 1;
if(global.currently_playing == 3)
{
	instance_destroy(obj_swipe_senor);
	if(global.sound == 1)
	{
		audio_stop_sound(sd_swipe);
	}
}