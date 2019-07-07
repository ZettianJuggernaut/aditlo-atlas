if(device_mouse_check_button_released(0,mb_left))
{
  var width, height;
  width = sprite_get_width(sprite_index)/2.4;
  height = sprite_get_height(sprite_index)/2.4;
  if(device_mouse_x(0) > x - width && device_mouse_x(0) < x + width)
  {
    if(device_mouse_y(0) > y - height && device_mouse_y(0) < y + height)
    {
      if(image_index != global.current_bg_skin)
      {
        global.current_bg_skin = image_index;
		ini_open("save.ini");
		ini_write_real("perfs","bg_skin",image_index);
		ini_close();
        global.goto_room = rm_menu_main;
		audio_play_sound(sd_cam_slide,10,0);
        instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
      }
    }
  }
}

