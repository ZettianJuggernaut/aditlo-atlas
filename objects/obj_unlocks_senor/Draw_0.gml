draw_self();
if(global.won == true)
{
	draw_text(x,y-30,"YOU HAVE UNLOCKED:");
	draw_text(x+1,y-29,"YOU HAVE UNLOCKED:");
}
else if(global.won == false)
{
	draw_text(x,y-30,"GAME OVER!");
	draw_text(x+1,y-29,"GAME OVER!");
}