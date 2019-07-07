image_angle += .3;
if(image_angle < 6)
{
	alarm_set(1,1);
}
else
{
	alarm_set(0,1);
}