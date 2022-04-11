//
//  XXProgressHUD.h
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXProgressHUD : NSObject


/// 默认加载中 Loading
+ (void)showLoading;

/// 在某个view上显示
/// @param view view description
+ (void)showLoadingWithview:(nullable UIView *)view;

/// 转圈加文字
+ (void)showLoadingMessage:(nullable NSString *)message;

/// 加载中
/// @param message 文字
/// @param view 显示的视图
+ (void)showLoadingMessage:(nullable NSString *)message with:(nullable UIView *)view;

/// 显示文字
/// @param message message description
+ (void)showMessage:(nonnull NSString *)message;

/// 关闭HUD
+ (void)hide;

+ (void)dismiss;

@end

NS_ASSUME_NONNULL_END
