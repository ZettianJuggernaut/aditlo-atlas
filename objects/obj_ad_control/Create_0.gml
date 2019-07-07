var HeyZap_Publisher_ID =  "429f86c6f997709e917f5496da94ff03";

var HeyZap_Mode = 2;
// 0 - normal mode (auto fetch enabled)
// 1 - test mode
// 2 - normal mode (auto fetch disabled)
// 3 - amazon ads (android only)

HeyZap_Init(HeyZap_Publisher_ID,HeyZap_Mode);
HeyZap_LoadReward();
global.reward_ad_loaded = 0;

if(script_execute(ads_on))
{
	HeyZap_LoadInterstitial();
	global.pop_ad_loaded = 0;
}