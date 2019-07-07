///Cloud Creation

if(global.windspeed == -1)
{
  instance_create(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + sprite_get_width(spr_darkness_cloud),random_range(100,camera_get_view_height(view_camera[0])),obj_darkness_cloud);
}
else
{
  instance_create(0,random_range(100,camera_get_view_height(view_camera[0])),obj_darkness_cloud);
}

