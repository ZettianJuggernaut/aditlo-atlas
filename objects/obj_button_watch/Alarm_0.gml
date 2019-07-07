if(global.reward_ad_loaded == 1)
{
	HeyZap_ShowReward();
	alarm_set(1,5);
}
else
{
	alarm_set(0,15);
}