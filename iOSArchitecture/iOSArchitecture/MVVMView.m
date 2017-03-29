//
//  MVVMView.m
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "MVVMView.h"
#import "MVVMModelView.h"

@interface MVVMView ()

@property (nonatomic, weak) MVVMModelView *mvvmModelView;

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) UIButton *btn;

@end

@implementation MVVMView

- (instancetype)init {
    self = [super init];
    if(self) {
        self.label = [UILabel new];
        self.label.frame = CGRectMake(100, 100, 100, 30);
        [self addSubview:self.label];
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:@"print" forState:UIControlStateNormal];
        [btn sizeToFit];
        btn.frame = CGRectMake(100, 200, 100, 30);
        [self addSubview:btn];
        [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
        self.btn = btn;

    }
    return self;
}

- (void)btnclick {
    
//    if(self.delegate) {
//        [self.delegate btnClickOnView];
//    }

    [self.mvvmModelView btnClickOnView];
    
}

- (void)setWithViewModel:(MVVMModelView *)mvvmModelView {
    self.mvvmModelView = mvvmModelView;
    [self.mvvmModelView addObserver:self forKeyPath:@"contentStr" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {

    NSString *str = change[NSKeyValueChangeNewKey];
    self.label.text = str;
    
}

- (void)dealloc {
    [self removeObserver:self.mvvmModelView forKeyPath:@"contentStr"];
}

@end
