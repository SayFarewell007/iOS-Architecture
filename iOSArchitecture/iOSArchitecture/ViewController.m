//
//  ViewController.m
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "ViewController.h"
//#import "Manager.h"
//#import "Employee.h"
//#import "MVCController.h"
#import "MVVMController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [Employee sharedInstance];
    
//    [[Manager sharedInstance] beginPrintTask];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    
//        MVCController *vc = [MVCController new];
//        [self presentViewController:vc animated:YES completion:nil];
        
//    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        MVVMController *vc = [MVVMController new];
        [self presentViewController:vc animated:YES completion:nil];
        
    });
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
