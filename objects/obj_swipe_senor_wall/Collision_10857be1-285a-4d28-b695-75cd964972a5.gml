///Swipes
if(ds_list_find_index(global.list_swipes,9) == -1)
{
	x = device_mouse_x(0);
	y = device_mouse_y(0);
	with(obj_swipe_senor_cone)
	{
		x = device_mouse_x(0);
		y = device_mouse_y(0);
	}
	//Up
	if(image_angle == 0)
	{
		ds_list_add(global.list_swipes,1);
	}
	//Up Right
	else if(image_angle == 315)
	{
		ds_list_add(global.list_swipes,2);
	}
	//Right
	else if(image_angle == 270)
	{
		ds_list_add(global.list_swipes,3);
	}
	//Down Right
	else if(image_angle == 225)
	{
		ds_list_add(global.list_swipes,4);
	}
	//Down
	else if(image_angle == 180)
	{
		ds_list_add(global.list_swipes,5);
	}
	//Down Left
	else if(image_angle == 135)
	{
		ds_list_add(global.list_swipes,6);
	}
	//Left
	else if(image_angle == 90)
	{
		ds_list_add(global.list_swipes,7);
	}
	//Up Left
	else if(image_angle == 45)
	{
		ds_list_add(global.list_swipes,8);
	}
	with(obj_swipe_glow)
	{
		image_blend = c_lime;
	}
	if(global.sound == 1 && alarm_get(0) == -1)
	{
		audio_play_sound(sd_swipe_green,9,0);
		alarm_set(0,10);
	}
	script_execute(swipe_pattern_setup);
}