if(token_on)
{
  if(ds_list_find_index(global.list_token_red,ds_list_find_value(global.list_sequencing,0)) == -1)
  {
    global.burn = false;
  }
}