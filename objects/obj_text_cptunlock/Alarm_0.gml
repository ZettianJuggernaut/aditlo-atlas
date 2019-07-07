image_xscale -= 0.0025;
image_yscale -= 0.0025;
if(global.current_cp == 1)
{
	if(image_xscale > 0.35)
	{
		alarm_set(0,1);
	}
}
else if(global.current_cp == 2)
{
	if(image_xscale > 0.25)
	{
		alarm_set(0,1);
	}
}
else if(global.current_cp == 3)
{
	if(image_xscale > 0.18)
	{
		alarm_set(0,1);
	}
}