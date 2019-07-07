image_speed = 0;
image_xscale = .46;
image_yscale = .46;
if(global.skin_setup <= 33)
{
	image_index = ds_list_find_value(global.list_unlocked_skins,global.skin_setup);
	global.skin_setup += 1;
}
else
{
	image_index = ds_list_find_value(global.list_locked_skins,global.locked_skin);
	global.locked_skin += 1;
	repeat(2)
	{
		image_blend = c_black;
	}
}
if(image_index == global.current_skin)
{
	instance_create_depth(x,y,depth-1,obj_current_skin);
}