if(obj_sequence_current_sm.image_index == 5 && !instance_exists(obj_fade_black) && !instance_exists(obj_speak_bubble))
{
  //Tilt Press
  if(device_mouse_check_button(0,mb_left))
  {
  if(device_mouse_x(0) < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
    {
      global.tilt_x -= .25;
      global.tilt_angle += .05;
    }
    else if(device_mouse_x(0) > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
    {
      global.tilt_x += .25;
      global.tilt_angle -= .05;
    }
  }

  //Tilt Read
  if(global.invert_tilt == 0)
  {
    global.tilt_x += device_get_tilt_y()*2;
  }
  if(global.invert_tilt == 1)
  {
    global.tilt_x -= device_get_tilt_y()*2;
  }
}
x = global.tilt_x;

if(x <= 480 || x >= 870)
{
  instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
}

