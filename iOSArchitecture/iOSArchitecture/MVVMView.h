//
//  MVVMView.h
//  iOSArchitecture
//
//  Created by Darwin on 2017/3/29.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import <UIKit/UIKit.h>

//@protocol MVVMViewDelegat <NSObject>
//
//- (void)btnClickOnView;
//
//@end

@class MVVMModelView;
@interface MVVMView : UIView

//@property (nonatomic, weak) id<MVVMViewDelegat> delegate;

- (void)setWithViewModel:(MVVMModelView *)mvvmModelView;

@end
