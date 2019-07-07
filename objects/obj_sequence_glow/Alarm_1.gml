/// @description Fade In
image_alpha += 0.025;
if(image_alpha == 1)
{
	alarm_set(0,1);
}
else
{
	alarm_set(1,1);
}