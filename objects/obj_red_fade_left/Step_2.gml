if(global.tilt_center > global.tilt_x)
{
  image_alpha = (global.tilt_center - global.tilt_x)/250;
}
else if(image_alpha != 0)
{
	image_alpha = 0;
}