//
//  AXViewController.m
//  AXTools
//
//  Created by 952303557@qq.com on 04/11/2022.
//  Copyright (c) 2022 952303557@qq.com. All rights reserved.
//

#import "AXViewController.h"
//#import "XXProgressHUD.h"

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
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"show");
//    [XXProgressHUD showMessage:@"ysdskdkjs"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
