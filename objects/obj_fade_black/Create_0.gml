if(instance_number(obj_fade_black) > 1)
{
	instance_destroy();
}
image_speed = 0;
image_alpha = 0;
if(room == rm_game_modes)
{
	if(global.won == true)
	{
		image_index = 1;
	}
}
else if(room == rm_splash)
{
	image_index = 1;
}
image_xscale = 35;
image_yscale = 35;
alarm_set(0,1);
if(room == rm_inlvl)
{
	if(part_system_exists(global.ps_unlock))
	{
		part_system_destroy(global.ps_unlock);
		part_type_destroy(global.pt_unlock);
	}
	if(!ds_list_empty(global.list_unlocks))
	{
		ds_list_clear(global.list_unlocks);
	}
}

