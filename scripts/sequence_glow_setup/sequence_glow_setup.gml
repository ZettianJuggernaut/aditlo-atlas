with(obj_sequence_glow)
{
  instance_destroy();
}
var ddepth = obj_sequence_current.depth-1;
if(obj_sequence_current.image_index == 0)
{
	with(instance_create_depth(obj_sequence_current.x - 22,obj_sequence_current.y - 44,ddepth,obj_sequence_glow))
	{
		image_index = 1
		image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 1)
{
	with(instance_create_depth(obj_sequence_current.x + 22,obj_sequence_current.y + 27,ddepth,obj_sequence_glow))
	{
		image_angle = 90;
	}
}
else if(obj_sequence_current.image_index == 2)
{
	instance_create_depth(obj_sequence_current.x,obj_sequence_current.y + 29,ddepth,obj_sequence_glow);
}
else if(obj_sequence_current.image_index == 3)
{
	with(instance_create_depth(obj_sequence_current.x + 25,obj_sequence_current.y,ddepth,obj_sequence_glow))
	{
		image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 4)
{
	with(instance_create_depth(obj_sequence_current.x + 29,obj_sequence_current.y + 4,ddepth,obj_sequence_glow))
	{
		image_index = 1;
		image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 5)
{
	with(instance_create_depth(obj_sequence_current.x,obj_sequence_current.y - 24,ddepth,obj_sequence_glow))
	{
		image_index = 1;
		image_angle = 270;
	}
}
else if(obj_sequence_current.image_index == 6)
{
	with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y - 13,ddepth,obj_sequence_glow))
	{
	    image_index = 2;
	    image_angle = 90;
	}
}
else if(obj_sequence_current.image_index == 7)
{
	with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y + 3,ddepth,obj_sequence_glow))
	{
		image_index = 2;
	}
}
else if(obj_sequence_current.image_index == 8)
{
	with(instance_create_depth(obj_sequence_current.x + 34,obj_sequence_current.y - 34,ddepth,obj_sequence_glow))
	{
	    image_index = 2;
	    image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 9)
{
	with(instance_create_depth(obj_sequence_current.x + 25,obj_sequence_current.y - 35,ddepth,obj_sequence_glow))
	{
		image_index = 3;
		image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 10)
{
	with(instance_create_depth(obj_sequence_current.x + 17,obj_sequence_current.y + 53,ddepth,obj_sequence_glow))
	{
		image_index = 2;
		image_angle = 90;
	}
}
else if(obj_sequence_current.image_index == 11)
{
	with(instance_create_depth(obj_sequence_current.x + 52,obj_sequence_current.y + 20,ddepth,obj_sequence_glow))
	{
		image_index = 2;
		image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 12)
{
	with(instance_create_depth(obj_sequence_current.x + 35,obj_sequence_current.y + 17,ddepth,obj_sequence_glow))
	{
		image_index = 2;
		image_angle = 90;
	}
}
else if(obj_sequence_current.image_index == 13)
{
	with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y + 33,ddepth,obj_sequence_glow))
	{
		image_index = 2;
	}
}
else if(obj_sequence_current.image_index == 14)
{
	with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y + 19,ddepth,obj_sequence_glow))
	{
		image_index = 2;
	}
}
else if(obj_sequence_current.image_index == 15)
{
	with(instance_create_depth(obj_sequence_current.x + 53,obj_sequence_current.y - 1,ddepth,obj_sequence_glow))
	{
		image_index = 2;
		image_angle = 180;
	}
}
else if(obj_sequence_current.image_index == 16)
{
	with(instance_create_depth(obj_sequence_current.x + 18,obj_sequence_current.y - 18,ddepth,obj_sequence_glow))
	{
		image_index = 3;
		image_angle = 270;
	}
}
else if(obj_sequence_current.image_index == 17)
{
	with(instance_create_depth(obj_sequence_current.x - 17,obj_sequence_current.y - 16,ddepth,obj_sequence_glow))
	{
		image_index = 3;
		image_angle = 270;
	}
}
else if(obj_sequence_current.image_index == 18)
{
	with(instance_create_depth(obj_sequence_current.x + 1,obj_sequence_current.y - 36,ddepth,obj_sequence_glow))
	{
		image_index = 3;
		image_angle = 270;
	}
}
else if(obj_sequence_current.image_index == 19)
{
	with(instance_create_depth(obj_sequence_current.x + 19,obj_sequence_current.y - 37,ddepth,obj_sequence_glow))
	{
		image_index = 3;
		image_angle = 270;
	}
}
