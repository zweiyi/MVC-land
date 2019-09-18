//
//  LandView.m
//  MVC-land
//
//  Created by 鳞潜羽翔 on 2019/9/18.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import "LandView.h"

@implementation LandView

- (void)viewInit {
    _accountTextField = [[UITextField alloc] init];
    [_accountTextField setFrame:CGRectMake(100, 100, 200, 40)];
    _accountTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _accountTextField.placeholder = @"请输入账号";
    _accountTextField.layer.borderWidth = 1;
    [self addSubview:_accountTextField];
    
    _passwordTextField = [[UITextField alloc] init];
    [_passwordTextField setFrame:CGRectMake(100, 160, 200, 40)];
    _passwordTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _passwordTextField.placeholder = @"请输入密码";
    _passwordTextField.secureTextEntry = YES;
    _passwordTextField.layer.borderWidth = 1;
    [self addSubview:_passwordTextField];
    
    _landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_landButton setFrame:CGRectMake(140, 220, 80, 40)];
    [_landButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_landButton setTintColor:[UIColor blackColor]];
    [_landButton addTarget:self action:@selector(pressLand:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:_landButton];

}

-(void)pressLand:(UIButton *)sender {
    //通过代理回调
    if ([_delegate respondsToSelector:@selector(clickButton:)]) {
        [_delegate clickButton:sender];
    }
}
    

@end
