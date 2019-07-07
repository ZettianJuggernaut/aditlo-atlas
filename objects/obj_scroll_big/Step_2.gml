if(room == rm_menu_chapter)
{
	if(device_mouse_check_button_released(0,mb_left))
	{
		if(device_mouse_x(0) < x - sprite_get_width(spr_scroll_big)/2 || device_mouse_x(0) > x + sprite_get_width(spr_scroll_big)/2)
		{
			if(!instance_exists(obj_the_cat))
			{
				script_execute(scroll_kill);
				if(global.cam_moving = false)
				{
					global.open_chapter = 0;
				}
				if(global.sound == 1)
				{
					audio_play_sound(sd_scroll,10,0);
				}
			}
		}
	}
}