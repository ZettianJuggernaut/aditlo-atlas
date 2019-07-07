image_speed = 0;
image_alpha = 0;
image_index = irandom(2);
if(global.windspeed == -1)
{
  hspeed = -1.5;
}
else if(global.windspeed == 1)
{
  hspeed = 1.5;
}
else
{
  hspeed = .5;
}
alarm_set(0,1);

