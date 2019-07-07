if(global.currently_playing < 2)
{
	x = obj_track_cover.x - 305;
}
else if(global.currently_playing > 1)
{
	sprite_index = spr_text_insert2;
	x = obj_track_cover.x - 405;
}