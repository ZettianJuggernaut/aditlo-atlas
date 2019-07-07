var current_sequence = obj_sequence_current_sm.image_index;
if(instance_number(obj_element) == 2)
{
	with(instance_nearest(x,y,obj_element))
	{
		instance_destroy();
	}
}
if(current_sequence < 6)
{
	obj_element.image_index = current_sequence;
}
else if(current_sequence > 5)
{
	if(current_sequence == 6)
	{
		obj_element.image_index = 0;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 1;
		}
	}
	else if(current_sequence == 7)
	{
		obj_element.image_index = 0;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 2;
		}
	}
	else if(current_sequence == 8)
	{
		obj_element.image_index = 0;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 3;
		}
	}
	else if(current_sequence == 9)
	{
		obj_element.image_index = 0;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 4;
		}
	}
	else if(current_sequence == 10)
	{
		obj_element.image_index = 1;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 2;
		}
	}
	else if(current_sequence == 11)
	{
		obj_element.image_index = 1;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 3;
		}
	}
	else if(current_sequence == 12)
	{
		obj_element.image_index = 1;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 4;
		}
	}
	else if(current_sequence == 13)
	{
		obj_element.image_index = 2;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 4;
		}
	}
	else if(current_sequence == 14)
	{
		obj_element.image_index = 2;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 3;
		}
	}
	else if(current_sequence == 15)
	{
		obj_element.image_index = 3;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 4;
		}
	}
	else if(current_sequence == 16)
	{
		obj_element.image_index = 1;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 5;
		}
	}
	else if(current_sequence == 17)
	{
		obj_element.image_index = 2;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 5;
		}
	}
	else if(current_sequence == 18)
	{
		obj_element.image_index = 3;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 5;
		}
	}
	else if(current_sequence == 19)
	{
		obj_element.image_index = 4;
		with(instance_create_depth(obj_sphee.x - 30,obj_sphee.y - 30,obj_element.depth,obj_element))
		{
			image_index = 5;
		}
	}
}