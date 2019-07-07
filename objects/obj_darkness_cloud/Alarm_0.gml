///Fade Out
image_alpha -= 0.01
if(image_alpha == 0)
{
  instance_destroy();
}
else
{
  alarm_set(0,1);
}

