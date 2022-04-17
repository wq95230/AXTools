//
//  YICTool.m
//  BeautyCar
//
//  Created by 刘剑锋 on 2022/3/27.
//

#import "YICTool.h"

@implementation YICTool

///字典转json
+ (NSString *)dictionaryToJSONwith:(NSDictionary *)dic
{
    if (!dic) {
        return @"";
    }
    if (![dic isKindOfClass:[NSDictionary class]])
    {
//        [self ag_showError:@"转JSON字符串的值非字典"];
        return @"转JSON字符串的值非字典";
    }
    if ((dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0))
    {
        return @"";
    }
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization
                        dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
    
    if ([jsonData length] > 0 && error == nil)
    {
        //NSData转换为String
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        NSString *json1 = [jsonString stringByReplacingOccurrencesOfString:@"\\r" withString:@""];
        NSString *json = [json1 stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];
//        NSLog(@"agjsonParams=====%@",json);//JSON数据  liujianfeng
        return json;
    }
    
    else if ([jsonData length] == 0 &&
             error == nil)
    {
        NSLog(@"No data was returned after serialization.");
    }
    else if (error != nil)
    {
        NSLog(@"An error happened = %@", error);
    }
    return @"to error";
}



@end
