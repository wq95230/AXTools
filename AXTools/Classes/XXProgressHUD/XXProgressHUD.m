//
//  XXProgressHUD.m
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import "XXProgressHUD.h"
#import "MBProgressHUD+AGHud.h"

@implementation XXProgressHUD

/// 默认加载中 Loading
+ (void)showLoading
{
    [MBProgressHUD ag_showLoadingToView:nil];
}

/// 默认加载中 - 带View
/// @param view 添加的视图
+ (void)showloadingToView:(nullable UIView *)view
{
    [MBProgressHUD ag_showLoadingToView:view];
}

/// Loading + 文字
/// @param message msg
+ (void)showloadingWithMessage:(nullable NSString *)message
{
    if (message.length == 0) {
        message = @"Loading";
    }
    [MBProgressHUD ag_showPlainText:message view:nil];
}

/// Loading + msg +View
/// @param message message description
/// @param view view description
+ (void)showloadingWithMessage:(nullable NSString *)message toView:(nullable UIView *)view
{
    if (message.length == 0) {
        message = @"Loading";
    }
    [MBProgressHUD ag_showPlainText:message view:view];
}

/// 只展示文字
/// @param message message description
+ (void)showMessage:(NSString *)message
{
    if (message.length == 0) {
        return;
    }
    [MBProgressHUD ag_showMessageWith:message view:nil afterDelay:2.0];
}

/// 展示文字
/// @param message message description
/// @param view view
+ (void)showMessage:(NSString *)message toView:(nullable UIView *)view
{
    if (message.length == 0) {
        return;
    }
    [MBProgressHUD ag_showMessageWith:message view:view afterDelay:2.0];
}

/// 展示成功打钩加文字
/// @param message 文字
+ (void)showSuccessMessage:(nullable NSString *)message
{
    [MBProgressHUD ag_showSuccessWithMessage:message view:nil];
}

/// 展示成功打钩
/// @param message 文字
/// @param view 视图
+ (void)showSuccessMessage:(nullable NSString *)message toView:(nullable UIView *)view
{
    [MBProgressHUD ag_showSuccessWithMessage:message view:view];
}

/// 隐藏自定义view的HUD
/// @param view view description
+ (void)hidenHUDForView:(UIView *)view
{
    [MBProgressHUD hidenHUDForView:view];
}

/// 关闭Hud
+ (void)dismiss
{
    [MBProgressHUD dismiss];
}


@end
