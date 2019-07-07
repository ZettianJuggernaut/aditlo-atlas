/// @description Slight Delay
instance_destroy(obj_popup_video);
instance_destroy(obj_button_skip);
instance_destroy();
global.tilt_x = global.tilt_center;
global.tilt_angle = 0;
var ddepth = obj_pause_senor.depth;
instance_create_depth(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2),camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2),ddepth - 1,obj_scroll);
instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) - 180,ddepth - 2,obj_button_play);
instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) - 60,ddepth - 2,obj_button_retry);
instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) + 60,ddepth - 2,obj_button_chapter);
instance_create_depth(obj_scroll.x,camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2) + 180,ddepth - 2,obj_button_menu);
if(global.currently_playing == 0 && global.current_cp > 0)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 102,ddepth - 4,obj_cat_retalk);
}
else if(global.currently_playing == 4)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,ddepth - 4,obj_cat_retalk);
}
else if(global.currently_playing > 5)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,ddepth - 4,obj_cat_retalk);
}
global.reward_ad_loaded = 0;
HeyZap_LoadReward();