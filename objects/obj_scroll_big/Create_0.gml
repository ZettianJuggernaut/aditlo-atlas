if(room == rm_menu_chapter)
{
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
	y = camera_get_view_y(view_camera[0]) - sprite_get_height(spr_scroll_big)/2;
	vspeed = 27.5;
	alarm_set(0,camera_get_view_height(view_camera[0])/27);
	if(global.cam_moving = true)
	{
		alarm_set(0,camera_get_view_height(view_camera[0])/27 + 1);
	}
	if(global.sound == 1)
	{
		audio_play_sound(sd_scroll,10,0);
	}
}