/// @description Fade In
image_alpha += 0.05;
if(image_alpha < 1)
{
	alarm_set(0,1);
}
else
{
	instance_create_depth(345,507,depth-10,obj_zoom);
}