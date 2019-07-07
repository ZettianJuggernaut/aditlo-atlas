///@descr 15 after Tilt Start
ds_list_add(global.list_cat,"NOT TO PRESSURE YOU,","HUMAN, BUT DO PLEASE","REMEMBER THAT YOU NEED","TO ACTIVATE A YELLOW","TOKEN, OR WE SHALL","BE HERE ALL DAY.");
if(!instance_exists(obj_speak_bubble))
{
	instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
}

