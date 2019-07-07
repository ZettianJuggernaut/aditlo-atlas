global.x_swipe = x;
depth = -11;
image_speed = 0;
alarm_set(4,2);
if(room == rm_menu_chapter) {
	global.currently_playing = -1;
	global.currentlvl = 0;
	global.current_cp = -1;
	if(global.rabbit < 9) {
		global.rabbit = 0;
	}
	if(global.open_chapter > 0) {
		if(global.open_chapter == 1) {
			x = 2100;
		}
		else if(global.open_chapter == 2) {
			x = 3510;
		}
		else if(global.open_chapter == 3) {
			x = 4920;
		}
		else if(global.open_chapter == 4) {
			x = 6330;
		}
	}
	else if(global.open_chapter == -1) {
		x = 690;
	}
	else {
		x = global.prev_chapter;
		global.prev_chapter = 2100;
	}
	if(global.sound == 1)
	{
		audio_play_sound(sd_torch,10,1);
	}
	alarm_set(0,5);
	alarm_set(2,5);
}
else if(room == rm_game_modes)
{
  alarm_set(1,5);
}
else if(room == rm_menu_skin)
{
  image_index = 1;
  visible = true;
  alarm_set(3,5);
  alarm_set(2,5);
}
else if(room == rm_menu_main)
{
  alarm_set(5,5);
}
else if(room == rm_inlvl)
{
  alarm_set(6,5);
}
else if(room == rm_menu_about)
{
	alarm_set(2,5)
}

