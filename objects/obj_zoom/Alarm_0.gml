/// @description Zooming

image_xscale -= 0.1;
image_yscale -= 0.1;
if(image_xscale > 1)
{
	alarm_set(0,1);
}
else
{
	alarm_set(1,30);
}