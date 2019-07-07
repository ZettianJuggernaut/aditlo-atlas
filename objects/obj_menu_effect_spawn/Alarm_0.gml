if(global.current_bg_skin < 2)
{
	x = random_range(camera_get_view_x(view_camera[0]) + 50,camera_get_view_width(view_camera[0]) - 50);
	if(global.current_bg_skin == 0)
	{
		instance_create_depth(x,y,-9,obj_leaf);
		alarm_set(0,random_range(220,320));
	}
	else if(global.current_bg_skin == 1)
	{
		instance_create_depth(x,y,-6,obj_meteor_mini);
		alarm_set(0,random_range(100,180));
	}
}
else if(global.current_bg_skin == 2)
{
	var spawn_position = irandom(3);
	if(spawn_position == 0)
	{
		x = random_range(camera_get_view_x(view_camera[0]) + 50,camera_get_view_width(view_camera[0]) - 50);
		y = camera_get_view_y(view_camera[0]) - 40;
	}
	else if(spawn_position == 1)
	{
		x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40;
		y = random_range(camera_get_view_y(view_camera[0]) + 50,camera_get_view_height(view_camera[0]) - 50);
	}
	else if(spawn_position == 2)
	{
		x = random_range(camera_get_view_x(view_camera[0]) + 50,camera_get_view_width(view_camera[0]) - 50);
		y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40;
	}
	else if(spawn_position == 3)
	{
		x = camera_get_view_x(view_camera[0]) - 40;
		y = random_range(camera_get_view_y(view_camera[0]) + 50,camera_get_view_height(view_camera[0]) - 50);
	}
	instance_create_depth(x,y,-9,obj_mm_token);
	alarm_set(0,random_range(160,240));
}