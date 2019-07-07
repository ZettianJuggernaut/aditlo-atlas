instance_create_depth(x,obj_scroll_gameover.y-75,depth,obj_unlocked_current);
//Particle Set-Up
if(global.won == true)
{
	var lifemin = 1800*global.seconds_passed;
	var lifemax = 5400*global.seconds_passed;
	global.ps_unlock = part_system_create();
	global.pt_unlock = part_type_create();
	global.pe_unlock = part_emitter_create(global.ps_unlock);
	part_system_depth(global.ps_unlock,-99);
	part_emitter_region(global.ps_unlock,global.pe_unlock,obj_unlocked_current.x - sprite_get_width(spr_unlocked_current)/2,obj_unlocked_current.x + sprite_get_width(spr_unlocked_current)/2,obj_unlocked_current.y - sprite_get_height(spr_unlocked_current)/2,obj_unlocked_current.y + sprite_get_height(spr_unlocked_current)/2,ps_shape_rectangle,ps_distr_linear);
	part_type_shape(global.pt_unlock,pt_shape_spark);
	part_type_life(global.pt_unlock,lifemin,lifemax);
	part_type_alpha2(global.pt_unlock,1,0);
	part_type_size(global.pt_unlock,.5,1.5,.03,0);
	part_type_speed(global.pt_unlock,.5,1,0,0);
	part_type_direction(global.pt_unlock,250,290,0,.5);
}

//Unlocked Boxes
if(ds_list_size(global.list_unlocks) == 2)
{
  instance_create_depth(obj_scroll_gameover.x-155,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 3)
{
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 4)
{
  instance_create_depth(obj_scroll_gameover.x-275,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-155,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-35,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 5)
{
  instance_create_depth(obj_scroll_gameover.x-335,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x+25,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 6)
{
  instance_create_depth(obj_scroll_gameover.x-155,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-335,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x+25,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 7)
{
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-335,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x+25,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 8)
{
  instance_create_depth(obj_scroll_gameover.x-275,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-155,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-35,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-335,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x+25,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}
else if(ds_list_size(global.list_unlocks) == 9)
{
  instance_create_depth(obj_scroll_gameover.x-335,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x+25,obj_scroll_gameover.y+145,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-335,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-215,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x-95,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
  instance_create_depth(obj_scroll_gameover.x+25,obj_scroll_gameover.y+260,-21,obj_unlocked_box);
}

//Unlock List
global.current_unlock = 0;
ds_list_sort(global.list_unlocks,true);
script_execute(unlocks);