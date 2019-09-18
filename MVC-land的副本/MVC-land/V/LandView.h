//
//  LandView.h
//  MVC-land
//
//  Created by 鳞潜羽翔 on 2019/9/18.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PassButtonDelegate <NSObject>

-(void)clickButton: (UIButton *)sender;

@end

@interface LandView : UIView
@property (nonatomic, strong) UITextField *accountTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *landButton;
//@property (nonatomic, strong) UIButton *registerButton;
@property (nonatomic, weak) id<PassButtonDelegate> delegate;

-(void)viewInit;

@end

NS_ASSUME_NONNULL_END
