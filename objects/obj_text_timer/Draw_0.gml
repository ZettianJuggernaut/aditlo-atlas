draw_self();
draw_text(x,y-60,"TIME:");
if(global.currently_playing == 1)
{
	if(global.time_remaining < 10)
	{
		draw_text(x,y,"0:0" + string(60 - global.time_remaining));
	}
	else
	{
		draw_text(x,y,"0:" + string(60 - global.time_remaining));
	}
}
else if(global.currently_playing == 2)
{
	if(global.time_seconds < 10)
	{
		draw_text(x,y,string(global.time_remaining) + ":0" + string(global.time_seconds));
	}
	else
	{
		draw_text(x,y, string(global.time_remaining) + ":" + string(global.time_seconds));
	}
}