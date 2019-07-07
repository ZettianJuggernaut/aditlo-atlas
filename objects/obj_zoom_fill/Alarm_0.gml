image_xscale -= 0.13;
image_yscale -= 0.13;
if(image_xscale > 0.6)
{
	alarm_set(0,1);
}
else
{ 
	instance_create_depth(x,y,depth,obj_zoom_fill2);
}