image_speed = 0;
medal_image = 0;
var x1, x2, x3, x4, x5, y1, y2, y3;
x1 = obj_scroll_big.x - 300;
x2 = obj_scroll_big.x - 150;
x3 = obj_scroll_big.x;
x4 = obj_scroll_big.x + 150;
x5 = obj_scroll_big.x + 300;
y1 = obj_scroll_big.y - 75;
y2 = obj_scroll_big.y + 75;
y3 = obj_scroll_big.y + 225;
switch(global.open_chapter)
{
	case(1):
		if(x == x1)
		{
			if(global.lvlcomplete >= 0)
			{
				image_index = 1;
			}
			else
			{
				image_index = 0;
			}
		}
		else if(x == x2)
		{
			if(global.lvlcomplete >= 1)
			{
				image_index = 3;
			}
			else
			{
				image_index = 2;
			}
		}
		else if(x == x3)
		{
			if(global.lvlcomplete >= 2)
			{
				image_index = 5;
			}
			else
			{
				image_index = 4;
			}
		}
		else if(x == x4)
		{
			if(global.lvlcomplete >= 3)
			{
				image_index = 7;
			}
			else
			{
				image_index = 6;
			}
		}
		else if(x == x5)
		{
			if(global.lvlcomplete >= 4)
			{
				image_index = 9;
			}
			else
			{
				image_index = 8;
			}
		}
	break;
	case(2):
		if(x == x1 && y == y1)
		{
			if(global.lvlcomplete2 >= 0)
			{
				image_index = 1;
			}
			else
			{
				image_index = 0;
			}
		}
		else if(x == x2 && y == y1)
		{
			if(global.lvlcomplete2 >= 1)
			{
				image_index = 3;
			}
			else
			{
				image_index = 2;
			}
		}
		else if(x == x3 && y == y1)
		{
			if(global.lvlcomplete2 >= 2)
			{
				image_index = 5;
			}
			else
			{
				image_index = 4;
			}
		}
		else if(x == x4 && y == y1)
		{
			if(global.lvlcomplete2 >= 3)
			{
				image_index = 7;
			}
			else
			{
				image_index = 6;
			}
		}
		else if(x == x5 && y == y1)
		{
			if(global.lvlcomplete2 >= 4)
			{
				image_index = 9;
			}
			else
			{
				image_index = 8;
			}
		}
		else if(x == x1 && y == y2)
		{
			if(global.lvlcomplete2 >= 5)
			{
				image_index = 11;
			}
			else
			{
				image_index = 10;
			}
		}
		else if(x == x2 && y == y2)
		{
			if(global.lvlcomplete2 >= 6)
			{
				image_index = 13;
			}
			else
			{
				image_index = 12;
			}
		}
		else if(x == x3 && y == y2)
		{
			if(global.lvlcomplete2 >= 7)
			{
				image_index = 15;
			}
			else
			{
				image_index = 14;
			}
		}
		else if(x == x4 && y == y2)
		{
			if(global.lvlcomplete2 >= 8)
			{
				image_index = 17;
			}
			else
			{
				image_index = 16;
			}
		}
		else if(x == x5 && y == y2)
		{
			if(global.lvlcomplete2 >= 9)
			{
				image_index = 19;
			}
			else
			{
				image_index = 18;
			}
		}
	break;
	case(3):
		if(x == x1 && y == y1)
		{
			if(global.lvlcomplete3 >= 0)
			{
				image_index = 1;
			}
			else
			{
				image_index = 0;
			}
		}
		else if(x == x2 && y == y1)
		{
			if(global.lvlcomplete3 >= 1)
			{
				image_index = 3;
			}
			else
			{
				image_index = 2;
			}
		}
		else if(x == x3 && y == y1)
		{
			if(global.lvlcomplete3 >= 2)
			{
				image_index = 5;
			}
			else
			{
				image_index = 4;
			}
		}
		else if(x == x4 && y == y1)
		{
			if(global.lvlcomplete3 >= 3)
			{
				image_index = 7;
			}
			else
			{
				image_index = 6;
			}
		}
		else if(x == x5 && y == y1)
		{
			if(global.lvlcomplete3 >= 4)
			{
				image_index = 9;
			}
			else
			{
				image_index = 8;
			}
		}
		else if(x == x1 && y == y2)
		{
			if(global.lvlcomplete3 >= 5)
			{
				image_index = 11;
			}
			else
			{
				image_index = 10;
			}
		}
		else if(x == x2 && y == y2)
		{
			if(global.lvlcomplete3 >= 6)
			{
				image_index = 13;
			}
			else
			{
				image_index = 12;
			}
		}
		else if(x == x3 && y == y2)
		{
			if(global.lvlcomplete3 >= 7)
			{
				image_index = 15;
			}
			else
			{
				image_index = 14;
			}
		}
		else if(x == x4 && y == y2)
		{
			if(global.lvlcomplete3 >= 8)
			{
				image_index = 17;
			}
			else
			{
				image_index = 16;
			}
		}
		else if(x == x5 && y == y2)
		{
			if(global.lvlcomplete3 >= 9)
			{
				image_index = 19;
			}
			else
			{
				image_index = 18;
			}
		}
		else if(x == x1 && y == y3)
		{
			if(global.lvlcomplete3 >= 10)
			{
				image_index = 21;
			}
			else
			{
				image_index = 20;
			}
		}
		else if(x == x2 && y == y3)
		{
			if(global.lvlcomplete3 >= 11)
			{
				image_index = 23;
			}
			else
			{
				image_index = 22;
			}
		}
		else if(x == x3 && y == y3)
		{
			if(global.lvlcomplete3 >= 12)
			{
				image_index = 25;
			}
			else
			{
				image_index = 24;
			}
		}
		else if(x == x4 && y == y3)
		{
			if(global.lvlcomplete3 >= 13)
			{
				image_index = 27;
			}
			else
			{
				image_index = 26;
			}
		}
		else if(x == x5 && y == y3)
		{
			if(global.lvlcomplete3 >= 14)
			{
				image_index = 29;
			}
			else
			{
				image_index = 28;
			}
		}
	break;
	case(4):
		if(x == x1 && y == y1)
		{
			if(global.lvlcomplete4 >= 0)
			{
				image_index = 1;
			}
			else
			{
				image_index = 0;
			}
		}
		else if(x == x2 && y == y1)
		{
			if(global.lvlcomplete4 >= 1)
			{
				image_index = 3;
			}
			else
			{
				image_index = 2;
			}
		}
		else if(x == x3 && y == y1)
		{
			if(global.lvlcomplete4 >= 2)
			{
				image_index = 5;
			}
			else
			{
				image_index = 4;
			}
		}
		else if(x == x4 && y == y1)
		{
			if(global.lvlcomplete4 >= 3)
			{
				image_index = 7;
			}
			else
			{
				image_index = 6;
			}
		}
		else if(x == x5 && y == y1)
		{
			if(global.lvlcomplete4 >= 4)
			{
				image_index = 9;
			}
			else
			{
				image_index = 8;
			}
		}
		else if(x == x1 && y == y2)
		{
			if(global.lvlcomplete4 >= 5)
			{
				image_index = 11;
			}
			else
			{
				image_index = 10;
			}
		}
		else if(x == x2 && y == y2)
		{
			if(global.lvlcomplete4 >= 6)
			{
				image_index = 13;
			}
			else
			{
				image_index = 12;
			}
		}
		else if(x == x3 && y == y2)
		{
			if(global.lvlcomplete4 >= 7)
			{
				image_index = 15;
			}
			else
			{
				image_index = 14;
			}
		}
		else if(x == x4 && y == y2)
		{
			if(global.lvlcomplete4 >= 8)
			{
				image_index = 17;
			}
			else
			{
				image_index = 16;
			}
		}
		else if(x == x5 && y == y2)
		{
			if(global.lvlcomplete4 >= 9)
			{
				image_index = 19;
			}
			else
			{
				image_index = 18;
			}
		}
		else if(x == x1 && y == y3)
		{
			if(global.lvlcomplete4 >= 10)
			{
				image_index = 21;
			}
			else
			{
				image_index = 20;
			}
		}
		else if(x == x2 && y == y3)
		{
			if(global.lvlcomplete4 >= 11)
			{
				image_index = 23;
			}
			else
			{
				image_index = 22;
			}
		}
		else if(x == x3 && y == y3)
		{
			if(global.lvlcomplete4 >= 12)
			{
				image_index = 25;
			}
			else
			{
				image_index = 24;
			}
		}
		else if(x == x4 && y == y3)
		{
			if(global.lvlcomplete4 >= 13)
			{
				image_index = 27;
			}
			else
			{
				image_index = 26;
			}
		}
		else if(x == x5 && y == y3)
		{
			if(global.lvlcomplete4 >= 14)
			{
				image_index = 29;
			}
			else
			{
				image_index = 28;
			}
		}
	break;
}
var level = 0;
switch(image_index)
{
	case(1):
		level = 1;
	break;
	case(3):
		level = 2;
	break;
	case(5):
		level = 3;
	break;
	case(7):
		level = 4;
	break;
	case(9):
		level = 5;
	break;
	case(11):
		level = 6;
	break;
	case(13):
		level = 7;
	break;
	case(15):
		level = 8;
	break;
	case(17):
		level = 9;
	break;
	case(19):
		level = 10;
	break;
	case(21):
		level = 11;
	break;
	case(23):
		level = 12;
	break;
	case(25):
		level = 13;
	break;
	case(27):
		level = 14;
	break;
	case(29):
		level = 15;
	break;
}
if(level > 0)
{
	switch(global.open_chapter)
	{
		case(2):
			level += 5;
		break;
		case(3):
			level += 15;
		break;
		case(4):
			level += 30;
		break;
	}
	medal_image = ds_map_find_value(global.map_lvl_success,"lvl" + string(level)) - 1;
}