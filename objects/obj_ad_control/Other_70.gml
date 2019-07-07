///CALLBACKS
show_debug_message("GM Social Async Event...");

var type = string(ds_map_find_value(async_load, "type"));
var value = ds_map_find_value(async_load, "value");

//OTHER CALLBACKS
if(type == "heyzap_ad_loaded")
{
    if(value)
	{
	    global.pop_ad_loaded = 1;
	    show_debug_message("Pop-Up Ad loaded!");
	}
	else
	{
	    global.pop_ad_loaded = 0;
	    show_debug_message("Pop-Up Ad failed to load!");
		HeyZap_LoadInterstitial();
	}
}
else if(type == "heyzap_ad_shown")
{
    if(value)
	{
		show_debug_message("Pop-Up Ad showed!");
	}
	else
	{
		show_debug_message("Pop-Up Ad failed to show!");
	}
}
else if(type == "heyzap_ad_hidden")
{
    show_debug_message("Pop-Up Ad hidden!");
}
else if (type == "heyzap_ad_clicked")
{
    show_debug_message("Pop-Up Ad clicked!");
}
else if (type == "heyzap_reward_loaded")
{
    if(value)
	{
	    global.reward_ad_loaded = 1;
	    show_debug_message("Reward loaded!");
	}
	else
	{
	    global.reward_ad_loaded = 0;
	    show_debug_message("Reward failed to load!");
		HeyZap_LoadReward();
	}
}
else if(type == "heyzap_reward_shown")
{
    if(value)
	{
		show_debug_message("Reward showed!");
	}
	else
	{
		show_debug_message("Reward failed to show!");
	}
}
else if(type == "heyzap_reward_hidden")
{
    show_debug_message("Reward hidden!");
}
else if(type == "heyzap_reward_clicked")
{
    show_debug_message("Reward clicked!");
}