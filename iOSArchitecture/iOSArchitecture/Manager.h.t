//
//  Manager.h
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject

+ (instancetype)sharedInstance;

- (void)celebratePrintDone;

- (void)beginPrintTask;


@end
