image_alpha -= 0.05;
if(image_alpha > 0)
{
  alarm_set(0,1);
}
else
{
  instance_destroy();
}