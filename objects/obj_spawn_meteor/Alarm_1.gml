var add_spawn, list_max;
if(global.time_remaining < 60)
{
  list_max = irandom_range(3,4);
}
else if(global.time_remaining < 180)
{
  list_max = irandom_range(2,3);
}
else if(global.time_remaining < 270)
{
  list_max = irandom_range(1,2);
}
else
{
  list_max = 1;
}
do
{
  add_spawn = choose(camera_get_view_x(view_camera[0]) + 100,camera_get_view_x(view_camera[0]) + 240,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 240,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 100);
  if(ds_list_find_index(global.list_meteor_spawn,add_spawn) == -1)
  {
    ds_list_add(global.list_meteor_spawn,add_spawn);
  }
}
until(ds_list_size(global.list_meteor_spawn) == list_max);