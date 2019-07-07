image_speed = 0;
if(obj_cam.x == 2100)
{
  if(x == camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2)
  {
    image_index = 1;
  }
  else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2)
  {
    image_index = 2;
  }
}
else if(obj_cam.x == 3510)
{
  if(x == camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2)
  {
    image_index = 3;
  }
  else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2)
  {
    image_index = 4;
  }
}
else if(obj_cam.x == 4920)
{
  if(x == camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2)
  {
    image_index = 5;
  }
  else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2)
  {
    image_index = 6;
  }
}
else if(obj_cam.x == 6330)
{
  image_index = 7;
}

