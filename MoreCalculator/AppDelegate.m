//
//  AppDelegate.m
//  MoreCalculator
//
//  Created by jolly on 29/05/2019.
//  Copyright © 2019 zsh. All rights reserved.
//

#import "AppDelegate.h"
#import "JLMainTabViewController.h"
#import "JLWebViewController.h"
#import "JLLaunchController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    application.statusBarStyle = UIStatusBarStyleLightContent;
    application.statusBarHidden = NO;
    
    kWeakSelf(self);
//    JLLaunchController *launchVC = [[JLLaunchController alloc] init];;
//    [self.window setRootViewController:launchVC];
//    [launchVC setLaunchFinishBlock:^(BOOL open,NSString *urlStr) {
//        if (open) {
//            JLWebViewController *webVC = [[JLWebViewController alloc] init];
//            webVC.urlStr = urlStr;
//            [self.window setRootViewController:webVC];
//        } else {
//            JLMainTabViewController *puppetMainTab = [[JLMainTabViewController alloc] init];
//            [weakself.window setRootViewController:puppetMainTab];
//        }
//    }];
    JLMainTabViewController *puppetMainTab = [[JLMainTabViewController alloc] init];
    [weakself.window setRootViewController:puppetMainTab];
    //3.显示窗口
    [self.window makeKeyAndVisible];
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    
    NSNotification * notice = [NSNotification notificationWithName:@"JLNotificationEnterToFore" object:nil userInfo:nil];
    [[NSNotificationCenter defaultCenter] postNotification: notice];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (UIWindow *)window {
    if (!_window) {
        UIWindow *view = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        [view setBackgroundColor:[UIColor whiteColor]];
        [view setWindowLevel:UIWindowLevelNormal];
        [view makeKeyAndVisible];
        
        _window = view;
    }
    
    return _window;
}

@end
