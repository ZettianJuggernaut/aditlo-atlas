image_speed = 0;
var go_speed = random_range(global.fallspeed-1,global.fallspeed+0.5)
if(y == camera_get_view_y(view_camera[0]) - 40)
{
	path_start(choose(path_drop_top1,path_drop_top2),go_speed,path_action_continue,false);
	image_index = ds_list_find_value(global.list_drop_farleft,0);
	ds_list_delete(global.list_drop_farleft,0);
	if(ds_list_find_index(global.list_drop_farleft,6) == -1)
    {
		ds_list_add(global.list_drop_farleft,irandom(6));
    }
    else
    {
		ds_list_add(global.list_drop_farleft,irandom(5));
    }
}
else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40)
{
	path_start(choose(path_drop_right1,path_drop_right2),go_speed,path_action_continue,false);
	image_index = ds_list_find_value(global.list_drop_left,0);
	ds_list_delete(global.list_drop_left,0);
	if(ds_list_find_index(global.list_drop_left,6) == -1)
    {
		ds_list_add(global.list_drop_left,irandom(6));
    }
    else
    {
		ds_list_add(global.list_drop_left,irandom(5));
    }
}
else if(y == camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40)
{
	path_start(choose(path_drop_bot1,path_drop_bot2),go_speed,path_action_continue,false);
	image_index = ds_list_find_value(global.list_drop_right,0);
	ds_list_delete(global.list_drop_right,0);
	if(ds_list_find_index(global.list_drop_right,6) == -1)
    {
		ds_list_add(global.list_drop_right,irandom(6));
    }
    else
    {
		ds_list_add(global.list_drop_right,irandom(5));
    }
}
else if(x == camera_get_view_x(view_camera[0]) - 40)
{
	path_start(choose(path_drop_left1,path_drop_left2),go_speed,path_action_continue,false);
	image_index = ds_list_find_value(global.list_drop_farright,0);
	ds_list_delete(global.list_drop_farright,0);
	if(ds_list_find_index(global.list_drop_farright,6) == -1)
    {
		ds_list_add(global.list_drop_farright,irandom(6));
    }
    else
    {
		ds_list_add(global.list_drop_farright,irandom(5));
    }
}