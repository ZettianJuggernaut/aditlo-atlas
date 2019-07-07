if(ds_list_find_index(global.list_token_black,obj_sequence_current.image_index) != -1)
{
	if(!instance_exists(obj_darkness))
	{
		instance_create_depth(0,0,-50,obj_darkness);
	}
}
if(ds_list_find_index(global.list_token_blue,obj_sequence_current.image_index) != -1)
{
	if(global.grab_width > 49)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]) - 60,-45,obj_rain_spawn);
		global.grab_width -= 10;
		global.grab_height -= 10;
	}
}
if(ds_list_find_index(global.list_token_green,obj_sequence_current.image_index) != -1)
{
	if(!instance_exists(obj_vine_right))
	{
		var delay = irandom(1);
		with(instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),random_range(camera_get_view_y(view_camera[0]) + sprite_get_height(spr_vine_short),camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_vine_short)),-43,obj_vine_right))
		{
			if(delay == 0)
			{
				alarm_set(1,1);
			}
			else
			{
				alarm_set(1,15);
			}
		}
		with(instance_create_depth(camera_get_view_x(view_camera[0]),random_range(camera_get_view_y(view_camera[0]) + sprite_get_height(spr_vine_short),camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_vine_short)),-43,obj_vine_left))
		{
			if(delay == 1)
			{
				alarm_set(1,1);
			}
			else
			{
				alarm_set(1,15);
			}
		}
	}
}
if(ds_list_find_index(global.list_token_red,obj_sequence_current.image_index) != -1)
{
	global.burn = true;
}
if(ds_list_find_index(global.list_token_white,obj_sequence_current.image_index) != -1)
{
	if(!instance_exists(obj_windchange))
	{
		instance_create_depth(0,camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0])/2 + 200,-10,obj_windchange);
	}
}
if(ds_list_find_index(global.list_token_yellow,obj_sequence_current.image_index) != -1)
{
	if(!instance_exists(obj_sunbleam))
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + random_range(camera_get_view_height(view_camera[0])/2 - 75,camera_get_view_height(view_camera[0])/2 + 75),-44,obj_sunbleam);
		instance_create_depth(camera_get_view_x(view_camera[0]) - 50,camera_get_view_y(view_camera[0]) - 50,-50,obj_sun_affect);
	}
}