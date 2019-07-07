var level = "lvl" + string(global.currentlvl - 1);
var save_level = "lvl" + string(global.currentlvl - 1) + "s";
if(achievement_available() && ds_map_find_value(global.map_lvl_success,level) == 0)
{
	achievement_increment("CgkIpuaHvKwHEAIQBA",1);
}
if(global.time_remaining > global.fail_gold)
{
	if(ds_map_find_value(global.map_lvl_success,level) < 3)
	{
		global.gold_medals++;
		ds_map_replace(global.map_lvl_success,level,3);
		ini_open("save.ini");
		ini_write_real("progress",save_level,3);
		ini_write_real("achiev","goldmedals",global.gold_medals);
		ini_close();
		if(achievement_available())
		{
			achievement_increment("CgkIpuaHvKwHEAIQCQ",1);
		}
	}
	ds_list_add(global.list_unlocks,"5mGold");
}
else if(global.time_remaining > global.fail_silver)
{
	if(ds_map_find_value(global.map_lvl_success,level) < 2)
	{
		ds_map_replace(global.map_lvl_success,level,2);
		ini_open("save.ini");
		ini_write_real("progress",save_level,2);
		ini_close();
	}
	ds_list_add(global.list_unlocks,"5mSilver");
}
else
{
    if(ds_map_find_value(global.map_lvl_success,level) < 1)
    {
		ds_map_replace(global.map_lvl_success,level,1);
		ini_open("save.ini");
		ini_write_real("progress",save_level,1);
		ini_close();
    }
	ds_list_add(global.list_unlocks,"5mBronze");
}