//
//  MVVMController.m
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "MVVMModelView.h"

@interface MVVMController ()

@property (nonatomic, strong) MVVMView *mvvmView;
@property (nonatomic, strong) MVVMModel *mvvmModel;
@property (nonatomic, strong) MVVMModelView *mvvmModelView;

@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.mvvmModel = [MVVMModel new];
    self.mvvmModel.content = @"line 0";
    
    
    self.mvvmModelView = [MVVMModelView new];
    _mvvmModelView.contentStr = @"test";
    
    self.mvvmView = [MVVMView new];
    self.mvvmView.frame = self.view.bounds;
    [self.view addSubview:self.mvvmView];
    self.mvvmView.backgroundColor = [UIColor cyanColor];
//    self.mvvmView.delegate = self.mvvmModelView;
    
    [self.mvvmView setWithViewModel:self.mvvmModelView];
    [self.mvvmModelView setWithModel:self.mvvmModel];
}


@end
