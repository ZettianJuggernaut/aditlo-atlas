image_angle += 2;
if(image_angle != 90)
{
	alarm_set(1,1);
}
else
{
	audio_stop_sound(sd_vine);
}