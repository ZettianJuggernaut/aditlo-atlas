///Incorrect Swipes
if(global.currently_playing < 5)
{
	if(global.burn == true && ds_list_find_index(global.list_swipes,9) == -1)
	{
		with(obj_drop)
		{
			instance_create_depth(x,y,depth-1,obj_burn);
		}
	}
}
if(global.currently_playing == 5)
{
	if(global.burn == true && ds_list_find_index(global.list_swipes,9) == -1)
	{
		with(obj_drop_biz)
		{
			instance_create_depth(x,y,depth-1,obj_burn);
		}
	}
}
if(global.sound == 1 && ds_list_find_index(global.list_swipes,9) == -1)
{
	audio_play_sound(sd_swipe_red,9,0);
}
ds_list_add(global.list_swipes,9);
with(obj_swipe_glow)
{
	image_blend = c_red;
}
if(global.currently_playing == 3)
{
	if(obj_sequence_current_sm.image_index == 0 && !instance_exists(obj_speak_bubble))
	{
		ds_list_add(global.list_cat,"DEAR ME, THE GAME IS","FINICKY, ISN'T IT? I MAY","NEED TO HAVE A WORD","WITH ZEUS ON THAT. DON'T","FRET, HUMAN, YOU CAN","SIMPLY TRY AGAIN.");
		instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
	}
}