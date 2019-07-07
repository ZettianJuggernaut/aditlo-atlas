/// @description Timer
global.time_seconds++;
alarm_set(0,60);
if(global.time_seconds == 60)
{
	global.time_remaining++;
	global.time_seconds = 0;
}