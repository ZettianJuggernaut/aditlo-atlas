if(global.currentlvl > 5)
{
	return true;
}
else if(global.current_cp > 0)
{
	return true;
}
else if(global.currently_playing == 2)
{
	return true;
}
else if(global.currently_playing == 5)
{
	return true;
}
else
{
	return false;
}