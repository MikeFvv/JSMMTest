//
//  ViewController.m
//  JSMMTest
//
//  Created by 罗耀生 on 2019/4/23.
//  Copyright © 2019 opo. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

// 定时器
@property (nonatomic,strong) NSTimer *timerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self bulidView];
}


-(void)bulidView{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.bounds = CGRectMake(0, 0, 80, 40);
    btn.center = self.view.center;
    [btn setTitle:@"yyyy下发js脚本" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(jsScriptRun:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)jsScriptRun:(id)sender{
    
}

- (void)initUI {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"测试";
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
}

- (void)initUI2 {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"测试下载更新";
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
}



@end

