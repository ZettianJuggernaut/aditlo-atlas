image_xscale = 22;
image_yscale = 22;
if(script_execute(ads_on))
{
	alarm_set(0,1);
}
else
{
	instance_destroy();
}