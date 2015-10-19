//
//  LYKStatusBarHUD.h
//  01-第三方框架的设计
//
//  Created by liuyankai on 15/1/26.
//  Copyright (c) 2015年 liuyankai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYKStatusBarHUD : NSObject


/**
 *  移除正在加载
 */
+ (void)loadingHide;
/**
 *  显示正在加载
 *
 *  @param msg 显示的文字
 */
+ (void)showLoading:(NSString *)msg;
/**
 *  显示数据
 *
 *  @param msg       显示的文字
 *  @param imageName 显示的图片的名称
 */
+ (void)showMessage:(NSString *)msg imageName:(NSString *)imageName;

/**
 *  显示数据
 *
 *  @param msg       显示的文字
 *  @param image 显示的图片
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image;

/**
 *  下载成功
 *
 *  @param msg 显示的文字
 */
+ (void)showSuccess:(NSString *)msg;

/**
 *  下载失败
 *
 *  @param msg 显示的文字
 */
+ (void)showError:(NSString *)msg;

@end
