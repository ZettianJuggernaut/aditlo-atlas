/// @description
draw_self();
if(ds_map_find_value(global.map_have_been,"tuComplete") == 1)
{
	draw_sprite_ext(spr_challenge_wreath,0,x,y,image_xscale,image_yscale,0,-1,1);
}