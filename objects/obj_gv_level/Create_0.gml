image_speed = 0;
medal_image = -1;
switch(global.currentlvl - global.won)
{
	case(1):
		image_index = 1;
	break;
	case(2):
		image_index = 3;
	break;
	case(3):
		image_index = 5;
	break;
	case(4):
		image_index = 7;
	break;
	case(5):
		image_index = 9;
	break;
	case(6):
		image_index = 11;
	break;
	case(7):
		image_index = 13;
	break;
	case(8):
		image_index = 15;
	break;
	case(9):
		image_index = 17;
	break;
	case(10):
		image_index = 19;
	break;
	case(11):
		image_index = 21;
	break;
	case(12):
		image_index = 23;
	break;
	case(13):
		image_index = 25;
	break;
	case(14):
		image_index = 27;
	break;
	case(15):
		image_index = 29;
	break;
}
if(x == obj_scroll_gameover.x + 25 && y == obj_scroll_gameover.y - 80)
{
	var level = "lvl" + string(global.currentlvl - global.won);
	if(ds_map_find_value(global.map_lvl_success,level) > 0)
	{
		medal_image = ds_map_find_value(global.map_lvl_success,level) - 1;
	}
}