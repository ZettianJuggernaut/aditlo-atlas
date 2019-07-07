///Press
if(device_mouse_check_button_pressed(0,mb_left))
{
	x = device_mouse_x(0);
	y = device_mouse_y(0);
	if(!instance_place(x,y,obj_track_cover))
	{
		instance_create(x,y,obj_swipe_glow);
	}
	if(!instance_exists(obj_eod_swipe_wall))
	{
		repeat(8)
		{
		instance_create_depth(device_mouse_x(0),device_mouse_y(0),depth,obj_eod_swipe_wall);
		}
	}
}
else if(device_mouse_check_button(0,mb_left))
{
	x = device_mouse_x(0);
	y = device_mouse_y(0);
	if(!instance_place(x,y,obj_track_cover))
	{
		instance_create(x,y,obj_swipe_glow);
	}
}