///@descr Game Modes
if(global.currently_playing < 3) {
  instance_create_depth(0,0,0,obj_lvl_setup);
}
else if(global.currently_playing == 3) {
  instance_create_depth(0,0,0,obj_tutorial_setup);
}
else if(global.currently_playing == 4) {
  instance_create_depth(0,0,0,obj_eod_setup);
}
else if(global.currently_playing == 5) {
  instance_create_depth(0,0,0,obj_lvl_setup);
}