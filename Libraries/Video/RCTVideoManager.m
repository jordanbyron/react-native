#import "RCTVideoManager.h"

#import "RCTVideo.h"
#import "RCTBridge.h"

@implementation RCTVideoManager

@synthesize bridge = _bridge;

- (UIView *)view
{
    return [[RCTVideo alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString);
RCT_EXPORT_VIEW_PROPERTY(resizeMode, NSInteger);


@end
