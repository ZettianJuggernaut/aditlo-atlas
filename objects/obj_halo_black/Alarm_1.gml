image_alpha += 0.01
image_angle += 1;
if(image_alpha == 1)
{
    alarm_set(0,1);
}
else
{
    alarm_set(1,1);
}