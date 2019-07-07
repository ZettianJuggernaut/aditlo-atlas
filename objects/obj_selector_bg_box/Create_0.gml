if(ds_list_find_index(global.list_bg_skins,1) != -1 || ds_list_find_index(global.list_bg_skins,2) != -1)
{
	vspeed = -10;
	alarm_set(0,16);
}
else
{
	instance_destroy();
}