image_xscale -= 0.01;
image_yscale -= 0.01;
if(image_xscale > 1)
{
	alarm_set(1,1);
}
else
{
	instance_destroy();
}