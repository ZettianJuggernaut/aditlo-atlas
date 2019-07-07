///Touch

//Press
if(device_mouse_check_button_pressed(0,mb_left))
{
	//Drop Grab
	if(device_mouse_x(0) > x - global.grab_width && device_mouse_x(0) < x + global.grab_width)
	{
		if(device_mouse_y(0) > y - global.grab_height && device_mouse_y(0) < y + global.grab_height)
		{
			if(!instance_exists(obj_speak_bubble) && !instance_position(x,y,obj_track_cover))
			{
				if(ds_list_find_index(global.list_token_frozen,0) == -1 && obj_sequence_current.image_index == 0 && vspeed == 0)
				{
					if(image_index == 0)
					{
						instance_create_depth(x,y,depth+1,obj_halo_black);
						if(ds_list_find_index(global.list_token_black,obj_sequence_current.image_index) > 0)
						{
							if(ds_list_find_index(global.list_token_frozen,0) == -1)
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,-26,obj_halo_black);
							}
						}
						if(global.sound == 1)
						{
							audio_play_sound(sd_token,9,0);
						}
						with(instance_create(obj_cam.x-5,obj_cam.y - 180,obj_tutorial_swipe_pattern))
						{
							image_angle = 45;
						}
						with(instance_create(obj_cam.x - 85,obj_cam.y -40,obj_tutorial_swipe_pattern))
						{
							image_angle = 90; 
						}
						with(instance_create(obj_cam.x - 42,obj_cam.y + 95,obj_tutorial_swipe_pattern))
						{
							image_angle = 135;
						}
						instance_create(obj_cam.x + 38,obj_cam.y + 175,obj_tutorial_swipe_end);
						ds_list_add(global.list_token_frozen,0);
						ds_list_add(global.list_cat,"ONCE YOU HAVE THE","CORRECT COLOR TOKEN","ACTIVE, DRAW ON SCREEN","FOLLOWING THE SWIPE","SEQUENCE DEPICTED","ON YOUR HUD.","IN THIS CASE, IT","SEEMS TO BE A RATHER","CRUDE DEPICTION OF A","CRESCENT MOON. I","CREATED A GUIDE TO","ASSIST YOU.","YOU CAN DRAW","WHEREVER YOU WANT ON","SCREEN THOUGH.");
						ds_list_add(global.list_cat,"GO AHEAD, GIVE IT A","SHOT.");
						if(!instance_exists(obj_speak_bubble))
						{
							instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
						}
					}
				}
				else if(vspeed != 0)
				{
					vspeed = 0;
					if(global.sound == 1)
					{
						audio_play_sound(sd_token,9,0);
					}
					if(image_index == 1)
					{
						instance_create_depth(x,y,depth+1,obj_halo_blue);
						if(ds_list_find_index(global.list_token_blue,obj_sequence_current.image_index) > 0)
						{
							if(ds_list_find_index(global.list_token_frozen,1) == -1)
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,-26,obj_halo_blue);
							}
						}
						ds_list_add(global.list_token_frozen,1);
						if(global.first_blue == true)
						{
							ds_list_add(global.list_cat,"DEAR ME, I\'M SORRY,","IT SEEMS I FORGOT TO","EXPLAIN ABOUT THE","FRAGILITY OF THE","TOKENS IN NORMAL","CIRCUMSTANCES. ","YOU SEE, ACTIVATING","A TOKEN CHARGES IT WITH","AN INTENSE AMOUNT OF","ENERGY, CAUSING IT TO","CRACK AND EVENTUALLY","BREAK.","YOU MUST HURRY TO","COMPLETE THE SWIPE","SEQUENCE BEFORE THE");
							ds_list_add(global.list_cat,"TOKEN COMPLETELY","BREAKS AND BECOMES","USELESS.","WHY DON\'T YOU TRY","AGAIN? THIS TIME, BE","READY TO DRAW THE","CURRENT SEQUENCE","QUICKLY WHILE THE","TOKEN IS ACTIVE.","REMEMBER, YOUR","CURRENT TARGET IS JUST","UP THERE ON YOUR HUD...","THOUGH I\'M A BIT STUMPED","AS TO WHAT THAT BLUE","DRAWING IS...");
							if(!instance_exists(obj_speak_bubble))
							{
								instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
							}
							global.first_blue = false;
						}
					}
					else if(image_index == 2)
					{
						instance_create_depth(x,y,depth+1,obj_halo_green);
						if(ds_list_find_index(global.list_token_green,obj_sequence_current.image_index) > 0)
						{
							if(ds_list_find_index(global.list_token_frozen,2) == -1)
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,-26,obj_halo_green);
							}
						}
						ds_list_add(global.list_token_frozen,2);
					}
					else if(image_index == 3)
					{
						instance_create_depth(x,y,depth+1,obj_halo_red);
						if(ds_list_find_index(global.list_token_red,obj_sequence_current.image_index) > 0)
						{
							if(ds_list_find_index(global.list_token_frozen,3) == -1)
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,-26,obj_halo_red);
							}
						}
						ds_list_add(global.list_token_frozen,3);
					}
					else if(image_index == 4)
					{
						instance_create_depth(x,y,depth+1,obj_halo_white);
						if(ds_list_find_index(global.list_token_white,obj_sequence_current.image_index) > 0)
						{
							if(ds_list_find_index(global.list_token_frozen,4) == -1)
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,-26,obj_halo_white);
							}
						}
						ds_list_add(global.list_token_frozen,4);
					}
					else if(image_index == 5)
					{
						instance_create_depth(x,y,depth+1,obj_halo_yellow);
						if(ds_list_find_index(global.list_token_yellow,obj_sequence_current.image_index) > 0)
						{
							if(ds_list_find_index(global.list_token_frozen,5) == -1)
							{
								instance_create_depth(obj_sequence_current_sm.x,obj_sequence_current_sm.y,-26,obj_halo_yellow);
							}
						}
						ds_list_add(global.list_token_frozen,5);
						with(obj_sphee_tutorial)
						{
							if(alarm_get(0) != -1)
							{
								alarm_set(0,-1);
							}
						}
					}
				}
			}
		}
	}
}

//Release
if(device_mouse_check_button_released(0,mb_left))
{
	//Swipe Senor
	if(ds_list_size(global.list_swipes) == 3)
	{
		if(vspeed == 0)
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
						with(instance_create_depth(x,y,-26,obj_scored_drop))
						{
							image_index = 0;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,0));
						ds_list_add(global.list_scored,0);
						ds_list_clear(global.list_swipes);
						instance_destroy();
						instance_destroy(obj_tutorial_swipe_pattern);
						instance_destroy(obj_tutorial_swipe_end);
						instance_create(obj_cam.x+25,obj_cam.y + 75,obj_tutorial_swipe_pattern);
						with(instance_create(obj_cam.x - 130,obj_cam.y + 34,obj_tutorial_swipe_pattern))
						{
							image_angle = 315; 
						}
						with(instance_create(obj_cam.x - 152,obj_cam.y - 47,obj_tutorial_swipe_pattern))
						{
							image_angle = 180;
						}
						instance_create(obj_cam.x -40,obj_cam.y - 48,obj_tutorial_swipe_end);
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
						with(instance_create_depth(x,y,-26,obj_scored_drop))
						{
							image_index = 1;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,1));
						ds_list_add(global.list_scored,1);
						ds_list_clear(global.list_swipes);
						instance_destroy();
						instance_destroy(obj_tutorial_swipe_pattern);
						instance_destroy(obj_tutorial_swipe_end);
						with(instance_create(obj_cam.x,obj_cam.y + 100,obj_tutorial_swipe_pattern))
						{
							image_angle = 270; 
						}
						with(instance_create(obj_cam.x + 42,obj_cam.y - 56,obj_tutorial_swipe_pattern))
						{
							image_angle = 225;
						}
						instance_create(obj_cam.x + 64,obj_cam.y - 137,obj_tutorial_swipe_pattern);
						instance_create(obj_cam.x - 50,obj_cam.y - 138,obj_tutorial_swipe_end);
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
						with(instance_create_depth(x,y,-26,obj_scored_drop))
						{
							image_index = 2;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,2));
						ds_list_add(global.list_scored,2);
						ds_list_clear(global.list_swipes);
						instance_destroy();
						instance_destroy(obj_tutorial_swipe_pattern);
						instance_destroy(obj_tutorial_swipe_end);
						with(instance_create(obj_cam.x + 90,obj_cam.y-10,obj_tutorial_swipe_pattern))
						{
							image_angle = 90; 
						}
						instance_create(obj_cam.x + 31,obj_cam.y + 104,obj_tutorial_swipe_pattern);
						with(instance_create(obj_cam.x - 84,obj_cam.y + 45,obj_tutorial_swipe_pattern))
						{
							image_angle = 270;
						}
						instance_create(obj_cam.x - 84,obj_cam.y - 69,obj_tutorial_swipe_end);
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
						with(instance_create_depth(x,y,-26,obj_scored_drop))
						{
							image_index = 3;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,3));
						ds_list_add(global.list_scored,3);
						ds_list_clear(global.list_swipes);
						instance_destroy();
						instance_destroy(obj_tutorial_swipe_pattern);
						instance_destroy(obj_tutorial_swipe_end);
						with(instance_create(obj_cam.x + 171,obj_cam.y,obj_tutorial_swipe_pattern))
						{
							image_angle = 45; 
						}
						instance_create(obj_cam.x + 31,obj_cam.y + 80,obj_tutorial_swipe_pattern);
						with(instance_create(obj_cam.x - 84,obj_cam.y + 21,obj_tutorial_swipe_pattern))
						{
							image_angle = 270;
						}
						instance_create(obj_cam.x - 84,obj_cam.y - 90,obj_tutorial_swipe_end);
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
						with(instance_create_depth(x,y,-26,obj_scored_drop))
						{
							image_index = 4;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,4));
						ds_list_add(global.list_scored,4);
						ds_list_clear(global.list_swipes);
						instance_destroy();
						instance_destroy(obj_tutorial_swipe_pattern);
						instance_destroy(obj_tutorial_swipe_end);
						with(instance_create(obj_cam.x,obj_cam.y - 95,obj_tutorial_swipe_pattern))
						{
							image_angle = 135; 
						}
						instance_create(obj_cam.x + 22,obj_cam.y - 14,obj_tutorial_swipe_pattern);
						with(instance_create(obj_cam.x - 51,obj_cam.y + 27,obj_tutorial_swipe_pattern))
						{
							image_angle = 135;
						}
						instance_create(obj_cam.x + 29,obj_cam.y + 107,obj_tutorial_swipe_end);
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
						with(instance_create_depth(x,y,-26,obj_scored_drop))
						{
							image_index = 5;
						}
						ds_list_delete(global.list_token_frozen,ds_list_find_index(global.list_token_frozen,5));
						ds_list_add(global.list_scored,5);
						ds_list_clear(global.list_swipes);
						instance_destroy();
						instance_destroy(obj_tutorial_swipe_pattern);
						instance_destroy(obj_tutorial_swipe_end);
					}
				}
			}
		}
	}
	//Drop Release
	if(device_mouse_x(0) > x - global.grab_width && device_mouse_x(0) < x + global.grab_width)
	{
		if(device_mouse_y(0) > y - global.grab_height && device_mouse_y(0) < y + global.grab_height)
		{
			if(vspeed == 0 && alarm_get(0) == -1 && image_index > 0)
			{
				alarm_set(0,300);
				instance_create_depth(x,y,depth-1,obj_token_crack);
				script_execute(halo_activate);
			}
		}
	}
}