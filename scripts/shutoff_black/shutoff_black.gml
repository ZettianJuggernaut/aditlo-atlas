if(token_on)
{
  if(ds_list_find_index(global.list_token_black,ds_list_find_value(global.list_sequencing,0)) == -1)
  {
    with(obj_darkness)
    {
      alarm_set(0,-1);
      alarm_set(1,-1);
      alarm_set(2,1);
    }
    with(obj_darkness_cloud)
    {
      alarm_set(0,1);
    }
    global.darkness_stop = true;
  }
}