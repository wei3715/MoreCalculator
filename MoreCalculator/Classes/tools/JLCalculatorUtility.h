//
//  JLCalculatorUtility.h
//  MoreCalculator
//
//  Created by jolly on 24/05/2019.
//  Copyright © 2019 WRD. All rights reserved.
//

#ifndef JLCalculatorUtility_h
#define JLCalculatorUtility_h

#if DEBUG
#define NSLog(xx, ...)  NSLog(@"[%s][Line %d]: " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define NSLog(xx, ...)  ((void)0)
#endif

//接口
//#define ISTEST
#ifdef ISTEST
#define BASEURL @"http://120.27.226.32/index_wx.php/" //测试url公网
#define BASEWEBURl @"http://120.27.226.32/" //测试web网页地址
#else
#define BASEURL @"https://www.youjin360.com/index_wx.php/" //正式url内网
#define BASEWEBURl @"https://www.youjin360.com/" //正式web网页地址
#endif
//token
#define tokenString [[NSUserDefaults standardUserDefaults] objectForKey:@"access_token"]

//主色调颜色
#define mainColor [UIColor colorWithRed:245.0 / 255 green:245.0 / 255 blue:247.0 / 255 alpha:1]
#define mainBarColor [UIColor colorWithRed:248.0 / 255 green:134.0 / 255 blue:86.0 / 255 alpha:1]
#define mainLineColor [UIColor colorWithHexString:@"#dfe3e6" alpha:1]
//屏幕物理宽高
#define BOScreenH [UIScreen mainScreen].bounds.size.height
#define BOScreenW [UIScreen mainScreen].bounds.size.width
//手机类型
#define iPhone7P (BOScreenH == 1080)
#define iPhone7 (BOScreenH == 750)
#define iPhone6P (BOScreenH == 736)
#define iPhone6 (BOScreenH == 667)
#define iPhone5 (BOScreenH == 568)
#define iPhone4 (BOScreenH == 480)




//单例化一个类
#define SingletonInterface(Class) \
+ (Class *)sharedInstance;

#define SingletonImplementation(Class) \
static Class *__ ## sharedSingleton; \
\
+ (void)initialize \
{ \
static BOOL initialized = NO; \
if(!initialized) \
{ \
initialized = YES; \
__ ## sharedSingleton = [[Class alloc] init]; \
} \
} \
\
\
+ (Class *)sharedInstance \
{ \
return __ ## sharedSingleton; \
}

#define SCREEN_WIDTH            [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT           [UIScreen mainScreen].bounds.size.height  //应用尺寸

#define kIsIphoneX           (SCREEN_HEIGHT == 812.0 ?YES:NO)
#define KNavigationBarHeight (kIsIphoneX ? 88 : 64)

// 强弱引用
#define kWeakSelf(type)              __weak typeof(type) weak##type = type;
#define kStrongSelf(type)            __strong typeof(weak##type) strong##type = weak##type;
#define JLNotificationEnterToFore    @"JLNotificationEnterToFore";


#endif /* JLCalculatorUtility_h */
