image_alpha -= 0.05;
if(image_alpha == 0)
{
  instance_destroy();
}
else
{
  alarm_set(1,1);
}

