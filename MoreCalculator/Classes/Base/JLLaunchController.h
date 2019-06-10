//
//  JLLaunchController.h
//  A05_iPhone
//
//  Created by Harden on 2017/6/20.
//  Copyright © 2017年 WRD. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^JLLaunchFinishBlock)(BOOL open,NSString *urlStr);

@interface JLLaunchController : UIViewController

@property (nonatomic, copy)JLLaunchFinishBlock launchFinishBlock;

@end
