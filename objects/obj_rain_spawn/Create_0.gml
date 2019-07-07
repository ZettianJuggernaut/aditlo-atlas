x = random_range(camera_get_view_x(view_camera[0]),camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]));
instance_create(x,y,obj_rain);
alarm_set(0,1);
if(global.sound == 1 && !audio_is_playing(sd_rain))
{
	audio_play_sound(sd_rain,9,1);
}