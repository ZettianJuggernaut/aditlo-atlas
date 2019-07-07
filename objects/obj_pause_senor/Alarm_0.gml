global.spr_screen = sprite_create_from_surface(application_surface,0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),0,1,0,0);
image_xscale = 1;
image_yscale = 1;
sprite_index = global.spr_screen;
var video_ad = 0;
if(global.currently_playing != 3)
{
	if(obj_track_sphee.x <= 480 || obj_track_sphee.x >= 870)
	{
		video_ad = 1;
	}
}
instance_deactivate_all(true);
instance_activate_object(obj_backbutton_senor);
instance_activate_object(obj_cam);
instance_activate_object(obj_fps);
instance_activate_object(obj_ad_control);
instance_activate_object(obj_display_manager);
if(video_ad == 0)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2),camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2),depth - 1,obj_scroll);
	instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) - 180,depth - 2,obj_button_play);
	instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) - 60,depth - 2,obj_button_retry);
	instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) + 60,depth - 2,obj_button_chapter);
	instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) + 180,depth - 2,obj_button_menu);
	if(global.currently_playing == 0 && global.current_cp > 0)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 102,depth - 4,obj_cat_retalk);
	}
	else if(global.currently_playing == 1 && global.currentlvl == 31 && global.dream_world == 3)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,depth - 4,obj_cat_retalk);
	}
	else if(global.currently_playing == 4)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,depth - 4,obj_cat_retalk);
	}
	else if(global.currently_playing > 5)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,depth - 4,obj_cat_retalk);
	}
}
else if(video_ad == 1)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,-190,obj_popup_video);
}