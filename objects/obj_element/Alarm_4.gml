/// @description Fade In
image_alpha += 0.01;
if(image_alpha == 1)
{
    alarm_set(5,1);
}
else
{
    alarm_set(4,1);
}