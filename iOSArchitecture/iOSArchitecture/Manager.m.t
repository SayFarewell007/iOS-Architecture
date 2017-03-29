//
//  Manager.m
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "Manager.h"
#import "PrintNotification.h"

@implementation Manager

- (instancetype)init {
    self = [super init];
    if(self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(celebratePrintDone) name:Notifi_PrintTaskDone object:nil];
    }
    return self;
}

+ (instancetype)sharedInstance {
    
    static Manager* instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Manager new];
    });
    
    return instance;
}

- (void)celebratePrintDone {
    NSLog(@"celebrate print done!");
}

- (void)beginPrintTask {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notifi_BeginPrintTask object:nil];
    
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:Notifi_PrintTaskDone];
}

@end
