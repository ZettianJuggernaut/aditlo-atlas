image_speed = .25;
var dropfallspeed, droppath, dropposition, dropx, dropy, droptype;
if(global.currently_playing < 5)
{
	with(instance_nearest(x,y,obj_drop))
	{
		dropfallspeed = vspeed;
	}
	vspeed = dropfallspeed;
}
else if(global.currently_playing == 5)
{
	with(instance_nearest(x,y,obj_drop_biz))
	{
		dropx = xstart;
		dropy = ystart;
		dropfallspeed = path_speed;
		droppath = path_index;
		dropposition = path_position;
	}
	x = dropx;
	y = dropy;
	path_start(droppath,dropfallspeed,path_action_continue,false);
	path_position = dropposition;
}
instance_destroy(obj_token_crack);
instance_destroy(obj_halo_black);
instance_destroy(obj_halo_blue);
instance_destroy(obj_halo_green);
instance_destroy(obj_halo_red);
instance_destroy(obj_halo_white);
instance_destroy(obj_halo_yellow);
ds_list_clear(global.list_token_frozen);
if(global.sound == 1)
{
	audio_play_sound(sd_burn,9,0);
}
alarm_set(0,24);
alarm_set(1,52);