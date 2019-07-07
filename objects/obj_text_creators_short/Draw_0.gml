if(depth == 0)
{
	if(x <= 900)
	{
		draw_text(x,y,"NATE CHASE");
		draw_text(x+1,y+1,"NATE CHASE");
	}
	else if(x >= 1000)
	{
		draw_text(x,y,"JORDAN CHASE");
		draw_text(x+1,y+1,"JORDAN CHASE");
	}
}
else
{
	if(global.about == 1)
	{
		draw_text(x,y,@"NATHAN CHASE
		LEAD CREATOR, PROGRAMMER");
	}
	else if(global.about == 2)
	{
		draw_text(x,y,@"JORDAN CHASE
		CO-CREATOR, ARTIST");
	}
}