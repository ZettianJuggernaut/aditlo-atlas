vspeed = 0;
instance_create_depth(x - 150,y,depth-1,obj_watermark);
instance_create_depth(x + 255,y + 80,depth-1,obj_button_chapter);
instance_create_depth(x + 255,y + 235,depth-1,obj_button_menu);
if(global.won == true)
{
	if(global.currently_playing == 1)
	{
		if(global.currentlvl < 6)
		{
			instance_create_depth(x + 255,y - 235,depth-1,obj_button_next_level);
		}
		else if(global.currentlvl > 6 && global.currentlvl < 16)
		{
			instance_create_depth(x + 255,y - 235,depth-1,obj_button_next_level);
		}
		else if(global.currentlvl > 16 && global.currentlvl < 31)
		{
			instance_create_depth(x + 255,y - 235,depth-1,obj_button_next_level);
		}
		else if(global.currentlvl > 31 && global.currentlvl < 46)
		{
			instance_create_depth(x + 255,y - 235,depth-1,obj_button_next_level);
		}
		instance_create_depth(x + 255,y - 80,depth-1,obj_button_retry);
		instance_create_depth(obj_scroll_gameover.x - 325,obj_scroll_gameover.y - 80,obj_scroll_gameover.depth-1,obj_text_timer);
	}
}
else if(global.won == false)
{
	instance_create_depth(x + 255,y - 80,depth-1,obj_button_retry);
	if(global.currentlvl == 22 && global.donut == 0)
	{
		instance_create_depth(x - 350,y + 280,depth-1,obj_watermark_donut);
	}
	else if(global.currently_playing == 2)
	{
		instance_create_depth(obj_scroll_gameover.x + 25,obj_scroll_gameover.y - 80,obj_scroll_gameover.depth-1,obj_gameover_text_score);;
		instance_create_depth(obj_scroll_gameover.x - 325,obj_scroll_gameover.y - 80,obj_scroll_gameover.depth-1,obj_text_timer);
	}
}
instance_create_depth(x - 150,y - 240,depth-2,obj_unlocks_senor);