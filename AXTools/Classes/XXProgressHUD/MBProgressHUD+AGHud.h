//
//  MBProgressHUD+AGHud.h
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import "MBProgressHUD.h"

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (AGHud)

/// 只显示Loading
/// @param view view description
+ (void)ag_showLoadingToView:(nullable UIView *)view;

/// 显示文字和hud
/// @param text text description
/// @param view view description
+ (void)ag_showPlainText:(NSString *)text view:(nullable UIView *)view;

/// 显示文字内容
/// @param message message description

/// 只显示文字内容
/// @param message 文字
/// @param view view description
/// @param delay 延迟关闭
+ (void)ag_showMessageWith:(NSString *)message view:(nullable UIView *)view afterDelay:(NSTimeInterval)delay;

/// 显示成功打钩
/// @param message message description
/// @param view view description
+ (void)ag_showSuccessWithMessage:(nullable NSString *)message
                             view:(nullable UIView *)view;

+ (void)dismiss;

@end

NS_ASSUME_NONNULL_END
