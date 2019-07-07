/// @description Fade Out
image_alpha -= 0.01;
if(image_alpha == 0.6)
{
	alarm_set(1,1);
}
else
{
	alarm_set(0,1);
}