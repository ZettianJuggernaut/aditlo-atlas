if(obj_sequence_current_sm.image_index == 5 && !instance_exists(obj_fade_black) && !instance_exists(obj_speak_bubble))
{
  if(global.invert_tilt == 0)
  {
    global.tilt_angle -= device_get_tilt_y()*2/5;
  }
  else if(global.invert_tilt == 1)
  {
    global.tilt_angle += device_get_tilt_y()*2/5;
  }
}
image_angle = global.tilt_angle;
if(skeleton_animation_get() == global.breathing)
{
	if(image_angle > 25)
	{
		skeleton_animation_set("RightShake");
	}
	else if(image_angle < -25)
	{
		skeleton_animation_set("LeftShake");
	}
}
else if(skeleton_animation_get() != global.breathing)
{
	if(image_angle <= 25 && image_angle >= -25)
	{
		skeleton_animation_set(global.breathing);
	}
}