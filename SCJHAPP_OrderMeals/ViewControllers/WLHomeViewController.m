//
//  ViewController.m
//  SCJHAPP_OrderMeals
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLHomeViewController.h"
//views
#import "WLHomeView.h"
//viewControllers
#import "WLSellerViewController.h"
#import "WLFindViewController.h"
#import "WLOrderMealInfoViewController.h"

@interface WLHomeViewController ()

@property(nonatomic,strong) WLHomeView *homeView;

@end

@implementation WLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    
   
    [self.mineCenterView selectMineView:^(NSInteger index) {
        
        [self hiddenMineCenter];
//        if (index != 1)
//        {
            [self.tabBarController setSelectedIndex:index];
//        }
    }];
    
    [self setNavigationBarMethod];
    
    _homeView = [[WLHomeView alloc] initWithFrame:CGRectMake(0, IOS_IPHONE_NAVIGATION_H_HIGH, IOS_IPHONE_WINDOW_WIDE, IOS_IPHONE_WINDOW_HIGH - IOS_IPHONE_NAVIGATION_H_HIGH)];
    [_homeView.homeContentView.homeSellerView selectTheCell:^{
        [self.navigationController pushViewController:[[WLSellerViewController alloc] init] animated:YES];
    }];
    [self.view addSubview:_homeView];
    
    [_homeView.homeContentView.homeHotView selectHotView:^{
       
        [self.navigationController pushViewController:[[WLOrderMealInfoViewController alloc] init] animated:YES];
    }];

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
    [self.navigationController pushViewController:[[WLFindViewController alloc] init] animated:YES];
}


- (void)viewWillAppear:(BOOL)animated
{
    self.title = @"home";
    self.tabBarController.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
