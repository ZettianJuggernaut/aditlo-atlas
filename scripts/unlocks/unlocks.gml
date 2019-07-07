var xx = obj_unlocked_current.x;
var yy = obj_unlocked_current.y-47;
var ddepth = obj_unlocked_current.depth - 1;
if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5mBronze")
{
	with(instance_create_depth(xx,yy,ddepth,obj_gv_level))
	{
		medal_image = 0;
	}
	with(instance_create_depth(obj_scroll_gameover.x + 25,obj_scroll_gameover.y - 80,ddepth,obj_gv_level))
	{
		image_xscale = .65;
		image_yscale = .65;
	}
	global.unlock_text = "BRONZE MEDAL";
	global.current_unlock += 1;
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5mSilver")
{
	with(instance_create_depth(xx,yy,ddepth,obj_gv_level))
	{
		medal_image = 1;
	}
	with(instance_create_depth(obj_scroll_gameover.x + 25,obj_scroll_gameover.y - 80,ddepth,obj_gv_level))
	{
		image_xscale = .65;
		image_yscale = .65;
	}
	global.unlock_text = "SILVER MEDAL";
	global.current_unlock += 1;
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5mGold")
{
	with(instance_create_depth(xx,yy,ddepth,obj_gv_level))
	{
		medal_image = 2;
	}
	with(instance_create_depth(obj_scroll_gameover.x + 25,obj_scroll_gameover.y - 80,ddepth,obj_gv_level))
	{
		image_xscale = .65;
		image_yscale = .65;
	}
	global.unlock_text = "GOLD MEDAL";
	global.current_unlock += 1;
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "4lvl_unlock")
{
	instance_create_depth(xx,yy,ddepth,obj_text_lvlunlock);
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "4cpt_unlock")
{
	instance_create_depth(xx,yy,ddepth,obj_text_cptunlock);
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5cpt_complete")
{
	instance_create_depth(xx,yy + 30,ddepth-1,obj_gameover_wreath);
	global.current_unlock += 1;
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5biz_complete")
{
	instance_create_depth(xx,yy + 30,ddepth-1,obj_gameover_wreath);
	global.current_unlock += 1;
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5lost_time")
{
	instance_create_depth(xx,yy,ddepth,obj_gameover_time);
	global.current_unlock += 1;
	if(global.currently_playing == 1)
	{
		with(instance_create_depth(obj_scroll_gameover.x + 25,obj_scroll_gameover.y - 80,ddepth,obj_gv_level))
		{
			image_xscale = .65;
			image_yscale = .65;
		}
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5lost_sphee")
{
	instance_create_depth(xx,yy+10,ddepth,obj_gameover_sphee);
	global.current_unlock += 1;
	if(global.currently_playing == 1)
	{
		with(instance_create_depth(obj_scroll_gameover.x + 25,obj_scroll_gameover.y - 80,ddepth,obj_gv_level))
		{
			image_xscale = .65;
			image_yscale = .65;
		}
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "5eod_complete")
{
	instance_create_depth(xx,yy + 30,ddepth-1,obj_gameover_wreath);
	global.current_unlock += 1;
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_eod")
{
	global.unlock_text = "END OF DAYS SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 3;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_biz")
{
	global.unlock_text = "DREAM WORLD SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 0;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_bruise")
{
	global.unlock_text = "BRUISED ATLAS SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 1;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_tu")
{
	global.unlock_text = "YOUNG ATLAS SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 12;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_elemist")
{
	global.unlock_text = "ELEMENTALIST SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 2;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_frank")
{
	global.unlock_text = "FRANKEN-ATLAS SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 6;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_ghost")
{
	global.unlock_text = "GHOST ATLAS SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 4;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_herc")
{
	global.unlock_text = "HERCULES SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 5;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_stone")
{
	global.unlock_text = "STONE STATUE SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 11;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_zeus")
{
	global.unlock_text = "ZEUS SKIN";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 13;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_elem")
{
	global.unlock_text = "ELEMENTAL SKIN PACK";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 7;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_mod")
{
	global.unlock_text = "MODERN SKIN PACK";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 10;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_genre")
{
	global.unlock_text = "GENRE SKIN PACK";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 8;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_god")
{
	global.unlock_text = "GOD SKIN PACK";
	with(instance_create_depth(xx,yy,ddepth,obj_skin_unlock))
	{
		image_index = 9;
	}
}
else if(ds_list_find_value(global.list_unlocks,global.current_unlock) == "3skin_bg")
{
	instance_create_depth(xx,yy,ddepth,obj_filter_unlock);
}
if(!instance_exists(obj_the_cat))
{
	with(obj_unlocks_senor)
	{
		alarm_set(0,180);
	}
}
if(global.won == true)
{
	with(obj_unlocks_senor)
	{
		alarm_set(1,1);
	}
}