///Release
if(device_mouse_check_button_released(0,mb_left))
{
  global.swipe_angle = -1;
  with(obj_eod_swipe_wall)
  {
    instance_destroy();
  }
  with(obj_swipe_glow)
  {
    instance_destroy();
  }
}

