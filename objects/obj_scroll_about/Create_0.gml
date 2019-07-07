image_xscale = .7;
image_yscale = .7;
vspeed = 27.5;
alarm_set(0,camera_get_view_height(view_camera[0])/29);
if(global.sound == 1)
{
	audio_play_sound(sd_scroll,10,0);
}