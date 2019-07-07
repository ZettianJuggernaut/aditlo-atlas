if(y == camera_get_view_y(view_camera[0]) - 40)
{
  x = random_range(camera_get_view_x(view_camera[0]),camera_get_view_width(view_camera[0]));
}
else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40)
{
  y = random_range(camera_get_view_y(view_camera[0]),camera_get_view_height(view_camera[0]));
}
else if(y == camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40)
{
  x = random_range(camera_get_view_x(view_camera[0]),camera_get_view_width(view_camera[0]));
}
else if(x == camera_get_view_x(view_camera[0]) - 40)
{
  y = random_range(camera_get_view_y(view_camera[0]),camera_get_view_height(view_camera[0]));
}
alarm_set(0,240);
if(y == camera_get_view_y(view_camera[0]) - 40 && ds_list_find_value(global.list_drop_farleft,0) == 6)
{
    instance_create(x,y,obj_ghost);
    ds_list_delete(global.list_drop_farleft,0);
    ds_list_add(global.list_drop_farleft,irandom(6));
}
else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40 && ds_list_find_value(global.list_drop_left,0) == 6)
{
    instance_create(x,y,obj_ghost);
    ds_list_delete(global.list_drop_left,0);
    ds_list_add(global.list_drop_left,irandom(6));
}
else if(y == camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40 && ds_list_find_value(global.list_drop_right,0) == 6)
{
    instance_create(x,y,obj_ghost);
    ds_list_delete(global.list_drop_right,0);
    ds_list_add(global.list_drop_right,irandom(6));
}
else if(x == camera_get_view_x(view_camera[0]) - 40 && ds_list_find_value(global.list_drop_farright,0) == 6)
{
    instance_create(x,y,obj_ghost);
    ds_list_delete(global.list_drop_farright,0);
    ds_list_add(global.list_drop_farright,irandom(6));
}
else
{
	instance_create(x,y,obj_drop_biz);
}