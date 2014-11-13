//
//  WLLoginViewController.m
//  SCJHAPP_OrderMeals
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLLoginViewController.h"
#import "WLForgetViewController.h"
#import "WLRegisterViewController.h"

#define LOGIN_ORIGIN_X (50)
#define LOGIN_ORIGIN_Y (100)

@interface WLLoginViewController ()

@property(nonatomic,strong) UITextField *useTextField;
@property(nonatomic,strong) UITextField *serectTextField;

@end

@implementation WLLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.mineCenterView selectMineView:^(NSInteger index) {
        
        [self hiddenMineCenter];
//        if (index != 0)
//        {
            [self.tabBarController setSelectedIndex:index];
//        }
    }];
    
    UILabel *useLabel = [[UILabel alloc] initWithFrame:CGRectMake(LOGIN_ORIGIN_X, LOGIN_ORIGIN_Y, 100, 50)];
    useLabel.text = @"账号";
    [self.view addSubview:useLabel];
    
    UILabel *serectLabel = [[UILabel alloc] initWithFrame:CGRectMake(LOGIN_ORIGIN_X, IOS_IPHONE_VIEW_NEST_Y(useLabel) + 20, 100, 50)];
    serectLabel.text = @"密码";
    [self.view addSubview:serectLabel];
    
    _useTextField = [[UITextField alloc] initWithFrame:CGRectMake(IOS_IPHONE_VIEW_NEST_X(useLabel),useLabel.frame.origin.y, 200, 50)];
    _useTextField.layer.borderWidth = 1;
    [self.view addSubview:_useTextField];
    
    _serectTextField = [[UITextField alloc] initWithFrame:CGRectMake(IOS_IPHONE_VIEW_NEST_X(serectLabel),serectLabel.frame.origin.y, 200, 50)];
    _serectTextField.layer.borderWidth = 1;
    [self.view addSubview:_serectTextField];
    
    
    UIButton *forgetButton = [[UIButton alloc] initWithFrame:CGRectMake(LOGIN_ORIGIN_X,IOS_IPHONE_VIEW_NEST_Y(serectLabel) + 20, 100, 50)];
    forgetButton.backgroundColor = [UIColor redColor];
    [forgetButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    [forgetButton addTarget:self action:@selector(forgetButtonAciton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:forgetButton];
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(IOS_IPHONE_VIEW_NEST_X(forgetButton) + 20, forgetButton.frame.origin.y, 100, 50)];
    loginButton.backgroundColor = [UIColor redColor];
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    

    UIButton *weiXinButton = [[UIButton alloc] initWithFrame:CGRectMake(LOGIN_ORIGIN_X, IOS_IPHONE_VIEW_NEST_Y(forgetButton) + 20, 100, 50)];
    weiXinButton.backgroundColor = [UIColor redColor];
    [weiXinButton setTitle:@"微信" forState:UIControlStateNormal];
    [weiXinButton addTarget:self action:@selector(weiXinButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:weiXinButton];
    
    UIButton *weiBoButton = [[UIButton alloc] initWithFrame:CGRectMake(IOS_IPHONE_VIEW_NEST_X(weiXinButton) + 20, weiXinButton.frame.origin.y, 100, 50)];
    weiBoButton.backgroundColor = [UIColor redColor];
    [weiBoButton setTitle:@"微博" forState:UIControlStateNormal];
    [weiBoButton addTarget:self action:@selector(weiBoButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:weiBoButton];
    
    UIButton *quickButton = [[UIButton alloc] initWithFrame:CGRectMake(IOS_IPHONE_VIEW_NEST_X(weiBoButton) + 20, weiXinButton.frame.origin.y, 100, 50)];
    quickButton.backgroundColor = [UIColor redColor];
    [quickButton setTitle:@"快速注册" forState:UIControlStateNormal];
    [quickButton addTarget:self action:@selector(quickButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:quickButton];
}


- (void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.title = @"登录";
    self.tabBarController.navigationController.navigationBarHidden = NO;
}

#pragma mark - 忘记密码按键方法

- (void)forgetButtonAciton
{
    [self.tabBarController.navigationController pushViewController:[[WLForgetViewController alloc] init] animated:YES];
}

#pragma mark - 登录按键方法

- (void)loginButtonAction
{
    
}

#pragma mark - 微信 方法

- (void)weiXinButtonAction
{
    
}

#pragma mark - 微博 方法

- (void)weiBoButtonAction
{
    
}

#pragma mark - 快速注册方法

- (void)quickButtonAction
{
    [self.tabBarController.navigationController pushViewController:[[WLRegisterViewController alloc] init] animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
