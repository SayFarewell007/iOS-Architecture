//
//  MVVMModelView.h
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MVVMModel;
@interface MVVMModelView : NSObject

@property (nonatomic, strong) NSString *contentStr;

- (void)btnClickOnView;

- (void)setWithModel: (MVVMModel *)mvvmModel;

@end
