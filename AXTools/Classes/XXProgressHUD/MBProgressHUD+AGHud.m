//
//  MBProgressHUD+AGHud.m
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import "MBProgressHUD+AGHud.h"
//#import <objc/runtime.h>
#import "MBSuccessView.h"

//static NSString *titleKey = @"titleKey";

@implementation MBProgressHUD (AGHud)

#pragma mark  --  显示文字和转圈

/// 显示文字和hud
/// @param text text description
/// @param view view description
+ (void)ag_showPlainText:(NSString *)text
                    view:(nullable UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];

    [MBProgressHUD hideHUDForView:view animated:NO];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    hud.mode = MBProgressHUDModeText;
    //内容颜色
    hud.contentColor = UIColor.whiteColor;
    hud.mode = MBProgressHUDModeIndeterminate;
    
    hud.label.text = text;
    hud.label.textColor = UIColor.whiteColor;
    hud.label.numberOfLines = 0;

    //设置为这个才可以改变方框的背景色
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [self ag_colorWithHexString:@"484E5E" alpha:1.0];
//    hud.minShowTime = 1.0; //最小显示时间
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:30.0];
}

/// 只显示Loading
/// @param view view description
+ (void)ag_showLoadingToView:(nullable UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    [MBProgressHUD hideHUDForView:view animated:NO];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    hud.mode = MBProgressHUDModeText;
    //内容颜色
    hud.contentColor = UIColor.whiteColor;
    hud.mode = MBProgressHUDModeIndeterminate;

    //设置为这个才可以改变方框的背景色
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [self ag_colorWithHexString:@"484E5E" alpha:1.0];
    //    hud.minShowTime = 1.0; //最小显示时间
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:30.0];
}

/// 显示文字内容
/// @param message message description
+ (void)ag_showMessageWith:(NSString *)message
                       view:(nullable UIView *)view
                 afterDelay:(NSTimeInterval)delay
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    [MBProgressHUD hideHUDForView:view animated:NO];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.contentColor = UIColor.whiteColor;
    hud.mode = MBProgressHUDModeText;
    
    hud.label.text = message;
    hud.label.textColor = UIColor.whiteColor;
    hud.label.numberOfLines = 0;
//    hud.userInteractionEnabled = NO;
    //设置为这个才可以改变方框的背景色
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [self ag_colorWithHexString:@"484E5E" alpha:1.0];
    //    hud.minShowTime = 1.0; //最小显示时间
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:delay];
}

/// 显示成功打钩
/// @param message message description
/// @param view view description
+ (void)ag_showSuccessWithMessage:(nullable NSString *)message
                             view:(nullable UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    [MBProgressHUD hideHUDForView:view animated:NO];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    // Set the custom view mode to show any view.
    hud.mode = MBProgressHUDModeCustomView;
    // Set an image view with a checkmark.
    
    MBSuccessView *suc = [[MBSuccessView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    suc.wj_animationType = WJAnimationTypeSuccess;
    hud.customView = suc;

    if (message.length > 0) {
        hud.label.text = message;
        hud.label.textColor = UIColor.whiteColor;
        hud.label.numberOfLines = 0;
    }
    
    // 隐藏时候从父控件中移除
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [self ag_colorWithHexString:@"484E5E" alpha:1.0];
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:1.5];
}

+ (void)hidenHUDForView:(UIView *)view
{
    [MBProgressHUD hideHUDForView:view animated:NO];
}


+ (void)dismiss
{
    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    if (view) {
        [MBProgressHUD hideHUDForView:view animated:NO];
    }
}


//-(void)setContenV:(UIView *)contenV
//{
//    objc_setAssociatedObject(self, &titleKey,contenV, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//-(UIView *)contenV{
//    return objc_getAssociatedObject(self, &titleKey);
//}

/**
 16进制颜色转换为UIColor

 @param hexColor 16进制字符串（可以以0x开头，可以以#开头，也可以就是6位的16进制）
 @param opacity 透明度
 @return 16进制字符串对应的颜色
 */
+ (UIColor *)ag_colorWithHexString:(NSString *)hexColor alpha:(float)opacity
{
    NSString * cString = [[hexColor stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];

    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor blackColor];

    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if (cString.length > 6)
    {
        cString = [cString substringFromIndex:cString.length - 6];
    }
    
    if ([cString length] != 6) return [UIColor blackColor];
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString * rString = [cString substringWithRange:range];

    range.location = 2;
    NSString * gString = [cString substringWithRange:range];

    range.location = 4;
    NSString * bString = [cString substringWithRange:range];

    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];

    return [UIColor colorWithRed:((float)r / 255.0f)
                           green:((float)g / 255.0f)
                            blue:((float)b / 255.0f)
                           alpha:opacity];
}

-(void)dealloc
{
//    NSLog(@"Hud Dismiss");
}

@end

