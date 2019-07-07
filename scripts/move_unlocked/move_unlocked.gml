if(ds_list_size(global.list_unlocks) == 2)
{
	if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 260)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 3)
{
	if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 4)
{
	if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 275,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 275,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 2)
	{
		move_towards_point(obj_scroll_gameover.x - 35,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 35,obj_scroll_gameover.y + 260)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 5)
{
	if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 2)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 3)
	{
		move_towards_point(obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 6)
{
	if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 2)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 3)
	{
		move_towards_point(obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 4)
	{
		move_towards_point(obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 145)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 7)
{
  if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 2)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 3)
	{
		move_towards_point(obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 4)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 145)/7);
	}
	else if(global.current_unlock == 5)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 145)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 8)
{
  if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 2)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 3)
	{
		move_towards_point(obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 4)
	{
		move_towards_point(obj_scroll_gameover.x - 275,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 275,obj_scroll_gameover.y + 145)/7);
	}
	else if(global.current_unlock == 5)
	{
		move_towards_point(obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 155,obj_scroll_gameover.y + 145)/7);
	}
	else if(global.current_unlock == 6)
	{
		move_towards_point(obj_scroll_gameover.x - 35,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 35,obj_scroll_gameover.y + 145)/7);
	}
}
else if(ds_list_size(global.list_unlocks) == 9)
{
	if(global.current_unlock == 0)
	{
		move_towards_point(obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 1)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 2)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 3)
	{
		move_towards_point(obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 260)/7);
	}
	else if(global.current_unlock == 4)
	{
		move_towards_point(obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 335,obj_scroll_gameover.y + 145)/7);
	}
	else if(global.current_unlock == 5)
	{
		move_towards_point(obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 215,obj_scroll_gameover.y + 145)/7);
	}
	else if(global.current_unlock == 6)
	{
		move_towards_point(obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x - 95,obj_scroll_gameover.y + 145)/7);
	}
	else if(global.current_unlock == 7)
	{
		move_towards_point(obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 145,7);
		alarm_set(1,point_distance(x,y,obj_scroll_gameover.x + 25,obj_scroll_gameover.y + 145)/7);
	}
}
