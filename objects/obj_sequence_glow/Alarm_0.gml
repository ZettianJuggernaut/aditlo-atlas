/// @description Fade Out
image_alpha -= 0.025;
if(image_alpha == 0.5)
{
	alarm_set(1,1)
}
else
{
	alarm_set(0,1);
}