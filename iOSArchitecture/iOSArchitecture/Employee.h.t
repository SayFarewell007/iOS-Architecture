//
//  Employee.h
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

+ (instancetype)sharedInstance;

- (void)doPrintJob;

@end
