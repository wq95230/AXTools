//
//  XXProgressHUD.m
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import "XXProgressHUD.h"
#import "MBProgressHUD+AGHud.h"

@implementation XXProgressHUD

+ (void)showLoading
{
    [MBProgressHUD ag_showPlainText:@"Loading" view:nil];
}

+ (void)showLoadingWithview:(nullable UIView *)view
{
    [MBProgressHUD ag_showPlainText:@"Loading" view:view];
}

+ (void)showLoadingMessage:(nullable NSString *)message
{
    if (isEmptyStr(message)) {
        message = @"Loading";
    }
    [MBProgressHUD ag_showPlainText:message view:nil];
}

+ (void)showLoadingMessage:(nullable NSString *)message with:(nullable UIView *)view
{
    if (isEmptyStr(message)) {
        message = @"Loading";
    }
    [MBProgressHUD ag_showPlainText:message view:view];
}

//======显示文字
+ (void)showMessage:(NSString *)message
{
    if (isEmptyStr(message)) {
        message = @"Loading";
    }
    [MBProgressHUD hud_showMessageWith:message view:nil];
}

+ (void)hide
{
    [MBProgressHUD agHiden];
}

+ (void)dismiss
{
    [MBProgressHUD agHiden];
}

@end
