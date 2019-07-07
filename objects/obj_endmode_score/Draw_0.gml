draw_self();
if(x > obj_button_endless.x)
{
	draw_set_font(font_about);
	draw_text(x,y - 60,"BEST SCORE:");
	draw_set_font(font_all);
	draw_text(x,y,string(global.endmode_best));
}
else if(x < obj_button_endless.x)
{
	draw_set_font(font_about);
	draw_text(x,y - 60,"BEST TIME:");
	draw_set_font(font_all);
	if(global.endmode_time_sec < 10)
	{
		draw_text(x,y,string(global.endmode_time_min) + ":0" + string(global.endmode_time_sec));
	}
	else
	{
		draw_text(x,y,string(global.endmode_time_min) + ":" + string(global.endmode_time_sec));
	}
}