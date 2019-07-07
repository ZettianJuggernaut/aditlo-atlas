instance_create_depth(obj_sphee_dummy.x,obj_sphee_dummy.y,obj_sphee_dummy.depth,obj_sphee);
instance_destroy(obj_sphee_dummy);
instance_create_depth(obj_track_sphee_dummy.x,obj_track_sphee_dummy.y,obj_track_sphee_dummy.depth,obj_track_sphee);
instance_destroy(obj_track_sphee_dummy);
instance_create_depth(camera_get_view_x(view_camera[0]) + 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
instance_create_depth(camera_get_view_x(view_camera[0]) + 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
with(obj_timer_bar)
{
	alarm_set(0,60);
}
HeyZap_LoadInterstitial();