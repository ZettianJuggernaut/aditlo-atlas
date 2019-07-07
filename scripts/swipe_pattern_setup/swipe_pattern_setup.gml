var ddepth = obj_sequence_current.depth - 1;
if(ds_list_find_index(global.list_swipes,9) == -1)
{
	if(obj_sequence_current.image_index == 0)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 6 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
			with(instance_create_depth(obj_sequence_current.x - 44,obj_sequence_current.y,ddepth,obj_sequence_glow))
			{
				image_index = 0;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 5 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{ 
				image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x - 22,obj_sequence_current.y + 45,ddepth,obj_sequence_glow))
			{
				image_index = 1;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 1)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 45;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 45;
			}
			with(instance_create_depth(obj_sequence_current.x - 22,obj_sequence_current.y + 5,ddepth,obj_sequence_glow))
			{
				image_index = 1;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 8 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 270;
			}
			with(obj_swipe_senor_cone)
			{ 
				image_angle = 270;
			}
			with(instance_create_depth(obj_sequence_current.x - 22,obj_sequence_current.y - 17,ddepth,obj_sequence_glow))
			{
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 2)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 315;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 315;
			}
			with(instance_create_depth(obj_sequence_current.x + 23,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
			{
				image_index = 1;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 2 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 23,obj_sequence_current.y - 38,ddepth,obj_sequence_glow))
			{
				image_angle = 90;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 3)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 2,obj_sequence_current.y + 22,ddepth,obj_sequence_glow))
			{
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			instance_create_depth(obj_sequence_current.x - 20,obj_sequence_current.y,ddepth,obj_sequence_glow);
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 4)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 6 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 15,obj_sequence_current.y + 26,ddepth,obj_sequence_glow))
			{
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			instance_create_depth(obj_sequence_current.x - 38,obj_sequence_current.y + 5,ddepth,obj_sequence_glow);
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 5)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90
			}
			with(obj_swipe_senor_cone)
		    {
				image_angle = 90
		    }
			with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
		    with(obj_swipe_senor_wall)
		    {
				image_angle = 225;
		    }
		    with(obj_swipe_senor_cone)
		    {
				image_angle = 225;
		    }
			with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y + 21,ddepth,obj_sequence_glow))
			{
				image_index = 1;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 6)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
		    }
		    with(obj_swipe_senor_cone)
		    {
				image_angle = 90;
		    }
		}
		else if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 45;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 45;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y - 30,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 8 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 270;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 270;
			}
			with(instance_create_depth(obj_sequence_current.x - 16,obj_sequence_current.y - 48,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 3 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
			with(instance_create_depth(obj_sequence_current.x - 18,obj_sequence_current.y - 30,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
			with(instance_create_depth(obj_sequence_current.x - 35,obj_sequence_current.y + 5,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 5 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
			image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y + 40,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 7)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 315
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 315
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 33,ddepth,obj_sequence_glow))
			{
				image_index = 3;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 2 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 51,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 7 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135
			}
			with(instance_create_depth(obj_sequence_current.x - 18,obj_sequence_current.y - 33,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180
			}
			with(instance_create_depth(obj_sequence_current.x - 36,obj_sequence_current.y + 2,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 5 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225
			}
			with(instance_create_depth(obj_sequence_current.x - 18,obj_sequence_current.y + 38,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 8)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 17,obj_sequence_current.y - 17,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y - 34,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 1 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
			with(instance_create_depth(obj_sequence_current.x - 19,obj_sequence_current.y - 34,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
			with(instance_create_depth(obj_sequence_current.x - 37,obj_sequence_current.y + 2,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 5 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x - 19,obj_sequence_current.y + 37,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 9)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 6 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 11,obj_sequence_current.y - 18,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 28,obj_sequence_current.y - 35,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 1 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135
			}
			with(instance_create_depth(obj_sequence_current.x - 49,obj_sequence_current.y - 35,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
			with(instance_create_depth(obj_sequence_current.x - 65,obj_sequence_current.y,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 5 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
					image_angle = 225
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225
			}
			with(instance_create_depth(obj_sequence_current.x - 47,obj_sequence_current.y + 36,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 10)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 45;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 45;
			}
			with(instance_create_depth(obj_sequence_current.x - 19,obj_sequence_current.y + 35,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 8 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 270;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 270;
			}
			with(instance_create_depth(obj_sequence_current.x - 19,obj_sequence_current.y + 18,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 3 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 1,obj_sequence_current.y,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 1 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 315
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 315
			}
			with(instance_create_depth(obj_sequence_current.x + 17,obj_sequence_current.y - 36,ddepth,obj_sequence_glow))
			{
				image_index = 3;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 2 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 17,obj_sequence_current.y - 55,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 11)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 35,obj_sequence_current.y + 37,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x + 17,obj_sequence_current.y + 20,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 1 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
			image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 2,obj_sequence_current.y + 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 7 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 45;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 45;
			}
			with(instance_create_depth(obj_sequence_current.x - 37,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 8 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 270;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 270;
			}
			with(instance_create_depth(obj_sequence_current.x - 37,obj_sequence_current.y - 33,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 12)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 7 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 45;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 45;
			}
			with(instance_create_depth(obj_sequence_current.x - 1,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 8 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 270;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 270;
			}
			with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y - 18,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 3 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
			with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
			image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 36,obj_sequence_current.y + 16,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 7 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 53,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 13)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 315;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 315;
			}
			with(instance_create_depth(obj_sequence_current.x + 36,obj_sequence_current.y - 2,ddepth,obj_sequence_glow))
			{
				image_index = 3;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 2 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 36,obj_sequence_current.y - 20,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 7 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
			with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y - 2,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 35,obj_sequence_current.y + 15,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 7 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 52,obj_sequence_current.y - 2,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 14)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 1 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 315;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 315;
			}
			with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
			{
				image_index = 3;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 2 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 34,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 7 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
			with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 5 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y + 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 7 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 34,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 15)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 5 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 36,obj_sequence_current.y + 17,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 1 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
			with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 35,obj_sequence_current.y + 16,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 7 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 54,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 16)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y + 18,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 4 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y + 35,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 7 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 45;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 45;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y + 17,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 8 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 270;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 270;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 270;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 17)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y + 1,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y + 19,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 4 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y + 19,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 1 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 315;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 315;
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
			{
				image_index = 3;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 2 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 35,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 18)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y - 18,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 4 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 180;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 180;
			}
			with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y + 36,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 5 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y + 53,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 7 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 16,obj_sequence_current.y + 36,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
	else if(obj_sequence_current.image_index == 19)
	{
		if(ds_list_empty(global.list_swipes))
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
		}
		else if(ds_list_find_value(global.list_swipes,0) == 4 && ds_list_size(global.list_swipes) == 1)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x + 20,obj_sequence_current.y - 19,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,1) == 7 && ds_list_size(global.list_swipes) == 2)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 225;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 225;
			}
			with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 270;
			}
		}
		else if(ds_list_find_value(global.list_swipes,2) == 4 && ds_list_size(global.list_swipes) == 3)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 135;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 135;
			}
			with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y + 35,ddepth,obj_sequence_glow))
			{
				image_index = 3;
				image_angle = 180;
			}
		}
		else if(ds_list_find_value(global.list_swipes,3) == 6 && ds_list_size(global.list_swipes) == 4)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 90;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 90;
			}
			with(instance_create_depth(obj_sequence_current.x - 16,obj_sequence_current.y + 52,ddepth,obj_sequence_glow))
			{
				image_index = 2;
				image_angle = 90;
			}
		}
		else if(ds_list_find_value(global.list_swipes,4) == 7 && ds_list_size(global.list_swipes) == 5)
		{
			with(obj_swipe_senor_wall)
			{
				image_angle = 0;
			}
			with(obj_swipe_senor_cone)
			{
				image_angle = 0;
			}
			with(instance_create_depth(obj_sequence_current.x - 33,obj_sequence_current.y + 35,ddepth,obj_sequence_glow))
			{
				image_index = 2;
			}
		}
		else
		{
			instance_destroy(obj_swipe_senor_wall);
			instance_destroy(obj_swipe_senor_cone);
			with(obj_sequence_glow)
			{
				image_alpha = 1;
				alarm_set(0,-1);
				alarm_set(1,-1);
			}
		}
	}
}