//
//  JSTestWebViewController.m
//  JSMMTest
//
//  Created by 罗耀生 on 2019/4/23.
//  Copyright © 2019 opo. All rights reserved.
//

#import "JSTestWebViewController.h"
#import <WebKit/WebKit.h>

@interface JSTestWebViewController ()

// <#strong注释#>
@property (nonatomic,strong) WKWebView *webView;

@end

@implementation JSTestWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self initUI];
}

- (void)initUI {
    WKWebView *webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    
    NSURL *u = [NSURL URLWithString:@"https://www.baidu.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:u];
    [webView loadRequest:request];
    [self.view addSubview:webView];
}

@end
