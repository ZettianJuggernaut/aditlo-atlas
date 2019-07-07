if(global.currently_playing == 0)
{
	global.unlock_text = "CHALLENGE COMPLETE";
	if(global.current_cp == 1)
	{
		with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
		{
			sprite_index = spr_selector_chapter1;
		}
	}
	else if(global.current_cp == 2)
	{
		with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
		{
			sprite_index = spr_selector_chapter2;
		}
	}
	else if(global.current_cp == 3)
	{
		with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
		{
			sprite_index = spr_selector_chapter3;
		}
	}
	else if(global.current_cp == 4)
	{
		with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
		{
			sprite_index = spr_selector_chapter4;
		}
	}
}
else if(global.currently_playing == 3)
{
	global.unlock_text = "TUTORIAL COMPLETE";
	with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
	{
		sprite_index = spr_selector_chapter0;
	}
}
else if(global.currently_playing == 4)
{
	global.unlock_text = "END OF DAYS COMPLETE";
	with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
	{
		sprite_index = spr_selector_chapter0;
	}
}
else if(global.currently_playing == 5)
{
	global.unlock_text = "DREAM WORLD COMPLETE";
	with(instance_create_depth(x,y-50,depth+1,obj_gameover_cpt))
	{
		sprite_index = spr_selector_chapter0;
	}
}