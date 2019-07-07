draw_self();
var total = global.spent_d/100 + global.spent_c;
if(total > 0)
{
	draw_sprite(spr_ad_insert,0,x,y-126);
	if(global.spent_c < 10)
	{
		draw_text(x,y-65,"SPEND $" + string(global.spent_d) + ".0" + string(global.spent_c));
		draw_text(x,y-30,"TO REMOVE");
	}
	else if(global.spent_c > 9)
	{
		draw_text(x,y-65,"SPEND $" + string(global.spent_d) + "." + string(global.spent_c));
		draw_text(x,y-30,"TO REMOVE");
	}
}
else
{
	draw_sprite(spr_ad_insert,1,x,y-126);
}