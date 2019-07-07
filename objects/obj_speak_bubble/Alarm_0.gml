/// @description Line 1
with(obj_the_cat)
{
  if(skeleton_animation_get() == "Idle")
  {
    skeleton_animation_set("Talk");
  }
}
global.helper_text_line1 = ds_list_find_value(global.list_cat,0);
ds_list_delete(global.list_cat,0);
alarm_set(1,15);
alarm_set(2,30);
alarm_set(3,45);
alarm_set(4,60);
alarm_set(5,75);