//
//  JLLaunchController.m
//  A05_iPhone
//
//  Created by Harden on 2017/6/20.
//  Copyright © 2017年 WRD. All rights reserved.
//

#import "JLLaunchController.h"
#import "JLWebViewController.h"


@interface JLLaunchController ()

@property (nonatomic, strong) UIImageView *lanchImageView;

@end



@implementation JLLaunchController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self registerNotificationEnterFore];
    [self.view addSubview:self.lanchImageView];
    // 开启延长动画
    [self setLaunchAnimation];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self.lanchImageView setFrame:self.view.bounds];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)registerNotificationEnterFore {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(waitHalfSecondWithCheckDidReceiveNotificationResponse) name:@"JLNotificationEnterToFore" object:nil];
}

- (void)waitHalfSecondWithCheckDidReceiveNotificationResponse {
    [self setLaunchAnimation];
}


/// 根据开关配置决定页面导向
- (void)setLaunchAnimation{
    [UIView animateWithDuration:10 delay:0 options:UIViewAnimationOptionAutoreverse animations:^{
        //动画设置
        
    } completion:^(BOOL finished) {
        //动画结束后执行的操作
        [self goToMainVC];
    }];
}

- (void)goToMainVC{
    if (self.launchFinishBlock) {
        self.launchFinishBlock(NO,nil);
    }
}

#pragma mark - Getter

- (UIImageView *)lanchImageView {
    if (!_lanchImageView) {
        
        CGSize viewSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT);
        NSString *viewOrientation = @"Portrait";
        NSString *launchImage = nil;
        NSArray* imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
        for(NSDictionary *dict in imagesDict) {
            CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
            if(CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {
                launchImage = dict[@"UILaunchImageName"];
            }
        }
        UIImageView *launchView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:launchImage]];
        
        _lanchImageView = launchView;
    }
    
    return _lanchImageView;
}

@end
