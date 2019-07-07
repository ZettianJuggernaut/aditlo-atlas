image_speed = 0;
if(x==obj_sequence_current.x + 265)
{
  image_index = ds_list_find_value(global.list_sequencing,1);
}
else if(x==obj_sequence_current.x + 374)
{
  image_index = ds_list_find_value(global.list_sequencing,2);
}
else if(x==obj_sequence_current.x + 484)
{
  image_index = ds_list_find_value(global.list_sequencing,3);
}

