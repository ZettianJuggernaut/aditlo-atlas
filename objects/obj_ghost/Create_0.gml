/// @description Set-Up
alarm_set(0,50);
image_speed = .3;
alarm_set(2,irandom_range(1,3));
if(y == camera_get_view_y(view_camera[0]) - 40)
{
	vspeed = 3;
}
else if(x == camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40)
{
	hspeed = -3;
}
else if(y == camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40)
{
	vspeed = -3;
}
else if(x == camera_get_view_x(view_camera[0]) - 40)
{
	hspeed = 3;
}

if(!part_system_exists(global.ps_ghost))
{
	global.ps_ghost = part_system_create();
	global.pt_ghost = part_type_create();
	global.pe_ghost = part_emitter_create(global.ps_ghost);
	part_system_depth(global.ps_ghost,-5);
	part_type_sprite(global.pt_ghost,spr_ghost_fog,0,0,0);
	part_type_alpha2(global.pt_ghost,1,0);
	part_type_size(global.pt_ghost,.8,1.2,0,-.2);
	part_type_orientation(global.pt_ghost,0,360,.1,-.3,0);
	part_type_life(global.pt_ghost,15,30);
}
if(global.sound == 1)
{
	audio_play_sound(sd_ghoul_passive,9,0);
	audio_play_sound(sd_ghoul_passive,9,0);
}