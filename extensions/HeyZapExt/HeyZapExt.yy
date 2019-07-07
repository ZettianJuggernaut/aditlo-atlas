{
    "id": "3a699976-18e6-4859-96d0-05c966b4ab71",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "HeyZapExt",
    "IncludedResources": [
        "Sprites\\sprite0",
        "Sprites\\sprite1",
        "Sprites\\sprite2",
        "Sprites\\sprite3",
        "Sprites\\sprite4",
        "Sprites\\sprite5",
        "Sprites\\sprite6",
        "Sprites\\sprite7",
        "Sprites\\sprite8",
        "Scripts\\callbacks\\HeyZap_Ad_Loaded.gml",
        "Scripts\\callbacks\\HeyZap_Ad_Shown.gml",
        "Scripts\\callbacks\\HeyZap_Ad_Hidden.gml",
        "Scripts\\callbacks\\HeyZap_Ad_Clicked.gml",
        "Scripts\\callbacks\\HeyZap_Video_Loaded.gml",
        "Scripts\\callbacks\\HeyZap_Video_Shown.gml",
        "Scripts\\callbacks\\HeyZap_Video_Hidden.gml",
        "Scripts\\callbacks\\HeyZap_Video_Clicked.gml",
        "Scripts\\callbacks\\HeyZap_Reward_Loaded.gml",
        "Scripts\\callbacks\\HeyZap_Reward_Shown.gml",
        "Scripts\\callbacks\\HeyZap_Reward_Hidden.gml",
        "Scripts\\callbacks\\HeyZap_Reward_Clicked.gml",
        "Scripts\\callbacks\\HeyZap_Banner_Loaded.gml",
        "Scripts\\callbacks\\HeyZap_Banner_Clicked.gml",
        "Scripts\\callbacks\\HeyZap_Get_Reward.gml",
        "Objects\\objControl",
        "Objects\\objLoadInterstitial",
        "Objects\\objLoadVideo",
        "Objects\\objLoadReward",
        "Objects\\objShowInterstitial",
        "Objects\\objShowVideo",
        "Objects\\objShowReward",
        "Objects\\objAddBannerTop",
        "Objects\\objAddBannerBottom",
        "Objects\\objRemoveBanner",
        "Objects\\objButton",
        "Rooms\\room0"
    ],
    "androidPermissions": [
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.INTERNET"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "HeyZapExt",
    "androidinject": "<!-- Google Play Services -->\\u000d\\u000a<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer\/google_play_services_version\"\/>\\u000d\\u000a \\u000d\\u000a<!-- AdMob -->\\u000d\\u000a<activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" \/>\\u000d\\u000a \\u000d\\u000a<!-- UnityAds -->\\u000d\\u000a<activity android:name=\"com.unity3d.ads.adunit.AdUnitActivity\"  android:configChanges=\"fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen\" android:hardwareAccelerated=\"true\" android:theme=\"@android:style\/Theme.NoTitleBar.Fullscreen\" \/>\\u000d\\u000a<activity android:name=\"com.unity3d.ads.adunit.AdUnitSoftwareActivity\"  android:configChanges=\"fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen\" android:hardwareAccelerated=\"false\" android:theme=\"@android:style\/Theme.NoTitleBar.Fullscreen\" \/>\\u000d\\u000a\\u000d\\u000a<!-- Heyzap Ad Network -->\\u000d\\u000a<activity android:name=\"com.heyzap.sdk.ads.HeyzapInterstitialActivity\" android:configChanges=\"keyboardHidden|orientation|screenSize|smallestScreenSize\" \/>\\u000d\\u000a<activity android:name=\"com.heyzap.sdk.ads.HeyzapVideoActivity\" android:configChanges=\"keyboardHidden|orientation|screenSize|smallestScreenSize\" \/>\\u000d\\u000a<activity android:name=\"com.heyzap.sdk.ads.HeyzapProxyActivity\" \/>\\u000d\\u000a<activity android:name=\"com.heyzap.sdk.ads.VASTActivity\" android:configChanges=\"keyboardHidden|orientation|screenSize|smallestScreenSize\" \/>\\u000d\\u000a<activity android:name=\"com.heyzap.sdk.ads.MediationTestActivity\" \/>\\u000d\\u000a<receiver android:name=\"com.heyzap.sdk.ads.PackageAddedReceiver\">\\u000d\\u000a  <intent-filter>\\u000d\\u000a    <data android:scheme=\"package\"\/>\\u000d\\u000a    <action android:name=\"android.intent.action.PACKAGE_ADDED\"\/>\\u000d\\u000a  <\/intent-filter>\\u000d\\u000a<\/receiver>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "HeyZapExt",
    "copyToTargets": -1,
    "date": "2017-51-02 03:05:07",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "f7edb700-eb18-4003-94a0-e69bfca31b97",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "93a12015-7d0f-47fe-9f76-92873da9eb08",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "HeyZap_Banner_Top",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "8e65fbcc-ed59-4395-910e-d49c3639b454",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "HeyZap_Banner_Bottom",
                    "hidden": false,
                    "value": "0"
                }
            ],
            "copyToTargets": 35651596,
            "filename": "HeyZap.ext",
            "final": "",
            "functions": [
                {
                    "id": "5f963650-7862-4e8d-a475-8e2a52d01e72",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "HeyZap_Init",
                    "help": "HeyZap_Init(id,mode)",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_Init",
                    "returnType": 2
                },
                {
                    "id": "24f14484-74ee-4851-99d2-daa7365c60b6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_LoadInterstitial",
                    "help": "HeyZap_LoadInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_LoadInterstitial",
                    "returnType": 2
                },
                {
                    "id": "5ee628a3-1259-42fd-8256-1430d8fbfe5d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_ShowInterstitial",
                    "help": "HeyZap_ShowInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_ShowInterstitial",
                    "returnType": 2
                },
                {
                    "id": "c8796651-89b4-4ff2-82b4-b4dee7277dbd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_InterstitialStatus",
                    "help": "HeyZap_InterstitialStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_InterstitialStatus",
                    "returnType": 2
                },
                {
                    "id": "b953af39-da3b-429f-84ac-2891ab936d74",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_LoadVideo",
                    "help": "HeyZap_LoadVideo()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_LoadVideo",
                    "returnType": 2
                },
                {
                    "id": "924b9793-49cb-4103-a656-0fdaea8cc96f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_ShowVideo",
                    "help": "HeyZap_ShowVideo()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_ShowVideo",
                    "returnType": 2
                },
                {
                    "id": "c62da8f8-bf73-4037-abb3-3322d1cce59c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_VideoStatus",
                    "help": "HeyZap_VideoStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_VideoStatus",
                    "returnType": 2
                },
                {
                    "id": "cb1241f9-0724-4002-9c6a-9d17e5ace8ea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_LoadReward",
                    "help": "HeyZap_LoadReward()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_LoadReward",
                    "returnType": 2
                },
                {
                    "id": "cdb349bc-07bf-4502-8653-0e46d53e9a8c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_ShowReward",
                    "help": "HeyZap_ShowReward()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_ShowReward",
                    "returnType": 2
                },
                {
                    "id": "966ad801-1e04-4f61-9b7a-d21821a66ad6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_RewardStatus",
                    "help": "HeyZap_RewardStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_RewardStatus",
                    "returnType": 2
                },
                {
                    "id": "7b7ca7a1-85b9-43e4-a84e-f97887af6172",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "HeyZap_AddBanner",
                    "help": "HeyZap_AddBanner(y_pos)",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_AddBanner",
                    "returnType": 2
                },
                {
                    "id": "0045d9b7-1f5e-4f04-ac18-b1cdc45abfeb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_RemoveBanner",
                    "help": "HeyZap_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_RemoveBanner",
                    "returnType": 2
                },
                {
                    "id": "ff4d7494-6806-4b31-b7bd-f1f45ab4ddf1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_BannerGetWidth",
                    "help": "HeyZap_BannerGetWidth()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_BannerGetWidth",
                    "returnType": 2
                },
                {
                    "id": "5a751a94-01b1-47bd-ba6a-234a9a796ab0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_BannerGetHeight",
                    "help": "HeyZap_BannerGetHeight()",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_BannerGetHeight",
                    "returnType": 2
                },
                {
                    "id": "17c62c85-cc56-484f-8a08-00a8d63416af",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "HeyZap_GMBugFix",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "HeyZap_GMBugFix",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "5f963650-7862-4e8d-a475-8e2a52d01e72",
                "24f14484-74ee-4851-99d2-daa7365c60b6",
                "5ee628a3-1259-42fd-8256-1430d8fbfe5d",
                "c8796651-89b4-4ff2-82b4-b4dee7277dbd",
                "b953af39-da3b-429f-84ac-2891ab936d74",
                "924b9793-49cb-4103-a656-0fdaea8cc96f",
                "c62da8f8-bf73-4037-abb3-3322d1cce59c",
                "cb1241f9-0724-4002-9c6a-9d17e5ace8ea",
                "cdb349bc-07bf-4502-8653-0e46d53e9a8c",
                "966ad801-1e04-4f61-9b7a-d21821a66ad6",
                "7b7ca7a1-85b9-43e4-a84e-f97887af6172",
                "0045d9b7-1f5e-4f04-ac18-b1cdc45abfeb",
                "ff4d7494-6806-4b31-b7bd-f1f45ab4ddf1",
                "5a751a94-01b1-47bd-ba6a-234a9a796ab0",
                "17c62c85-cc56-484f-8a08-00a8d63416af"
            ],
            "origname": "extensions\\HeyZap.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "compile 'com.google.android.gms:play-services:9.+'\\u000d\\u000a}\\u000d\\u000aandroid {\\u000d\\u000a    sourceSets {\\u000d\\u000a        main {\\u000d\\u000a            jniLibs.srcDirs += ['elibs']\\u000d\\u000a        }\\u000d\\u000a    }\\u000d\\u000a}\\u000d\\u000adependencies {",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "5a1249a7-b116-4ae2-b820-54de88579ea6",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdSupport.framework",
            "weakReference": false
        },
        {
            "id": "9ce110bd-6116-4e33-b18c-e650c64e5246",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AVFoundation.framework",
            "weakReference": false
        },
        {
            "id": "c120764d-9df2-4d88-8567-2826ed25846a",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AudioToolbox.framework",
            "weakReference": false
        },
        {
            "id": "b1eb13a1-8e63-4d5e-88b7-d6b1572bd9e8",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreGraphics.framework",
            "weakReference": false
        },
        {
            "id": "6a313ebb-24b5-4832-9ce1-b8ac0a9f2f20",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMedia.framework",
            "weakReference": false
        },
        {
            "id": "87877e44-7fad-4366-a13d-0b03bb82a89c",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreTelephony.framework",
            "weakReference": false
        },
        {
            "id": "a82bc4c9-3ede-4b0f-8cff-6369b198c7a3",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "EventKit.framework",
            "weakReference": false
        },
        {
            "id": "6a3690c9-9f57-4cdd-a652-4044bda9089f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "EventKitUI.framework",
            "weakReference": false
        },
        {
            "id": "755d48cc-7ae6-40ba-b7af-2b894e19c68b",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MediaPlayer.framework",
            "weakReference": false
        },
        {
            "id": "f4ab023c-3fe0-4e98-a2f5-158ac9aeae35",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MessageUI.framework",
            "weakReference": false
        },
        {
            "id": "af1d75fa-1412-4a45-99ae-6450152a906e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MobileCoreServices.framework",
            "weakReference": false
        },
        {
            "id": "c2ef6ff5-aa67-4171-931d-019abf524eb6",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "QuartzCore.framework",
            "weakReference": false
        },
        {
            "id": "3569d87a-f779-4450-9ff6-271ebea2e6a5",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Security.framework",
            "weakReference": false
        },
        {
            "id": "5c80fe57-6de9-4671-8b60-44f59c481a2f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Social.framework",
            "weakReference": false
        },
        {
            "id": "8d239ce9-5070-4c26-814e-dc047bb18166",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "StoreKit.framework",
            "weakReference": false
        },
        {
            "id": "dcd13501-5154-4057-a371-6f4ab9a8584e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SystemConfiguration.framework",
            "weakReference": false
        },
        {
            "id": "fb7619a4-a84a-4324-9c6f-9ee52588bae4",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "WebKit.framework",
            "weakReference": true
        },
        {
            "id": "a3c26398-0b07-40b1-9110-1f347b93131f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "iAd.framework",
            "weakReference": false
        },
        {
            "id": "2f67bdc1-5eb5-43ad-ac17-9e108d1a574f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMotion.framework",
            "weakReference": false
        },
        {
            "id": "41faab04-f872-4c9c-81c2-da0e724bfbe5",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreLocation.framework",
            "weakReference": false
        },
        {
            "id": "6500472f-1aa5-4791-aa90-464244429a5e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CFNetwork.framework",
            "weakReference": false
        },
        {
            "id": "303e5578-0b9c-4d11-9395-aafda6f060aa",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreVideo.framework",
            "weakReference": false
        },
        {
            "id": "5b5b5950-3de3-452f-bab4-ae2cf742f993",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreImage.framework",
            "weakReference": false
        },
        {
            "id": "d4182b43-869a-4497-bfbf-6c735fe627f0",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreData.framework",
            "weakReference": false
        },
        {
            "id": "dd2a25fe-109d-4c31-8fe0-c73d5da9c70b",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Foundation.framework",
            "weakReference": false
        },
        {
            "id": "85672e7d-0da2-4d02-9e31-185e03786052",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GLKit.framework",
            "weakReference": false
        },
        {
            "id": "6a085aa3-2c6d-44c1-99c4-be06de4d2ebf",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "JavaScriptCore.framework",
            "weakReference": true
        },
        {
            "id": "a88871c5-b466-4532-ae8a-a60f3b9a0d40",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "OpenGLES.framework",
            "weakReference": false
        },
        {
            "id": "fc7f2c3f-73ec-4905-ab5e-091cdfe6a418",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SafariServices.framework",
            "weakReference": false
        },
        {
            "id": "9c942e7b-d7ec-466d-84cb-c5faa2b33616",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "UIKit.framework",
            "weakReference": false
        },
        {
            "id": "5a9e3d16-b3c1-4957-ad16-21c9dcaf6c67",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "VideoToolbox.framework",
            "weakReference": false
        },
        {
            "id": "bd1d586c-a497-47f9-bdb7-e3eb5c3a526c",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "WatchConnectivity.framework",
            "weakReference": true
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        {
            "id": "46393870-1e0f-4e67-9106-45ceb48b4239",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "HeyzapAds.framework",
            "weakReference": false
        },
        {
            "id": "def2c731-5bb6-454e-a65b-361b765d78b8",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdColony.framework",
            "weakReference": false
        },
        {
            "id": "a5f85074-ebf0-4dfe-8e4c-f11619c72486",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleMobileAds.framework",
            "weakReference": false
        },
        {
            "id": "8b84a359-e033-4ac3-9929-a0e7ba7305ae",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Chartboost.framework",
            "weakReference": false
        },
        {
            "id": "6954e46a-96ff-4b30-967e-e48afb179f93",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "UnityAds.framework",
            "weakReference": false
        },
        {
            "id": "eb7bb2d9-ed78-4bd5-a92e-340aa458bf71",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AppTracker.framework",
            "weakReference": false
        },
        {
            "id": "4337cf05-59d5-4faf-a804-a1b2e0c9b27e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AppLovinSDK.framework",
            "weakReference": false
        },
        {
            "id": "40bd56a6-f013-4985-9277-d31d71f40437",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "InMobiSDK.framework",
            "weakReference": false
        },
        {
            "id": "a9b5edda-03f0-4861-b0e9-a4b68b8c6d43",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "VungleSDK.framework",
            "weakReference": false
        },
        {
            "id": "efc96c91-7976-47d2-8861-0e32e409d41e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "FBAudienceNetwork.framework",
            "weakReference": false
        }
    ],
    "iosplistinject": "<key>NSCalendarsUsageDescription<\/key>\\u000a\\u000d<string>Advertisement would like to create a calendar event.<\/string>\\u000a\\u000d<key>NSPhotoLibraryUsageDescription<\/key>\\u000a\\u000d<string>Advertisement would like to store a photo.<\/string>\\u000a\\u000d<key>NSCameraUsageDescription<\/key>\\u000a\\u000d<string>Advertisement would like to taking pictures.<\/string>\\u000a\\u000d<key>NSMotionUsageDescription<\/key>\\u000a\\u000d<string>Advertisement would like to use interactive ad controls.<\/string>\\u000a\\u000d<key>NSBluetoothPeripheralUsageDescription<\/key>\\u000a\\u000d<string>Advertisement would like to use bluetooth.<\/string>\\u000a\\u000d<key>LSApplicationQueriesSchemes<\/key>\\u000a\\u000d<array>\\u000a\\u000d\\u0009<string>fb<\/string>\\u000a\\u000d\\u0009<string>instagram<\/string>\\u000a\\u000d\\u0009<string>tumblr<\/string>\\u000a\\u000d\\u0009<string>twitter<\/string>\\u000a\\u000d\\u0009<string>tel<\/string>\\u000a\\u000d\\u0009<string>sms<\/string>\\u000a\\u000d<\/array>",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "-lxml2",
    "macsourcedir": "",
    "packageID": "com.silengames.heyzapext",
    "productID": "",
    "sourcedir": "",
    "version": "3.0.0"
}