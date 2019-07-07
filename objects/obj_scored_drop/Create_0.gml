image_speed = 0;
image_alpha = 0.7;
move_towards_point(obj_sequence_current_sm.x,obj_sequence_current_sm.y,20);
if(global.sound == 1)
{
	audio_play_sound(sd_token_score,10,0);
}