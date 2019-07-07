var dropspeed, droppath, dropposition, dropx, dropy;
if(global.currently_playing < 5)
{
	with(instance_nearest(x,y,obj_drop))
	{
		dropspeed = vspeed;
	}
	vspeed = dropspeed;
}
else if(global.currently_playing == 5)
{
	with(instance_nearest(x,y,obj_drop_biz))
	{
		dropx = xstart + sprite_get_width(sprite_index)/2;
		dropy = ystart;
		dropspeed = path_speed;
		droppath = path_index;
		dropposition = path_position;
	}
	x = dropx;
	y = dropy;
	path_start(droppath,dropspeed,path_action_continue,false);
	path_position = dropposition;
}
if(alarm_get(0) == -1)
{
  alarm_set(0,25);
}