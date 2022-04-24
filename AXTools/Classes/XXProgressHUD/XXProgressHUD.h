//
//  XXProgressHUD.h
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXProgressHUD : NSObject

/// 默认加载中 Loading
+ (void)showLoading;

/// 默认加载中 - 带View
/// @param view 添加的视图
+ (void)showloadingToView:(nullable UIView *)view;

/// Loading + 文字
/// @param message msg
+ (void)showloadingWithMessage:(nullable NSString *)message;

/// Loading + msg +View
/// @param message message description
/// @param view view description
+ (void)showloadingWithMessage:(nullable NSString *)message toView:(nullable UIView *)view;

/// 只展示文字
/// @param message message description
+ (void)showMessage:(NSString *)message;

/// 展示文字
/// @param message message description
/// @param view view
+ (void)showMessage:(NSString *)message toView:(nullable UIView *)view;

/// 展示成功打钩加文字
/// @param message 文字
+ (void)showSuccessMessage:(nullable NSString *)message;

/// 展示成功打钩
/// @param message 文字
/// @param view 视图
+ (void)showSuccessMessage:(nullable NSString *)message toView:(nullable UIView *)view;

/// 隐藏自定义view的HUD
/// @param view view description
+ (void)hidenHUDForView:(UIView *)view;

/// 关闭HUD 如果自定义了View显示 使用 hidenHUBForView
+ (void)dismiss;

@end

NS_ASSUME_NONNULL_END
