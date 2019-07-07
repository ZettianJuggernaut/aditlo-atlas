///@descr Freeze Black Token
vspeed = 0;
ds_list_add(global.list_cat,"AH, HERE YOU ARE, A","BLACK ELEMENTAL","TOKEN. NORMALLY, THESE","TOKENS PELT DOWNWARDS","WITH A FURY.","","BUT IN THIS CASE, I'VE","DECIDED TO FREEZE THIS","TOKEN IN PLACE, TO MAKE","THINGS EASIER FOR YOU.","GO ON, GIVE IT A","TAP, PLEASE.");
instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);