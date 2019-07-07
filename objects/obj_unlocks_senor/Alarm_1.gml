/// @description Brust 1
var lifemin = 1800*global.seconds_passed;
var lifemax = 5400*global.seconds_passed;
part_type_life(global.pt_unlock,lifemin,lifemax);
part_emitter_burst(global.ps_unlock,global.pe_unlock,global.pt_unlock,100);
alarm_set(2,10);
alarm_set(3,20);
if(global.sound == 1)
{
	audio_play_sound(sd_token_score,10,0);
}