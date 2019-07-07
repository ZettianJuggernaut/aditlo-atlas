/// @description Tap Fade In
image_alpha += 0.01;
if(image_alpha < 1)
{
	alarm_set(0,1);
}
else
{
	alarm_set(2,1);
}