/// @description Tap Kill
if(device_mouse_check_button_released(0,mb_right))
{
	var width, height
	width = sprite_get_width(spr_ghost_back)/2;
	height = sprite_get_height(spr_ghost_back)/2;
	if(device_mouse_x(0) >= x - width && device_mouse_x(0) <= x + width)
	{
		if(device_mouse_y(0) >= y - height && device_mouse_y(0) <= y + height)
		{
			if(global.sound == 1)
			{
				audio_play_sound(sd_ghoul_scream,7,0);
				audio_play_sound(sd_ghoul_die1,9,0);
				audio_play_sound(sd_ghoul_die2,8,0);
				audio_play_sound(sd_token_break,6,0);
			}
			part_type_sprite(global.pt_ghost,spr_ghost_fog,0,0,1);
			part_emitter_region(global.ps_ghost,global.pe_ghost,x - sprite_get_width(spr_ghost_back)/1.7,x + sprite_get_width(spr_ghost_back)/1.7,y - sprite_get_height(spr_ghost_back)/1.7,y + sprite_get_height(spr_ghost_back)/1.7,ps_shape_ellipse,ps_distr_linear);
			part_emitter_burst(global.ps_ghost,global.pe_ghost,global.pt_ghost,30 + irandom(50));
			part_type_sprite(global.pt_ghost,spr_ghost_fog,0,0,0);
			instance_destroy();
		}
	}
}