# LYKStatusBarHUD
## 如何使用
----------
##### 1.将LYKStatusBarHUD文件夹下所有文件添加到项目中。	
##### 2.导入主头文件：#import LYKStatusBarHUD.h
-------
##调用方法
--------
/**
 *  移除正在加载
 */	

+ +(void)loadingHide;

/**
 *  显示正在加载
 *
 *  @param msg 显示的文字
 */

+ +(void)showLoading:(NSString *)msg;

/**
 *  显示数据
 *
 *  @param msg       显示的文字
 *  @param imageName 显示的图片的名称
 */

+ +(void)showMessage:(NSString *)msg imageName:(NSString *)imageName;


/**
 *  显示数据
 *
 *  @param msg       显示的文字
 *  @param image 显示的图片
 */

+ +(void)showMessage:(NSString *)msg image:(UIImage *)image;


/**
 *  下载成功
 *
 *  @param msg 显示的文字
 */

+ +(void)showSuccess:(NSString *)msg;


/**
 *  下载失败
 *
 *  @param msg 显示的文字
 */

+ +(void)showError:(NSString *)msg;

--------------------------------


##自定义图片
------------------------------------
#####可以通过修改LYKStatusBarHUD.bundle中得图片文件将图片替换为自己想要的图片。
--------------------
