//
//  WLMineOrdersViewController.m
//  SCJHAPP_OrderMeals
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLMineOrdersViewController.h"

@interface WLMineOrdersViewController ()

@end

@implementation WLMineOrdersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self.mineCenterView selectMineView:^(NSInteger index) {
        
        [self hiddenMineCenter];
//        if (index != 2)
//        {
            [self.tabBarController setSelectedIndex:index];
//        }
    }];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    label.text = @"我的订单";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.title = @"我的订单";
    self.tabBarController.navigationController.navigationBarHidden = NO;
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
