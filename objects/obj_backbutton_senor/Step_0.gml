if(keyboard_check_released(vk_backspace))
{
	if(room == rm_menu_main)
	{
		game_end();
	}
	else if(room == rm_menu_chapter)
	{
		if(global.open_chapter == 0)
		{
			room_goto(rm_menu_main);
		}
		else if(global.open_chapter > 0 || global.open_chapter == -1)
		{
			script_execute(scroll_kill);
		}
	}
	else if(room == rm_menu_skin)
	{
		room_goto(rm_menu_main);
	}
	else if(room == rm_game_modes)
	{
		if(!instance_exists(obj_pause_senor))
		{
			instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-130,obj_pause_senor);
		}
		else if(instance_exists(obj_pause_senor))
		{
			with(obj_pause_senor)
			{
				instance_destroy();
			}
		}
	}
}