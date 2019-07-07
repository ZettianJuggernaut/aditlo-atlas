if(room == rm_menu_skin)
{
	if(!instance_exists(obj_the_cat))
	{
		if(device_mouse_y(0) > 153 && device_mouse_y(0) < 308)
		{
			if(device_mouse_check_button_pressed(0,mb_left))
			{
				global.x_swipe = device_mouse_x(0);
			}
			if(device_mouse_check_button(0,mb_left))
			{
				if(device_mouse_x(0) < global.x_swipe && x + camera_get_view_width(view_camera[0])/2 <= room_width)
				{
					if(global.cam_moving == false)
					{
						global.cam_moving = true;
					}
					var swipe_dis = global.x_swipe - device_mouse_x(0);
					if(x + camera_get_view_width(view_camera[0])/2 + swipe_dis > room_width)
					{
						do
						{
							swipe_dis -= 1;
						}
						until(x + camera_get_view_width(view_camera[0])/2 + swipe_dis <= room_width)
					}
					x += swipe_dis;
					camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);
					with(obj_nav_play)
					{
						x += swipe_dis;
					}
					with(obj_nav_main)
					{
						x += swipe_dis;
					}
					with(obj_nav_flag)
					{
						x += swipe_dis;
					}
					with(obj_button_select)
					{
						x += swipe_dis;
					}
					with(obj_button_purchase)
					{
						x += swipe_dis;
					}
					with(obj_button_switch)
					{
						x += swipe_dis;
					}
					with(obj_skin_large)
					{
						x += swipe_dis;
					}
					with(obj_scroll_mini)
					{
						x += swipe_dis;
					}
				}
				else if(device_mouse_x(0) > global.x_swipe && x - camera_get_view_width(view_camera[0])/2 >= 0)
				{
					if(global.cam_moving == false)
					{
						global.cam_moving = true;
					}
					var swipe_dis = device_mouse_x(0) - global.x_swipe;
					if(x - camera_get_view_width(view_camera[0])/2 - swipe_dis < 0)
					{
						do
						{
							swipe_dis -= 1;
						}
						until(x - camera_get_view_width(view_camera[0])/2 - swipe_dis >= 0)
					}
					x -= swipe_dis;
					camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);
					with(obj_nav_play)
					{
						x -= swipe_dis;
					}
					with(obj_nav_main)
					{
						x -= swipe_dis;
					}
					with(obj_nav_flag)
					{
						x -= swipe_dis;
					}
					with(obj_button_select)
					{
						x -= swipe_dis;
					}
					with(obj_button_purchase)
					{
						x -= swipe_dis;
					}
					with(obj_button_switch)
					{
						x -= swipe_dis;
					}
					with(obj_skin_large)
					{
						x -= swipe_dis;
					}
					with(obj_scroll_mini)
					{
						x -= swipe_dis;
					}
				}
			}
		}
	}
}
else if(room == rm_menu_chapter)
{
	if(device_mouse_check_button_pressed(0,mb_left))
	{
		global.x_swipe = device_mouse_x(0);
	}
	if(device_mouse_check_button_released(0,mb_left) && global.open_chapter == 0)
	{
		if(device_mouse_x(0) < global.x_swipe - 200)
		{
			cam_right();
		}
		else if(device_mouse_x(0) > global.x_swipe + 200)
		{
			cam_left();
		}
	}
	if(global.cam_moving == true)
	{
		camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);
		if(x <= 690)
		{
			hspeed = 0;
			x = 690;
			alarm_set(0,1);
			alarm_set(2,5);
			global.cam_moving = false;
			global.x_swipe = device_mouse_x(0);
		}
		else if(x == 2100)
		{
			hspeed = 0;
		    x = 2100;
		    alarm_set(0,1);
		    alarm_set(2,5);
		    global.cam_moving = false;
		    global.x_swipe = device_mouse_x(0);
		}
		else if(x == 3510)
		{
			hspeed = 0;
			x = 3510;
			alarm_set(0,1);
			alarm_set(2,5);
			global.cam_moving = false;
			global.x_swipe = device_mouse_x(0);
		}
		else if(x == 4920)
		{
			hspeed = 0;
			x = 4920;
			alarm_set(0,1);
			alarm_set(2,5);
			global.cam_moving = false;
			global.x_swipe = device_mouse_x(0);
		}
		else if(x >= 6330)
		{
			hspeed = 0;
			x = 6330;
			alarm_set(0,1);
			alarm_set(2,5);
			global.cam_moving = false;
			global.x_swipe = device_mouse_x(0);
		}
	}
}