x = random_range(camera_get_view_x(view_camera[0]) + 50,camera_get_view_width(view_camera[0]) - 50);
instance_create_depth(x,y,depth,obj_meteor_mini);
alarm_set(0,random_range(60,180));