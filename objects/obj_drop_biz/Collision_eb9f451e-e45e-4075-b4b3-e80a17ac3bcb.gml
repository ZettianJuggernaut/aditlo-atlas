if(path_speed > 0)
{
	if(alarm_get(1) == -1)
	{
		if(x > camera_get_view_x(view_camera[0]) && x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))
		{
			instance_create_depth(x,y,depth-1,obj_glint);
			alarm_set(1,60);
		}
	}
}