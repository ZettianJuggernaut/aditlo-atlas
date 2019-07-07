///Set-Up
image_speed = 0;
image_index = ds_list_find_value(global.list_sequencing,0);
if(global.currently_playing < 5)
{
	instance_create_depth(x + 136,y - 25,-27,obj_sequence_current_sm);
	instance_create_depth(x + 265,y - 28,-24,obj_sequence_upcoming);
	instance_create_depth(x + 374,y - 28,-24,obj_sequence_upcoming);
	instance_create_depth(x + 484,y - 28,-24,obj_sequence_upcoming);
	if(global.currentlvl > 5 || global.current_cp > 0 || global.currently_playing == 2)
	{
		script_execute(token_affect);
	}
}
if(global.currently_playing == 5)
{
	instance_create_depth(x + 136,y + 25,-27,obj_sequence_current_sm);
	instance_create_depth(x + 265,y + 28,-24,obj_sequence_upcoming);
	instance_create_depth(x + 374,y + 28,-24,obj_sequence_upcoming);
	instance_create_depth(x + 484,y + 28,-24,obj_sequence_upcoming);
	script_execute(token_affect);
}
script_execute(sequence_glow_setup);