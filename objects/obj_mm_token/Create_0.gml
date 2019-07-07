image_speed = 0;
image_index = irandom(5);
var go_speed = random_range(4,5.5)
if(y == camera_get_view_y(view_camera[0]) - 40)
{
  path_start(choose(path_drop_top1,path_drop_top2),go_speed,path_action_continue,false);
}
else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40)
{
  path_start(choose(path_drop_right1,path_drop_right2),go_speed,path_action_continue,false);
}
else if(y == camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40)
{
  path_start(choose(path_drop_bot1,path_drop_bot2),go_speed,path_action_continue,false);
}
else if(x == camera_get_view_x(view_camera[0]) - 40)
{
  path_start(choose(path_drop_left1,path_drop_left2),go_speed,path_action_continue,false);
}