///Tilt Affects

//Tilt Press
if(device_mouse_check_button(0,mb_left))
{
	if(device_mouse_x(0) < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
	{
		global.tilt_x -= .25;
		global.tilt_angle += .035;
	}
	else if(device_mouse_x(0) > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
	{
		global.tilt_x += .25;
		global.tilt_angle -= .035;
	}
}

//Tilt Read
if(global.invert_tilt == 0)
{
	global.tilt_x += device_get_tilt_y()*2;
	global.tilt_x += global.windspeed/2;
}
if(global.invert_tilt == 1)
{
	global.tilt_x -= device_get_tilt_y()*2;
	 global.tilt_x -= global.windspeed/2;
}

x = global.tilt_x;

if(x <= 480 || x >= 870)
{
	if(global.video_ad_pop == 0)
	{
		if(global.currently_playing == 0)
		{
			if(!instance_exists(obj_pause_senor))
			{
				instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-130,obj_pause_senor);
			}
		}
		else if(global.currently_playing == 1)
		{
			if(global.music == 1 && audio_is_playing(global.current_music))
			{
				audio_sound_gain(global.current_music,0,500)
			}
			global.won = false;
			global.goto_room = rm_inlvl;
			instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
		}
		else if(global.currently_playing == 2)
		{
			if(global.music == 1 && audio_is_playing(global.current_music))
			{
				audio_sound_gain(global.current_music,0,500)
			}
			global.won = false;
			global.goto_room = rm_inlvl;
			instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
		}
		else if(global.currently_playing == 4)
		{
			if(!instance_exists(obj_pause_senor))
			{
				instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-130,obj_pause_senor);
			}
		}
		else if(global.currently_playing == 5)
		{
			if(!instance_exists(obj_pause_senor))
			{
				instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-130,obj_pause_senor);
			}
		}
	}
	else
	{
		if(global.music == 1 && audio_is_playing(global.current_music))
		{
			audio_sound_gain(global.current_music,0,500)
		}
		global.won = false;
		global.goto_room = rm_inlvl;
		instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
	}
}