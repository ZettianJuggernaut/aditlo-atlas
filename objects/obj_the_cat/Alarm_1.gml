/// @description Fade Out
image_alpha -= 0.05;
if(image_alpha != 0)
{
	alarm_set(1,1);
}
else if(image_alpha == 0)
{
	if(room == rm_game_modes)
	{
		if(instance_exists(obj_sphee_dummy))
		{
			instance_create_depth(obj_sphee_dummy.x,obj_sphee_dummy.y,obj_sphee_dummy.depth,obj_sphee);
			with(obj_sphee_dummy)
			{
				instance_destroy();
			}
			instance_create_depth(obj_track_sphee_dummy.x,obj_track_sphee_dummy.y,obj_track_sphee_dummy.depth,obj_track_sphee);
			with(obj_track_sphee_dummy)
			{
				instance_destroy();
			}
			if(global.currently_playing < 3)
			{
				instance_create_depth(camera_get_view_x(view_camera[0]) + 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
				instance_create_depth(camera_get_view_x(view_camera[0]) + 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
				instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
				instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
			}
			else if(global.currently_playing == 4)
			{
				instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
				instance_create_depth(camera_get_view_x(view_camera[0]) + 240,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
				instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 100,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
				instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 240,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
				with(obj_eod_timer_bar)
				{
					alarm_set(0,60);
				}
			}
			else if(global.currently_playing == 5)
			{
				instance_create_depth(0,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn_biz);
				instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40,0,0,obj_drop_spawn_biz);
				instance_create_depth(0,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40,0,obj_drop_spawn_biz);
				instance_create_depth(camera_get_view_x(view_camera[0]) - 40,0,0,obj_drop_spawn_biz);
				with(obj_sphee)
				{
					y -= 15;
					x += 5;
				}
			}
		}
		else if(instance_exists(obj_pause_senor))
		{
			with(obj_cat_retalk)
			{
				move_towards_point(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,6);
				alarm_set(1,point_distance(x,y,camera_get_view_x(view_camera[0]) + 50,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100)/6);
			}
		}
	}
	else if(room == rm_inlvl)
	{
		with(obj_unlocks_senor)
		{
			alarm_set(0,180);
		}
	}
	else if(room == rm_menu_main)
	{
		with(obj_cat_bar)
		{
			hspeed = -10;
		}
		instance_create_depth(camera_get_view_x(view_camera[0]) + 170,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + sprite_get_height(spr_ad_box),-10,obj_ad_box);
	}
	instance_destroy();
}