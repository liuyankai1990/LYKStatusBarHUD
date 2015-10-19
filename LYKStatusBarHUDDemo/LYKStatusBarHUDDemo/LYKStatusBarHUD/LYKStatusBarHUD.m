//
//  LYKStatusBarHUD.m
//  01-第三方框架的设计
//
//  Created by liuyankai on 15/1/26.
//  Copyright (c) 2015年 liuyankai. All rights reserved.
//

#import "LYKStatusBarHUD.h"
#define LYKAnimationDuration 1.5
#define LYKWindowHigth 20
#define LYKFont [UIFont systemFontOfSize:13]
@implementation LYKStatusBarHUD
UIWindow *_window;



/**
 *  移除正在加载
 */
+ (void)loadingHide
{
    [UIView animateWithDuration:LYKAnimationDuration animations:^{
        _window.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        _window = nil;
    }];
}
/**
 *  显示正在加载
 *
 *  @param msg 显示的文字
 */
+ (void)showLoading:(NSString *)msg
{
    //如果正在执行就直接返回
    if(_window) return;
    
    //创建window
    _window = [[UIWindow alloc] init];
    
    //设置window的frame
    _window.frame = CGRectMake(0, -LYKWindowHigth, [UIScreen mainScreen].bounds.size.width, LYKWindowHigth);
    //设置window的属性
    _window.backgroundColor = [UIColor blackColor];
    //窗口默认是隐藏的
    _window.hidden = NO;
    _window.windowLevel = UIWindowLevelAlert;
    
    
    //创建文字Lable
    UILabel *lable = [[UILabel alloc] init];
    lable.font = LYKFont;
    lable.text = msg;
    lable.textColor = [UIColor redColor];
    
    //设置文字居中
    lable.textAlignment = NSTextAlignmentCenter;
    lable.frame = _window.bounds;
    [_window addSubview:lable];
    
    //创建菊花
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] init];
    indicator.frame = CGRectMake(20, 0, LYKWindowHigth, LYKWindowHigth);
    [_window addSubview:indicator];
    [indicator startAnimating];
    
    
    [UIView animateWithDuration:LYKAnimationDuration animations:^{
        _window.transform = CGAffineTransformMakeTranslation(0, LYKWindowHigth);
    }];
    

}
/**
 *  显示数据
 *
 *  @param msg       显示的文字
 *  @param imageName 显示的图片的名称
 */
+ (void)showMessage:(NSString *)msg imageName:(NSString *)imageName
{
    [self showMessage:msg image:[UIImage imageNamed:imageName]];
}

/**
 *  显示数据
 *
 *  @param msg       显示的文字
 *  @param image 显示的图片
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image
{
    //如果正在执行就直接返回
    if (_window) return;
    
    //创建window
    _window = [[UIWindow alloc] init];
    
    //设置window的frame
    _window.frame = CGRectMake(0, -LYKWindowHigth, [UIScreen mainScreen].bounds.size.width, LYKWindowHigth);
    //设置window的属性
    _window.backgroundColor = [UIColor blackColor];
    _window.hidden = NO;
    _window.windowLevel = UIWindowLevelAlert;
    
    //创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //设置按钮的文字和图片
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:msg forState:UIControlStateNormal];
    btn.titleLabel.font = LYKFont;
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0);
    btn.frame = _window.bounds;
    
    
    //将按钮添加到window上
    [_window addSubview:btn];
    
    [UIView animateWithDuration:LYKAnimationDuration animations:^{
        
        _window.transform = CGAffineTransformMakeTranslation(0, LYKWindowHigth);
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:LYKAnimationDuration delay:3.0 options:kNilOptions animations:^{
            _window.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            _window = nil;
        }];
        
    }];

}



/**
 *  下载成功
 */
+ (void)showSuccess:(NSString *)msg
{

    [self showMessage:msg image:[UIImage imageNamed:@"LYKStatusBarHUD.bundle/success"]];

}

/**
 *  下载失败
 */
+ (void)showError:(NSString *)msg
{
    [self showMessage:msg image:[UIImage imageNamed:@"LYKStatusBarHUD.bundle/error"]];
}
@end
