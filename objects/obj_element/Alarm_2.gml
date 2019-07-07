/// @description Continue Out

direction = random_range(direction - 50,direction + 50);

if(point_distance(x,y,obj_sphee.x-30,obj_sphee.y-30) < 25)
{
	alarm_set(2,5);
}
else
{
	alarm_set(3,10);
}