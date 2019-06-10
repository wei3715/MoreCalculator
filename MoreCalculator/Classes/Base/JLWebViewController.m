//
//  JLWebViewController.m
//  MoreCalculator
//
//  Created by jolly on 31/05/2019.
//  Copyright © 2019 zsh. All rights reserved.
//

#import "JLWebViewController.h"
#import <WebKit/WebKit.h>
#import "JLCalculatorUtility.h"

@interface JLWebViewController ()<WKNavigationDelegate,WKUIDelegate>

@property (nonatomic, strong) WKWebView         *wkWebView;
@property (nonatomic,strong)  UIProgressView    *progressView;  //这个是加载页面的进度条

@end

@implementation JLWebViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadWKWebView];
}

- (void)loadWKWebView{
    self.wkWebView = [[WKWebView alloc] initWithFrame:self.view.frame];

    NSURL *url = [NSURL URLWithString:self.urlStr];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    
    [self.wkWebView loadRequest:request];
    self.wkWebView.navigationDelegate = self;
    self.wkWebView.UIDelegate = self;
    self.wkWebView.allowsBackForwardNavigationGestures = YES;
    [self.view addSubview:self.wkWebView];
    
    
    self.progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(0, KNavigationBarHeight, SCREEN_WIDTH, 2)];
    self.progressView.progressTintColor = [UIColor colorWithHexString:@"0xE94747" alpha:1.0];
    [self.view addSubview:self.progressView];
    [self.wkWebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
    
}

#pragma delegate
// 页面开始加载时调用
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    NSLog(@"开始加载");
}

// 当内容开始返回时调用
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    NSLog(@"开始返回数据");
}

// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{//这里修改导航栏的标题，动态改变
    self.title = webView.title;
    NSLog(@"数据加载完成");
}

// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
     NSLog(@"加载失败");
}

// 接收到服务器跳转请求之后再执行
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation{
    
}

// 在收到响应后，决定是否跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    
    NSLog(@"%@",webView);
    NSLog(@"%@",navigationResponse);
    
    WKNavigationResponsePolicy actionPolicy = WKNavigationResponsePolicyAllow;
    //这句是必须加上的，不然会异常
    decisionHandler(actionPolicy);
    
}

// 在发送请求之前，决定是否跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    self.title = webView.title;
    WKNavigationActionPolicy actionPolicy = WKNavigationActionPolicyAllow;
    if (navigationAction.navigationType==WKNavigationTypeBackForward) {//判断是返回类型
    
    }
    //这句是必须加上的，不然会异常
    decisionHandler(actionPolicy);
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqual:@"estimatedProgress"] && object == self.wkWebView) {
        [self.progressView setAlpha:1.0f];
        [self.progressView setProgress:self.wkWebView.estimatedProgress animated:YES];
        if (self.wkWebView.estimatedProgress  >= 1.0f) {
            [UIView animateWithDuration:0.3 delay:0.3 options:UIViewAnimationOptionCurveEaseOut animations:^{
                [self.progressView setAlpha:0.0f];
            } completion:^(BOOL finished) {
                [self.progressView setProgress:0.0f animated:YES];
            }];
        }
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)dealloc{
    [self.wkWebView removeObserver:self forKeyPath:@"estimatedProgress"];
    [self.wkWebView setNavigationDelegate:nil];
    [self.wkWebView setUIDelegate:nil];
}

@end
