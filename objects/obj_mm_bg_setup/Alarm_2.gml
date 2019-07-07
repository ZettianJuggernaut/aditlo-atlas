layer_sprite_x(global.mm_bg_3,layer_sprite_get_x(global.mm_bg_2) + 1231)

alarm_set(0,1231);
if(global.pineapple == 0)
{
	instance_create_depth(2431,870,0,obj_watermark_pineapple);
}