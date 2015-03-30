#import "RCTVideo.h"

@import MediaPlayer;

@implementation RCTVideo
{
    MPMoviePlayerController *_player;
    NSString *_source;
}

- (id)init
{
    if ((self = [super init])) {
        _player = [[MPMoviePlayerController alloc] init];
        [self addSubview: _player.view];

    }
    return self;
}

- (void)setSrc:(NSString *)source
{
    if ([_source isEqualToString:source]) {
      return;
    }
    _source = source;
    NSURL *videoURL = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource:source ofType:@"mp4"]];
    [_player setContentURL:videoURL];
    [_player setControlStyle:MPMovieControlStyleNone];
    [_player setScalingMode:MPMovieScalingModeNone];
    [_player setRepeatMode:MPMovieRepeatModeOne];
    [_player.view setFrame: self.bounds];
    [_player prepareToPlay];
    [_player play];
}

- (void)setResizeMode:(NSInteger)mode
{
    [_player setScalingMode:mode];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _player.view.frame = self.bounds;
}

@end
