//
//  JLMainTabViewController.m
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import "JLMainTabViewController.h"
#import "JLNavigationController.h"
#import "JLCarCalculatorVC.h"
#import "JLHomeCalculatorVC.h"
#import "JLTaxViewController.h"

@interface JLMainTabViewController ()

@end

@implementation JLMainTabViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    //添加所有的子控制器
    [self addAllChildViewController];
    //设置所有的TabBarButton
    [self setUpAllTabBarButton];
}
#pragma mark - 添加所有的子控制器
- (void)addAllChildViewController
{
    
    // 1.添加房贷计算器控制器
    JLHomeCalculatorVC *homeVC = [[JLHomeCalculatorVC alloc] init];
    JLNavigationController *homeNav = [[JLNavigationController alloc] initWithRootViewController:homeVC];
    [self addChildViewController:homeNav];
    
    // 2.添加车贷计算器控制器
    JLCarCalculatorVC *carVC = [[JLCarCalculatorVC alloc] init];
    JLNavigationController *carNav = [[JLNavigationController alloc] initWithRootViewController:carVC];
    [self addChildViewController:carNav];
    
    // 4.个税计算
    JLTaxViewController *taxVC = [[JLTaxViewController alloc] init];
    JLNavigationController *taxNav = [[JLNavigationController alloc] initWithRootViewController:taxVC];
    [self addChildViewController:taxNav];
}
#pragma mark - 添加所有的按钮
- (void)setUpAllTabBarButton
{
    // 1.添加按钮
    JLNavigationController *nav1 = self.childViewControllers[0];
    nav1.tabBarItem.title = @"房贷计算";
    nav1.tabBarItem.image = [UIImage imageNamed:@"houseNormal"];
    nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"housePress"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [nav1.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:mainBarColor}
                                     forState:UIControlStateSelected];
    
    // 2.添加按钮
    JLNavigationController *nav2 = self.childViewControllers[1];
    nav2.tabBarItem.title = @"车贷计算";
    nav2.tabBarItem.image = [UIImage imageNamed:@"carNormal"];
    nav2.tabBarItem.selectedImage = [[UIImage imageNamed:@"carPress"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [nav2.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:mainBarColor}
                                   forState:UIControlStateSelected];

    // 4.添加按钮
    JLNavigationController *nav4 = self.childViewControllers[2];
    nav4.tabBarItem.title = @"个税计算";
    nav4.tabBarItem.image = [UIImage imageNamed:@"personNormal"];
    nav4.tabBarItem.selectedImage = [[UIImage imageNamed:@"personPress"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [nav4.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:mainBarColor}
                                   forState:UIControlStateSelected];
}

@end
