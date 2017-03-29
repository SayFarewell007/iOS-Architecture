//
//  MVVMModelView.m
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "MVVMModelView.h"
//#import "MVVMView.h"
#import "MVVMModel.h"


@interface MVVMModelView ()// <MVVMViewDelegat>

@property (nonatomic, strong) MVVMModel *mvvmModel;

@end

@implementation MVVMModelView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
    }
    return self;
}

- (void)setWithModel: (MVVMModel *)mvvmModel {
    self.mvvmModel = mvvmModel;
    
    [self.mvvmModel addObserver:self forKeyPath:@"content" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];
    
//    self.contentStr = mvvmModel.content;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    NSString *str = change[NSKeyValueChangeNewKey];
    self.contentStr = str;
    
}

- (void)dealloc {
    [self.mvvmModel removeObserver:self forKeyPath:@"content"];
}


- (void)btnClickOnView {
//    self.contentStr = [NSString stringWithFormat:@"lint %d", arc4random() % 10];
//    self.contentStr = self.mvvmModel.content;
    self.mvvmModel.content = [NSString stringWithFormat:@"line %d", arc4random() % 100];
//    self.contentStr = self.mvvmModel.content;
}



@end
