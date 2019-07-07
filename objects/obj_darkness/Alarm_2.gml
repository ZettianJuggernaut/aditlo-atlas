///Fade Out
image_alpha -= .01;
if(image_alpha == 0)
{
  instance_destroy();
}
else
{
  alarm_set(2,1);
}

