//
//  HeyZap Extension for GameMaker: Studio
//  ver 3.0
//
//  Released by Vitaliy Sidorov on 01/05/2017
//  Copyright SilenGames, 2016.
//
//  For support please e-mail at contact@silengames.com
//

#import <HeyzapAds/HeyzapAds.h>

@interface HeyZapExt : NSObject 
{
}

- (void) HeyZap_Init:(char *)_app_id Arg2:(double)istest;
- (void) HeyZap_AddBanner:(double)_pos;
- (void) HeyZap_RemoveBanner;
- (double) HeyZap_BannerGetWidth;
- (double) HeyZap_BannerGetHeight;
- (void) HeyZap_ShowInterstitial;
- (void) HeyZap_LoadInterstitial;
- (double) HeyZap_InterstitialStatus;
- (void) HeyZap_ShowVideo;
- (void) HeyZap_LoadVideo;
- (double) HeyZap_VideoStatus;
- (void) HeyZap_ShowReward;
- (void) HeyZap_LoadReward;
- (double) HeyZap_RewardStatus;
- (void) HeyZap_GMBugFix;
- (void) sendCallbacks:(char *)type Arg2:(double)value;

@end