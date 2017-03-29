//
//  Employee.m
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "Employee.h"
#import "PrintNotification.h"

@implementation Employee

- (instancetype)init {
    if(self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doPrintJob) name:Notifi_BeginPrintTask object:nil];
    }
    return self;
}

+ (instancetype)sharedInstance {
    
    static Employee* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Employee new];
    });
    
    return instance;
}

- (void)doPrintJob {
    NSLog(@"doing printing job!");
    [[NSNotificationCenter defaultCenter] postNotificationName:Notifi_PrintTaskDone object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:Notifi_BeginPrintTask];
}


@end
