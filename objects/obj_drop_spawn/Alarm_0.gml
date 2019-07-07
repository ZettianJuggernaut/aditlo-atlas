alarm_set(0,120);
if(global.currently_playing == 1) {
	if(x == camera_get_view_x(view_camera[0]) + 60 && ds_list_find_value(global.list_drop_farleft,0) == 6) {
		instance_create(x,y,obj_ghost);
		ds_list_delete(global.list_drop_farleft,0);
		ds_list_add(global.list_drop_farleft,6);
	}
	else if(x == camera_get_view_x(view_camera[0]) + 200 && ds_list_find_value(global.list_drop_left,0) == 6) {
		instance_create(x,y,obj_ghost);
		ds_list_delete(global.list_drop_left,0);
		ds_list_add(global.list_drop_left,6);
	}
	else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200 && ds_list_find_value(global.list_drop_right,0) == 6) {
		instance_create(x,y,obj_ghost);
		ds_list_delete(global.list_drop_right,0);
		ds_list_add(global.list_drop_right,6);
	}
	else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60 && ds_list_find_value(global.list_drop_farright,0) == 6) {
		instance_create(x,y,obj_ghost);
		ds_list_delete(global.list_drop_farright,0);
		ds_list_add(global.list_drop_farright,6);
	}
	else {
		instance_create(x,y,obj_drop);
	}
}
else
{
  if(instance_exists(obj_ghost))
  {
    if(x != obj_ghost.x)
    {
      instance_create(x,y,obj_drop);
    }
  }
  else if(!instance_exists(obj_ghost))
  {
    if(x == camera_get_view_x(view_camera[0]) + 60 && ds_list_find_value(global.list_drop_farleft,0) == 6)
    {
      instance_create(x,y,obj_ghost);
      ds_list_delete(global.list_drop_farleft,0);
      ds_list_add(global.list_drop_farleft,irandom(6));
    }
    else if(x == camera_get_view_x(view_camera[0]) + 200 && ds_list_find_value(global.list_drop_left,0) == 6)
    {
      instance_create(x,y,obj_ghost);
      ds_list_delete(global.list_drop_left,0);
      ds_list_add(global.list_drop_left,irandom(6));
    }
    else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60 && ds_list_find_value(global.list_drop_right,0) == 6)
    {
      instance_create(x,y,obj_ghost);
      ds_list_delete(global.list_drop_right,0);
      ds_list_add(global.list_drop_right,irandom(6));
    }
    else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200 && ds_list_find_value(global.list_drop_farright,0) == 6)
    {
      instance_create(x,y,obj_ghost);
      ds_list_delete(global.list_drop_farright,0);
      ds_list_add(global.list_drop_farright,irandom(6));
    }
    else
    {
      instance_create(x,y,obj_drop);
    }
  }
}

