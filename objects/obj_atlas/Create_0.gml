image_speed = 0;
if(global.current_skin < 10)
{
	image_index = global.current_skin;
}
else if(global.current_skin == 10)
{
	sprite_index = spr_atlas_biz;
}
else if(global.current_skin < 33)
{
	image_index = global.current_skin;
}
else if(global.current_skin == 33)
{
	sprite_index = spr_atlas_zeus;
	y -= 10;
	instance_create_depth(x-85,y-165,depth-1,obj_mini_sphee);
}