#import "RateMobileApp.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

namespace ratemobileapp {
    void openRateAppLink(const char* inAppId);

    void openRateAppLink(const char* inAppId) {
        NSString *appId = [[NSString alloc] initWithUTF8String:inAppId];

        NSLog(@"ratemobileapp_openRateAppLink appId: %@", appId);

        static NSString *const iOS7AppStoreURLFormat = @"itms-apps://itunes.apple.com/app/id%@";
        static NSString *const iOSAppStoreURLFormat = @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%@";

        [[UIApplication sharedApplication] openURL: [NSURL URLWithString:[NSString stringWithFormat:([[UIDevice currentDevice].systemVersion floatValue] >= 7.0f)? iOS7AppStoreURLFormat: iOSAppStoreURLFormat, appId]]];
    }
}