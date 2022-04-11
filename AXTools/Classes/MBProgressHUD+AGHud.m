//
//  MBProgressHUD+AGHud.m
//  OneCarBeauty
//
//  Created by liujf on 2022/3/22.
//

#import "MBProgressHUD+AGHud.h"
#import <objc/runtime.h>

static NSString *titleKey = @"titleKey";

@implementation MBProgressHUD (AGHud)

#pragma mark  --  显示文字和转圈

/// 显示文字和hud
/// @param text text description
/// @param view view description
+ (void)ag_showPlainText:(NSString *)text view:(nullable UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
//    MyApp.hudView = view;
    
    [MBProgressHUD hideHUDForView:view animated:NO];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
//    hud.mode = MBProgressHUDModeText;
    hud.contentColor = UIColor.whiteColor;
    hud.mode = MBProgressHUDModeIndeterminate;
    
    hud.label.text = text;
    hud.label.textColor = UIColor.whiteColor;
    hud.label.numberOfLines = 0;
//    hud.userInteractionEnabled = NO;
    //设置为这个才可以改变方框的背景色
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = UIColor.blackColor;//UIColor.bgColor_484E5E;
//    hud.minShowTime = 20.0; //最长显示时间
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:2];
}


/// 显示文字内容
/// @param message message description
+ (void)hud_showMessageWith:(NSString *)message view:(nullable UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    [MBProgressHUD hideHUDForView:view animated:NO];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
//    hud.mode = MBProgressHUDModeText;
    hud.contentColor = UIColor.whiteColor;
    hud.mode = MBProgressHUDModeText;
    
    hud.label.text = message;
    hud.label.textColor = UIColor.whiteColor;
    hud.label.numberOfLines = 0;
//    hud.userInteractionEnabled = NO;
    //设置为这个才可以改变方框的背景色
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = UIColor.blackColor;//UIColor.bgColor_484E5E;
//    hud.minShowTime = 20.0; //最长显示时间
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:2];
}

+ (void)agHiden
{
    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    if (view) {
        [MBProgressHUD hideHUDForView:view animated:NO];
    }
    
}

-(void)setContenV:(UIView *)contenV
{
    objc_setAssociatedObject(self, &titleKey,contenV, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UIView *)contenV{
    return objc_getAssociatedObject(self, &titleKey);
}


-(void)dealloc
{
//    NSLog(@"Hud Dismiss");
}

@end

