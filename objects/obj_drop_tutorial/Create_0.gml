image_speed = 0;
if(global.remaining == 2)
{
  image_index = 0;
  alarm_set(1,60);
}
else if(ds_list_find_value(global.list_sequencing,0) == 5)
{
  image_index = 5;
}
else if(global.remaining < 2)
{
  if(x == camera_get_view_x(view_camera[0]) + 60)
  {
    image_index = ds_list_find_value(global.list_drop_farleft,0);
    ds_list_add(global.list_drop_farleft,image_index);
    ds_list_delete(global.list_drop_farleft,0);
  }
  if(x == camera_get_view_x(view_camera[0]) + 200)
  {
    image_index = ds_list_find_value(global.list_drop_left,0);
    ds_list_add(global.list_drop_left,image_index);
    ds_list_delete(global.list_drop_left,0);
  }
  if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200)
  {
    image_index = ds_list_find_value(global.list_drop_right,0);
    ds_list_add(global.list_drop_right,image_index);
    ds_list_delete(global.list_drop_right,0);
  }
  if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60)
  {
    image_index = ds_list_find_value(global.list_drop_farright,0);
    ds_list_add(global.list_drop_farright,image_index);
    ds_list_delete(global.list_drop_farright,0);
  }
}
vspeed = random_range(global.fallspeed-1,global.fallspeed+0.5);

