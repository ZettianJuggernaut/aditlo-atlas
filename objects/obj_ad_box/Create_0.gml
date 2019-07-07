vspeed = -10;
var total = global.spent_d/100 + global.spent_c;
if(total == 0)
{
	alarm_set(0,6.5);
}
else
{
	alarm_set(0,16);
}