/// @description Fade In
if(image_alpha != 1)
{
	image_alpha += 0.05;
	alarm_set(0,1);
}
else if(image_alpha == 1)
{
	if(global.goto_room != -1)
	{
		if(part_system_exists(global.ps_meteor))
		{
			part_system_destroy(global.ps_meteor);
			part_type_destroy(global.pt_meteor);
		}
		room_goto(global.goto_room);
		global.goto_room = -1;
		alarm_set(1,5);
	}
	else if(global.currently_playing == 3)
	{
		global.tilt_x = global.tilt_center;
		global.tilt_angle = 0;
		with(obj_red_fade_left)
		{
			image_alpha = 0;
		}
		with(obj_red_fade_right)
		{
			image_alpha = 0;
		}
		alarm_set(1,1);
		if(!instance_exists(obj_speak_bubble))
		{
			ds_list_add(global.list_cat,"OH DEAR, OH DEAR,","THANK HEAVENS ZEUS","CAUGHT THAT FOR YOU.","I SHUDDER TO THINK WHAT","WOULD HAVE HAPPENED","OTHERWISE...","DO PLEASE, FOR ALL","OUR SAKES, KEEP A GOOD","HANDLE ON THE SPHERE,","WON'T YOU? THAT'S A","GOOD CHAP. LET'S","TRY AGAIN.");
			instance_create_depth(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,-110,obj_speak_bubble);
		}
	}
}