vspeed = 0;
if(global.open_chapter > 0)
{
	instance_create_depth(x,y - 250,-60,obj_button_challenge);
	instance_create_depth(x,y - 160,-60,obj_lvl_divider);
	instance_create_depth(x - 300,y - 75,-60,obj_selector_level);
	instance_create_depth(x - 150,y - 75,-60,obj_selector_level);
	instance_create_depth(x,y - 75,-60,obj_selector_level);
	instance_create_depth(x + 150,y - 75,-60,obj_selector_level);
	instance_create_depth(x + 300,y - 75,-60,obj_selector_level);
	if(global.open_chapter > 1)
	{
		instance_create_depth(x - 300,y + 75,-60,obj_selector_level);
		instance_create_depth(x - 150,y + 75,-60,obj_selector_level);
		instance_create_depth(x,y + 75,-60,obj_selector_level);
		instance_create_depth(x + 150,y + 75,-60,obj_selector_level);
		instance_create_depth(x + 300,y + 75,-60,obj_selector_level);
		if(global.open_chapter > 2)
		{
			instance_create_depth(x - 300,y + 225,-60,obj_selector_level);
			instance_create_depth(x - 150,y + 225,-60,obj_selector_level);
			instance_create_depth(x,y + 225,-60,obj_selector_level);
			instance_create_depth(x + 150,y + 225,-60,obj_selector_level);
			instance_create_depth(x + 300,y + 225,-60,obj_selector_level);
		}
	}
	if(global.dream_world >= global.open_chapter)
	{
		instance_create_depth(x,y,-59,obj_watermark_chapter);
	}
}
else
{
	instance_create_depth(x,y - 250,-60,obj_button_tutorial);
	instance_create_depth(x,y - 125,-60,obj_button_endless);
	if(global.eod == 1 || global.dream_world == 4)
	{
		instance_create_depth(x,y - 20,-60,obj_lvl_divider);
		if(global.eod == 1)
		{
			instance_create_depth(x,y + 75,-60,obj_button_eod);
		}
		if(global.dream_world == 4)
		{
			instance_create_depth(x,y + 200,-60,obj_button_bizarro);
		}
	}
}