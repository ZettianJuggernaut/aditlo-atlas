draw_self();
draw_sprite(spr_hourglass,0,x - 50,y)
if(global.time_seconds < 10)
{
	draw_text(x,y,string(global.time_remaining) + ":0" + string(global.time_seconds));
}
else
{
	draw_text(x,y,string(global.time_remaining) + ":" + string(global.time_seconds));
}