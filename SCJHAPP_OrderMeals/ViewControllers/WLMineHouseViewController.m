//
//  WLMineHouseViewController.m
//  SCJHAPP_OrderMeals
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLMineHouseViewController.h"

@interface WLMineHouseViewController ()

@end

@implementation WLMineHouseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.mineCenterView selectMineView:^(NSInteger index) {
       
        [self hiddenMineCenter];
//        if (index != 3)
//        {
            [self.tabBarController setSelectedIndex:index];
//        }
    }];

    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    label.text = @"我的收藏";
    [self.view addSubview:label];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.title = @"我的收藏";
    self.tabBarController.navigationController.navigationBarHidden = NO;
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
