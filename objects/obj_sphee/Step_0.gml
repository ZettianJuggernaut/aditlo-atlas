if(sprite_index != spr_sphee_stone)
{
	if(global.invert_tilt == 0)
	{
		global.tilt_angle -= device_get_tilt_y()*2/7;
		global.tilt_angle -= global.windspeed/14;
	}
	else if(global.invert_tilt == 1)
	{
		global.tilt_angle += device_get_tilt_y()*2/7;
		global.tilt_angle += global.windspeed/14;
	}
	image_angle = global.tilt_angle;
	if(skeleton_animation_get() == global.breathing)
	{
		if(image_angle > 15)
		{
			skeleton_animation_set("RightShake");
		}
		else if(image_angle < -15)
		{
			skeleton_animation_set("LeftShake");
		}
	}
	else if(skeleton_animation_get() != global.breathing)
	{
		if(image_angle <= 15 && image_angle >= -15)
		{
			skeleton_animation_set(global.breathing);
		}
	}
}