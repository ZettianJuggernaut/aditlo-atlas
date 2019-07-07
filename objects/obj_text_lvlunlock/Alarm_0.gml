image_xscale -= 0.0025;
image_yscale -= 0.0025;
with(instance_nearest(x,y,obj_cptunlock_mini))
{
	image_xscale -= 0.0005;
	image_yscale -= 0.0005;
}
if(image_xscale > 0.85)
{
	alarm_set(0,1);
}