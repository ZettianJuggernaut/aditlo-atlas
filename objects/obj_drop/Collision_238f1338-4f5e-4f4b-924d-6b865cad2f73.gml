if(vspeed > 0)
{
	if(alarm_get(1) == -1)
	{
		instance_create_depth(x + sprite_get_width(spr_drop)/2,y,depth-1,obj_glint);
		alarm_set(1,45);
	}
}