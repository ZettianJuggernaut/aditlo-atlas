if(ds_list_find_index(global.list_meteor_spawn,x) != -1)
{
  instance_create_depth(x,y,depth,obj_meteor);
  ds_list_delete(global.list_meteor_spawn,ds_list_find_index(global.list_meteor_spawn,x));
}
if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 100)
{
  alarm_set(1,10);
}
alarm_set(0,150);