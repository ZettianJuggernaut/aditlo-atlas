if(global.windspeed == -1)
{
  instance_create(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + sprite_get_width(spr_bg_fog)/3,random_range(camera_get_view_y(view_camera[0]) + 100,camera_get_view_height(view_camera[0])),obj_bg_fog);
}
else
{
  instance_create(camera_get_view_x(view_camera[0]) - sprite_get_width(spr_bg_fog)/3,random_range(camera_get_view_y(view_camera[0]) + 100,camera_get_view_height(view_camera[0])),obj_bg_fog);
}
instance_destroy();

