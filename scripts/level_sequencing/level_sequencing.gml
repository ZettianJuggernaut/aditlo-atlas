if(global.currentlvl == 1)
{
	ds_list_add(global.list_sequencing,0,1,2,3,4,5);
	ds_list_add(global.list_drop_farleft,0,0,1,1,2,2,3,3,4,4,5,5);
	ds_list_add(global.list_drop_left,0,0,1,1,2,2,3,3,4,4,5,5);
	ds_list_add(global.list_drop_right,0,0,1,1,2,2,3,3,4,4,5,5);
	ds_list_add(global.list_drop_farright,0,0,1,1,2,2,3,3,4,4,5,5);
	global.fail_gold = 35;
	global.fail_silver = 22;
	instance_create_depth(obj_timer_bar.x - 144,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
	with(instance_create_depth(obj_timer_bar.x - 92,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
	{
		image_index = 1;
	}
	with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
	{
		image_index = 2;
	}
	if(global.dream_world == 0)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0]) + random_range(100,350),0,obj_spawn_dragon);
	}
}
else if(global.currentlvl == 2)
{
  ds_list_add(global.list_sequencing,5,4,3,2,1,0);
  ds_list_add(global.list_drop_farleft,0,0,4,4,2,2,3,3,4,4,0,0);
  ds_list_add(global.list_drop_left,0,0,1,4,2,3,2,2,4,4,5,0);
  ds_list_add(global.list_drop_right,0,5,1,1,3,3,3,2,4,1,5,5);
  ds_list_add(global.list_drop_farright,5,5,1,1,2,2,3,3,1,1,5,5);
  global.fail_gold = 35;
  global.fail_silver = 23;
  instance_create_depth(obj_timer_bar.x - 144,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 96,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 3)
{
  ds_list_add(global.list_sequencing,2,4,2,4,2,4,2,4);
  ds_list_add(global.list_drop_farleft,2,4,0,5,2,4);
  ds_list_add(global.list_drop_left,0,5,2,4,0,5);
  ds_list_add(global.list_drop_right,0,5,2,4,0,5);
  ds_list_add(global.list_drop_farright,2,4,0,5,2,4);
  global.fail_gold = 40;
  global.fail_silver = 30;
  instance_create_depth(obj_timer_bar.x - 164,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 124,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 4)
{
  ds_list_add(global.list_sequencing,1,3,1,3,1,3,1,3);
  ds_list_add(global.list_drop_farleft,1,4,2,4,2,4);
  ds_list_add(global.list_drop_left,2,3,2,4,2,3);
  ds_list_add(global.list_drop_right,2,4,1,4,1,4);
  ds_list_add(global.list_drop_farright,2,4,2,3,2,4);
  global.fail_gold = 41;
  global.fail_silver = 30;
  instance_create_depth(obj_timer_bar.x - 168,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 124,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 5)
{
  ds_list_add(global.list_sequencing,0,5,0,5,0,5,0,5);
  ds_list_add(global.list_drop_farleft,2,4,3,0,3,3);
  ds_list_add(global.list_drop_left,2,5,2,1,3,2);
  ds_list_add(global.list_drop_right,2,4,4,1,5,4);
  ds_list_add(global.list_drop_farright,0,4,1,1,3,1);
  global.fail_gold = 35;
  global.fail_silver = 25;
  instance_create_depth(obj_timer_bar.x - 144,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 104,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 6)
{
  ds_list_add(global.list_sequencing,4,1,0,2,3,5);
  ds_list_add(global.list_drop_farleft,4,3,5,4,2,0,2,5,5);
  ds_list_add(global.list_drop_left,2,3,5,0,2,0,3,3,5);
  ds_list_add(global.list_drop_right,2,1,5,0,1,0,2,5,5);
  ds_list_add(global.list_drop_farright,4,1,5,4,1,0,3,3,5);
  global.fail_gold = 41;
  global.fail_silver = 29;
  instance_create_depth(obj_timer_bar.x - 168,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 120,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 7)
{
  ds_list_add(global.list_sequencing,5,5,3,2,0,1,4,4);
  ds_list_add(global.list_drop_farleft,5,4,1,0,2,3,0,1,3,2,4,1);
  ds_list_add(global.list_drop_left,4,5,1,3,2,3,5,1,3,4,0,1);
  ds_list_add(global.list_drop_right,5,4,1,3,2,3,5,5,3,4,0,1);
  ds_list_add(global.list_drop_farright,4,5,1,0,2,3,0,5,3,2,4,1);
  global.fail_gold = 35;
  global.fail_silver = 18;
  instance_create_depth(obj_timer_bar.x - 144,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 76,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 8)
{
  ds_list_add(global.list_sequencing,0,0,0,0,0,0,0,0,0,0);
  ds_list_add(global.list_drop_farleft,2,3,4,1,2,0,4,0,5);
  ds_list_add(global.list_drop_left,1,2,3,4,1,2,0,4,0);
  ds_list_add(global.list_drop_right,5,1,0,3,0,1,2,3,4);
  ds_list_add(global.list_drop_farright,5,0,1,0,3,4,1,2,3);
  global.fail_gold = 32;
  global.fail_silver = 19;
  instance_create_depth(obj_timer_bar.x - 132,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 80,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 9)
{
  ds_list_add(global.list_sequencing,2,2,2,2,2,2,2,2,2,2);
  ds_list_add(global.list_drop_farleft,2,2,0,2,3,1,2,4,5);
  ds_list_add(global.list_drop_left,5,4,0,1,3,1,0,4,5);
  ds_list_add(global.list_drop_right,5,4,0,1,3,1,0,4,5);
  ds_list_add(global.list_drop_farright,5,4,2,1,3,2,0,2,2);
  global.fail_gold = 34;
  global.fail_silver = 20;
  instance_create_depth(obj_timer_bar.x - 140,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 84,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 10)
{
  ds_list_add(global.list_sequencing,3,3,3,3,3,3,3,3,3,3);
  ds_list_add(global.list_drop_farleft,0,3,0,0,0,0,0,3,0,0);
  ds_list_add(global.list_drop_left,2,2,2,3,2,2,3,2,2,2);
  ds_list_add(global.list_drop_right,3,4,4,3,4,4,3,4,4,3);
  ds_list_add(global.list_drop_farright,5,5,3,5,5,5,5,5,3,5);
  global.fail_gold = 36;
  global.fail_silver = 23;
  instance_create_depth(obj_timer_bar.x - 148,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 96,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 11)
{
  ds_list_add(global.list_sequencing,5,5,5,5,5,5,5,5,5,5);
  ds_list_add(global.list_drop_farleft,5,4,3,4,5,3,4,5,3,3);
  ds_list_add(global.list_drop_left,4,5,3,4,5,3,5,4,3,3);
  ds_list_add(global.list_drop_right,5,4,3,4,5,3,4,5,3,3);
  ds_list_add(global.list_drop_farright,4,5,3,4,5,3,5,4,3,3);
  global.fail_gold = 33;
  global.fail_silver = 19;
  instance_create_depth(obj_timer_bar.x - 136,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 80,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 12)
{
  ds_list_add(global.list_sequencing,1,1,1,1,1,1,1,1,1,1);
  ds_list_add(global.list_drop_farleft,2,1,2,0,2,1,2,0,1,0);
  ds_list_add(global.list_drop_left,2,2,2,0,1,2,1,0,2,0);
  ds_list_add(global.list_drop_right,2,2,1,0,2,2,1,0,2,0);
  ds_list_add(global.list_drop_farright,1,2,1,0,2,2,2,0,1,0);
  global.fail_gold = 35;
  global.fail_silver = 24;
  instance_create_depth(obj_timer_bar.x - 140,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 100,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 13)
{
  ds_list_add(global.list_sequencing,4,4,4,4,4,4,4,4,4,4);
  ds_list_add(global.list_drop_farleft,4,2,2,2,2,2,4,2,2,2);
  ds_list_add(global.list_drop_left,2,2,2,2,4,2,4,2,4,2);
  ds_list_add(global.list_drop_right,4,2,4,2,2,2,2,2,4,2);
  ds_list_add(global.list_drop_farright,2,2,4,2,4,2,2,2,2,2);
  global.fail_gold = 37;
  global.fail_silver = 26;
  instance_create_depth(obj_timer_bar.x - 152,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 108,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 14)
{
  ds_list_add(global.list_sequencing,0,0,1,1,2,2,3,3,4,4,5,5);
  ds_list_add(global.list_drop_farleft,0,1,2,2,4,5);
  ds_list_add(global.list_drop_left,0,1,2,3,4,5);
  ds_list_add(global.list_drop_right,0,0,2,3,3,5);
  ds_list_add(global.list_drop_farright,5,1,1,3,4,4);
  global.fail_gold = 27;
  global.fail_silver = 14;
  instance_create_depth(obj_timer_bar.x - 112,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 60,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 15)
{
  ds_list_add(global.list_sequencing,1,2,4,0,1,5,2,3,4,5,3,0);
  ds_list_add(global.list_drop_farleft,0,3,5,4,1,2,2,1,0,4,2,1);
  ds_list_add(global.list_drop_left,1,3,5,4,3,5,5,1,4,5,3,1);
  ds_list_add(global.list_drop_right,0,3,5,0,3,2,5,1,0,4,2,0);
  ds_list_add(global.list_drop_farright,0,2,4,4,3,2,5,3,0,4,2,1);
  global.fail_gold = 28;
  global.fail_silver = 11;
  instance_create_depth(obj_timer_bar.x - 112,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 48,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 16)
{
  ds_list_add(global.list_sequencing,6,18,13);
  ds_list_add(global.list_drop_farleft,1,2,5,5,2,0);
  ds_list_add(global.list_drop_left,4,4,5,3,4,0);
  ds_list_add(global.list_drop_right,0,4,3,5,0,1);
  ds_list_add(global.list_drop_farright,2,2,3,3,1,1);
  global.fail_gold = 43;
  global.fail_silver = 31;
  instance_create_depth(obj_timer_bar.x - 176,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 128,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 17)
{
  ds_list_add(global.list_sequencing,1,16,5,18,3,11);
  ds_list_add(global.list_drop_farleft,0,1,4,0,2,4,0,2,3,0,2,4);
  ds_list_add(global.list_drop_left,0,2,1,0,2,4,3,2,4,0,2,4);
  ds_list_add(global.list_drop_right,0,2,5,0,5,5,0,2,4,3,2,4);
  ds_list_add(global.list_drop_farright,0,2,4,0,2,4,5,2,4,0,1,1);
  global.fail_gold = 33;
  global.fail_silver = 17;
  instance_create_depth(obj_timer_bar.x - 136,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 72,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 18)
{
  ds_list_add(global.list_sequencing,0,7,2,13,4,9);
  ds_list_add(global.list_drop_farleft,0,3,2,1,3,5,1,3,5,1,0,5);
  ds_list_add(global.list_drop_left,1,3,5,1,3,5,1,3,4,4,3,5);
  ds_list_add(global.list_drop_right,1,3,5,1,2,5,4,3,5,1,3,5);
  ds_list_add(global.list_drop_farright,1,0,5,1,3,2,1,3,5,1,3,5);
  global.fail_gold = 33;
  global.fail_silver = 10;
  instance_create_depth(obj_timer_bar.x - 136,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 44,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 19)
{
  ds_list_add(global.list_sequencing,9);
  ds_list_add(global.list_drop_farleft,1,2,3,3,3,2,1,2);
  ds_list_add(global.list_drop_left,1,1,2,3,2,1,1,2);
  ds_list_add(global.list_drop_right,2,1,1,2,1,1,2,4);
  ds_list_add(global.list_drop_farright,3,2,1,0,1,2,3,3);
  global.fail_gold = 39;
  global.fail_silver = 27;
  instance_create_depth(obj_timer_bar.x - 160,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 112,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 20)
{
  ds_list_add(global.list_sequencing,5,17,18,19,16);
  ds_list_add(global.list_drop_farleft,0,0,2,0,4,0,3,5,3);
  ds_list_add(global.list_drop_left,0,5,3,0,3,5,1,0,4);
  ds_list_add(global.list_drop_right,0,0,4,5,1,0,2,0,1);
  ds_list_add(global.list_drop_farright,5,0,1,0,2,0,4,0,2);
  global.fail_gold = 34;
  global.fail_silver = 19;
  instance_create_depth(obj_timer_bar.x - 140,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 80,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 21)
{
  ds_list_add(global.list_sequencing,7,8,9,6,0);
  ds_list_add(global.list_drop_farleft,2,0,3,0,1,5,4,5,5);
  ds_list_add(global.list_drop_left,3,5,2,5,4,5,1,0,5);
  ds_list_add(global.list_drop_right,4,5,1,5,3,5,2,5,0);
  ds_list_add(global.list_drop_farright,1,5,4,5,2,0,3,5,5);
  global.fail_gold = 30;
  global.fail_silver = 14;
  instance_create_depth(obj_timer_bar.x - 124,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 60,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 22)
{
  ds_list_add(global.list_sequencing,1,10,12,6,16,11);
  ds_list_add(global.list_drop_farleft,1,1,1,1,1,1,5,1);
  ds_list_add(global.list_drop_left,1,1,2,4,1,1,1,1);
  ds_list_add(global.list_drop_right,1,1,1,1,1,1,1,3);
  ds_list_add(global.list_drop_farright,1,1,1,1,1,0,1,1);
  global.fail_gold = 20;
  global.fail_silver = 7;
  instance_create_depth(obj_timer_bar.x - 80,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 32,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 23)
{
  ds_list_add(global.list_sequencing,3,18,14,11,8,15);
  ds_list_add(global.list_drop_farleft,0,2,5,3,1,5);
  ds_list_add(global.list_drop_left,2,1,0,2,5,2);
  ds_list_add(global.list_drop_right,4,4,1,0,2,3);
  ds_list_add(global.list_drop_farright,5,3,4,1,4,0);
  global.fail_gold = 27;
  global.fail_silver = 15;
  instance_create_depth(obj_timer_bar.x - 112,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 64,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 24)
{
  ds_list_add(global.list_sequencing,2,17,13,14,10,7);
  ds_list_add(global.list_drop_farleft,2,2,4,2,1,2);
  ds_list_add(global.list_drop_left,2,5,4,3,1,0);
  ds_list_add(global.list_drop_right,2,5,4,3,1,0);
  ds_list_add(global.list_drop_farright,2,5,2,3,2,0);
  global.fail_gold = 19;
  global.fail_silver = 7;
  instance_create_depth(obj_timer_bar.x - 80,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 32,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 25)
{
  ds_list_add(global.list_sequencing,12,19,9,15,13);
  ds_list_add(global.list_drop_farleft,4,0,0,4,3,5,4,2,2,4,1,3,4,5,5);
  ds_list_add(global.list_drop_left,4,0,0,4,3,5,4,2,2,4,1,3,4,5,5);
  ds_list_add(global.list_drop_right,4,0,1,4,3,3,4,2,0,4,1,1,4,5,2);
  ds_list_add(global.list_drop_farright,4,0,1,4,3,3,4,2,0,4,1,1,4,5,2);
  global.fail_gold = 23;
  global.fail_silver = 11;
  instance_create_depth(obj_timer_bar.x - 96,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 48,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 26)
{
  ds_list_add(global.list_sequencing,15,18,17,10,6,9);
  ds_list_add(global.list_drop_farleft,4,1,3,0,4,0,2,5,5,0,3);
  ds_list_add(global.list_drop_left,2,3,2,4,0,4,3,1,3,2,2);
  ds_list_add(global.list_drop_right,1,2,1,0,4,2,5,3,5,3,0);
  ds_list_add(global.list_drop_farright,1,1,2,5,5,0,3,5,1,2,2);
  global.fail_gold = 21;
  global.fail_silver = 10;
  instance_create_depth(obj_timer_bar.x - 88,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 40,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 27)
{
  ds_list_add(global.list_sequencing,17,17,17,17,17,17);
  ds_list_add(global.list_drop_farleft,3,4,1,3,0,2,3,4,1,3);
  ds_list_add(global.list_drop_left,2,3,4,0,1,5,1,5,4,0);
  ds_list_add(global.list_drop_right,0,1,5,1,3,4,0,2,0,1);
  ds_list_add(global.list_drop_farright,5,0,2,3,4,1,3,0,1,3);
  global.fail_gold = 28;
  global.fail_silver = 16;
  instance_create_depth(obj_timer_bar.x - 112,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 64,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 28)
{
  ds_list_add(global.list_sequencing,11,11,11,11,11,11);
  ds_list_add(global.list_drop_farleft,1,0,0,0,0,0,1,0,0,0);
  ds_list_add(global.list_drop_left,2,2,3,2,2,2,2,2,2,2);
  ds_list_add(global.list_drop_right,4,4,4,3,4,1,4,4,4,4);
  ds_list_add(global.list_drop_farright,5,5,5,5,5,5,5,5,3,5);
  global.fail_gold = 17;
  global.fail_silver = 6;
  instance_create_depth(obj_timer_bar.x - 72,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 28,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 29)
{
  ds_list_add(global.list_sequencing,9,9,9,9,9,9);
  ds_list_add(global.list_drop_farleft,1,3,5,3,5,1,1,3,5,3);
  ds_list_add(global.list_drop_left,1,1,2,2,1,1,1,1,4,0);
  ds_list_add(global.list_drop_right,2,1,1,1,4,0,2,1,1,2);
  ds_list_add(global.list_drop_farright,4,0,1,1,3,5,3,5,1,1);
  global.fail_gold = 16;
  global.fail_silver = 5;
  instance_create_depth(obj_timer_bar.x - 68,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 24,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 30)
{
  ds_list_add(global.list_sequencing,9,18,10,6,19,11,7,17,15);
  ds_list_add(global.list_drop_farleft,0,0,1,2,3,3,0,4,4);
  ds_list_add(global.list_drop_left,3,2,2,3,5,1,5,2,0);
  ds_list_add(global.list_drop_right,4,3,5,0,2,0,2,3,1);
  ds_list_add(global.list_drop_farright,1,5,4,1,4,4,4,5,3);
  global.fail_gold = 13;
  global.fail_silver = 4;
  instance_create_depth(obj_timer_bar.x - 56,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 20,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 31)
{
  ds_list_add(global.list_sequencing,0,1,2,3,4,5);
  ds_list_add(global.list_drop_farleft,6,3,3,0,2,3,2,3,3);
  ds_list_add(global.list_drop_left,5,0,3,0,0,0,6,3,5);
  ds_list_add(global.list_drop_right,5,5,1,1,1,0,6,1,1);
  ds_list_add(global.list_drop_farright,4,4,4,6,1,0,2,4,1);
  global.fail_gold = 39;
  global.fail_silver = 26;
  instance_create_depth(obj_timer_bar.x - 160,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 108,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 32)
{
  ds_list_add(global.list_sequencing,5,4,3,2,1,0);
  ds_list_add(global.list_drop_farleft,5,6,1,6,0,3,3,5,0);
  ds_list_add(global.list_drop_left,2,6,1,1,6,2,5,5,6);
  ds_list_add(global.list_drop_right,2,1,1,3,0,3,6,1,4);
  ds_list_add(global.list_drop_farright,2,0,4,0,6,3,6,4,4);
  global.fail_gold = 39;
  global.fail_silver = 26;
  instance_create_depth(obj_timer_bar.x - 160,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 108,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 33)
{
  ds_list_add(global.list_sequencing,5,0,3,4,2,1,0,4,5);
  ds_list_add(global.list_drop_farleft,5,2,6,4,5,1,6,2,5);
  ds_list_add(global.list_drop_left,5,0,3,6,6,4,0,4,6);
  ds_list_add(global.list_drop_right,4,6,3,0,2,1,0,6,5);
  ds_list_add(global.list_drop_farright,6,0,1,4,2,6,3,4,1);
  global.fail_gold = 28;
  global.fail_silver = 15;
  instance_create_depth(obj_timer_bar.x - 112,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 64,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 34)
{
  ds_list_add(global.list_sequencing,0,0,0,0,0,0,0,0);
  ds_list_add(global.list_drop_farleft,0,3,0,3,6,6,3,3,3,3);
  ds_list_add(global.list_drop_left,3,0,3,3,3,6,3,3,0,3);
  ds_list_add(global.list_drop_right,3,3,3,0,6,3,0,3,3,3);
  ds_list_add(global.list_drop_farright,3,3,3,3,6,6,3,0,3,0);
  global.fail_gold = 36;
  global.fail_silver = 23;
  instance_create_depth(obj_timer_bar.x - 148,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 96,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 35)
{
  ds_list_add(global.list_sequencing,1);
  ds_list_add(global.list_drop_farleft,6,2,2,0,3,6,5,6,3,6,2);
  ds_list_add(global.list_drop_left,0,6,6,0,6,2,0,0,1,3,1);
  ds_list_add(global.list_drop_right,0,6,4,6,5,2,6,6,0,6,4);
  ds_list_add(global.list_drop_farright,3,3,4,6,5,6,2,2,6,0,6);
  global.fail_gold = 39;
  global.fail_silver = 26;
  instance_create_depth(obj_timer_bar.x - 160,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 108,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 36)
{
  ds_list_add(global.list_sequencing,1,2,10,1,2,10);
  ds_list_add(global.list_drop_farleft,0,1,5,6,2,4,0,4,6,3);
  ds_list_add(global.list_drop_left,6,0,3,5,1,6,4,0,3,1);
  ds_list_add(global.list_drop_right,6,3,2,4,0,6,5,2,0,4);
  ds_list_add(global.list_drop_farright,3,5,3,6,4,0,1,5,6,2);
  global.fail_gold = 28;
  global.fail_silver = 15;
  instance_create_depth(obj_timer_bar.x - 116,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 64,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 37)
{
  ds_list_add(global.list_sequencing,3,5,18,3,5,18);
  ds_list_add(global.list_drop_farleft,3,1,1,2,0,6,5,0,0,4);
  ds_list_add(global.list_drop_left,5,6,1,3,0,6,1,6,0,4);
  ds_list_add(global.list_drop_right,0,2,6,5,6,2,1,1,6,5);
  ds_list_add(global.list_drop_farright,0,0,6,0,0,2,3,4,6,3);
  global.fail_gold = 32;
  global.fail_silver = 17;
  instance_create_depth(obj_timer_bar.x - 132,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 72,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 38)
{
  ds_list_add(global.list_sequencing,0,4,9,0,4,9);
  ds_list_add(global.list_drop_farleft,0,1,4,1,2,6,2,6,2,1);
  ds_list_add(global.list_drop_left,6,1,4,4,2,1,2,1,0,1);
  ds_list_add(global.list_drop_right,2,1,2,0,2,6,2,4,4,1);
  ds_list_add(global.list_drop_farright,6,1,6,1,2,0,2,4,2,1);
  global.fail_gold = 36;
  global.fail_silver = 23;
  instance_create_depth(obj_timer_bar.x - 148,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 96,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 39)
{
  ds_list_add(global.list_sequencing,7,0,2,6,0,1,10,1,2);
  ds_list_add(global.list_drop_farleft,2,3,0,6,6,5,5,1,6,6,5,2,3,6,6,6);
  ds_list_add(global.list_drop_left,3,5,2,3,3,1,0,3,5,3,2,1,5,2,6,6);
  ds_list_add(global.list_drop_right,0,2,3,0,5,0,3,0,0,3,3,5,2,1,6,6);
  ds_list_add(global.list_drop_farright,5,0,5,2,6,3,1,5,1,6,1,3,1,6,6,6);
  global.fail_gold = 29;
  global.fail_silver = 16;
  instance_create_depth(obj_timer_bar.x - 120,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 68,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 40)
{
  ds_list_add(global.list_sequencing,4,3,15,3,5,18,5,4,19);
  ds_list_add(global.list_drop_farleft,0,6,0,0,3,0,5,0,0,6,0,0);
  ds_list_add(global.list_drop_left,4,0,3,0,0,5,0,3,6,0,0,0);
  ds_list_add(global.list_drop_right,0,3,0,4,0,6,0,0,0,4,0,5);
  ds_list_add(global.list_drop_farright,6,0,0,0,6,0,0,0,5,0,4,0);
  global.fail_gold = 29;
  global.fail_silver = 16;
  instance_create_depth(obj_timer_bar.x - 120,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 68,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 41)
{
  ds_list_add(global.list_sequencing,17,8,12);
  ds_list_add(global.list_drop_farleft,5,6,5,1,2,3,3,6,3);
  ds_list_add(global.list_drop_left,4,6,2,1,6,5,3,6,1);
  ds_list_add(global.list_drop_right,4,1,3,3,2,0,3,0,4);
  ds_list_add(global.list_drop_farright,4,1,3,1,6,5,4,0,3);
  global.fail_gold = 37;
  global.fail_silver = 24;
  instance_create_depth(obj_timer_bar.x - 152,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 100,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 42)
{
  ds_list_add(global.list_sequencing,18,15,14,11,8);
  ds_list_add(global.list_drop_farleft,5,3,1,1,1,1,2,3,6,5,2,2,2,2,6);
  ds_list_add(global.list_drop_left,5,3,1,1,1,6,2,3,5,5,2,2,0,3,1);
  ds_list_add(global.list_drop_right,0,0,6,4,3,4,4,4,5,1,3,6,0,3,1);
  ds_list_add(global.list_drop_farright,0,0,0,4,3,4,4,4,5,1,3,4,4,4,1);
  global.fail_gold = 28;
  global.fail_silver = 15;
  instance_create_depth(obj_timer_bar.x - 116,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 64,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 43)
{
  ds_list_add(global.list_sequencing,16,12,11,10,6);
  ds_list_add(global.list_drop_farleft,6,1,2,4,5,1,3,2,4,1);
  ds_list_add(global.list_drop_left,0,6,2,1,5,6,6,1,4,6);
  ds_list_add(global.list_drop_right,0,1,6,1,6,1,3,6,6,1);
  ds_list_add(global.list_drop_farright,0,5,2,6,5,3,3,1,4,0);
  global.fail_gold = 15;
  global.fail_silver = 5;
  instance_create_depth(obj_timer_bar.x - 60,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 25,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 44)
{
  ds_list_add(global.list_sequencing,17,13,14,10,7);
  ds_list_add(global.list_drop_farleft,2,0,6,4,2,1,6,4,6,0);
  ds_list_add(global.list_drop_left,2,5,2,4,6,3,6,4,2,3);
  ds_list_add(global.list_drop_right,6,5,6,5,2,1,2,1,2,0);
  ds_list_add(global.list_drop_farright,6,0,2,5,6,3,2,1,6,3);
  global.fail_gold = 15;
  global.fail_silver = 5;
  instance_create_depth(obj_timer_bar.x - 60,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 25,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
else if(global.currentlvl == 45)
{
  ds_list_add(global.list_sequencing,15);
  ds_list_add(global.list_drop_farleft,0,6,6,6,6,6,0,6,6,6,6,3);
  ds_list_add(global.list_drop_left,6,1,6,6,6,3,6,1,6,6,6,3);
  ds_list_add(global.list_drop_right,6,6,2,6,5,6,6,6,2,6,0,4);
  ds_list_add(global.list_drop_farright,6,6,6,3,6,6,6,6,6,5,6,4);
  global.fail_gold = 32;
  global.fail_silver = 17;
  instance_create_depth(obj_timer_bar.x - 132,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal);
  with(instance_create_depth(obj_timer_bar.x - 72,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 1;
  }
  with(instance_create_depth(obj_timer_bar.x,obj_timer_bar.y,obj_timer_bar.depth-1,obj_timer_medal))
  {
    image_index = 2;
  }
}
