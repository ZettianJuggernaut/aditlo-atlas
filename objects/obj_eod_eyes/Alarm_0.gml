image_xscale += 0.01;
image_yscale += 0.01;
alarm_set(0,1);
if(image_xscale == 1)
{
	audio_stop_sound(sd_torch);
	audio_stop_sound(sd_menu_music);
	global.currently_playing = 4;
	global.goto_room = rm_game_modes;
	instance_create_depth(obj_cam.x,obj_cam.y,-200,obj_fade_black);
}