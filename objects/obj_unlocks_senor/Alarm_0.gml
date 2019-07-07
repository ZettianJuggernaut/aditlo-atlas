if(ds_list_size(global.list_unlocks) != global.current_unlock)
{
	if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "4lvl_unlock")
	{
	 with(obj_text_lvlunlock)
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "4cpt_unlock")
	{
		with(obj_text_cptunlock)
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_bg")
	{
		with(instance_nearest(x,y,obj_filter_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_eod")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_biz")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_tu")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_bruise")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_elemist")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_frank")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_ghost")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_stone")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_zeus")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_herc")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_elem")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_mod")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_god")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
	else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_genre")
	{
		with(instance_nearest(x,y,obj_skin_unlock))
		{
			script_execute(move_unlocked);
			alarm_set(0,1);
		}
	}
}