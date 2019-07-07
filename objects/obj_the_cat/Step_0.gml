if(device_mouse_check_button_released(0,mb_right))
{
  var cat_width, cat_height;
  cat_width = sprite_get_width(spr_cat)/2;
  cat_height = sprite_get_height(spr_cat)/2;
  if(device_mouse_x(0) >= x - cat_width && device_mouse_x(0) <= x + cat_width)
  {
    if(device_mouse_y(0) >= y - cat_height && device_mouse_y(0) <= y + cat_height)
    {
      global.cat_active = 0;
    }
  }
}