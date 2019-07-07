image_speed = 0;
if(x == camera_get_view_x(view_camera[0]) + 60) {
	if(ds_list_find_value(global.list_drop_farleft,0) == 6) {
		ds_list_add(global.list_drop_farleft,6);
		ds_list_delete(global.list_drop_farleft,0);
	}
	image_index = ds_list_find_value(global.list_drop_farleft,0);
	ds_list_delete(global.list_drop_farleft,0);
	if(global.currently_playing == 1) {
		ds_list_add(global.list_drop_farleft,image_index);
	}
	else if(global.current_cp > 2 || global.currently_playing == 2) {
		if(ds_list_find_index(global.list_drop_farleft,6) == -1) {
	      ds_list_add(global.list_drop_farleft,irandom(6));
		}
		else {
			ds_list_add(global.list_drop_farleft,irandom(5));
		}
	}
	else {
		ds_list_add(global.list_drop_farleft,irandom(5));
	}
}
if(x == camera_get_view_x(view_camera[0]) + 200)
{
  if(ds_list_find_value(global.list_drop_left,0) == 6)
  {
    ds_list_add(global.list_drop_left,6);
    ds_list_delete(global.list_drop_left,0);
  }
  image_index = ds_list_find_value(global.list_drop_left,0);
  ds_list_delete(global.list_drop_left,0);
  if(global.currently_playing == 1)
  {
    ds_list_add(global.list_drop_left,image_index);
  }
  else if(global.current_cp > 2 || global.currently_playing == 2)
  {
    if(ds_list_find_index(global.list_drop_left,6) == -1)
    {
      ds_list_add(global.list_drop_left,irandom(6));
    }
    else
    {
      ds_list_add(global.list_drop_left,irandom(5));
    }
  }
  else
  {
    ds_list_add(global.list_drop_left,irandom(5));
  }
}
if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200)
{
  if(ds_list_find_value(global.list_drop_right,0) == 6)
  {
    ds_list_add(global.list_drop_right,6);
    ds_list_delete(global.list_drop_right,0);
  }
  image_index = ds_list_find_value(global.list_drop_right,0);
  ds_list_delete(global.list_drop_right,0);
  if(global.currently_playing == 1)
  {
    ds_list_add(global.list_drop_right,image_index);
  }
  else if(global.current_cp > 2 || global.currently_playing == 2)
  {
    if(ds_list_find_index(global.list_drop_right,6) == -1)
    {
      ds_list_add(global.list_drop_right,irandom(6));
    }
    else
    {
      ds_list_add(global.list_drop_right,irandom(5));
    }
  }
  else
  {
    ds_list_add(global.list_drop_right,irandom(5));
  }
}
if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60)
{
  if(ds_list_find_value(global.list_drop_farright,0) == 6)
  {
    ds_list_add(global.list_drop_farright,6);
    ds_list_delete(global.list_drop_farright,0);
  }
  image_index = ds_list_find_value(global.list_drop_farright,0);
  ds_list_delete(global.list_drop_farright,0);
  if(global.currently_playing == 1)
  {
    ds_list_add(global.list_drop_farright,image_index);
  }
  else if(global.current_cp > 2 || global.currently_playing == 2)
  {
    if(ds_list_find_index(global.list_drop_farright,6) == -1)
    {
      ds_list_add(global.list_drop_farright,irandom(6));
    }
    else
    {
      ds_list_add(global.list_drop_farright,irandom(5));
    }
  }
  else
  {
    ds_list_add(global.list_drop_farright,irandom(5));
  }
}
vspeed = random_range(global.fallspeed-1,global.fallspeed+0.5);

