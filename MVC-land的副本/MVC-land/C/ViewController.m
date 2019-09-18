//
//  ViewController.m
//  MVC-land
//
//  Created by 鳞潜羽翔 on 2019/9/18.
//  Copyright © 2019 鳞潜羽翔. All rights reserved.
//

#import "ViewController.h"
#import "SuccessfulViewController.h"

#define W [UIScreen mainScreen].bounds.size.width
#define H [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _landView = [[LandView alloc] initWithFrame:CGRectMake(0, 0, W, H)];
    [_landView viewInit];
    _landView.delegate = self;
    [self.view addSubview:_landView];
    
    _mModel = [[LandModel alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landSuccessful:) name:@"landSuccessful" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landFail:) name:@"landFail" object:nil];
}

- (void)clickButton:(UIButton *)sender {
    [_mModel checkNames:_landView.accountTextField.text withPassword:_landView.passwordTextField.text];
}

-(void)landSuccessful:(NSNotification *)notification {
    SuccessfulViewController *succcessfulViewController = [[SuccessfulViewController alloc] init];
    succcessfulViewController.view.backgroundColor = [UIColor whiteColor];
    [self presentViewController:succcessfulViewController animated:NO completion:nil];
}

-(void)landFail:(NSNotification *)notification {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"错误" message:@"账号或密码输入错误" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *suretAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:suretAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

//移除通知
- (void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    NSLog(@"shan");
}

@end
