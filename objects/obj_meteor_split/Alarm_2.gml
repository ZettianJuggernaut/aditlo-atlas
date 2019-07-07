///Fade Out
image_alpha -= 0.05;
image_xscale -= 0.01;
image_yscale -= 0.01;
if(image_alpha > 0)
{
  alarm_set(2,1);
}
else
{
  instance_destroy();
}

