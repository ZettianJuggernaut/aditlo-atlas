/// @description Touch

//Press
if(device_mouse_check_button_pressed(0,mb_left))
{
	//Drop Grab
	if(device_mouse_x(0) > x - global.grab_width && device_mouse_x(0) < x + global.grab_width)
	{
		if(device_mouse_y(0) > y - global.grab_height && device_mouse_y(0) < y + global.grab_height)
		{
			if(!instance_position(device_mouse_x(0),device_mouse_y(0),obj_vine_right) && !instance_position(device_mouse_x(0),device_mouse_y(0),obj_vine_left) && !instance_position(device_mouse_x(0),device_mouse_y(0),obj_track_cover))
			{
				if(path_speed != 0)
				{
					path_speed = 0;
					depth -= 2;
					if(global.sound == 1)
					{
						audio_play_sound(sd_token,9,0);
					}
					if(image_index == 0)
					{
						instance_create_depth(x,y,depth+1,obj_halo_black);
						if(ds_list_find_index(global.list_token_black,obj_sequence_current_sm.image_index) > -1)
						{
							if(ds_list_find_index(global.list_token_frozen,0) == -1 && !instance_exists(obj_scored_drop))
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_sequence_current_sm.depth+1,obj_halo_black);
							}
							if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) == -1)
							{
								if(obj_sequence_current.image_index == 6 && ds_list_find_index(global.list_token_frozen,1) != -1)
								{
									ds_list_add(global.list_token_frozen,6);
								}
								else if(obj_sequence_current.image_index == 7 && ds_list_find_index(global.list_token_frozen,2) != -1)
								{
									ds_list_add(global.list_token_frozen,7);
								}
								else if(obj_sequence_current.image_index == 8 && ds_list_find_index(global.list_token_frozen,3) != -1)
								{
									ds_list_add(global.list_token_frozen,8);
								}
								else if(obj_sequence_current.image_index == 9 && ds_list_find_index(global.list_token_frozen,4) != -1)
								{
									ds_list_add(global.list_token_frozen,9);
								}
							}
						}
						ds_list_add(global.list_token_frozen,0);
					}
					else if(image_index == 1)
					{
						instance_create_depth(x,y,depth+1,obj_halo_blue);
						if(ds_list_find_index(global.list_token_blue,obj_sequence_current.image_index) > -1)
						{
							if(ds_list_find_index(global.list_token_frozen,1) == -1 && !instance_exists(obj_scored_drop))
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_sequence_current_sm.depth+1,obj_halo_blue);
							}
							if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) == -1)
							{
								if(obj_sequence_current.image_index == 6 && ds_list_find_index(global.list_token_frozen,0) != -1)
								{
									ds_list_add(global.list_token_frozen,6)
								}
								else if(obj_sequence_current.image_index == 10 && ds_list_find_index(global.list_token_frozen,2) != -1)
								{
									ds_list_add(global.list_token_frozen,10)
								}
								else if(obj_sequence_current.image_index == 11 && ds_list_find_index(global.list_token_frozen,3) != -1)
								{
									ds_list_add(global.list_token_frozen,11)
								}
								else if(obj_sequence_current.image_index == 12 && ds_list_find_index(global.list_token_frozen,4) != -1)
								{
									ds_list_add(global.list_token_frozen,12)
								}
								else if(obj_sequence_current.image_index == 16 && ds_list_find_index(global.list_token_frozen,5) != -1)
								{
									ds_list_add(global.list_token_frozen,16)
								}
							}
						}
						ds_list_add(global.list_token_frozen,1);
					}
					else if(image_index == 2)
					{
						instance_create_depth(x,y,depth+1,obj_halo_green);
						if(ds_list_find_index(global.list_token_green,obj_sequence_current.image_index) > -1)
						{
							if(ds_list_find_index(global.list_token_frozen,2) == -1 && !instance_exists(obj_scored_drop))
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_sequence_current_sm.depth+1,obj_halo_green);
							}
							if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) == -1)
							{
								if(obj_sequence_current.image_index == 7 && ds_list_find_index(global.list_token_frozen,0) != -1)
								{
									ds_list_add(global.list_token_frozen,7)
								}
								else if(obj_sequence_current.image_index == 10 && ds_list_find_index(global.list_token_frozen,1) != -1)
								{
									ds_list_add(global.list_token_frozen,10)
								}
								else if(obj_sequence_current.image_index == 13 && ds_list_find_index(global.list_token_frozen,4) != -1)
								{
									ds_list_add(global.list_token_frozen,13)
								}
								else if(obj_sequence_current.image_index == 14 && ds_list_find_index(global.list_token_frozen,3) != -1)
								{
									ds_list_add(global.list_token_frozen,14)
								}
								else if(obj_sequence_current.image_index == 17 && ds_list_find_index(global.list_token_frozen,5) != -1)
								{
									ds_list_add(global.list_token_frozen,17)
								}
							}
						}
						ds_list_add(global.list_token_frozen,2);
					}
					else if(image_index == 3)
					{
						instance_create_depth(x,y,depth+1,obj_halo_red);
						if(ds_list_find_index(global.list_token_red,obj_sequence_current.image_index) > -1)
						{
							if(ds_list_find_index(global.list_token_frozen,3) == -1 && !instance_exists(obj_scored_drop))
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_sequence_current_sm.depth+1,obj_halo_red);
							}
							if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) == -1)
							{
								if(obj_sequence_current.image_index == 8 && ds_list_find_index(global.list_token_frozen,0) != -1)
								{
									ds_list_add(global.list_token_frozen,8)
								}
								else if(obj_sequence_current.image_index == 11 && ds_list_find_index(global.list_token_frozen,1) != -1)
								{
									ds_list_add(global.list_token_frozen,11)
								}
								else if(obj_sequence_current.image_index == 14 && ds_list_find_index(global.list_token_frozen,2) != -1)
								{
									ds_list_add(global.list_token_frozen,14)
								}
								else if(obj_sequence_current.image_index == 15 && ds_list_find_index(global.list_token_frozen,4) != -1)
								{
									ds_list_add(global.list_token_frozen,15)
								}
								else if(obj_sequence_current.image_index == 18 && ds_list_find_index(global.list_token_frozen,5) != -1)
								{
									ds_list_add(global.list_token_frozen,18)
								}
							}
						}
						ds_list_add(global.list_token_frozen,3);
					}
					else if(image_index == 4)
					{
						instance_create_depth(x,y,depth+1,obj_halo_white);
			            if(ds_list_find_index(global.list_token_white,obj_sequence_current.image_index) > -1)
			            {
				            if(ds_list_find_index(global.list_token_frozen,4) == -1 && !instance_exists(obj_scored_drop))
				            {
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_sequence_current_sm.depth+1,obj_halo_white);
				            }
							if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) == -1)
							{
								if(obj_sequence_current.image_index == 9 && ds_list_find_index(global.list_token_frozen,0) != -1)
								{
									ds_list_add(global.list_token_frozen,9)
								}
								else if(obj_sequence_current.image_index == 12 && ds_list_find_index(global.list_token_frozen,1) != -1)
								{
									ds_list_add(global.list_token_frozen,12)
								}
								else if(obj_sequence_current.image_index == 13 && ds_list_find_index(global.list_token_frozen,2) != -1)
								{
									ds_list_add(global.list_token_frozen,13)
								}
								else if(obj_sequence_current.image_index == 15 && ds_list_find_index(global.list_token_frozen,3) != -1)
								{
									ds_list_add(global.list_token_frozen,15)
								}
								else if(obj_sequence_current.image_index == 19 && ds_list_find_index(global.list_token_frozen,5) != -1)
								{
									ds_list_add(global.list_token_frozen,19)
								}
							}
			            }
			            ds_list_add(global.list_token_frozen,4);
					}
					else if(image_index == 5)
					{
						instance_create_depth(x,y,depth+1,obj_halo_yellow);
			            if(ds_list_find_index(global.list_token_yellow,obj_sequence_current.image_index) > -1)
			            {
							if(ds_list_find_index(global.list_token_frozen,5) == -1 && !instance_exists(obj_scored_drop))
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,obj_sequence_current_sm.depth+1,obj_halo_yellow);
							}
							if(ds_list_find_index(global.list_token_frozen,obj_sequence_current.image_index) == -1)
							{
								if(obj_sequence_current.image_index == 16 && ds_list_find_index(global.list_token_frozen,1) != -1)
								{
									ds_list_add(global.list_token_frozen,16)
								}
								else if(obj_sequence_current.image_index == 17 && ds_list_find_index(global.list_token_frozen,2) != -1)
								{
									ds_list_add(global.list_token_frozen,17)
								}
								else if(obj_sequence_current.image_index == 18 && ds_list_find_index(global.list_token_frozen,3) != -1)
								{
									ds_list_add(global.list_token_frozen,18)
								}
								else if(obj_sequence_current.image_index == 19 && ds_list_find_index(global.list_token_frozen,4) != -1)
								{
									ds_list_add(global.list_token_frozen,19)
								}
							}
						}
						ds_list_add(global.list_token_frozen,5);
					}
				}
			}
		}
	}
}

//Slide Off
if(device_mouse_check_button(0,mb_left))
{
	if(device_mouse_x(0) < x - global.grab_width - 15 || device_mouse_x(0) > x + global.grab_width + 15 || device_mouse_y(0) < y - global.grab_height - 15 || device_mouse_y(0) > y + global.grab_height + 15)
	{
		if(path_speed == 0 && alarm_get(0) == -1)
		{
			alarm_set(0,300);
			instance_create_depth(x,y,depth-1,obj_token_crack);
			script_execute(halo_activate);
		}
	}
}

//Release
if(device_mouse_check_button_released(0,mb_left))
{
	if(path_speed == 0)
	{
		//Swipe Senor
		if(ds_list_size(global.list_swipes) == 3)
		{
			if(obj_sequence_current.image_index == 0)
			{
				if(ds_list_find_value(global.list_swipes,0) == 6 && ds_list_find_value(global.list_swipes,1) == 5 && ds_list_find_value(global.list_swipes,2) == 4)
				{
					if(image_index == 0)
					{
						with(instance_nearest(x,y,obj_halo_black))
						{
							instance_destroy();
						}
						with(instance_nearest(x,y,obj_token_crack))
						{
							instance_destroy();
						}
						with(instance_create_depth(x,y,obj_sequence_current_sm.depth,obj_scored_drop))
						{
							image_index = 0;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,0));
						ds_list_add(global.list_scored,0);
						ds_list_clear(global.list_swipes);
						instance_destroy();
					}
				}
			}
			else if(obj_sequence_current.image_index == 1)
			{
				if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_find_value(global.list_swipes,1) == 8 && ds_list_find_value(global.list_swipes,2) == 3)
				{
					if(image_index == 1)
					{
						with(instance_nearest(x,y,obj_halo_blue))
						{
							instance_destroy();
						}
						with(instance_nearest(x,y,obj_token_crack))
						{
							instance_destroy();
						}
						with(instance_create_depth(x,y,obj_sequence_current_sm.depth,obj_scored_drop))
						{
							image_index = 1;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
						ds_list_add(global.list_scored,1);
						ds_list_clear(global.list_swipes);
						instance_destroy();
					}
				}
			}
			else if(obj_sequence_current.image_index == 2)
			{
				if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_find_value(global.list_swipes,1) == 2 && ds_list_find_value(global.list_swipes,2) == 7)
				{
					if(image_index == 2)
					{
						with(instance_nearest(x,y,obj_halo_green))
						{
							instance_destroy();
						}
						with(instance_nearest(x,y,obj_token_crack))
						{
							instance_destroy();
						}
						with(instance_create_depth(x,y,obj_sequence_current_sm.depth,obj_scored_drop))
						{
							image_index = 2;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
						ds_list_add(global.list_scored,2);
						ds_list_clear(global.list_swipes);
						instance_destroy();
					}
				}
			}
			else if(obj_sequence_current.image_index == 3)
			{
				if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 1)
				{
					if(image_index == 3)
					{
						with(instance_nearest(x,y,obj_halo_red))
						{
							instance_destroy();
						}
						with(instance_nearest(x,y,obj_token_crack))
						{
							instance_destroy();
						}
						with(instance_create_depth(x,y,obj_sequence_current_sm.depth,obj_scored_drop))
						{
							image_index = 3;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
						ds_list_add(global.list_scored,3);
						ds_list_clear(global.list_swipes);
						instance_destroy();
					}
				}
			}
			else if(obj_sequence_current.image_index == 4)
			{
				if(ds_list_find_value(global.list_swipes,0) == 6 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 1)
				{
					if(image_index == 4)
					{
						with(instance_nearest(x,y,obj_halo_white))
						{
							instance_destroy();
						}
						with(instance_nearest(x,y,obj_token_crack))
						{
							instance_destroy();
						}
						with(instance_create_depth(x,y,obj_sequence_current_sm.depth,obj_scored_drop))
						{
							image_index = 4;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
						ds_list_add(global.list_scored,4);
						ds_list_clear(global.list_swipes);
						instance_destroy();
					}
				}
			}
			else if(obj_sequence_current.image_index == 5)
			{
				if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 4)
				{
					if(image_index == 5)
					{
						with(instance_nearest(x,y,obj_halo_yellow))
						{
							instance_destroy();
						}
						with(instance_nearest(x,y,obj_token_crack))
						{
							instance_destroy();
						}
						with(instance_create_depth(x,y,obj_sequence_current_sm.depth,obj_scored_drop))
						{
							image_index = 5;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
						ds_list_add(global.list_scored,5);
						ds_list_clear(global.list_swipes);
						instance_destroy();
					}
				}
			}
		}
		else if(ds_list_size(global.list_swipes) == 6)
		{
			if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_find_value(global.list_swipes,1) == 8 && ds_list_find_value(global.list_swipes,2) == 3 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 5 && ds_list_find_value(global.list_swipes,5) == 4)
			{
				if(image_index == 0)
				{
					with(instance_nearest(x,y,obj_halo_black))
					{
						instance_destroy();
					}
					with(instance_nearest(x,y,obj_token_crack))
					{
						instance_destroy();
					}
					with(instance_create_depth(x,y,-26,obj_scored_drop))
					{
						image_index = 0;
					}
					with(obj_drop_biz)
					{
						if(ds_list_find_index(global.list_scored,6) == -1)
						{
							if(image_index == 1 && path_speed == 0)
							{
								with(instance_nearest(x,y,obj_halo_blue))
								{
									instance_destroy();
								}
								with(instance_nearest(x,y,obj_token_crack))
								{
									instance_destroy();
								}
								with(instance_create_depth(x,y,-26,obj_scored_drop))
								{
									image_index = 1;
								}
								instance_destroy();
								ds_list_add(global.list_scored,6);
							}
						}
					}
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,0));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,6));
					ds_list_clear(global.list_swipes);
					global.combo = true;
					instance_destroy();
				}
			}
			else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_find_value(global.list_swipes,1) == 2 && ds_list_find_value(global.list_swipes,2) == 7 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 5 && ds_list_find_value(global.list_swipes,5) == 4)
			{
				if(image_index == 0)
				{
					with(instance_nearest(x,y,obj_halo_black))
					{
						instance_destroy();
					}
					with(instance_nearest(x,y,obj_token_crack))
					{
						instance_destroy();
					}
					with(instance_create_depth(x,y,-26,obj_scored_drop))
					{
						image_index = 0;
					}
					with(obj_drop_biz)
					{
						if(ds_list_find_index(global.list_scored,7) == -1)
						{
							if(image_index == 2 && path_speed == 0)
							{
								with(instance_nearest(x,y,obj_halo_green))
								{
									instance_destroy();
								}
								with(instance_nearest(x,y,obj_token_crack))
								{
									instance_destroy();
								}
								with(instance_create_depth(x,y,-26,obj_scored_drop))
								{
									image_index = 2;
								}
								instance_destroy();
								ds_list_add(global.list_scored,7);
							}
						}
					}
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,0));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,7));
					ds_list_clear(global.list_swipes);
					global.combo = true;
					instance_destroy();
				}
			}
			else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 1 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 5 && ds_list_find_value(global.list_swipes,5) == 4)
			{
				if(image_index == 0)
				{
					with(instance_nearest(x,y,obj_halo_black))
					{
						instance_destroy();
					}
					with(instance_nearest(x,y,obj_token_crack))
					{
						instance_destroy();
					}
					with(instance_create_depth(x,y,-26,obj_scored_drop))
					{
						image_index = 0;
					}
					with(obj_drop_biz)
					{
						if(ds_list_find_index(global.list_scored,8) == -1)
						{
							if(image_index == 3 && path_speed == 0)
							{
								with(instance_nearest(x,y,obj_halo_red))
								{
									instance_destroy();
								}
								with(instance_nearest(x,y,obj_token_crack))
								{
									instance_destroy();
								}
								with(instance_create_depth(x,y,-26,obj_scored_drop))
								{
									image_index = 3;
								}
								instance_destroy();
								ds_list_add(global.list_scored,8);
							}
						}
					}
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,0));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,8));
					ds_list_clear(global.list_swipes);
					global.combo = true;
					instance_destroy();
				}
			}
			else if(ds_list_find_value(global.list_swipes,0) == 6 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 1 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 5 && ds_list_find_value(global.list_swipes,5) == 4)
			{
				if(image_index == 0)
				{
					with(instance_nearest(x,y,obj_halo_black))
					{
						instance_destroy();
					}
					with(instance_nearest(x,y,obj_token_crack))
					{
						instance_destroy();
					}
					with(instance_create_depth(x,y,-26,obj_scored_drop))
					{
            			image_index = 0;
					}
					with(obj_drop_biz)
					{
						if(ds_list_find_index(global.list_scored,9) == -1)
						{
							if(image_index == 4 && path_speed == 0)
							{
								with(instance_nearest(x,y,obj_halo_white))
								{
									instance_destroy();
								}
								with(instance_nearest(x,y,obj_token_crack))
								{
									instance_destroy();
								}
								with(instance_create_depth(x,y,-26,obj_scored_drop))
								{
									image_index = 4;
								}
								instance_destroy();
								ds_list_add(global.list_scored,9);
							}
						}
					}
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,0));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,9));
					ds_list_clear(global.list_swipes);
					global.combo = true;
					instance_destroy();
				}
			}
		else if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_find_value(global.list_swipes,1) == 8 && ds_list_find_value(global.list_swipes,2) == 3 && ds_list_find_value(global.list_swipes,3) == 1 && ds_list_find_value(global.list_swipes,4) == 2 && ds_list_find_value(global.list_swipes,5) == 7)
		{
			if(image_index == 1)
			{
				with(instance_nearest(x,y,obj_halo_blue))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 1;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,10) == -1)
					{
						if(image_index == 2 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_green))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 2;
							}
							instance_destroy();
							ds_list_add(global.list_scored,10);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,10));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 1 && ds_list_find_value(global.list_swipes,3) == 7 && ds_list_find_value(global.list_swipes,4) == 8 && ds_list_find_value(global.list_swipes,5) == 3)
		{
			if(image_index == 1)
			{
				with(instance_nearest(x,y,obj_halo_blue))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 1;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,11) == -1)
					{
						if(image_index == 3 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_red))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 3;
							}
							instance_destroy();
							ds_list_add(global.list_scored,11);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,11));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_find_value(global.list_swipes,1) == 8 && ds_list_find_value(global.list_swipes,2) == 3 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 7 && ds_list_find_value(global.list_swipes,5) == 1)
		{
			if(image_index == 1)
			{
				with(instance_nearest(x,y,obj_halo_blue))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 1;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,12) == -1)
					{
						if(image_index == 4 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_white))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 4;
							}
							instance_destroy();
							ds_list_add(global.list_scored,12);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,12));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_find_value(global.list_swipes,1) == 2 && ds_list_find_value(global.list_swipes,2) == 7 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 7 && ds_list_find_value(global.list_swipes,5) == 1)
		{
			if(image_index == 2)
			{
				with(instance_nearest(x,y,obj_halo_green))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 2;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,13) == -1)
					{
						if(image_index == 4 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_white))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 4;
							}
							instance_destroy();
							ds_list_add(global.list_scored,13);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,13));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_find_value(global.list_swipes,1) == 2 && ds_list_find_value(global.list_swipes,2) == 7 && ds_list_find_value(global.list_swipes,3) == 5 && ds_list_find_value(global.list_swipes,4) == 7 && ds_list_find_value(global.list_swipes,5) == 1)
		{
			if(image_index == 2)
			{
				with(instance_nearest(x,y,obj_halo_green))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 2;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,14) == -1)
					{
						if(image_index == 3 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_red))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 3;
							}
							instance_destroy();
							ds_list_add(global.list_scored,14);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,14));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 1 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 7 && ds_list_find_value(global.list_swipes,5) == 1)
		{
			if(image_index == 3)
			{
				with(instance_nearest(x,y,obj_halo_red))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 3;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,15) == -1)
					{
						if(image_index == 4 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_white))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 4;
							}
							instance_destroy();
							ds_list_add(global.list_scored,15);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,15));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 4 && ds_list_find_value(global.list_swipes,3) == 7 && ds_list_find_value(global.list_swipes,4) == 8 && ds_list_find_value(global.list_swipes,5) == 3)
		{
			if(image_index == 1)
			{
				with(instance_nearest(x,y,obj_halo_blue))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 1;
				}
				if(ds_list_find_index(global.list_scored,16) == -1)
				{
					with(obj_drop_biz)
					{
						if(image_index == 5 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_yellow))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 5;
							}
							instance_destroy();
							ds_list_add(global.list_scored,16);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,16));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 4 && ds_list_find_value(global.list_swipes,3) == 1 && ds_list_find_value(global.list_swipes,4) == 2 && ds_list_find_value(global.list_swipes,5) == 7)
		{
			if(image_index == 2)
			{
				with(instance_nearest(x,y,obj_halo_green))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 2;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,17) == -1)
					{
						if(image_index == 5 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_yellow))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 5;
							}
							instance_destroy();
							ds_list_add(global.list_scored,17);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,17));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 4 && ds_list_find_value(global.list_swipes,3) == 5 && ds_list_find_value(global.list_swipes,4) == 7 && ds_list_find_value(global.list_swipes,5) == 1)
		{
			if(image_index == 3)
			{
				with(instance_nearest(x,y,obj_halo_red))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 3;
				}
				with(obj_drop_biz)
				{
					if(ds_list_find_index(global.list_scored,18) == -1)
					{
						if(image_index == 5 && path_speed == 0)
						{
							with(instance_nearest(x,y,obj_halo_yellow))
							{
								instance_destroy();
							}
							with(instance_nearest(x,y,obj_token_crack))
							{
								instance_destroy();
							}
							with(instance_create_depth(x,y,-26,obj_scored_drop))
							{
								image_index = 5;
							}
							instance_destroy();
							ds_list_add(global.list_scored,18);
						}
					}
				}
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
				ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,18));
				ds_list_clear(global.list_swipes);
				global.combo = true;
				instance_destroy();
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_find_value(global.list_swipes,1) == 7 && ds_list_find_value(global.list_swipes,2) == 4 && ds_list_find_value(global.list_swipes,3) == 6 && ds_list_find_value(global.list_swipes,4) == 7 && ds_list_find_value(global.list_swipes,5) == 1)
		{
			if(image_index == 5)
			{
				with(instance_nearest(x,y,obj_halo_yellow))
				{
					instance_destroy();
				}
				with(instance_nearest(x,y,obj_token_crack))
				{
					instance_destroy();
				}
				with(instance_create_depth(x,y,-26,obj_scored_drop))
				{
					image_index = 5;
				}
					with(obj_drop_biz)
					{
						if(ds_list_find_index(global.list_scored,19) == -1)
						{
							if(image_index == 4 && path_speed == 0)
							{
								with(instance_nearest(x,y,obj_halo_white))
								{
									instance_destroy();
								}
								with(instance_nearest(x,y,obj_token_crack))
								{
									instance_destroy();
								}
								with(instance_create_depth(x,y,-26,obj_scored_drop))
								{
									image_index = 4;
								}
								instance_destroy();
								ds_list_add(global.list_scored,19);
							}
						}
					}
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
					ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,19));
					ds_list_clear(global.list_swipes);
					global.combo = true;
					instance_destroy();
				}
			}
		}
	}
	if(device_mouse_x(0) > x - global.grab_width && device_mouse_x(0) < x + global.grab_width)
	{
		if(device_mouse_y(0) > y - global.grab_height && device_mouse_y(0) < y + global.grab_height)
		{
			if(path_speed == 0 && alarm_get(0) == -1)
			{
				alarm_set(0,300);
				instance_create_depth(x,y,depth-1,obj_token_crack);
				script_execute(halo_activate);
			}
		}
	}
}