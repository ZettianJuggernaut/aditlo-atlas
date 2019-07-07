image_xscale = 0.1;
image_yscale = 0.1;
move_towards_point(obj_cam.x,obj_cam.y,5)
alarm_set(1,point_distance(x,y,obj_cam.x,obj_cam.y)/5);
alarm_set(0,1);
if(global.sound == 1)
{
	audio_play_sound(sd_eod_laugh,9,0);
	audio_play_sound(sd_eod_laugh,9,0);
}