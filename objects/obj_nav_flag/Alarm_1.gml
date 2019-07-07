vspeed = 0;
instance_create_depth(x,y + 50,-16,obj_nav_main);
if(room == rm_menu_skin)
{
	instance_create_depth(x,y + 154,-16,obj_nav_play);
}
else if(room == rm_menu_chapter)
{
	instance_create_depth(x,y + 154,-16,obj_nav_prof);
}