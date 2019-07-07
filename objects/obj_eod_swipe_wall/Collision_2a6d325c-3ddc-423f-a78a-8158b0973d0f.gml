if(image_angle == 90 || image_angle = 270)
{
  global.swipe_angle = 0;
}
else if(image_angle == 0 || image_angle = 180)
{
  global.swipe_angle = 1;
}
else if(image_angle == 45 || image_angle = 225)
{
  global.swipe_angle = 2;
}
else if(image_angle == 135 || image_angle = 315)
{
  global.swipe_angle = 3;
}

with(obj_eod_swipe_wall)
{
  x = device_mouse_x(0);
  y = device_mouse_y(0);
}

