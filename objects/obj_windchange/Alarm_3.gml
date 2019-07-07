if(global.windspeed > 0)
{
  instance_create(camera_get_view_x(view_camera[0]) - random(100),camera_get_view_y(view_camera[0]) + random_range(100,camera_get_view_height(view_camera[0]) - 100),obj_leaf_lvl);
}
if(global.windspeed < 0)
{
  instance_create(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + random(100),camera_get_view_y(view_camera[0]) + random_range(100,camera_get_view_height(view_camera[0]) - 100),obj_leaf_lvl);
}
alarm_set(3,random_range(50,100));