/// @description Decrease Shake

if(global.shake_intens != 20)
{
	global.shake_intens += 1;
	alarm_set(3,2);
}