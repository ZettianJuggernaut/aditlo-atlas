image_speed = 0;
if(global.farrest_cp > 3)
{
	image_index = 1;
	instance_create_depth(x + sprite_get_width(sprite_index)/1.4,y,depth,obj_endmode_score);
	instance_create_depth(x - sprite_get_width(sprite_index)/1.4,y,depth,obj_endmode_score);
}