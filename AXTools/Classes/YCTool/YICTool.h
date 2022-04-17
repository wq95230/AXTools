//
//  YICTool.h
//  BeautyCar
//
//  Created by 刘剑锋 on 2022/3/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YICTool : NSObject


/// 字典转json中文字符串
/// @param dic dic
+ (NSString *)dictionaryToJSONwith:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
