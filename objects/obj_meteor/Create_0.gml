image_speed = 0;
image_index = irandom(3);
vspeed = random_range(4,5.5);
if(x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
{
  hspeed = random(1.5);
}
else if(x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
{
  hspeed = random(-1.5);
}
alarm_set(0,2);

