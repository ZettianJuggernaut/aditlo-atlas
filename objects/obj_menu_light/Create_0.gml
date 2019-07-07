if(x == 0)
{
	sprite_index = spr_menu_bleam;
	if(global.farrest_cp > 3)
	{
		sprite_index = spr_menu_light;
		image_speed = 0;
		alarm_set(0,1);
		image_index = irandom(3);
		instance_create_depth(x + 282,y + 177,depth,obj_torch_light);
		instance_create_depth(x + 1090,y + 177,depth,obj_torch_light);
	}
}
else if(x == 1408)
{
	sprite_index = spr_menu_bleam;
	if(global.farrest_cp > 0)
	{
		sprite_index = spr_menu_light;
		image_speed = 0;
		alarm_set(0,1);
		image_index = irandom(3);
		instance_create_depth(x + 282,y + 177,depth,obj_torch_light);
		instance_create_depth(x + 1090,y + 177,depth,obj_torch_light);
	}
}
else if(x == 2816)
{
	if(global.farrest_cp > 0)
	{
		sprite_index = spr_menu_bleam;
		if(global.farrest_cp > 1)
		{
			sprite_index = spr_menu_light;
			image_speed = 0;
			alarm_set(0,1);
			image_index = irandom(3);
			instance_create_depth(x + 282,y + 177,depth,obj_torch_light);
			instance_create_depth(x + 1090,y + 177,depth,obj_torch_light);
		}
	}
}
else if(x == 4224)
{
	if(global.farrest_cp > 1)
	{
		sprite_index = spr_menu_bleam;
		if(global.farrest_cp > 2)
		{
			sprite_index = spr_menu_light;
			image_speed = 0;
			alarm_set(0,1);
			image_index = irandom(3);
			instance_create_depth(x + 282,y + 177,depth,obj_torch_light);
			instance_create_depth(x + 1090,y + 177,depth,obj_torch_light);
		}
	}
}
else if(x == 5632)
{
	if(global.farrest_cp > 2)
	{
		sprite_index = spr_menu_bleam;
		if(global.farrest_cp > 3)
		{
			sprite_index = spr_menu_light;
			image_speed = 0;
			alarm_set(0,1);
			image_index = irandom(3);
			instance_create_depth(x + 282,y + 177,depth,obj_torch_light);
			instance_create_depth(x + 1090,y + 177,depth,obj_torch_light);
		}
	}
}