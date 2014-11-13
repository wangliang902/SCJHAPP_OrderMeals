//
//  WLOrderMealInfoViewController.m
//  SCJHAPP_OrderMeals
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLOrderMealInfoViewController.h"
#include "WLOrderMealQureyViewController.h"

@interface WLOrderMealInfoViewController ()

@end

@implementation WLOrderMealInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"点餐详情";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setNavigationBarMethod];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 设置navigationBar方法

- (void)setNavigationBarMethod
{
    UIButton *rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, IOS_IPHONE_NAVIGATION_BAR_IMAGE_HIGH, IOS_IPHONE_NAVIGATION_BAR_IMAGE_HIGH)];
    rightButton.backgroundColor = [UIColor redColor];
    [rightButton addTarget:self action:@selector(rightButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
}

#pragma mark - 右边查找按键方法

- (void)rightButtonAction:(UIButton *)sender
{
    [self.navigationController pushViewController:[[WLOrderMealQureyViewController alloc] init] animated:YES];
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
