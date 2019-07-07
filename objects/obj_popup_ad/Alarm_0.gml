if(global.pop_ad_loaded == 1)
{
	HeyZap_ShowInterstitial();
	alarm_set(1,5);
}
else
{
	alarm_set(0,15);
}