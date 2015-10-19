//
//  ViewController.m
//  状态栏指示器
//
//  Created by liuyankai on 15/9/2.
//  Copyright (c) 2015年 liuyankai. All rights reserved.
//

#import "ViewController.h"
#import "LYKStatusBarHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showLadoing {
    
    [LYKStatusBarHUD showLoading:@"正在加载.."];
    
}
- (IBAction)hide {
    [LYKStatusBarHUD loadingHide];
}
- (IBAction)showSuccess {
    
    [LYKStatusBarHUD showSuccess:@"成功..."];
}
- (IBAction)showFailure {
    [LYKStatusBarHUD showError:@"失败.."];
}

@end
