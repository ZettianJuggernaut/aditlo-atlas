global.time_remaining -= 1;
image_xscale -= 0.003;
if(global.time_remaining = 0)
{
  global.won = true;
  global.goto_room = rm_inlvl;
  instance_create_depth(obj_cam.x,obj_cam.y,-200,obj_fade_black);
}
else
{
  alarm_set(0,60);
}

