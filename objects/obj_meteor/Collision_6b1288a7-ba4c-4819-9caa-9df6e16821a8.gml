if(global.tilt_x < global.tilt_center)
{
	global.tilt_x -= 49;
	global.tilt_angle += 7;
}
else
{
	global.tilt_x += 49;
	global.tilt_angle -= 7;
}
if(global.sound == 1)
{
	audio_play_sound(sd_meteor,7,0);
	audio_play_sound(sd_atlas_hurt,7,0);
	audio_play_sound(sd_ghoul_hit,7,0);
	audio_play_sound(sd_token_break,7,0);
}
instance_destroy();