/// @description Fade Out
image_alpha -= 0.01;
if(image_alpha == .5)
{
    alarm_set(4,1);
}
else
{
	alarm_set(5,1);
}