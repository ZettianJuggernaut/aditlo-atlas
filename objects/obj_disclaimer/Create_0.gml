if(global.disclaimer == 0)
{
	alarm_set(0,300);
	alarm_set(1,1200);
	image_alpha = 0;
}
else
{
	image_alpha = 0.05;
	alarm_set(1,1);
}