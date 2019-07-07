if(global.currently_playing < 5)
{
	with(instance_nearest(x,y,obj_drop))
	{
		instance_destroy();
	}
}
else if(global.currently_playing == 5)
{
	with(instance_nearest(x,y,obj_drop_biz))
	{
		instance_destroy();
	}
}