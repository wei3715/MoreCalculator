//
//  JLMoreWebVC.m
//  MoreCalculator
//
//  Created by jolly on 09/05/2019.
//  Copyright © 2019 jolly. All rights reserved.
//

#import "JLMoreWebVC.h"

@interface JLMoreWebVC ()<UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation JLMoreWebVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self createLeftBarButtonItemWithImage:@"common_icon_back" withMethod:@selector(leftBarButtonItemClick)];
    [self imageSetbackgroundAboutNavigationBar];
    self.navigationItem.title = self.titleNameString;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, BOScreenW, BOScreenH-64)];
    self.webView.delegate = self;
    self.webView.scrollView.bounces = NO;
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]];
    [self.view addSubview: self.webView];
    [self.webView loadRequest:request];
}
-(void)webViewDidStartLoad:(UIWebView*)webView
{
    NSLog(@"加载中。。。");
}
-(void)webViewDidFinishLoad:(UIWebView*)webView
{
    NSLog(@"加载完成");
}
-(void)webView:(UIWebView*)webView DidFailLoadWithError:(NSError*)error
{
    NSLog(@"加载出错%@",error);
}
- (void)leftBarButtonItemClick
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
