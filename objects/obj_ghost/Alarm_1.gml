/// @description Attack
sprite_index = spr_ghost_back;
if(global.sound == 1)
{
	audio_play_sound(sd_ghoul_attack,9,0);
}
if(global.currently_playing < 5)
{
  if(x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2)
  {
    path_start(path_ghost_left,10,path_action_continue,0);
  }
  else
  {
    path_start(path_ghost_right,10,path_action_continue,0);
  }
}
else if(global.currently_playing == 5)
{
  if(y < camera_get_view_y(view_camera[0]) + 150)
  {
    path_start(path_drop_top2,10,path_action_continue,0);
  }
  else if(x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 150)
  {
    path_start(path_drop_right2,10,path_action_continue,0);
  }
  else if(y > camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 150)
  {
    path_start(path_drop_bot1,10,path_action_continue,0);
  }
  else if(x < camera_get_view_x(view_camera[0]) + 150)
  {
    path_start(path_drop_left1,10,path_action_continue,0);
  }
}

