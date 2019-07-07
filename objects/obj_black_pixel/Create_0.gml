if(global.pixel == 0)
{
	var number = irandom(1);
	image_speed = 0;
	if(number == 0)
	{
		instance_destroy();
	}
	else if(number == 1)
	{
		alarm_set(0,20);
	}
}
else
{
	instance_destroy();
}