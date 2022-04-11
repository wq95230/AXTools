//
//  MBProgressHUD+AGHud.h
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import "MBProgressHUD.h"

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (AGHud)


/// 没用到
@property(nonatomic, strong) UIView *contenV;

/// 显示文字和hud
/// @param text text description
/// @param view view description
+ (void)ag_showPlainText:(NSString *)text view:(nullable UIView *)view;

/// 显示文字内容
/// @param message message description
+ (void)hud_showMessageWith:(NSString *)message view:(nullable UIView *)view;

+ (void)agHiden;
@end

NS_ASSUME_NONNULL_END
