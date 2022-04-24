//
//  AXViewController.m
//  AXTools
//
//  Created by 952303557@qq.com on 04/11/2022.
//  Copyright (c) 2022 952303557@qq.com. All rights reserved.
//

#import "AXViewController.h"
#import "AXTools.h"

@interface AXViewController ()

@end

@implementation AXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [XXProgressHUD showMessage:@"yyyy"];
    });
    
    NSDictionary *aaa = @{@"name":@"刘健是多少"};
    NSString *yand = [YICTool dictionaryToJSONwith:aaa];
    NSLog(@"result = %@",yand);
    
    [XXProgressHUD showloadingWithMessage:@"sdgs" toView:self.view];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"show");
    [XXProgressHUD hidenHUDForView:self.view];
//    [XXProgressHUD showMessage:@"ysdskdkjs"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
