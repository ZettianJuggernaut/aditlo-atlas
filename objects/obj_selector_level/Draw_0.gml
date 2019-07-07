/// @description
draw_self();
if(image_index & 1)
{
	if(medal_image > -1)
	{
		draw_sprite_ext(spr_medal_level,medal_image,x,y,image_xscale,image_yscale,0,-1,1);
	}
}
else
{
	draw_sprite_ext(spr_level_lock,0,x,y-5,1,1,image_angle,-1,1);	
}