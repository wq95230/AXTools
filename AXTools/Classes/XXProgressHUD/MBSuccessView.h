//
//  MBSuccessView.h
//  BeautyCar
//
//  Created by 刘剑锋 on 2022/4/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, WJAnimationType) {
    WJAnimationTypeNone,
    /* 成功 */
    WJAnimationTypeSuccess,
    /* 失败 */
    WJAnimationTypeError,
};

@interface MBSuccessView : UIView<CAAnimationDelegate>

/**
 *  操作成功还是失败类型的动画
 */
@property(nonatomic, assign) WJAnimationType wj_animationType;

@end

NS_ASSUME_NONNULL_END
